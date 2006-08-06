\version "2.6.3"
\header {
  title = "The Girl With The Blue Dress On"
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

% melody in bill's sheet music.
melody = \relative c'' {
  \tag #'key \key g \major
  \time 2/4
  \tag #'partial \partial 8
  b16 c |
  \repeat volta 2 {
    d8 b16 d c8 a16 c
    b8 g g16 fis g b |
    a8 fis fis16 e fis g |
    a8 g g b16 c |

    d8 b16 d c8 a16 c |
    b8 g g16 fis g b |
    a8 fis fis16 e fis g |
  }
  \alternative {
    { a8 g g b16 c }
    { a8 g g r8 }
  }

% part 2
  \repeat volta 2 {
    g8 b16 d g8. fis16 |
    fis8 e e r8 |
    d,8 fis16 a fis'8. e16 |
    e8 d d r8 |

    g,8 b16 d g8. fis16 |
    fis8 e e8. g16 |
    fis8 a e fis |
  }
  \alternative {
    { g4. r8 }
    { g4. \bar "|." }
  }
}

% harmony to this melody
alternate = \relative c'' {
  \tag #'key \key g \major
  \time 2/4
  \tag #'partial \partial 8
  g16 a |
  \repeat volta 2 {
    b8 g16 b a8 fis16 a
    g8 d d16 cis d g |
    fis8 d d16 cis d e |
    fis8 d d g16 a |

    b8 g16 b a8 fis16 a
    g8 d d16 cis d g |
    fis8 d d16 cis d e |
  }
  \alternative {
    { d8 b b g'16 a }
    { d,8 b b r8 }
  }
% part 2
  \repeat volta 2 {
    d8 g16 b d8. c16 |
    c8 c c r8 |
    a,8 d16 fis d'8. c16 |
    c8 b b r8 |

    e,8 g16 b e8. d16 |
    d8 c c8. e16 |
    d8 fis c d |
  }
  \alternative {
    { b4. r8 }
    { b4. \bar "|." }
  }
}

harmonies = \chordmode {
  \time 2/4
  \tag #'partial \partial 8 
  r8 |
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
  \mark\default
  \repeat volta 2 {
    g4 d:7
    g4 g
    d:7 d
    g g
\break    
    g4 d:7
    g4 g
    d:7 d
  }
  \alternative {
    { g g }
    { g g }
  }

  \break
% Part 2
  \once\override Score.RehearsalMark #'extra-offset = #'(-4 . 2)
  \mark\default
  \repeat volta 2 {
    g4 g
    a4:m a:m
    d4:7 d:7
    g4 g
\break
    g4 e:m
    a4:m a
    d4:7 d:7
  }
  \alternative {
    { g4 g }
    { g4. }
  }
}

% guitar part (also bass and piano)
guitarA = \relative c
{
  \time 2/4
  \tag #'partial \partial 8
  r8
  \repeat volta 2 {
    g4 c | g b | c d | d g, |
    g4 c | g b | c d |
  } \alternative {
    {  g4 d | }
    {  g4 d | }
  }
  \repeat volta 2 {
    g,4 d' | e a, | d c | g d' |
    g,4 e' | a, a | d c |
  } \alternative {
    { d4 g, | }
    { g4. \bar "|." }
  }
}
guitarAA = \guitarA

guitarB = \relative c'
{
  \time 2/4
  \tag #'partial \partial 8
  s8 \arpeggioUp
  \repeat volta 2 {
    s8 <g d' g>\arpeggio s8 <a d fis>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio |
    s8 <a d fis>\arpeggio s8 <a d fis>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio |

    s8 <g d' g>\arpeggio s8 <a d fis>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio |
    s8 <a d fis>\arpeggio s8 <a d fis>\arpeggio |
  } \alternative {
    { s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio | }
    { s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio | }
  }
  \repeat volta 2 {
    s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio |
    s8 <g c e>\arpeggio s8 <g c e>\arpeggio | % am7
    s8 <a d fis>\arpeggio s8 <a d fis>\arpeggio |
    s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio |

    s8 <g d' g>\arpeggio s8 <g b e>\arpeggio |
    s8 <a c e>\arpeggio s8 <a cis e>\arpeggio |
    s8 <a d fis>\arpeggio s8 <a d fis>\arpeggio |
  } \alternative {
    { s8 <g d' g>\arpeggio s8 <g d' g>\arpeggio | }
    { s8 <g d' g>4\arpeggio }
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
      \melody
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c' \alternate
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
      \transpose bes c' \melody
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose bes c'' \alternate
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
      \transpose c c, { \clef bass \melody } % 1 octave down
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c, { \clef bass \alternate } % 1 octave down
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
	\melody
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
      \new Voice \repeat unfold 2 { \guitarA }
      \new Voice \repeat unfold 2 { \guitarB }
    >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      \repeat unfold 2 { \bass }
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \repeat unfold 2 { \harmonies }
    >>
%}
  >>
  \midi {
    \tempo 4=120
  }
}
