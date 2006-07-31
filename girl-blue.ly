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
#(set-global-staff-size 20)

melody = \relative c'' {
  \set Staff.midiInstrument = "fiddle"
  \key g \major
  \partial 8 b16 c |
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
  \break
% part 2
  \repeat volta 2 {
    g8 b16 d g8. fis16 |
    fis8 e e r8 |
    d,8 fis16 a fis'8. e16 |
    e8 d d r8 |
\break
    g,8 b16 d g8. fis16 |
    fis8 e e8. g16 |
    fis8 a e fis |
  }
  \alternative {
    { g4. r8 }
    { g4. \bar "|." }
  }
}

alternate = \relative c'' {
  \set Staff.midiInstrument = "fiddle"
  \key g \major
  \partial 8 g16 a |
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
  \break
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
  \set Staff.midiInstrument = "pizzicato strings"
  \set Score.markFormatter = #format-mark-box-letters
  \partial 8 
  r8 |
  \mark\default
  \repeat volta 2 {
    g4 d:7
    g4 g
    d:7 d
    g g
    
    g4 d:7
    g4 g
    d:7 d
  }
  \alternative {
    { g g }
    { g g }
  }
  
% Part 2
  \mark\default
  \repeat volta 2 {
    g4 g
    a4:m a:m
    d4:7 d:7
    g4 g

    g4 e:m
    a4:m a
    d4:7 d:7
  }
  \alternative {
    { g4 g }
    { g4. }
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
      \set Staff.instrument = "Flute 1"
      \set Staff.instr = "Flu.1"
      \melody
    >>
    \new Staff <<
      \set Staff.instrument = "Flute 2"
      \set Staff.instr = "Flu.2"
      \alternate
    >>
    \new Staff <<
      \set Staff.instrument = "Clarinet 1"
      \set Staff.instr = "Cla.1"
      \transpose bes c' << \melody >>
    >>
    \new Staff <<
      \set Staff.instrument = "Clarinet 2"
      \set Staff.instr = "Cla.2"
      \transpose bes c' << \alternate >>
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
