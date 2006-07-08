% Lily was here -- automatically converted by /usr/bin/midi2ly from sandy_river_belle-1983.mid
\version "2.3.25"

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

\score {
  <<
    \new TabStaff <<
      \set TabStaff.stringTunings = #banjo-open-g-tuning
      \tempo 2 = 120 
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
    \tempo 2=120
  }
}
