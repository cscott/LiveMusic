\version "2.10.10"
\header {
  title = "Frosty Morning"
  piece = "Traditional"
  mutopiatitle = "Frosty Morning"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  source = "The Fiddler's Fakebook (melody only)"
  style = "Folk"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2007/Feb/11"
  meter = 240
}
#(set-default-paper-size "letter")
%#(set-global-staff-size 18)


melodya = \relative c' { % middle c
  \tag #'key \key g \major
  \time 4/4
  \repeat volta 2 {
    a'='8 b c b a4 e4 |
    a='8 b c d e4 \times 2/3 { d,8( e fis } |
    g='8) a b a g4 d |
    g='8 a b( c d4) \times 2/3 { e,8( fis g } |

    a='8) b c b a4 e4 |
    a='8 b c d e4 e4 |
    e=''8 d c e d c b g |
  } \alternative {
    { a='4. b8( a4) \times 2/3 { e8( fis g) } | } % slur should extend to 1st note
    { a='4. b8( a2) | }
  }
}
melodyb = \relative c' { % middle c
  \repeat volta 2 {
    e'=''4 a a a |
    a=''8( b) a( g e) d( cis d) |
    e=''8( d) e fis( g fis) g( fis |
    e=''8) d b d( e4) e |
    a,='4 a8 < \parenthesize a >( c4) c8 < \parenthesize c >( |
    d=''8 c) d4 e4 e8 d |
    c=''8 b a c b( a) g e |
  } \alternative {
    { a='4.\( b8 a2\) }
    { a='1 }
  }
  \bar "|."
}
melody = { 
  \melodya
  \melodyb
}
cello = {
  \melodya
  \transpose c' c \melodyb
}

bass = \transpose c c,,
{
  \tag #'key \key g \major
  \time 4/4

  \repeat volta 2 {
    a2 e\4 | a e' | g\4 d' | g\4 d' |
    a2 e\4 | a e' | a g\4 |
   }
   \alternative {
     { a e\4 }
     { a a }
   }

 % Part 2
  \repeat volta 2 {
    a2 e\4 | a e' | g\4 d' | g\4 d' |
    a2 c' | d' e' | a g\4 |
   }
   \alternative {
     { a e\4 }
     { a a }
   }
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \time 4/4

  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark\default
    a4:m a:m a:m a:m |
    a4:m a:m a:m a:m |
    g4 g g g |
    g4 g g g |
\break
    a4:m a:m a:m a:m |
    a4:m a:m a:m a:m |
    a4:m a:m g g |
  }
  \alternative {
    { a4:m a:m a:m a:m | }
    { \set chordChanges = ##f
      a4:m \set chordChanges = ##t a:m a:m a:m | }
  }
\break
   
% Part 2
  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(-3 . 0)
    \mark\default
    a4 a a a |
    a4 a a a |
    g4 g g g |
    g4 g g g |
\break
    a4:m a:m a:m a:m |
    a4:m a:m a:m a:m |
    a4:m a:m g g |
  }
  \alternative {
    { a4:m a:m a:m a:m | }
    { \set chordChanges = ##f
      a4:m \set chordChanges = ##t a:m a:m a:m | }
  }
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
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \melody
%      \partcombine \melody \alternate
    >>
%{
    \new Staff <<
      \set Staff.instrumentName = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.shortInstrumentName = "Ban."
      \banjo
    >>
%}
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \bass
    >>
%{
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
    \context Staff = fluteA {
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
      \transpose bes c' \melodya
      \transpose bes c' \melodyb
    }
    \context Staff = clarinetB {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes c''' \bass
    }
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
      \transpose ees c' \melodya
      \transpose ees c \melodyb
    }
    \context Staff = saxB {
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
      \transpose c c, << \clef bass \cello >> % 1 octave down
    }
%{
    \context Staff = celloB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose c c,, << \clef bass \alternate >> % 2 octaves down
    }
%}
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

%{
% banjo/bass score (tablature)
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
    instrument = "Banjo/Bass"
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
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
    \context Staff=alternate <<
       \set Staff.midiInstrument = "fiddle"
       r1 \alternate
     >>
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      r1\pp
      \banjo
    >>
%}
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1
      %\transpose c c' 
      \bass
    >>
%{
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
      tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }


}
