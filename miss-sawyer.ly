\version "2.3.25"
\header {
  title = "Mississippi Sawyer"
  piece = "Traditional"
}
#(set-default-paper-size "letter")
#(set-global-staff-size 18)

mandolin = \relative c {
  \set Staff.midiInstrument = "fiddle"
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
  \set Staff.midiInstrument = "banjo"
  \time 4/4
  \tempo 2 = 120
  \key d \major
  \partial 8*2
  
  fis'8 g |
  \repeat volta 2 {
    a8 fis\2 a8 a\5 a8 fis\2 a8 a\5 |
    a8 fis\2 a8 a\5 b4 a |
    g8 e\2 g8 a\5 g4 g8 e |
    g4 g8 e a4 g |
    e8 fis fis8 a\5 fis e d\2 a'\5 |
    d, e fis a\5 a4 a8 a\5 |
    fis e d a'\5 e d cis\3 a'\5 |
  } \alternative {
    { d,4 d8 a'\5 d,4 d8 a'\5 | }
    { d,4 d8 a'\5 d,4 d8 a'\5 | }
  }
  \repeat volta 2 {
    d,,8 e' fis a\5 a, d fis d |
    a d fis g a4 a8 a\5 |
    e8 d cis a'\5 a, cis cis a'\5 |
    e d cis a a2 |
    e'8 fis fis8 a\5 fis e d\2 a'\5 |
    d, e fis a\5 a4 a8 a\5 |
    fis e d a'\5 e d cis\3 a'\5 |
  } \alternative {
    { d,4 d8 a'\5 d,4 d8 a'\5 | }
    { d,4 d8 a'\5 d,4 \bar "|." }
  }
}

harmonies = \chordmode {
  \partial 8*2
  r4 |
  \repeat volta 2 {
    d2 d | d d | g g | g g |
    d2 d | d d | d a |
  } \alternative {
    { d2 d | }
    { d2 d | }
  }
  \repeat volta 2 {
    d2 d | d d | a a | a a |
    d2 d | d d | d a |
  } \alternative {
    { d2 d | }
    { d2 d | }
  }
}    

bass = \relative c,
{
  \set Staff.midiInstrument = "acoustic bass"
  \key d \major
  \time 4/4
  \partial 8*2
  r4
  \repeat volta 2 {
    d2 a | d2 a | g2 d' | g,2 d' |
    d2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 a | }
  }
  \repeat volta 2 {
    d2 a | d2 a | a2 e | a2 e |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { a2 d4 }
  }
}

guitarA = \relative c
{
  \partial 8*2
  r4
  \repeat volta 2 {
    d2 a | d2 a | g2 d' | g,2 d' |
    d2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 a | }
  }
  \repeat volta 2 {
    d2 a | d2 a | a2 e | a2 e |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 s4 }
  }
}

guitarB = \relative c
{
  \partial 8*2
  s4 \arpeggioUp
  \repeat volta 2 {
    s4 <a' d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <g cis e>\arpeggio |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio | }
    { s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio | }
  }
  \repeat volta 2 {
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <g cis e>\arpeggio s4 <g cis e>\arpeggio |
    s4 <g cis e>\arpeggio s4 <g cis e>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <g cis e>\arpeggio |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio | }
    { s4 <a d fis>\arpeggio <a, a' d fis>4 }
  }
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  raggedbottom = ##t
}

% combined score
\score {
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \context Staff=mandolin <<
      \set Staff.instrument = "Mandolin"
      \set Staff.instr = "Man."
      \mandolin
    >>
    \new TabStaff <<
%      \set TabStaff.stringTunings = #mandolin-tuning
      \set TabStaff.stringTunings = #'(16 9 2 -5)
      \set Staff.instrument = "Mandolin"
      \set Staff.instr = "Man."
      \mandolin
    >>
    \context Staff=banjo <<
      \clef "treble_8"
      \set Staff.instrument = "Banjo"
      \set Staff.instr = "Ban."
      \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #'(4 2 -3 -10 9)
      \set Staff.instrument = "Banjo"
      \set Staff.instr = "Ban."
      \banjo
    >>
%{
    \new Staff << 
      \set Staff.instrument = "Guitar"
      \set Staff.instr = "Gui."
      \clef "treble_8"
      \time 4/4
      \key d \major
      \new Voice { \guitarA }
      \new Voice { \guitarB }
    >>
%}
    \new TabStaff << 
      \set TabStaff.instrument = "Guitar"
      \set TabStaff.instr = "Gui."
      \time 4/4
      \new TabVoice \guitarA
      \new TabVoice \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrument = "Bass"
      \set TabStaff.instr = "Bas."
      \set TabStaff.stringTunings = #bass-tuning
      \bass
    >>
  >>
}

% midi score
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=mandolin <<
      \set Staff.midiInstrument = "fiddle"
      \mandolin
    >>
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      \banjo
    >>
    \context Staff=guitar <<
      \set Staff.midiInstrument = "acoustic guitar (steel)"
      \time 4/4
      \new Voice \guitarA
      \new Voice \guitarB >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      \bass
    >>
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \harmonies
    >>
  >>
  \midi {
    \tempo 2=120
  }
}
