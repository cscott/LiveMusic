% -*- coding: utf-8; -*-
\version "2.10.10"
\include "alt-chords.ly"
\header {
  title = "Non Dimenticar"
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

melody = \relative c'' { % c above middle c
  \tag #'key \key bes \major
  \time 4/4

  R1*4 | % intro

  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    bes='8 c \times 2/3 { d bes c ~ } c4. a8 |
    g='8 a \times 2/3 { bes g a ~ } a4. f8 |
    g='2 f2 ~ |
    f='2 ees8 g bes d |
    c=''1 ~ |
  }
  \alternative {
    { c2 ees,8 f g a | g1 ~ | g2. r4 | }
    { c2 ees,8 f a c | bes1 ~ | }
  }

  bes='4 r4 bes8 a bes b |
  c=''2 f,8 e f g |
  aes='2 bes8 c d bes |
  c=''2 g2 ~ |
  g='2 c8 b c cis |
  d=''2 g,8 fis g a |
  bes='4. a8 bes c d bes |
  d=''2 c2 ~ |
  c=''2. r4 |

  bes='8 c \times 2/3 { d bes c ~ } c4. a8 |
  g='8 a \times 2/3 { bes g a ~ } a4. f8 |
  g='2 f2 ~ |
  f='2 ees8 g bes d |
  c=''2 d8 c bes g |
  c=''2 d8 c bes c |
  % coda should go at end of line, not beginning.
  \override Score.RehearsalMark
  #'break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph #"scripts.coda" }
  bes='1 ~ |
  bes='2. r4 |
  % D.S. should go at end of line, not beginning.
  \override Score.RehearsalMark
  #'break-visibility = #begin-of-line-invisible
  % align right
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark "D.S. al Coda" \break

  R1*6 | % outro
  \bar "|."
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \chordProperties
  \time 4/4

  R1*4 | % intro

  \repeat volta 2 {
    bes4 bes bes:maj7 bes:maj7 |
    bes4 bes g:9 g:9 |
    c4:m7 c:m7 f:7 f:7 |
    b4:dim7 b:dim7 c:m7 c:m7 |
    c4:m7 c4:m7 c4:m7 c4:m7
  }
  \alternative {
    { f4:9 f:9 c:m7 f:aug7 | bes4 bes b:dim7 b:dim7 | c4:m7 c:m7 f:9 f:9 }
    { \set chordChanges = ##f
      f4:9 \set chordChanges = ##t
      f:9 c:m7 f:7 | bes4 bes ees:m6 ees:m6 | }
  }
  bes4:dim7 bes:dim7 bes:7 bes:7 |
  f4:m7 f:m7 bes:7 bes:7 |
  f4:m7 f:m7 bes:7 bes:aug |
  ees4:6 ees:6 ees:6 ees:6 |
  ees4:6 ees:6 ees:6 ees:6 |
  g4:m7 g:m7 c:7 c:7 |
  g4:m7 g:m7 c:7 c:7 |
  c4:m7 c:m7 c:m7 c:m7 |
  f4:7 f:7 f:7 f:7 |

  bes4 bes bes:maj7 bes:maj7 |
  bes4 bes g:9 g:9 |
  c4:m7 c:m7 f:7 f:7 |
  b4:dim7 b:dim7 c:m7 c:m7 |
  f4:9 f:9 c:m7 c:m7 |
  f4:9 f:9 c:m7 ees:m |
  bes4 bes ees ees:m |
  bes2. r4 |

  R1*6 | % outro
}

words = \lyricmode {
  Non Di -- men -- ti -- car __
  means don't for -- get you are __
  my dar -- ling __
  Don't for -- get to be __
  all you mean to me. __
  ""
  just be -- cause you're here. __

  Please do not for -- get
  that our lips have met
  and I've held you tight dear. __
  
  Was it dreams a -- go
  my heart felt this glow,
  or on -- ly just to -- night dear __

  Non Di -- men -- ti -- car __
  al -- though you trav -- el far, __
  my dar -- ling __
  It's my heart you own
  so I'll wait a -- lone
  Non Di -- men -- ti -- car. __
}


\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
}

% combined score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \melody
%      \partcombine \melody \alternate
    }
    \new Lyrics \lyricsto "melody" { \words }
    \new Staff <<
      \key bes \major
      \time 4/4
      \harmonies
    >>
%{
    \new Staff <<
      \set Staff.instrumentName = \markup{ \column{ "Banjo" "capo'd" "to A" } }
      \set Staff.shortInstrumentName = "Ban."
      \transpose bes a \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \bass
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
%}
  >>
  \layout { }
  \header {
    instrument = "Combined Score"
  }
}
				
%{
% flute score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = fluteA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \melody
    }
    \context Staff = fluteB {
      \set Staff.instrumentName = "Alt. Melody"
      \set Staff.shortInstrumentName = "Alt."
      \alternate
    }
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}
%}

% clarinet score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c \harmonies
    }
    \context Staff = clarinetA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose bes c \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
%{
    \context Staff = clarinetB {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes c''' \bass
    }
%}
  >>
  \header {
    instrument = "Clarinet (Bb)"
    breakbefore=##t
  }
}

% saxophone score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose ees c \harmonies
    }
    \context Staff = saxA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose ees c \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
%{
    \context Staff = saxB {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c''' \bass
    }
%}
  >>
  \header {
    instrument = "Saxophone (Eb)"
    breakbefore=##t
  }
}

% banjo/guitar score (capo'ed)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes a \harmonies
    }
    \context Staff = saxA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose bes a \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
%{
    \context Staff = saxB {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes a \bass
    }
%}
  >>
  \header {
    instrument = "Banjo/Guitar"
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
    \context Voice = celloA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c, << \clef bass \melody >> % 1 octave down
    }
    \new Lyrics \lyricsto "celloA" { \words }
%{
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
%}
  >>
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
}

%{
% banjo/bass score (tablature)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes a \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes a \melody
    }
    \new Lyrics \lyricsto "melody" { \words }
    \new TabStaff <<
      \set Staff.instrumentName = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.shortInstrumentName = "Ban."
      \set TabStaff.stringTunings = #banjo-open-g-tuning
      \removeWithTag #'key \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \bass
    >>
  >>
  \header {
    instrument = "Banjo/Guitar/Bass, capo'ed up 1 fret"
    breakbefore=##t
  }
}

% piano/guitar score
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
      \small\partcombine \melody \alternate
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \time 4/4 \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
  >>
  \layout { }
  \header {
    instrument = "Piano/Guitar"
    breakbefore=##t
  }
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


}
