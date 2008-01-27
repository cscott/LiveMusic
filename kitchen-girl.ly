\version "2.10.10"
\header {
  title = "The Kitchen Girl"
  piece = "Traditional"
  mutopiatitle = "The Kitchen Girl"
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

melody = \relative c'' { % c above middle c
  \tag #'key \key d \major
  \time 4/4

  \repeat volta 2 {
    <cis='' a'>2 <b g'>2 | e8( fis) e d cis4 cis8 d |
    e=''8( cis) e fis g( a) b a | g4 e e e8 g |
    a=''8( b) a fis g( a) g g | e( fis) e d cis( d) e fis |
    g=''4 d e8 fis e d |
  } \alternative {
    { cis=''4 a a e'8( g) | } % technically, the slur should extend to the first chord
    { cis,=''4 a a <a a>( ~ |}
  }
  \repeat volta 2 {
    <a=' a>8 b) c a b( a) g b | a( b) a g e( d) e g |
    a='4 a8 a c4 d | e4. g8( e4) <a, a>4( ~ |
    <a=' a>8 b) c a b( a) g b | a( b) a g e( g) a b |
    c=''4 a b8( a) g4 |
  } \alternative {
    { a='4. b8( a4) <a a>4 %{\laissezVibrer%} | }
    { a='4. b8( <a a>2) | }
  }
  \bar "|."
}

bass = \transpose c c,,
{
  \tag #'key \key d \major
  \time 4/4

  \repeat volta 2 {
    a2 g\4 | a e' | a e' | e\4 b |
    a2 g\4 | a e' | g\4 e\4 |
   }
   \alternative {
     { a e\4 }
     { a a }
   }

 % Part 2
  \repeat volta 2 {
    a2 g\4 | a e' | a c' | e' e\4 |
    a2 g\4 | a e' | a g\4 |
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
    a4 a g g |
    a4 a a a |
    a4 a a a |
    e4 e e e |
\break
    a4 a g g |
    a4 a a a |
    g4 g e e |
  }
  \alternative {
    { a4 a a a | }
    { \set chordChanges = ##f
      a4 \set chordChanges = ##t a a a | }
  }
\break
   
% Part 2
  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(-3 . 0)
    \mark\default
    a4:m a:m g g |
    a4 a a a |
    a4 a a a |
    e4 e e e |
\break
    a4:m a:m g g |
    a4 a a a |
    a4 a g g |
  }
  \alternative {
    { a4 a a a | }
    { \set chordChanges = ##f
      a4 \set chordChanges = ##t a a a | }
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
