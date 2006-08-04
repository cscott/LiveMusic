\version "2.3.25"
\header {
  title = "Mississippi Sawyer"
  piece = "Traditional"
}
#(set-default-paper-size "letter")

melody = \relative c {
  \time 4/4
  \tempo 2 = 120
  \key d \major
  \partial 8*2
  
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

banjo = \relative c {
  \time 4/4
  \tempo 2 = 120
  \key d \major
  \partial 8*2
  
  fis'8 g |
  \repeat volta 2 {
    a8 fis\2 a8 a\5 a8 fis\2 a8 a\5 |
    a8 fis\2 a8 a\5 b4 c |
    g8 e\2 g8 a\5 g4 g8 e |
    g4 g8 e a4 g |
    e8 fis fis8 a\5 fis e d\2 a'\5 |
    d, e fis a\5 a4 a8 a\5 |
    fis e d a'\5 e d cis\3 a'\5 |
  } \alternative {
    { d,4 b8 a'\5 d,4 b8 a'\5 | }
    { d,4 b8 a'\5 d,4 b8 a'\5 | }
  }
  \repeat volta 2 {
    d,,8 e' fis a\5 a, d fis d |
    a d fis g a4 a8 a\5 |
    e8 d cis a'\5 a, cis cis a'\5 |
    e d cis a a4 r4 |
    e'8 fis fis8 a\5 fis e d\2 a'\5 |
    d, e fis a\5 a4 a8 a\5 |
    fis e d a'\5 e d cis\3 a'\5 |
  } \alternative {
    { d,4 b8 a'\5 d,4 b8 a'\5 | }
    { d,4 b8 a'\5 d,4 \bar "|." }
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
    \context Staff=banjo \transpose c c' \banjo
    \new TabStaff <<
      \set TabStaff.stringTunings = #'(4 2 -3 -10 9)
      \set Staff.instrument = "Banjo"
      \set Staff.instr = "Ban."
      \banjo
    >>
  >>
}

% midi score
\score {
  \unfoldRepeats
  \context PianoStaff <<
%    \context Staff=melody \melody
    \context Staff=banjo \banjo
  >>
  \midi {
    \tempo 2=120
  }
}
