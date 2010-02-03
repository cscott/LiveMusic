\version "2.6.3"
\header {
  title = "Last Chance"
  piece = "Traditional"
  mutopiatitle = "Last Chance"
  mutopiacomposer = "Hobart Smith"
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

banjo = \relative c {
  \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "fDFCD," "capo'd 2)" } }
  \set Staff.midiInstrument = "banjo"
  
  \repeat volta 2 {
  d'8( f) f f\5 f( d) f f\5 |
  f8( d) f f\5 d c d f\5 |
  d8( g) g f\5 g4 g8 f\5 |
  a8( d,) g f\5 d c d f\5 |

  d8( f) f f\5 f( d) f f\5 |
  d8( f) f f\5 d c d f\5 |
  g,( a) d f\5 g, f f f'\5 |
  d, d' d f\5 d, d' d f\5 |
  }\break

  \repeat volta 2 {
  g,( a) a f'\5 g,( f) f f'\5 |
  d4 c g8( f) f f'\5 |
  g,( a) a f'\5 g,( f) f f'\5 |
  d, d' d f\5 d, d' d f\5 |

  g,( a) a f'\5 g,( f) f f'\5 |
  d4 c g8( f) f f'\5 |
  d, d' d f\5 d, d' d f\5 |
  }
}

harmonies = \chordmode {
   \set Staff.midiInstrument = "pizzicato strings"
   \set Score.markFormatter = #format-mark-box-letters
   \repeat volta 2 {
   \mark\default
   g4 g g g
   g4 g g g
   a4:m a:m a:m a:m
   a4:m a:m a:m/+b a:m
   g4 g g g
   g4 g g g
   c4 c c c
   g4 g g g % XXX this is Em
  }

% Part 2
  \repeat volta 2 {
  \mark\default
   g4 g g g  % XXX: replace G here with Gm or Gdim/Edim
   a4:m a:m a:m a:m
   g4 g g g
   e4:m e:m e:m e:m
   g4 g g g
   a4:m a:m a:m a:m  % XXX this may be Am/B
   g4 g g g          % this is probably Em
  }
}

bass = \transpose c c,,
{
  \set Staff.instrument = "Bass "
  \set Staff.midiInstrument = "acoustic bass"
%  \key g \major

  \repeat volta 2 {
    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
    a4 a'\2 a a'\3
    a4 a'\2 a a'\3

    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
    c'4 c''\1 c' g'\2
    g4 g'\2 g d'\3
   }

 % Part 2
   \repeat volta 2 {
    g4 g'\2 g d'\3
    a4 a'\2 a a'\3
    g4 g'\2 g d'\3
    e4 e'\2 e b'\3

    g4 g'\2 g d'\3
    a4 a'\2 a a'\3
    g4 g'\2 g d'\3
   }
}

\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new TabStaff <<
      \set TabStaff.stringTunings = #'(2 0 -7 -10 5) % (fDFCD)
      \time 4/4 
      \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \bass
    >>
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
    \context Staff=banjo \transpose f g << r4 \banjo >>
    \context Staff=bass << r4 \bass >>
    \context Staff=chords << r4\p \harmonies >>
%    \context Staff=upper << r4\pianotop >>
%    \context Staff=lower << r4\pianobot >>
  >>
  \midi {
    \tempo 2=120
  }
}
