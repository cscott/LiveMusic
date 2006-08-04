\version "2.3.25"
\header {
  title = "Mississippi Sawyer"
  piece = "Traditional"
}
#(set-default-paper-size "letter")

melody = \relative c {
  \time 4/4
  \tempo 2 = 120
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
    \context Staff=melody \melody
    \new TabStaff <<
%      \set TabStaff.stringTunings = #mandolin-tuning
      \set TabStaff.stringTunings = #'(16 9 2 -5)
      \set Staff.instrument = "Mandolin"
      \set Staff.instr = "Man."
      \melody
    >>
  >>
}

% midi score
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody \melody
  >>
  \midi {
    \tempo 2=120
  }
}
