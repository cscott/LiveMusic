\version "2.10.10"
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
lowg = \relative c g4-\tag #'b \4-\tag #'g \6
lowf = \relative c f,4-\tag #'b \4-\tag #'g \6
guitarA = \relative c
{
  \tag #'key \key c \major
  \time 2/4
  \tag #'partial \partial 8
  r8
  \repeat volta 2 {
    c4 \lowg | c b | \lowg d | c \lowg |
    c4 \lowg | c b | \lowg \lowf |
  } \alternative {
    { \lowg c4 | }
    { c4 \lowg | }
  }
  \repeat volta 2 {
    c4 \lowg | c b | \lowg d | c \lowg |
    c4 \lowg | c b | \lowg \lowf |
  } \alternative {
    { \lowg c4 | }
    { c4 c8 \bar "|." }
  }
} 
guitarAA = \relative c % alternate bass line for cello/piano
{
  \tag #'key \key c \major
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
  \tag #'key \key c \major
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
guitarC = \relative c'
{
  \tag #'key \key c \major
  \time 2/4
  \tag #'partial \partial 8
  s8 \arpeggioUp
  \repeat volta 2 {
    \repeat unfold 7 { d8\rest s8 d8\rest s8 | }
  } \alternative {
    { d8\rest s8 d8\rest s8 }
    { d8\rest s8 d8\rest s8 }
  }
  \repeat volta 2 {
    \repeat unfold 7 { d8\rest s8 d8\rest s8 | }
  } \alternative {
    { d8\rest s8 d8\rest s8 }
    { d8\rest s8 s8 }
  }
}

bass = \transpose c c, { \removeWithTag #'g \guitarA }

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
}

% combined score
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \partcombine { \melody \bar "|." } \alternate
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup{ \column{ "Guitar/" "Bass" } }
      \set Staff.shortInstrumentName = "Gui."
      \clef "treble_8"
      \new Voice { \guitarA }
      \new Voice { \guitarB }
      \new Voice { \guitarC }
    >>
    %\new Staff << \key g \major \harmonies >>
  >>
  \header {
    instrument = "Combined Score"
  }
}
% melody parts, for flutes (non-transposing)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \fmelody
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \falternate
    >>
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}
% melody parts, for clarinet (transposing)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \transpose bes c' \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes c \melody
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose bes c \falternate
    >>
  >>
  \header {
    instrument = "Clarinet"
    breakbefore=##t
  }
}
% parts for saxophone (transposing)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \transpose ees c \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose ees c \fmelody
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose ees c \falternate
    >>
    \new Staff <<
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c'' \guitarA
    >>
  >>
  \header {
    instrument = "Saxophone"
    breakbefore=##t
  }
}
% melody parts, for cellos (octave-shifted)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c,, { \clef bass \melody } % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose c c,, { \clef bass \alternate } % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose c c { \clef bass \guitarAA } % no trans
    >>
  >>
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
}

% tablature parts
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new TabStaff << 
      \set TabStaff.instrumentName = "Guitar"
      \set TabStaff.shortInstrumentName = "Gui."
      \time 4/4
      \new TabVoice { \removeWithTag #'b { \removeWithTag #'key \guitarA } }
      \new TabVoice { \removeWithTag #'key \guitarB }
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
  \header {
    instrument = "Piano"
    breakbefore=##t
  }
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
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \repeat unfold 3 { \harmonies }
    >>
%}
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }


}
