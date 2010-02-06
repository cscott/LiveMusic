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
  oddFooterMarkup = \markup { \fill-line { 2010-02-04 } }
}

melody = \relative a' {
  \set Score.markFormatter = #format-mark-box-letters
  \time 2/4
  \tempo 4=120

  \key a \major

  \mark\default % A part

  \partial 8
  a8 |
  e='16 a a gis a b cis d |
  e=''16 fis e cis d8 cis16 d |
  e=''16 d cis b a b cis a |
  b='16 g e fis g8 fis |

  e='16 a a gis a b cis d |
  e=''16 fis e cis d8 cis16 d |
  e=''16 a a b a gis e d |
  cis=''8 a a

  % XXX repeat

  \mark\default % B part
  e'=''16 fis |
  g=''16 g fis g e8 fis16 g |
  a=''16 g fis e d8 cis16 d |
  e=''16 d cis b a b cis a |
  b='16 g e fis g8 fis |
  e='16 a a gis a b cis d |
  e=''16 fis e cis d8 cis16 d |
  e=''16 a a b a gis e d |
  cis=''8 a a
  \bar "|."
}

alternate = \relative a' {
}
bass = \relative c, {
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \time 2/4

  \partial 8
  r8 |
  a4 a | a d | a a | e:m e:m | a a | a d | e:7 e:7 | a a8

  r8 |
  e4:m e:m | e:m d | a a | e:m e:m | a a | a d | e:7 e:7 | a a8

  \bar "|."
}

% combined score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \set Staff.printPartCombineTexts = ##f
      \partcombine \melody \alternate
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
      \melody
    }
    \context Staff = fluteB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \alternate
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
      \transpose bes c { \melody }
    }
    \context Staff = clarinetB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose bes c { \alternate }

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
      \transpose ees c { \melody }
    }
    \context Staff = saxophoneB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose ees c { \alternate }
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
      \transpose c c,, << \clef bass \melody >> % 2 octaves down
    }
    \context Staff = celloB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose c c,, << \clef bass \alternate >> % 2 octaves down
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
    \context Staff=alternate <<
       \set Staff.midiInstrument = "fiddle"
       r1\pp \alternate
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
