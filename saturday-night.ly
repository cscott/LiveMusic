\version "2.6.3"
\header {
  title = "Saturday Night"
  piece = "Traditional"
  style = "Folk"
%  copyright = "Public Domain"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2006/Jul/11"
  meter = 129
}
#(set-default-paper-size "letter")

% melody in bill's sheet music.  the range is a bit much
% for flute.
melody = \relative c'' {
  \tag #'key \key c \major
  \time 2/4
  \tag #'partial \partial 8
  e16 f |
  \repeat volta 2 {
    g8 e16 f a g e8 |
    c8 g e4 |
    f16 g f e d e f g |
    a16 g g fis g8 e'16 f |

    g8 e16 f a g e8 |
    c8 g e4 |
    f16 e f b d c b d |
  }
  \alternative {
    { c8 e c e16 f }
    { c8 e c e,16 g }
  }

% part 2
  \repeat volta 2 {
    c8 g e16 f g e |
    c'8 g e4 |
    f16 g f e d e f g |
    a16 g g fis g8 a16 b |

    c8 g e16 f g e |
    c'8 g e4 |
    f16 e f b d c b d |
  }
  \alternative {
    { c8 e c e,16 g }
    { c8 e c \bar "|." }
  }
}

% harmony to stock melody
alternate = \relative c'' {
  \tag #'key \key c \major
  \time 2/4
  \tag #'partial \partial 8
  c16 d |
  \repeat volta 2 {
    e8 c16 d e e c8 |
    g8 e c4 |
    d16 e d c b c d e |
    e16 c e d d8 c'16 d |

    e8 c16 d e e c8 |
    g8 e c4 |
    d16 c d g b a g b |
  }
  \alternative {
    { g8 c g c16 d }
    { g,8 c g c,16 e }
  }
% part 2
  \repeat volta 2 {
    g8 e c16 d e c |
    g'8 e c4 |
    d16 e d c b c d e |
    e16 c e d d8 fis16 g |

    g8 e c16 d e c |
    g'8 e c4 |
    d16 c d g b a g b |
  }
  \alternative {
    { g8 c g c,16 e }
    { g8 c g \bar "|." }
  }
}

fmelody = \relative c'' {
  \tag #'key \key c \major
  \time 2/4
  \tag #'partial \partial 8
  e16 f |
  \repeat volta 2 {
    g8 e16 f a g e8 |
    c'8 g e4 |
    f16 g f e d e f g |
    a16 g g fis g8 e16 f |

    g8 e16 f a g e8 |
    c'8 g e4 |
    f16 e f b d, c b d |
  }
  \alternative {
    { c8 e c e16 f }
    { c8 e c e16 g }
  }
% part 2
  \repeat volta 2 {
    c8 g e16 f g e |
    c'8 g e4 |
    f16 g f e d e f g |
    a16 g g fis g8 a16 b |

    c8 g e16 f g e |
    c'8 g e4 |
    f16 e f b d c b d |
  }
  \alternative {
    { c8 e c e,16 g }
    { c8 e c \bar "|." }
  }
}

falternate = \relative c'' {
  \tag #'key \key c \major
  \time 2/4
  \tag #'partial \partial 8
  c16 d |
  \repeat volta 2 {
    e8 c16 d e e c8 |
    g'8 e c4 |
    d16 e d c b c d e |
    e16 c e d d8 c16 d |

    e8 c16 d e e c8 |
    g'8 e c4 |
    d16 c d g b, a g b |
  }
  \alternative {
    { g8 c g c16 d }
    { g,8 c g c16 e }
  }
% part 2
  \repeat volta 2 {
    g8 e c16 d e c |
    g'8 e c4 |
    d16 e d c b c d e |
    e16 c e d d8 fis16 g |

    g8 e c16 d e c |
    g'8 e c4 |
    d16 c d g b a g b |
  }
  \alternative {
    { g8 c g c,16 e }
    { g8 c g \bar "|." }
  }
}

% chords
harmonies = \chordmode {
  \time 2/4
  \tag #'partial \partial 8 
  r8 |
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
  \mark\default
  \repeat volta 2 {
    c4 c
    c4 c
    g4 g
    c4 g:7
\break
    c4 c
    c4 c
    g4 g:7
  }
  \alternative {
    { c4 c }
    { c4 c }
  }
  
  \break
% Part 2
  \once\override Score.RehearsalMark #'extra-offset = #'(-4 . 2)
  \repeat volta 2 {
    \mark\default
    c4 c
    c4 c
    g4 g
    c4 g:7
\break
    c4 c
    c4 c
    g4 g:7
  }
  \alternative {
    { c4 c }
    { c4. }
  }
}

