\version "2.12.0"
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
jethroa = \relative c''
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
    { d8 e g a g4
      \tag #'goingup { e'8 fis }
      \tag #'goingdown { e,8 fis } }
    { d8 e g a g4 r4 } % might have to replace d,8 here
  }
}
fjethroa = \relative c''
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
    { d8 e g a g4
      \tag #'goingup { e'8 fis }
      \tag #'goingdown { e,8 fis } }
    { d8 e g a g4 r4 } % might have to replace d,8 here
  }
}
jethrob = \relative c''
{
  \repeat volta 2 {
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g g g |
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g g g |
    \appoggiatura a16 b4 \appoggiatura a16 b4 a8 g e c |
  } \alternative {
    { d8 e g a g2 | }
    { d8 e g a g4 }
  }
}
jethro = { \removeWithTag #'goingdown \jethroa
	   \jethrob
	   \tag #'closer \keepWithTag #'std \closer }
fjethro = { \removeWithTag #'goingup \fjethroa
	    \transpose c c' \jethrob
	    \tag #'closer \keepWithTag #'flute \closer }

melodyapart = \relative c''
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
  %\tag #'bpartup \transpose c c'
}
melodybpart = \relative c''
{
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
melody = { \melodyapart \melodybpart }

alternateapart = \relative c''
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
}
alternatebpart = \relative c''
{
  \repeat volta 2 {
    \grace s16
    cis8 d d4 c8 b b4 |
    cis8 d d4 g,8 a b4 |
    cis8 d d4 c8 b a g |
  } \alternative {
    { fis8 g d' e d2 | }
    { fis,8 g d' e d4 }
  }
}
alternate = { \alternateapart \alternatebpart }

bass = \relative c,
{
  \tag #'key \key g \major
  \time 4/4
  \tag #'partial \partial 8*2
  r4
  \repeat volta 2 {
    g4\4 r d' r | c4 r g\4 r |
    g4\4 r d' r |
  } \alternative {
    { d4 r g,\4 r | }
    { d'4 r g,\4 r | }
  }
  \repeat volta 2 {
    \grace s16 g4\4 r d' r | g,4\4 r d' r | g,4\4 r d' r |
  } \alternative {
    { d4 r g,\4 r }
    { d'4 r g,\4 }
  }
  \tag #'closer
  { r |
    g4\4 r d' r | g,\4 r d' r | a r d r | g,\4 r d'4
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
   } \break
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
    g2\6 d' | c2 g\6 | g2\6 d' |
  } \alternative {
    { d2 g,\6 | }
    { d'2 g,\6 | }
  } \break
  \repeat volta 2 {
    \grace s16
    g2\6 d' | g,2\6 d' | g,2\6 d' |
  } \alternative {
    {  d2 g,\6 | }
    {  d'2 g,4\6-\tag #'closer ~ }
  }
  \tag #'closer
  {
    g4\6 | %\break
    g2\6 d' | g,\6 d' | a d | g,\6 d'4
    \bar "|."
  }
}
gchord = << \tag #'guitar \relative c' { <g d' g>4\arpeggio }
	    \tag #'piano \relative c' { <b d g>4 }
	  >>
cchord = << \tag #'guitar \relative c' { <g c e>4\arpeggio }
	    \tag #'piano \relative c' { <c e g>4 }
	  >>
aschord = << \tag #'guitar \relative c' { <g cis e>4\arpeggio }
	    \tag #'piano \relative c' { <cis e g>4 }
	  >>

guitarB = \relative c'
{
  \time 4/4
  \tag #'partial \partial 8*2
  s4 \arpeggioArrowUp
  \repeat volta 2 {
    s4 \gchord s4 \gchord |
    s4 \cchord s4 \gchord |
    s4 \gchord s4 \gchord |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 \gchord | }
    { s4 <a d fis>\arpeggio s4 \gchord | }
  }
  \repeat volta 2 {
    \grace s16
    s4 \gchord s4 \gchord |
    s4 \gchord s4 \gchord |
    s4 \gchord s4 \gchord |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 \gchord | }
    { s4 <a d fis>\arpeggio s4 }
  }
  \tag #'closer
  {
    <g d' g>4\arpeggio |
    s4 \gchord s4 \gchord |
    s4 \gchord s4 \gchord |
    s4 \aschord s4 <a d fis>\arpeggio |
    s4  \gchord \gchord
    \bar "|."
  }
}
guitarC = \relative c'
{
  \time 4/4
  \tag #'partial \partial 8*2
  s4 \arpeggioArrowUp
  \repeat volta 2 {
    \repeat unfold 3 { c4\rest s4 c4\rest s4 | }
  } \alternative {
    { c4\rest s4 c4\rest s4 | }
    { c4\rest s4 c4\rest s4 | }
  }
  \repeat volta 2 {
    \grace s16
    \repeat unfold 3 { c4\rest s4 c4\rest s4 | }
  } \alternative {
    { c4\rest s4 c4\rest s4 }
    { c4\rest s4 c4\rest }
  }
  \tag #'closer
  { s4 |
    \repeat unfold 3 { c4\rest s4 c4\rest s4 | }
    c4\rest s4 s4
    \bar "|."
  }
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
}

% combined score
\score {
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Trad. Mel."
      \set Staff.shortInstrumentName = "Tra."
      { \tradmel r4 \bar "||" \break }
    >>
    \new Staff << 
      \set Staff.instrumentName = "Melody "
      \set Staff.shortInstrumentName = "Mel."
      \set Staff.printPartCombineTexts = ##f
      \partcombine { \melody r4 \bar "||" } { \alternate r4 }

    >>
    \new Staff <<
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \jethro
    >>
    \new Staff <<
      \set Staff.instrumentName = "Guitar"
      \set Staff.shortInstrumentName = "Gui."
      \clef "treble_8"
      \key g \major
      \new Voice { \guitarA }
      \new Voice { \removeWithTag #'piano \guitarB }
      \new Voice { \guitarC }
    >>
    \new Staff << \clef "bass_8"
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \bass
    >>
  >>
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
    \context Staff = fluteA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \melody \bar "||" \break
    }
    \context Staff = fluteB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \alternate
    }
    \context Staff = fluteC {
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \fjethro
    }
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}

% clarinet score (transposing)
\score {
  %\transposition bes
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c
         \harmonies
    }
    \context Staff = clarinetA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      { \transpose bes c \melodyapart }
      { \transpose bes c' \melodybpart }
      \bar "||" \break
    }
    \context Staff = clarinetB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      { \transpose bes c \alternateapart }
      { \transpose bes c' \alternatebpart }
    }
    \context Staff = clarinetC {
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \transpose bes c'
      \jethro
    }
  >>
  \header {
    instrument = "Clarinet (Bb)"
    breakbefore=##t
  }
}

% saxophone score (transposing)
\score {
  %\transposition ees
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose ees c
         \harmonies
    }
    \context Staff = saxA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      { \transpose ees c \melodyapart }
      { \transpose ees c' \melodybpart }
      \bar "||" \break
    }
    \context Staff = saxB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      { \transpose ees c \alternateapart }
      { \transpose ees c' \alternatebpart }
    }
    \context Staff = saxC {
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \transpose ees c
      \fjethro
    }
  >>
  \header {
    instrument = "Saxophone (Eb)"
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
    \context Staff = celloA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c,, { \clef bass \melody  \bar "||" \break } % 2 octaves down
    }
    \context Staff = celloB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose c c,, { \clef bass \alternate } % 2 octaves down
    }
    \context Staff = celloC {
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \transpose c c,, { \clef bass \jethro } % 2 octaves down
    }
    \context Staff = celloD {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose c c' { \clef bass \bass } % 1 octave up
    }
  >>
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
}

