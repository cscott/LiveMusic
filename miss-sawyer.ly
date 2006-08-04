% Lily was here -- automatically converted by /usr/bin/midi2ly from MS/LM/mssawyer.mid
\version "2.3.25"

melody = \relative c {
  \time 4/4
  \tempo 4 = 96
  \partial 8*2
  
  % [SEQUENCE_TRACK_NAME] main
  fis''8 g |
  \repeat volta 2 {
    a4 a8 fis a4 a8 fis |
    a4 a8 fis a b a fis |
    g4 g8 e g4 g8 e |
    g4 g8 e g a g e |
    fis4 fis8 e fis a fis e |
    d e fis g a4 a8 g |
    fis e d fis e d cis e |
  } \alternative {
    { d4 d8 fis d2 | }
    { d4 d8 fis d4 d8 b | }
  }
  \repeat volta 2 {
    a d fis d a d fis d |
    a d fis g a b a fis |
    a, cis e cis a cis e cis |
    a cis e fis g a g e |
    fis d a fis' a, d fis d |
    a d fis g a b a g |
    fis e d fis e d cis e |
  } \alternative {
    { d4 d8 fis d4 d8 b | }
    { d4 d8 fis d4 \bar "|." }
  }
}

\score {
  <<
    \context Staff=trackA \melody
  >>
}
