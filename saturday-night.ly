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

melody = \relative c'' {
  \set Staff.midiInstrument = "fiddle"
  \key c \major
  \partial 8 e16 f |
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
  \break
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

alternate = \relative c'' {
  \set Staff.midiInstrument = "fiddle"
  \key c \major
  \partial 8 c16 d |
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
  \break
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

harmonies = \chordmode {
  \set Staff.midiInstrument = "pizzicato strings"
  \set Score.markFormatter = #format-mark-box-letters
  \partial 8 
  r8 |
  \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
  \mark\default
  \repeat volta 2 {
    c4 c
    c4 c
    g4 g
    c4 g:7

    c4 c
    c4 c
    g4 g:7
  }
  \alternative {
    { c4 c }
    { c4 c }
  }
  
% Part 2
  \once\override Score.RehearsalMark #'extra-offset = #'(-4 . 2)
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
    { c4. }
  }
}

\score {
  <<
    \time 2/4 
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Flute"
      \set Staff.instr = "Flu."
      \melody
    >>
    \new Staff <<
      \set Staff.instrument = "Clarinet"
      \set Staff.instr = "Cla."
      \transpose bes c' << \melody >>
    >>
    \new Staff <<
      \set Staff.instrument = "Cello 1"
      \set Staff.instr = "Cel.1"
      \transpose c c, << \clef bass \melody >>
    >>
    \new Staff <<
      \set Staff.instrument = "Cello 2"
      \set Staff.instr = "Cel.2"
      \transpose c c, << \clef bass \alternate >>
    >>
%    \new TabStaff <<
%      \set TabStaff.stringTunings = #'(2 0 -7 -10 5) % (fDFCD)
%      \banjo
%    >>
%    \new TabStaff <<
%      \set TabStaff.stringTunings = #bass-tuning
%      \bass
%    >>
%    \new PianoStaff <<
%      #(set-accidental-style 'piano-cautionary)
%      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
%     \context Staff = upper << \time 4/4 \pianotop >>
%     \context Staff = lower << \clef bass \pianobot >>
%   >>
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \time 2/4 
    \context Staff=melody << r4 \melody >>
    \context Staff=alternate << r4 \alternate >>
%    \context Staff=banjo \transpose f g << r4 \banjo >>
%    \context Staff=bass << r4 \bass >>
    \context Staff=chords << r4\p \harmonies >>
%    \context Staff=upper << r4\pianotop >>
%    \context Staff=lower << r4\pianobot >>
  >>
  \midi {
    \tempo 4=120
  }
}
