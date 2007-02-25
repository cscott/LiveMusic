% -*- coding: utf-8; -*-
\version "2.6.3"
\include "alt-chords.ly"
\header {
  title = "One Toke Over The Line"
  source = "some fake book, listening to record"
  style = "Two Step"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2007/Feb/25"
  meter = 240
}
#(set-default-paper-size "letter")
%#(set-global-staff-size 18)

melody = \relative c' { % middle c
  \tag #'key \key d \major
  \time 4/4

  fis='4 a a8 a a a~ |
  a='4 a fis d |
  b=4 d d8 d d d~ |
  d='8 \melisma b a4 \melismaEnd r2 |

  fis'='8 a a4 a a8 a |
  b='4 b g e |
  b=4 d fis8 d d d~ |
  d='2 r2 |

  fis='8 a a a a a a4 |
  a='4 a fis d |
  b=8 d d d d d fis4 |
  e='8 \melisma d4. \melismaEnd r2 |

  fis='8 a a4 a a8 a |
  b='4 b g e |
  b=4 d fis8 d d d~ |
  d='2 r2 |

  % Fine
  \bar "||"

  d'=''2. d8 d |
  b='8 \melisma a4. ~ a2 |
  g4. \melismaEnd fis8 g a fis4 ~ |
  fis2 r2 |

  r2 a='4 a8 a |
  b='4 d r2 |
  r8 fis=''8 fis fis fis4 d8 e8 ~ |
  e=''2 r2 |

  r8 d=''8 fis d fis4 fis8 d |
  fis=''8 fis fis fis e \melisma d4. |
  b='4 \melismaEnd b8 a b g a4 ~ |
  a='4 r4 r2 |

  r8 a='8 a a b b d d |
  fis=''8 fis4. fis8 e d4 |
  r8 d=''8 e d a' g4 fis8 ~ |
  fis=''4 a, b d |

  \bar "|."
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \chordProperties
  \time 4/4

  \repeat unfold 2 {
    d4 d d d | d d d d | g g g g | d d d d |
    d4 d fis:m/cis fis:m/cis | b:m b:m e:m e:m | g g a a | d d d d |
  }
  
  d4 d d d | d d d d | g g g g | d d d d |
  d4 d fis:m/cis fis:m/cis | b:m b:m e:m e:m | g g g g | a a a a | 

  d4 d d d | d d d d | g g g g | d d d d |
  d4 d b:m b:m | d d e:m e:m | g g a a | d d d d |
}

words = \lyricmode {
  One Toke O -- ver The Line __ sweet Je -- sus,
  One Toke O -- ver The Line. __

  Sit -- tin' down -- town in a rail -- way sta -- tion
  One Toke O -- ver The Line. __

  Wait -- in' for the train that goes home sweet Ma -- ry
  hop -- in' that the train is on time. __

  Sit -- tin' down -- town in a rail -- way sta -- tion
  One Toke O -- ver The Line. __

  Who do you love? __ I hope it's me __
  I been a chang -- in' as you can plain -- ly see __
  I felt the joy and I learned a -- bout the pain __
  That my Ma -- ma said __
  if I should chose to make a make a part of me
  would sure -- ly strike me dead __ and now I'm
}


\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  raggedbottom = ##t
}

% combined score
\score {
  \header {
    instrument = "Combined Score"
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = melody {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \set Staff.voltaSpannerDuration = #(ly:make-moment 4 4)
      \melody
%      \partcombine \melody \alternate
    }
    \new Lyrics \lyricsto "melody" { \words }
    \new Staff <<
      \key d \major
      \time 3/4
      \harmonies
    >>
%{
    \new Staff <<
      \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.instr = "Ban."
      \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrument = "Bass "
      \set Staff.instr = "Bas."
      \removeWithTag #'key \bass
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.instr = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
%}
  >>
  \layout { }
}
				
%{
% flute score
\score {
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = fluteA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \melody
    }
    \context Staff = fluteB {
      \set Staff.instrument = "Alt. Melody"
      \set Staff.instr = "Alt."
      \alternate
    }
  >>
}
%}

% cello score (octave-shifted)
\score {
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = celloA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \set Staff.voltaSpannerDuration = #(ly:make-moment 4 4)
      \transpose c c, << \clef bass \melody >> % 1 octave down
    }
    \new Lyrics \lyricsto "celloA" { \words }
%{
    \context Staff = celloB {
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c,, << \clef bass \alternate >> % 2 octaves down
    }
    \context Staff = celloC {
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \transpose c c' << \clef bass \bass >> % 1 octave up
    }
%}
  >>
}

%{
% banjo/bass score (tablature)
\score {
  \header {
    instrument = "Banjo/Guitar/Bass, capo'ed up 1 fret"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose ees d \harmonies
    }
    \context Voice = melody {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \set Staff.voltaSpannerDuration = #(ly:make-moment 4 4)
      \transpose ees d \melody
    }
    \new Lyrics \lyricsto "melody" { \words }
    \new TabStaff <<
      \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.instr = "Ban."
      \set TabStaff.stringTunings = #banjo-open-g-tuning
      \removeWithTag #'key \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrument = "Bass "
      \set Staff.instr = "Bas."
      \removeWithTag #'key \bass
    >>
  >>
}

% piano/guitar score
\score {
  \header {
    instrument = "Piano/Guitar"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \set Staff.printPartCombineTexts = ##f
      \small\partcombine \melody \alternate
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.instr = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \time 4/4 \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
  >>
  \layout { }
}
%}

% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << 
       \set Staff.midiInstrument = "fiddle"
       r1 \melody
     >>
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
%{
    \context Staff=alternate <<
       \set Staff.midiInstrument = "fiddle"
       r1 \alternate
     >>
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      r1\pp
      \banjo
    >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1
      \transpose c c' \bass
    >>
    \context Staff=upper <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \pianotop
    >>
    \context Staff=lower <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \pianobot
    >>
%}
  >>
  \midi {
    \tempo 4=120
  }
}
