\version "2.12.0"
\header {
  title = "Red-Haired Boy"
  piece = "Traditional"
  mutopiatitle = "Red-Haired Boy"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2010/Feb/5"
  meter = 120
}
#(set-default-paper-size "letter")

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
  oddFooterMarkup = \markup { \fill-line { Uploaded 2010-02-06 03:30 } }
}

linebreaks = {
  \time 2/4
  \partial 8
  s8 |
  \repeat volta 2 {
    s2 \noBreak | s2 \noBreak | s2 \noBreak | s2 \break |
    s2 \noBreak | s2 \noBreak | s2 \noBreak |
  }
  \alternative {
    { s2 \noBreak | }
    { s2 \break | }
  }

  \repeat volta 2 {
    s2 \noBreak | s2 \noBreak | s2 \noBreak | s2 \break |
    s2 \noBreak | s2 \noBreak | s2 \noBreak |
  }
  \alternative {
    { s2 \noBreak | }
    { s4 s8 }
  }
}

melody = \transpose a g \relative a' {
  \set Score.markFormatter = #format-mark-box-letters
  \time 2/4
  \tempo 4=120

  \key a \major

  \partial 8
  a='16 fis |
  \mark\default % A part
  \repeat volta 2 {
    e='8 a a16 b cis d |
    e=''16 fis e cis d8 cis16( d) |
    e=''16 d cis b a b cis a |
    b='16 a e fis g8. fis16 |

    e='8[ a] a16 b cis d |
    e=''16 fis e cis d8 cis16 d |
    e=''8 a16( gis) a fis e d |
  }
  \alternative {
    { cis=''8[ a a8.] a16 | }
    { cis=''8[ a a] e'=''16 fis | }
  }

  \mark\default % B part
  \repeat volta 2 {
    g=''16 fis e fis g fis e fis |
    g=''16 fis e cis d8 cis16( d) |
    e=''16 d cis b a b cis a |
    b='16 a e fis g8. fis16 |

    e='8[ a] a16 b cis d |
    e=''16 fis e cis d8 cis16 d |
    e=''8 a16( gis) a fis e d |
  }
  \alternative {
    { cis=''8[ a a] e'=''16 fis | }
    { cis=''8[ a a] }
  }
  \bar "|."
}

alto = \transpose a g \relative a {
  \time 2/4
  \tempo 4=120

  \key a \major

  \partial 8
  a=8 |
  \mark\default % A part
  \repeat volta 2 {
    cis='8 cis cis16 e a b |
    cis=''16 d cis a fis4 |
    cis='8 e cis a' |
    g='8 e e8. d16 |

    cis='8 cis16 b cis16 e a b |
    cis=''16 d cis a fis8 a |
    d=''8. d16 b8 gis16 fis |
  }
  \alternative {
    { e='8[ cis cis8.] a16 | }
    { e'='8[ cis cis] gis'16 a | }
  }

  \mark\default % B part
  \repeat volta 2 {
    b='16 a g a b a g a |
    b='8 a16 g fis8 e16 fis |
    e='4 cis8 e |
    g='8 e e8. d16 |

    cis='8 cis16 b cis16 e a b |
    cis=''8 cis16 a fis8 a |
    d=''8. d16 b8 gis16 fis |
  }
  \alternative {
    { e='8[ cis cis] gis'16 a | }
    { e='8[ cis cis] }
  }
  \bar "|."
}

% Alternate melody; for reference only (not printed).
melodyB = \transpose a g \relative a' {
  \set Score.markFormatter = #format-mark-box-letters
  \time 2/4
  \tempo 4=120

  \key a \major

  \partial 8
  a='16 fis |
  \mark\default % A part
  \repeat volta 2 {
    e='8 a a16 b cis d |
    e=''16 fis e cis d8 cis16( d) |
    e=''16 d cis b a b cis a |
    b='16 g e fis g8. fis16 |

    e='8 a a16 b cis d |
    e=''16 fis e cis d8 cis16 d |
    e=''8 a16( gis) a fis e d |
  }
  \alternative {
    { cis=''8[ a a8.] fis16 | }
    { cis'=''8[ a a] e'=''16 fis | }
  }

  \mark\default % B part
  \repeat volta 2 {
    g=''16 fis e fis g fis e fis |
    g=''16 fis e cis d8 cis16( d) |
    e=''16 d cis b a b cis a |
    b='16 a e fis g8. fis16 |

    e='8 a a16 b cis d |
    e=''16 fis e cis d8 cis16( d) |
    e=''8 a16( gis) a fis e d |
  }
  \alternative {
    { cis=''8[ a a] e'=''16 fis | }
    { cis=''8[ a a] }
  }
  \bar "|."
}

bass = \transpose a g \relative c, {
  \time 2/4
  \tempo 4=120

  \key a \major

  \partial 8
  r8 |
  \repeat volta 2 {
    a=,,4 e' | a, d | e a, | e b' | a e' | a, d | e d |
  }
  \alternative {
    { a=,,4 e' }
    { a,=,,4 e' }
  }

  \repeat volta 2 {
    e,=,,4 b' | e, d | e a | e b' | a=,, e' | a, d | e e, |
  }
  \alternative {
    { a=,,4 e' }
    { a,=,,4 a8 }
  }
  \bar "|."
}

harmonies = \transpose a g \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \time 2/4

  \partial 8
  r8 |
  \repeat volta 2 {
    a4 a | a d | a a | e:m e:m | a a | a d | e:7 e:7 |
  }
  \alternative {
    { a4 a }
    { \set chordChanges = ##f a4
      \set chordChanges = ##t a }
  }

  \repeat volta 2 {
    e4:m e:m | e:m d | a a | e:m e:m | a a | a d | e:7 e:7 |
  }
  \alternative {
    { a4 a }
    { \set chordChanges = ##f a4
      \set chordChanges = ##t a8 }
  }
  \bar "|."
}

% combined score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         << \harmonies \linebreaks >>
    }
    %\new Staff <<
    %  \set Staff.instrumentName = "Melody 2"
    %  \set Staff.shortInstrumentName = "Mel.2"
    %  \set Staff.printPartCombineTexts = ##f
    %  \melodyB
    %>>
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \set Staff.printPartCombineTexts = ##f
      \partcombine \melody \alto
    >>
    \new Staff <<
      \clef bass
      \transpose c c' \bass
    >>
  >>
  \layout { }
  \header {
    instrument = "Combined Score"
  }
}
				
% flute score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = fluteA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c' \melody
    }
    \context Staff = fluteB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose c c' \alto
    }
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}

% clarinet score (transposed to Bb)
\score {
  <<
    \context Staff = clarinetA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes c' { \melody }
    }
    \context Staff = clarinetB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose bes c' { \alto }

    }
  >>
  \header {
    instrument = "Clarinet (Bb)"
    breakbefore=##t
  }
}

% saxophone score (transposed to Bb)
\score {
  <<
    \context Staff = saxophoneA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose ees c' { \melody }
    }
    \context Staff = saxophoneB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose ees c' { \alto }
    }
    \context Staff = saxophoneC {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c''' \bass
    }
  >>
  \header {
    instrument = "Saxophone (Eb)"
    breakbefore=##t
  }
}

% cello score (octave-shifted)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = celloA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c, << \clef bass \melody >> % 2 octaves down
    }
    \context Staff = celloB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose c c, << \clef bass \alto >> % 2 octaves down
    }
    \context Staff = celloC {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose c c' << \clef bass \bass >> % 1 octave up
    }
  >>
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
}


% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody <<
       \set Staff.midiInstrument = "fiddle"
       r1\pp \melody
     >>
    \context Staff=alto <<
       \set Staff.midiInstrument = "fiddle"
       r1\pp \alto
     >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1\ff
      \bass
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
%}
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }
}
