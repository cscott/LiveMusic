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
  meter = 129
}
#(set-default-paper-size "letter")

banjo = \relative c'
{
  \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
  \set Staff.midiInstrument = "banjo"
  \key g \major

  \repeat volta 2 {
    g'4 g8 g\5 d g\5 g g\5
    b8( d,) b' g\5 a( d,) a' g\5
    g8( d) g g\5 d b g' g\5
    fis8 e\2 fis g\5 a fis\2 a g\5
    g8( d) g g\5 d g\5 g g\5
    b8( d,) b' g\5 a( d,) a' g\5
    g8( d) g g\5 d b e( d)
  }
  \alternative {
    { d8 b a( g) g4 d'8 g\5 }
    { d8 b a( g) g4 g8 g'\5 }
  }
  \break

% Part 2

  \repeat volta 2 {
    d,8( e) g g'\5 a,( b\3) b\3 g'\5
    a,8( g) g g'\5 e <d b> d g\5
    d,8( e) g g'\5 a,( b\3) b\3 g'\5
    a,8( g) g g'\5 e,4 g'\5
    d,8( e) g g'\5 a,( b\3) b\3 g'\5
    a,8( g) g g'\5 e b d g\5
    g8( d) g g\5 d g\5 e( g\5)
  }
  \alternative {
    { | d8 b a( g) g4 g8 g'\5 | }
    { | d8 b a( g) g2 | }
  }
}

harmonies = \chordmode {
   \set Staff.midiInstrument = "pizzicato strings"
   \set Score.markFormatter = #format-mark-box-letters
   \repeat volta 2 {
   \mark\default
   g4 g g g
   g4 g g g
   g4 g g g
   d4 d d d
   g4 g g g
   g4 g g g
   g4 g g g
  }
  \alternative {
   { d4/+c d g g }
   { d4/+c d g g }
  }
  \break

% Part 2
  \repeat volta 2 {
  \mark\default
  g4 g g g
  g4 g g g
  g4 g g g
  d4 d e:m e:m
  g4 g g g
  g4 g g g
  g4 g g g
  }
  \alternative {
   { d4/+c d g g }
   { d4/+c d g2 }
  }
}

pianotop = \relative c'''
{
  \key g \major
  #(set-octavation 1)

  \repeat volta 2 {
    r4 g' b g
    r4 g b g
    r4 g b g
    r4 d fis d

    r4 g b g
    r4 g b g
    r4 g b g
  }
  \alternative {
    { r4 d b' g }
    { r4 d b' g }
  }
  \break

% Part 2
  \repeat volta 2 {
    r4 g b g
    r4 g b g
    r4 g b g
    r4 d g e

    r4 g b g
    r4 g b g
    r4 g b g
  }
  \alternative {
    { r4 d b' g }
    { r4 d g2 }
  }
}

pianobot = \relative c,,
{
  \key g \major
  #(set-octavation -1)

  \repeat volta 2 {
   g'2 g' g, g' g, g'
   d,2 d'
   g,2 g' g, g' g, g'
  }
  \alternative {
   { c,2 g' }
   { c,2 g' }
  }
  \break

% Part 2
  \repeat volta 2 {
   g,2 g' g, g' g, g'
   d,2 e'
   g,2 g' g, g' g, g'
  }
  \alternative {
   { d2 g }
   { d2 g }
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
    g4 g'\2 g d'\3
    d'4\3 d'' d'\3 a'\2

    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
   }
   \alternative {
    { c'4\3 d'\3 g2 }
    { c'4\3 d'\3 g2 }
   }
   \break

 % Part 2
   \repeat volta 2 {
    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
    d'4\3 d'' e b

    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
    g4 g'\2 g d'\3
   }
   \alternative {
    { c'4\3 d'\3 g2 }
    { c'4\3 d'\3 g2 }
   }
}

\score {
   <<
      \context ChordNames {
         \set chordChanges = ##t
         \harmonies
      }
   \context Staff = one \banjo %\melody
   \context TabStaff=one <<
     \set TabStaff.stringTunings = #'(2 -1 -5 -10 7)
% G tuning: 2 -1 -5 -10 7 (gDGBD)  banjo-open-g-tuning
% Old G:    4 2 -5 -10 7 (gDGDE)
% Double-C: 2 0 -5 -12 7
% capo'd:   4 2 -3 -10 9  (aDADE)
% D tuning: 2 -3 -6 -10 9 banjo-open-d-tuning
     \banjo
   >>
   \new TabStaff <<
     \set TabStaff.stringTunings = #bass-tuning
     \bass
   >>
   \context PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
     \context Staff = upper << \time 4/4 \pianotop >>
     \context Staff = lower << \clef bass \pianobot >>
   >>
   >>

   \layout{ }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=upper << r4\pianotop >>
    \context Staff=lower << r4\f\pianobot >>
    \context Staff=chords <<r4\p\harmonies >>
%    \context Staff=melody << r4\melody >>
    \context Staff=banjo << r4\banjo >>
    \context Staff=bass << r4\bass >>
  >>
  \midi {
    \tempo 4=129
  }
}
