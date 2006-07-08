% Lily was here -- automatically converted by /usr/bin/midi2ly from sandy_river_belle-1983.mid
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

banjo = \relative c {
  \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
  \set Staff.midiInstrument = "banjo"
  
  % [SEQUENCE_TRACK_NAME] Clawhammer Banjo
  \repeat volta 2 {
  d'8( g) <g b,> g\5 e( d) <d b > g\5 |
  % 2
  d( b') <b b,> g\5 a( d,) <d g\2> g\5 |
  % 3
  d( g) <g b,> g\5 e( d) <d b> g\5 |
  % 4
  fis\2 d\3 <fis\2 d\3> g\5 a4 <a fis\2>8 g\5 |
  % 5
  d( g) <g b,> g\5 e( d) <d b> g\5 |
  % 6
  b( d,) <b' b,> g\5 a b, <d g\2> g\5 |
  }
  \alternative {
  { % 7
  e\2 c\3 <e\2 c\3> g\5 d4\3 <a'\1 fis\2>8 g\5 |
  % 8
  d\3( e\3) fis4\2 g\2 <d g\2>8 g\5 |
  }
  { % 9
  d( g) <g b,> g\5 e( d) <d b > g\5 |
  % 18
  d b a4 g <d' b>8 g\5 |
  }
  }
  \repeat volta 2 {
  % 19
  d,( e) g( a) b g <d' b> g\5 |
  % 20
  a,( g) <d' b> g\5 e4 <d b>8 g\5 |
  % 21
  d,( e) g( a) b g <d' b> g\5 |
  % 22
  a,( g) <d' b> g\5 e,4 <e' b>8 g\5 |
  % 23
  d,( e) g( a) b g <d' b> g\5 |
  % 24
  a,( g) <d' b> g\5 e( d) <d b> g\5 |
  }
  \alternative {
  { % 25
  d( g) <g b,> g\5 e( d) <d b> g\5 |
  % 26
  d b a4 g <d' b>8 g\5 |
  }
  { % 35
  e c <e c> g\5 d4\2 <fis d\2>8 g\5 |
  % 36
  d\2( e\2) fis4 g <g d\2>8 g\5 |
  }  
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
   }
   \alternative {
    { g4 g'\2 g d'\3
      c'4\3 d'\3 g2 }
    { g4 g'\2 g d'\3
      c'4\3 d'\3 g2 }
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
   }
   \alternative {
    { g4 g'\2 g d'\3
      c'4\3 d'\3 g2 }
    { g4 g'\2 g d'\3
      c'4\3 d'\3 g2 }
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
  }
  \alternative {
   { g4 g g g
     d4/+c d g g }
   { \set chordChanges = ##f
     g4 \set chordChanges = ##t g g g
     d4/+c d g g }
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
  }
  \alternative {
   { g4 g g g
     d4/+c d g g }
   { \set chordChanges = ##f
     g4 \set chordChanges = ##t g g g
     d4/+c d g g }
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
  }
  \alternative {
    { r4 g b g
      r4 d b' g }
    { r4 g b g
      r4 d b' g }
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
  }
  \alternative {
    { r4 g b g
      r4 d b' g }
    { r4 g b g
      r4 d g2 }
  }
}

pianobot = \relative c,,
{
  \key g \major
  #(set-octavation -1)

  \repeat volta 2 {
   g'2 g' g, g' g, g'
   d,2 d'
   g,2 g' g, g'
  }
  \alternative {
   { g,2 g' c, g' }
   { g,2 g' c, g' }
  }
  \break

% Part 2
  \repeat volta 2 {
   g,2 g' g, g' g, g'
   d,2 e'
   g,2 g' g, g'
  }
  \alternative {
   { g,2 g' d g }
   { g,2 g' d g }
  }
}

\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new TabStaff <<
      \set TabStaff.stringTunings = #banjo-open-g-tuning
%     \tempo 2 = 120 
      \time 4/4 
      \key g \major
      \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \bass
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
     \context Staff = upper << \time 4/4 \pianotop >>
     \context Staff = lower << \clef bass \pianobot >>
   >>
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=banjo << r4 \banjo >>
    \context Staff=bass << r4 \bass >>
%    \context Staff=chords << r4\p \harmonies >>
    \context Staff=upper << r4\pianotop >>
    \context Staff=lower << r4\pianobot >>
  >>
  \midi {
    \tempo 2=120
  }
}