% guitar part (also bass and piano)
guitarA = \relative c
{
  \time 2/4
  \tag #'partial \partial 8
  r8
  \repeat volta 2 {
    c4 g | c b | g d' | c g |
    c4 g | c b | g f |
  } \alternative {
    { g4 c | }
    { c4 g | }
  }
  \repeat volta 2 {
    c4 g | c b | g d' | c g |
    c4 g | c b | g f |
  } \alternative {
    { g4 c | }
    { c4 c8 \bar "|." }
  }
} 
guitarAA = \relative c % alternate bass line for cello/piano
{
  \time 2/4
  \tag #'partial \partial 8
  r8
  \repeat volta 2 {
    c4 g | c b | g d' | c g |
    c4 g | c b | g f |
  } \alternative {
    { c4 c' | }
    { c,4 g' | }
  }
  \repeat volta 2 {
    c4 g | c b | g d' | c g |
    c4 g | c b | g f |
  } \alternative {
    { c4 c' | }
    { c,4 c'8 \bar "|." }
  }
} 
guitarB = \relative c'
{
  \time 2/4
  \tag #'partial \partial 8
  s8 \arpeggioUp
  \repeat volta 2 {
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio |
    s8 <g c e>\arpeggio s8 <g d' f>\arpeggio |
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' f>\arpeggio |
  } \alternative {
    { s8 <g c e>\arpeggio s8 <g c e>\arpeggio | }
    { s8 <g c e>\arpeggio s8 <g c e>\arpeggio | }
  }
  \repeat volta 2 {
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio |
    s8 <g c e>\arpeggio s8 <g d' f>\arpeggio |
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' f>\arpeggio |
  } \alternative {
    { s8 <g c e>\arpeggio s8 <g c e>\arpeggio | }
    { s8 <g c e>\arpeggio <g c e> \bar "|." }
  }
}
guitarC = \relative c
{
  \time 2/4
  \tag #'partial \partial 8
  s8 \arpeggioUp
  \repeat volta 2 {
    \repeat unfold 7 { r8 s8 r8 s8 | }
  } \alternative {
    { r8 s8 r8 s8 }
    { r8 s8 r8 s8 }
  }
  \repeat volta 2 {
    \repeat unfold 7 { r8 s8 r8 s8 | }
  } \alternative {
    { r8 s8 r8 s8 }
    { r8 s8 s8 }
  }
}

bass = \transpose c c, \guitarA

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
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \partcombine { \melody \bar "|." } \alternate
    >>
    \new Staff <<
      \set Staff.instrument = \markup{ \column{ "Guitar/" "Bass" } }
      \set Staff.instr = "Gui."
      \clef "treble_8"
      \key g \major
      \new Voice { \guitarA }
      \new Voice { \guitarB }
      \new Voice { \guitarC }
    >>
    %\new Staff << \key g \major \harmonies >>
  >>
}
% melody parts, for flutes (non-transposing)
\score {
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \fmelody
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \falternate
    >>
  >>
}
% melody parts, for clarinet (transposing)
\score {
  \header {
    instrument = "Clarinet"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \transpose bes c' \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \transpose bes c' \fmelody
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose bes c' \falternate
    >>
  >>
}
% melody parts, for cellos (octave-shifted)
\score {
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \transpose c c,, { \clef bass \melody } % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c,, { \clef bass \alternate } % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \transpose c c { \clef bass \guitarAA } % no trans
    >>
  >>
}

% tablature parts
\score {
  \header {
    instrument = "Guitar/Bass"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
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
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new PianoStaff <<
      \new Staff {
	\partcombine
	{ \transpose c c' \guitarB }
	{ \partcombine { \partial 8*2 r4 } \guitarC }
      }
      \new Staff { \clef bass \guitarAA }
    >>
  >>
}

% midi score
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody <<
      \set Staff.midiInstrument = "flute"
      {
	\fmelody r8 | r2*16 | r2*15 | r4 r8
	\removeWithTag #'partial \fmelody
      }
    >>
    \context Staff = alternate <<
      \set Staff.midiInstrument = "flute"
      {
	\partial 8
	r8 | r2*32 | r2*31 | r4 r8
	\removeWithTag #'partial \falternate
      }
    >>
    \context Staff = celloA <<
      \set Staff.midiInstrument = "fiddle"
      {
	\partial 8
	r8 | r2*31 | r4 r8
	\removeWithTag #'partial \melody
      }
    >>
    \context Staff = celloB <<
      \set Staff.midiInstrument = "fiddle"
      {
	\partial 8
	r8 | r2*31 | r4 r8
	\removeWithTag #'partial \alternate
      }
    >>
    \context Staff=guitar <<
      \set Staff.midiInstrument = "acoustic guitar (steel)"
      \time 2/4
      \new Voice \repeat unfold 3 { \guitarA }
      \new Voice \repeat unfold 3 { \guitarB } >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      \repeat unfold 3 { \bass }
    >>
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \repeat unfold 3 { \harmonies }
    >>
  >>
  \midi {
    \tempo 4=120
  }
}
