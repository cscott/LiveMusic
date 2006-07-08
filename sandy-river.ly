\version "2.6.3"
\header {
  title = "Sandy River Belle"
  piece = "Traditional"
  mutopiatitle = "Sandy River Belle"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  source = "Transcribed by ear (no copyright)"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2006/Jul/8"
  meter = 126
}
#(set-default-paper-size "letter")

banjo = \relative c'
{
  \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGDE)" } }
  \set Staff.midiInstrument = "banjo"

  \repeat volta 2 {
    a'4 a8 g\5 e g\5 a g\5
    cis8( e,) cis' g\5 b( e,) b' g\5
    a8( e) a g\5 e d a' g\5
    gis8 g\2 gis g\5 b a\2 b g\5
    a8( e) a g\5 e g\5 a g\5
    cis8( e,) cis' g\5 b( e,) b' g\5
    a8( e) a g\5 e d fis( e)
    e8 d a( g) g4 e'8 g\5
  }
  \break

% Part 2

%  \repeat volta 2 {
%  }
}

harmonies = \chordmode {
   \set Staff.midiInstrument = "pizzicato strings"
   \repeat volta 2 {
   g4 g g g
   g4 g g g
   g4 g g g
   d4 d d d
   g4 g g g
   g4 g g g
   g4 g g g
   d4 d g g
  }
  \break

% Part 2
%  \repeat volta 2 {
%  }
}

\score {
   <<
      \context ChordNames {
         \set chordChanges = ##t
         \harmonies
      }
   \context Staff = one \banjo %\melody
   \context TabStaff <<
     \set TabStaff.stringTunings = #'(4 2 -5 -10 7)
% G tuning: 2 -1 -5 -10 7
% Old G:    4 2 -5 -10 7 (gDGDE)
% Double-C: 2 0 -5 -12 7
% capo'd:   4 2 -3 -10 9  (aDADE)
% D tuning: 2 -3 -6 -10 7
     \banjo
   >>
%   \context PianoStaff <<
%      #(set-accidental-style 'piano-cautionary)
%      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
%     \context Staff = upper << \time 4/4 \pianotop >>
%     \context Staff = lower << \clef bass \pianobot >>
%   >>
   >>

   \layout{ }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
%    \context Staff=upper << r4\pianotop >>
%    \context Staff=lower << r4\f\pianobot >>
    \context Staff=chords <<r4\p\harmonies >>
%    \context Staff=melody << r4\melody >>
    \context Staff=banjo << r4\banjo >>
  >>
  \midi {
    \tempo 4=126
  }
}
