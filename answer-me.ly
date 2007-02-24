% -*- coding: utf-8; -*-
\version "2.6.3"
\include "alt-chords.ly"
\header {
  title = "Answer Me, My Love"
  source = "some fake book, listening to record"
  style = "Waltz"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2007/Feb/12"
  meter = 240
}
#(set-default-paper-size "letter")
%#(set-global-staff-size 18)
    
melodyA = \relative g' { % g above middle c
    g='8. bes16 bes2 | c8. bes16 bes2 |
    bes='8. aes16 aes8 g aes bes | aes='8. g16 g2 |
    f='8. g16 aes8 c aes f | f8. ees16 ees4 ~ ees8 f |
}
melodyB = \relative ees' { % e above middle c
  ees='8. f16 g8. aes16 bes8. g16 | bes4 f2 |
  aes='8. bes16 c8. d16 ees8. c16 | ees2 r4 |
  d=''8. ees16 d8. bes16 g8. bes16 | c2 r4 |
}
melody = \relative c'' { % c above middle c
  \tag #'key \key ees \major
  \time 3/4
  % force beaming to be in 3 groups of quarter notes
  #(override-auto-beam-setting '(end * * 3 4) 1 4)
  #(override-auto-beam-setting '(end * * 3 4) 2 4)

  d=''8. ees16 d8. bes16 g8. bes16 | c2 r4 |
  c=''8. d16 c8. a16 f8. a16 | bes2 r4 |

  \repeat volta 2 {
    \melodyA
    ees,='8. d16 d4. bes8 | g'2 r4 |
    \melodyA
    ees='8. d16 d4. f8 | ees2 r4 |

    d='8 g bes d bes g | f4 ees4. f8 |
    ees='4 d4. cis8 | d2 r4 |
    d='8 g bes d bes g | f4 ees4. d8 |
    c='8 d ees4 g | f2 r4

    \melodyA
    ees='8. d16 d4 f |
  }
  \alternative {
    { ees='2 r4 |
      \melodyB
      bes'='8. c16 bes8. g16 ees8 g16 ees | f2 r4 |
      \melodyB
      c'=''8. d16 c8. a16 f8. a16 | bes2 r4 |
    }
    { ees,='2. }
  }
  \bar "|."
}

harmonyA = \chordmode {
    ees4 ees ees | bes4 bes bes |
    aes4 aes aes:m | ees4:sus4 ees ees |
    aes4:6 aes:6 aes:6 | ees4:maj7.9 ees:maj7.9 ges:dim |
    f4:m7 bes:7 bes:7 |
}
harmonyB = \chordmode {
      ees4 ees ees | bes4 bes bes |
      aes4 aes aes | ees4 ees ees |
      g4:m g:m g:m |
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \chordProperties
  \time 3/4

  g4:m g:m g:m | f4:7 f:7 f:7 |
  f4 f f | bes4 bes bes |

  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(-2 . 2)
    \mark\default
    \repeat unfold 2 {
      \harmonyA
      ees4 ees ees |
    }

    g4:m g:m g:m | ees4:9 ees:9 ees:9 |
    g4:m6 g:m6 g:m6 | g4:m g:m g:m |
    g4:m g:m g:m | ees4:m6.9 ees:m6.9 ees:m6.9 |
    f4:7 f:7 f:7 | bes4:7 bes:7 bes:7 |

    \harmonyA
  }
  \alternative {
    { ees4 bes:7 bes:7 |
      \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
      \mark\default
      \harmonyB |  f4:m f:m f:m |
      ees4 ees ees | bes4 bes bes |

      \harmonyB | f4:7 f:7 f:7 |
      f4 f f | bes4 bes bes |
    }
    { ees4 ees2 }
  }
}

words = \lyricmode {
  "" "" "" "" "" ""   ""
  "" "" "" "" "" ""   ""

  An -- swer me, oh, my love,
  Just what sin have I been guilt -- y of?
  Tell me how I came to lose your love? __
  Please an -- swer me, my love.

  You were mine yes -- ter -- day,
  I be -- lieved that love was here to stay,
  Won't you tell me where I've gone a -- stray? __
  Please an -- swer me, my love.

  If you're hap -- pi -- er with -- out me,
  I'll try not to care,
  But if you still think a -- bout me,
  Please lis -- ten to my prayer.

  You must know I've been true.
  Won't you say that we can start a -- new.
  In my sor -- row now I turn to you, __
  Please an -- swer me, my love.

  "" "" "" "" "" ""   "" ""
  "" "" "" "" "" ""   ""
  "" "" "" "" "" ""   ""
  "" "" "" "" "" "" ""   ""

  "" "" "" "" "" ""   "" ""
  "" "" "" "" "" ""   ""
  "" "" "" "" "" ""   ""
  "" "" "" "" "" ""   ""

  love.
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
      \set Staff.voltaSpannerDuration = #(ly:make-moment 3 4)
      \melody
%      \partcombine \melody \alternate
    }
    \new Lyrics \lyricsto "melody" { \words }
    \new Staff <<
      \key ees \major
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
      \set Staff.voltaSpannerDuration = #(ly:make-moment 3 4)
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
      \set Staff.voltaSpannerDuration = #(ly:make-moment 3 4)
      \transpose ees d \melody
    }
    \new Lyrics \lyricsto "melody" { \words }
%{
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
%}
  >>
}

%{
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
    \tempo 4=80
  }
}
