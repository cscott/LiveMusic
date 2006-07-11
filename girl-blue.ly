\version "2.6.3"
\header {
  title = "The Girl With The Blue Dress On"
  piece = "Traditional"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2006/Jul/11"
  meter = 129
}
#(set-default-paper-size "letter")

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

    g,8 b16 d g8. fis16 |
    fis8 e e8. g16 |
    fis8 a e fis |
  }
  \alternative {
    { g4. r8 }
    { g4. \bar "|." }
  }
}

harmonies = \chordmode {
  \set Staff.midiInstrument = "pizzicato strings"
  \set Score.markFormatter = #format-mark-box-letters
  \partial 8 r8 |
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
      \set Staff.instrument = "Melody"
      \melody
    >>
    \new Staff <<
      \set Staff.instrument = "Clarinet"
      \transpose bes c' << \melody >>
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
