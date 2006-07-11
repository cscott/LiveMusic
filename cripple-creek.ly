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
  \key c \major
  \time 2/4

  \partial 16*2
  g'16(b)

  \repeat volta 2 {
  c16 b c(d)  c a(g) e |
  f16 g(a) c  g8 c,=''16(d) |
  e16 d c e  d(c) a f | 
  g16(a) c d  c8 g'=''16(b) |
  c16 b c(d)  c a(g) e |
  f16 g(a) c  g8 c,=''16(d) |
  e16 d c e  d(c) a f | 
  g16(a) c d  c4 |
  }
  \repeat volta 2 {
  e=''16 d c e  d c d c |
  e16 d c( a)  g(a) c d |
  e16 d c e  d(c) a f |
  g(a) c d  c4 |
  }
}

harmonies = \chordmode {
%   \set Staff.midiInstrument = "pizzicato strings"
   \time 2/4
   \partial 16*2 r8
   \repeat volta 2 {
   g4 g
   g4 g
   c4 c
   g4 g
   g4 g
   g4 g
   c4 c/+d
   g4 g
   }
   \repeat volta 2 {
   g4 g
   g4 g
   c4 c
   g4 g
   }
}

\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
     \new Staff << \melody >>
%    \new TabStaff <<
%      \set TabStaff.stringTunings = #'(2 0 -7 -10 5) % (fDFCD)
%      \time 4/4 
%      \banjo
%    >>
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