% guitar/bass score (tablature)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = melody {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \melody \break \keepWithTag #'std \closer
    }
    \new TabStaff << 
      \set TabStaff.instrumentName = "Guitar"
      \set TabStaff.shortInstrumentName = "Gui."
      \time 4/4
      \new TabVoice \guitarA
      \new TabVoice \removeWithTag #'piano \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrumentName = "Bass"
      \set TabStaff.shortInstrumentName = "Bas."
      \set TabStaff.stringTunings = #bass-tuning
      \removeWithTag #'key \bass
    >>
  >>
  \header {
    instrument = "Guitar/Bass"
    breakbefore=##t
  }
}

% piano part (same as guitar part)
\score {
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new PianoStaff <<
      \new Staff {
	\set Staff.printPartCombineTexts = ##f
	\partcombine
	{ \transpose c c' \removeWithTag #'guitar \guitarB }
	{ \partcombine { \partial 8*2 r4 } \guitarC }
      }
      \new Staff { \clef bass \guitarA }
    >>
  >>
  \header {
    instrument = "Piano"
    breakbefore=##t
  }
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
	\repeat unfold 2 { \removeWithTag #'closer \removeWithTag #'piano \guitarB }
	\removeWithTag #'partial \removeWithTag #'piano \guitarB % includes closer
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }


}
