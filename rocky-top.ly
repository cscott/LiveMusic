\version "2.10.10"
\header {
  title = "Rocky Top"
  piece = "Traditional"
  mutopiatitle = "Rocky Top"
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

melody = \relative c''
{
  \set Staff.instrumentName = "Melody "
  \set Staff.midiInstrument = "fiddle"
  \key a \major
  \time 4/4

  e2 e | e e | fis fis | e4 cis a2 |
  a2 a4 a | b a b2 | cis1 | r1 |
  e2 e | e e | fis fis | e4 cis a2 |
  a2 a | e'4 cis b2 | a1 | r1 | \bar "||"

  fis'4 fis fis2~ | fis2 fis | e e | e1 |
  g2 g | g4 fis2 e4 | fis1 | r1 |
  fis1 | fis | e4 cis a2~ | a1 |
  a4 a a2 | b2 b | cis1 | r1 | \bar "||"

  a4 a a2 | b2 b | a1 | r1 |
  a4 a a2 | b2 b | cis1 | r1 |
  a4 a a2 | b2 b | a1( | g1 | a1) | \bar "|."
}

harmonies = \chordmode {
%   \set Staff.midiInstrument = "pizzicato strings"
   a2 a | a a | d d | a a |
   fis:m fis:m | e e | a a | a a |
   a a | a a | d d | a a |
   fis:m fis:m | e e | a a | a a |

   fis:m fis:m | fis:m fis:m | e e | e e |
   g g | g g | d d | d d |
   d d | d d | a a | a a | 
   a a | g d | a a | a a |

   a a | g d | a a | a a |
   a a | g d | a a | a a |
   a a | g d | a a | g g | a a |
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
}

\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
     \new Staff << \melody >>
  >>
  \layout { }
}

\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c' \harmonies
    }
     \new Staff << \transpose bes c' \melody >>
  >>
  \layout { }
 \header {
   instrument = "Clarinet"
   breakbefore=##t
 }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << \melody >>
    \context Staff=chords << \harmonies >>
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 125 2)
      }
    }


}
