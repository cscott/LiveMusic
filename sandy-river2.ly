\version "2.12.0"
\header {
  title = "Sandy River Belle"
  piece = "Traditional"
  mutopiatitle = "Sandy River Belle"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  source = "Transcribed by ear (no copyright)"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2006/Jul/8"
  meter = 240
}
#(set-default-paper-size "letter")
%#(set-global-staff-size 18)

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
  oddFooterMarkup = \markup { \fill-line { 2010-02-04 } }
}

melody = \relative c''' {
  \tag #'key \key g \major
  \time 4/4

  \repeat volta 2 {
    g4 g8 g d4 g | b8 a b4 a8 g a4 |
    g4 g8 g d4 g | fis8 e fis g a2 |
    g4 g8 g d4 g | b8 a b4 a8 g a4 |
  } \alternative {
    { g4 g8 g d4 e | d8 b a4 g b8 d | }
    { g4 g8 g d4 e | d8 b a4 g2 | }
  }
  \repeat volta 2 {
    d'8 e g4 b2 | a8 g g4 e'8 d d4 |
    d,8 e g4 b2 | a8 g g4 e2 |
    d8 e g4 b2 | a8 g g4 e'8 d d4 |
  } \alternative {
    { g,4 g8 g d4 e | d8 b a4 g2 | }
    { g''4 g8 g d4 e | d8 b a4 g2 | }
  }
  \bar "|."
}

alternate = \relative c'' {
  \tag #'key \key g \major
  \time 4/4

  \repeat volta 2 {
    d4 d8 d b4 d | g8 fis g4 fis8 e fis4 |
    d4 d8 d b4 d | d8 cis d e fis2 |
    d4 d8 d b4 d | g8 fis g4 fis8 e fis4 |
  } \alternative {
    { d4 d8 d b4 b | a8 g fis4 d g8 b | }
    { d4 d8 d b4 b | a8 g fis4 d2 | }
  }
  \repeat volta 2 {
    b'8 c d4 g2 | fis8 d d4 a'8 b b4 |
    b,8 c d4 g2 | fis8 d d4 b2 |
    b8 c d4 g2 | fis8 d d4 a'8 b b4 |
  } \alternative {
    { d,4 b8 d b4 c | a8 g fis4 d2 | }
    { d''4 b8 d b4 c | a8 g fis4 d2 | }
  }
}

banjo = \relative c { % clawhammer banjo part
  \tag #'key \key g \major
  \time 4/4

  \repeat volta 2 {
  d'8( g) <g b,> g\5 e( d) <d b > g\5 |
  % 2
  d( b') <b b,> g\5 a( d,) <d g\2> g\5 |
  % 3
  d( g) <g b,> g\5 e( d) <d b> g\5 |
  % 4
  fis\2 d\3 <fis\2 d\3> g\5 a4 <a fis\2>8 g\5 |
  % 5
  d( g) <g b,> g\5 e( d) <d b> g\5 |
  % 6
  b( d,) <b' b,> g\5 a b, <d g\2> g\5 |
  }
  \alternative {
  { % 7
  e\2 c\3 <e\2 c\3> g\5 d4\3 <a'\1 fis\2>8 g\5 |
  % 8
  d\3( e\3) fis4\2 g\2 <d g\2>8 g\5 |
  }
  { % 9
  d( g) <g b,> g\5 e( d) <d b > g\5 |
  % 18
  d b a4 g <d' b>8 g\5 |
  }
  }
  \repeat volta 2 {
  % 19
  d,( e) g( a) b g <d' b> g\5 |
  % 20
  a,( g) <d' b> g\5 e4 <d b>8 g\5 |
  % 21
  d,( e) g( a) b g <d' b> g\5 |
  % 22
  a,( g) <d' b> g\5 e,4 <e' b>8 g\5 |
  % 23
  d,( e) g( a) b g <d' b> g\5 |
  % 24
  a,( g) <d' b> g\5 e( d) <d b> g\5 |
  }
  \alternative {
  { % 25
  d( g) <g b,> g\5 e( d) <d b> g\5 |
  % 26
  d b a4 g <d' b>8 g\5 |
  }
  { % 35
  e c <e c> g\5 d4\2 <fis d\2>8 g\5 |
  % 36
  d\2( e\2) fis4 g <g d\2>8 g\5 |
  }  
  }
}

bass = \transpose c c,,
{
  \tag #'key \key g \major
  \time 4/4

  \repeat volta 2 {
    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    d'4\3 d'' d'\3 a'\2

    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
   }
   \alternative {
    { g4\4 g'\2 g\4 d'\3
      c'4\3 d'\3 g2\4 }
    { g4\4 g'\2 g\4 d'\3
      c'4\3 d'\3 g2\4 }
   }

 % Part 2
   \repeat volta 2 {
    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
    d'4\3 d'' e\1 b

    g4\4 g'\2 g\4 d'\3
    g4\4 g'\2 g\4 d'\3
   }
   \alternative {
    { g4\4 g'\2 g\4 d'\3
      c'4\3 d'\3 g2\4 }
    { g4\4 g'\2 g\4 d'\3
      c'4\3 d'\3 g2\4 }
   }
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \time 4/4

  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark\default
    g4 g g g |
    g4 g g g |
    g4 g g g |
    d4 d d d |
\break
    g4 g g g |
    g4 g g g |
  }
  \alternative {
    { g4 g g g |
      d4/+c d g g | }
    { \set chordChanges = ##f
      g4 \set chordChanges = ##t g g g |
      d4/+c d g g | }
  }
\break
   
% Part 2
  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(-3 . 0)
    \mark\default
    g4 g g g |
    g4 g g g |
    g4 g g g |
    d4 d e:m e:m |
\break
    g4 g g g |
    g4 g g g |
  }
  \alternative {
    { g4 g g g |
      d4/+c d g g | }
    { \set chordChanges = ##f
      g4 \set chordChanges = ##t g g g |
      d4/+c d g g | }
  }
}

pianotop = \relative c'''
{
  \tag #'key \key g \major
  \time 4/4
  \ottava #1

  \repeat volta 2 {
    r4 g' b g
    r4 g b g
    r4 g b g
    r4 d fis d

    r4 g b g
    r4 g b g
  }
  \alternative {
    { r4 g b g
      r4 d b' g }
    { r4 g b g
      r4 d b' g }
  }

% Part 2
  \repeat volta 2 {
    r4 g b g
    r4 g b g
    r4 g b g
    r4 d g e

    r4 g b g
    r4 g b g
  }
  \alternative {
    { r4 g b g
      r4 d b' g }
    { r4 g b g
      r4 d g2 }
  }
}

pianobot = \relative c,,
{
  \tag #'key \key g \major
  \time 4/4
  \ottava #-1

  \repeat volta 2 {
   g'2 d' g, d' g, d'
   d,2 a'
   g2 d' g, d'
  }
  \alternative {
   { g,2 d' c g }
   { g2 d' c g }
  }

% Part 2
  \repeat volta 2 {
   g2 d' g, d' g, d'
   a2 e'
   g,2 d' g, d'
  }
  \alternative {
   { g,2 d' c g }
   { g2 d' c g }
  }
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
      \set Staff.instrumentName = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.shortInstrumentName = "Ban."
      \banjo
    >>
%{
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas."
      \bass
    >>
%}
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
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
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c \harmonies
    }
    \context Staff = clarinetA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes c \melody
    }
    \context Staff = clarinetB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose bes c \alternate
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
      \transpose ees c \melody
    }
    \context Staff = saxophoneB {
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose ees c \alternate
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
% banjo/bass score (tablature)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
%{
    \context Staff = fluteA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \melody
    }
%}
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


% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << 
       \set Staff.midiInstrument = "fiddle"
       r1 \melody
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
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1
      \bass
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
%}
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
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }


}
