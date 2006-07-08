% Lily was here -- automatically converted by /usr/bin/midi2ly from sandy_river_belle-1983.mid
\version "2.3.25"

banjo = \relative c {
  \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
  \set Staff.midiInstrument = "banjo"
  
  % [SEQUENCE_TRACK_NAME] Clawhammer Banjo
\repeat volta 2 {
  d'16( g) <g b,> g\5 e( d) <d b > g\5
  % 2
  d( b') <b b,> g\5 a( d,) <d g\2> g\5 |
  % 3
  d( g) <g b,> g\5 e( d) <d b> g\5
  % 4
  fis\2 d\3 <fis\2 d\3> g\5 a8 <a fis\2>16 g\5 |
  % 5
  d( g) <g b,> g\5 e( d) <d b> g\5
  % 6
  b( d,) <b' b,> g\5 a b, <d g\2> g\5 |
  % 7
  e\2 c\3 <e\2 c\3> g\5 d8\3 <a'\1 fis\2>16 g\5
  % 8
  d\3( e\3) fis8\2 g\2 <d g\2>16 g\5 |
}
  % 9
  d( g) <g b,> g\5 e( d) <d b > g\5
  % 18
  d b a8 g <d' b>16 g\5 |
\repeat volta 2 {
  % 19
  d,( e) g( a) b g <d' b> g\5
  % 20
  a,( g) <d' b> g\5 e8 <d b>16 g\5 |
  % 21
  d,( e) g( a) b g <d' b> g\5
  % 22
  a,( g) <d' b> g\5 e,8 <e' b>16 g\5 |
  % 23
  d,( e) g( a) b g <d' b> g\5
  % 24
  a,( g) <d' b> g\5 e( d) <d b> g\5 |
  % 25
  d( g) <g b,> g\5 e( d) <d b> g\5
  % 26
  d b a8 g <d' b>16 g\5 |
}
  % 35
  e c <e c> g\5 d8\2 <fis d\2>16 g\5
  % 36
  d\2( e\2) fis8 g <g d\2>16 g\5 |
  % 37
  
}

\score {
  <<
    \new TabStaff <<
      \set TabStaff.stringTunings = #banjo-open-g-tuning
      \tempo 4 = 120 
      \time 4/4 
      \key g \major
      \banjo
    >>
  >>
}
\score {
  \unfoldRepeats
  \context Staff=banjo << \banjo >>
  \midi {
    \tempo 4=120
  }
}
