\version "2.6.3"
\header {
  title = "Cripple Creek"
  piece = "Traditional"
  mutopiatitle = "Cripple Creek"
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
  \set Staff.instrument = "Melody "
  \set Staff.midiInstrument = "fiddle"
  \key g \major
  \time 4/4

  \partial 8*2
  e8 fis

  \repeat volta 2 {
  g4 g d b |
  c4 e d2 |
  b4 b a g |
  } \alternative {
    { e4 a g e'8 fis |}
    { e,4 a g2 |}
  }
  \repeat volta 2 {
    a8 b a4 g2 |
    a8 b4. d,2 |
    a'8 b a b a4 g |
    d8 e g a g2 |
  }
  \bar "|."
}
alternate = \relative c''
{
  \set Staff.instrument = "Alt. Melody "
  \set Staff.midiInstrument = "fiddle"
  \key g \major
  \time 4/4

  \partial 8*2
  d16(e)
  \repeat volta 2 {
    g8 g d g | c,16 d e8 d4 |
    g8 g d g |
  } \alternative {
    { d16 b a8 g4 } { d'16 b a8 g4 }
  }
}

harmonies = \chordmode {
   \set Staff.midiInstrument = "pizzicato strings"
   \time 4/4
   \partial 8*2 r4
   \repeat volta 2 {
   g2 g | c g |
   g2 g | 
   } \alternative {
     { d2 g }
     { d2 g }
   }
   \repeat volta 2 {
   g2 g | g g | g g | d g
   }
}

\score {

  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose g a \harmonies
    }
     \new Staff << \transpose g a \melody >>
%     \new Staff << \alternate >>
%    \new TabStaff <<
%      \set TabStaff.stringTunings = #bass-tuning
%      \bass
%    >>
%    \new PianoStaff <<
%      #(set-accidental-style 'piano-cautionary)
%      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
%     \context Staff = upper << \time 4/4 \pianotop >>
%     \context Staff = lower << \clef bass \pianobot >>
%   >>
  >>
  \layout { }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << r4 \melody >>
%    \context Staff=alternate << r4 \alternate >>
%    \context Staff=banjo \transpose f g << r4 \banjo >>
%    \context Staff=bass << r4 \bass >>
    \context Staff=chords << r4\p \harmonies >>
%    \context Staff=upper << r4\pianotop >>
%    \context Staff=lower << r4\pianobot >>
  >>
  \midi {
    \tempo 4=88
  }
}
