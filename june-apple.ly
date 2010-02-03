\version "2.12.0"
\header {
  title = "June Apple"
  piece = "Traditional"
  mutopiatitle = "June Apple"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  source = "Transcribed by ear (no copyright)"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2008/Feb/2"
  meter = 240
}
#(set-default-paper-size "letter")
%#(set-global-staff-size 18)

melodya = \relative c'' {
  \tag #'key \key c \major
  \time 4/4

  \tag #'partial \partial 8*2
  d=''4

  \repeat volta 2 {
    g=''4 d g d | g4 d8 b g4 d'8 e |
    f=''4 d f d | f8 g f e d4 d8 f |
    g=''8 f d f g f d f | g f d b g4 d'8 e |
    f=''8 e f e d b a b |
  } \alternative {
    { g='2. d'4 | }
    { g,='2. b'8 c | }
  }
}
melodyb = \transpose c c' \relative c'' {
  \repeat volta 2 {
    d=''8 c a4 g b8 a | g4 b8 c d4 d |
    f,='4 g a b | c4 e c b8 c |
    d=''8 c a4 g b8 a | g4 b8 c d4 d |
    f,='4 g a8 g f4 |
  } \alternative {
    { g='2. b4 | }
    { g='2. d4 | }
  }
  g='2. \bar "|."
}
melody = { \melodya \melodyb }

alternatea = \relative c'' {
  \tag #'key \key c \major
  \time 4/4

  \tag #'partial \partial 8*2
  b='4

  \repeat volta 2 {
    d=''4 b d b | d4 b8 g d4 b'8 c |
    c=''4 a c a | c8 d c b a4 a8 c |
    d=''8 c b c d c b c | d8 c b g d4 b'8 c |
    c=''8 a c a b g f g |
  } \alternative {
    { d='2. b'4 | }
    { d,='2. g'8 a | }
  }
}
alternateb = \transpose c c' \relative c'' {
  \repeat volta 2 {
    b='8 a f4 d g8 f | d4 g8 a b4 b |
    c,='4 e f d | g4 c g e8 g |
    b='8 a f4 d g8 f | d4 g8 a b4 b |
    c,='4 e f8 e d4 |
  } \alternative {
    { d='2. g4 | }
    { d='2. b4 | }
  }
  d='2. \bar "|."
}
alternate = { \alternatea \alternateb }

bass = \transpose c c,,
{
  \tag #'key \key c \major
  \time 4/4
  \tag #'partial \partial 8*2
  r4

  \repeat volta 2 {
    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    f4\4 f'\2 f\4 c'\3
    f4\4 f'\2 f\4 c'\3

    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    f4\4 f'\2 f\4 c'\3
  }
  \alternative {
    { g4\4 g'\2 g\4 d'\3 }
    { g4\4 g'\2 g\4 d'\3 }
  }

  % Part 2
  \repeat volta 2 {
    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    f4\4 f'\2 f\4 b\3
    c'\3 c''\1 c'\3 g'\2

    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    f4\4 f'\2 f\4 d'\3
  }
  \alternative {
    { g4\4 g'\2 g\4 d'\3 }
    { g4\4 g'\2 g\4 d'\3 }
  }
  g4\4 g'\2 g\4
 }

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \time 4/4
  \tag #'partial \partial 8*2 r4
  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark\default
    g2 g | g g |
    f2 f | f f |
    g2 g | g g |
    f2 f |
  } \alternative {
    { g2 g | }
    { \set chordChanges = ##f
      g2 \set chordChanges = ##t g | }
  }
  \break
  \repeat volta 2 {
    g2 g | g g |
    f2 b:dim | c c |
    g2 g | g g |
    f2 d:m |
  } \alternative {
    { g2 g | }
    { \set chordChanges = ##f
      g2 \set chordChanges = ##t g | }
  }
  \bar ":|"

  %\set Score.repeatCommands = #'((volta "final" ) end-repeat)
  \set chordChanges = ##f
  g2. \set chordChanges = ##t
  %\set Score.repeatCommands = #'((volta #f))
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
      \set Staff.printPartCombineTexts = ##f
      \partcombine \melody \alternate
    >>
%{
    \new Staff <<
      \clef treble
      \harmonies
    >>
%}
    \new Staff <<
      \clef bass
      \transpose c c' \bass
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
      \bass
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
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c \harmonies
    }
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
    \context ChordNames {
         \set chordChanges = ##t
         \transpose ees c \harmonies
    }
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

%{
% banjo/bass score (tablature)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
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
       r1\pp \melody
     >>
    \context Staff=alternate <<
       \set Staff.midiInstrument = "fiddle"
       r1\pp \alternate
     >>
%{
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      r1\pp
      \banjo
    >>
%}
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
