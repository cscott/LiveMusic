\version "2.10.10"
\header {
  title = "Mississippi Sawyer (in C)"
  piece = "Traditional"
}
#(set-default-paper-size "letter")
#(set-global-staff-size 18)

% simplified melody.  A part like mandolin, B part simpler.
simple = \transpose d c \relative c {
  \time 4/4
  \tag #'key \key d \major
  \tag #'partial \partial 8*2
  
  fis''8 g |
  \repeat volta 2 {
    a4 a8 fis a4 a8 fis |
    a4 a8 fis a b a fis |
    g4 g8 e g4 g8 e |
    g4 g8 e g a g e |
    fis4 e d fis8 a |
    d,8 e fis g a4 g |
    fis4 fis8 a e4 cis |
  } \alternative {
    { d4 d8 fis d2 | }
    { d4 d8 fis d4 d8 fis | }
  }
  \repeat volta 2 {
    d4 fis8 a d,4 fis8 a |
    d,8 e fis g a4 d, |
    cis4 e8 a cis,4 e8 a |
    cis,8 d e fis g4 cis, |
    d4 fis8 a d,4 fis8 e |
    d8 e fis g a4 g |
    fis4 fis8 a e4 e8 a
  } \alternative {
    { d,4 d8 fis d4 d8 fis | }
    { d4 d8 fis d4 \bar "|." }
  }
}
% harmony to simplified melody
simpleharmony = \transpose d c \relative c'' {
  \time 4/4
  \tag #'key \key d \major
  \tag #'partial \partial 8*2
  
  d8 e |
  \repeat volta 2 {
    fis4 fis8 d fis4 fis8 d |
    fis4 fis8 d fis g fis d |
    a4 e'8 cis a4 e'8 cis |
    a4 e'8 cis a cis e cis |
    d4 b a d8 fis |
    a,8 b d e fis4 e |
    d4 d8 fis cis4 a |
  } \alternative {
    { fis4 a8 d a2 | }
    { fis4 a8 d a4 a8 d | }
  }
  \repeat volta 2 {
    fis,8 a d4 fis,8 a d4 |
    a8 g fis e d4 a' |
    e8 a cis4 e,8 a cis4 |
    a8 b cis d e4 a, |
    fis8 a d4 fis,8 a d4 |
    a8 g fis e d4 fis |
    a8 d d4 a8 cis cis4 |
  } \alternative {
    { fis,8 a d4 fis,8 a d4 | }
    { fis,8 a d4 fis,4 \bar "|." }
  }
}

mandolin = \transpose d c \relative c {
  \time 4/4
  \tag #'key \key d \major
  \tag #'partial \partial 8*2
  
  fis''8 g |
  \repeat volta 2 {
    a4 a8 fis a4 a8 fis |
    a4 a8 fis a b a fis |
    g4 g8 e g4 g8 e |
    g4 g8 e g a g e |
    fis4 fis8 e fis a fis e |
    d e fis g a4 a8 g |
    fis e d fis e d cis e |
  } \alternative {
    { d4 d8 fis d2 | }
    { d4 d8 fis d4 d8 b | }
  }
  \repeat volta 2 {
    a d fis d a d fis d |
    a d fis g a b a fis |
    a, cis e cis a cis e cis |
    a cis e fis g a g e |
    fis d a fis' a, d fis d |
    a d fis g a b a g |
    fis e d fis e d cis e |
  } \alternative {
    { d4 d8 fis d4 d8 b | }
    { d4 d8 fis d4 \bar "|." }
  }
}

% this variant uses different A parts the 1st & 2nd times through.
% originally arranged for guitar.
longvar = \transpose d c \relative c'' {
  \time 4/4
  \tag #'key \key d \major
  \tag #'partial \partial 8*2
  \times 2/3 { e8 fis g } |
  \mark\default
  a4 a8 fis a4 a8 fis |
  a4 a8 fis a b a fis |
  g4 g8 fis g4 g8 fis |
  g4 g8 g g a g e |
  fis8 g fis e d cis d b |
  a8 b d e fis a g fis |
  e8 g fis e cis a b cis |
  d4 <d fis,> d fis8 g |
  <a c,>4 <a c,> <a c,>8 <a c,> <a c,> <a c,> |
  <a c,>4 <a c,>8 <a c,> <b c,> <b c,> <b c,> a |
  g4 g g e8 fis |
  g8 a g e g a g e |
  fis g fis e d4 a8 cis |
  d8 e fis g a b a g |
  fis8 e d fis e d cis a |
  d4 <d fis,> d \times 2/3 { a8 b cis } |
  \break
  \repeat volta 2 {
    \mark\default
    d4 fis d fis |
    d8 e fis g a fis e d |
    a4 cis8 b a b cis b |
    a8 b cis d e g fis e |
    d4 fis d \times 2/3 { a8 b cis } |
    d4 fis8 g a4 a8 g |
    fis8 e d fis e d cis a |
  }
  \alternative {
    { d4 <d fis,> <d fis,> \times 2/3 { a8 b cis } | }
    { d4 <d fis,> <d fis,> % \times 2/3 { fis8 g gis } |
      \bar "|." }
  }
}

% banjo version, reconstructed from Marc's fragmentary notes.
banjo = \transpose d c \relative c {
  \time 4/4
  \tag #'key \key d \major
  \tag #'partial \partial 8*2
  
  fis'8 g |
  \repeat volta 2 {
    a8 fis\2 a8 a\5 a8 fis\2 a8 a\5 |
    a8 fis\2 a8 a\5 b4 a |
    g8 e\2 g8 a\5 g4 g8 e |
    g4 g8 e a4 g |
    e8 fis fis8 a\5 fis e d\2 a'\5 |
    d, e fis a\5 a4 a8 a\5 |
    fis e d a'\5 e d cis\3 a'\5 |
  } \alternative {
    { d,4 d8 a'\5 d,4 d8 a'\5 | }
    { d,4 d8 a'\5 d,4 d8 a'\5 | }
  }
  \repeat volta 2 {
    d,,8 e' fis a\5 a, d fis d |
    a d fis g a4 a8 a\5 |
    e8 d cis a'\5 a, cis cis a'\5 |
    e d cis a a2 |
    e'8 fis fis8 a\5 fis e d\2 a'\5 |
    d, e fis a\5 a4 a8 a\5 |
    fis e d a'\5 e d cis\3 a'\5 |
  } \alternative {
    { d,4 d8 a'\5 d,4 d8 a'\5 | }
    { d,4 d8 a'\5 d,4 \bar "|." }
  }
}

% chords.
harmonies = \transpose d c \chordmode {
  \tag #'partial \partial 8*2
  r4 |
  \repeat volta 2 {
    \mark\default
    d2 d | d d | a:7 a:7 | a:7 a:7 |
    d2 d | d d | d a |
  } \alternative {
    { d2 d | }
    { d2 d | }
  } \break
  \repeat volta 2 {
    \mark\default
    d2 d | d d | a a | a a |
    d2 d | d d | d a |
  } \alternative {
    { d2 d | }
    { d2 d4 \bar "|." }
  }
}    

% simple bass line
bass = \transpose d c \relative c,
{
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2
  r4
  \repeat volta 2 {
    d2 a | d2 a | a2 e\4 | a2 e\4 |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 a | }
  }
  \repeat volta 2 {
    d2 a | d2 a | a2 e\4 | a2 e\4 |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { a2 d4 \bar "|." }
  }
}

% guitar accompaniment
guitarA = \transpose d c \relative c
{
  \tag #'partial \partial 8*2
  r4
  \repeat volta 2 {
    d2 a | d2 a | a2 e\6 | a2 e\6 |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 a | }
  }
  \repeat volta 2 {
    d2 a | d2 a | a2 e\6 | a2 e\6 |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 s4 }
  }
}

guitarB = \transpose d c \relative c
{
  \tag #'partial \partial 8*2
  s4 \arpeggioUp
  \repeat volta 2 {
    s4 <a' d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a cis e>\arpeggio s4 <a cis e>\arpeggio |
    s4 <a cis e>\arpeggio s4 <a cis e>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <g cis e>\arpeggio |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio | }
    { s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio | }
  }
  \repeat volta 2 {
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a cis e>\arpeggio s4 <a cis e>\arpeggio |
    s4 <a cis e>\arpeggio s4 <a cis e>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <g cis e>\arpeggio |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio | }
    { s4 <a d fis>\arpeggio <a, a' d fis>4\arpeggio }
  }
}
guitarC = \transpose d c \relative c'
{
  \tag #'partial \partial 8*2
  s4 \arpeggioUp
  \repeat volta 2 {
    \repeat unfold 7 { e4\rest s4 e4\rest s4 | }
  } \alternative {
    { e4\rest s4 e4\rest s4 | }
    { e4\rest s4 e4\rest s4 | }
  }
  \repeat volta 2 {
    \repeat unfold 7 { e4\rest s4 e4\rest s4 | }
  } \alternative {
    { e4\rest s4 e4\rest s4 | }
    { e4\rest s4 s4 }
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
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \context Staff=simple <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \set Staff.printPartCombineTexts = ##f
      \partcombine \simple \simpleharmony
    >>
    \context Staff=mandolin <<
      \set Staff.instrumentName = "Solo"
      \set Staff.shortInstrumentName = "Sol."
      \mandolin
    >>
    \context Staff=banjo <<
      \clef "treble_8"
      \set Staff.instrumentName = "Banjo"
      \set Staff.shortInstrumentName = "Ban."
      \banjo
    >>
    \new Staff << 
      \set Staff.instrumentName = \markup{ \column{ "Guitar/" "Bass" } }
      \set Staff.shortInstrumentName = "Gui."
      \clef "treble_8"
      \time 4/4
      \key c \major
      \new Voice { \guitarA }
      \new Voice { \guitarB }
      \new Voice { \guitarC }
    >>
  >>
  \header {
    instrument = "Combined Score"
  }
}

% melody parts, for flutes (non-transposing)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \simple
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \simpleharmony
    >>
    \new Staff <<
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \mandolin
    >>
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \longvar }
  >>
  \header {
    instrument = "Flute Solo" % not new page
    breakbefore=##t
  }
}

% melody parts, for clarinet (transposing)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \transpose bes c' \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes c' \simple
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose bes c' \simpleharmony
    >>
    \new Staff <<
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \transpose bes c' \mandolin
    >>
  >>
  \header {
    instrument = "Clarinet (Bb)"
    breakbefore=##t
  }
}
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \transpose bes c' \longvar }
  >>
  \header {
    instrument = "Clarinet (Bb) Solo" % not new page
    breakbefore=##t
  }
}
% bass part for clarinet
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \transpose bes c''' \bass }
  >>
  \header {
    instrument = "Clarinet (Bb) Bass Line" % not new page
    breakbefore=##t
  }
}

% melody parts, for saxophone (transposing)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \transpose ees c \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose ees c \simple
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose ees c \simpleharmony
    >>
    \new Staff <<
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \transpose ees c \mandolin
    >>
  >>
  \header {
    instrument = "Saxophone (Eb)"
    breakbefore=##t
  }
}
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \transpose ees c \longvar }
  >>
  \header {
    instrument = "Saxophone (Eb) Solo" % not new page
    breakbefore=##t
  }
}
% bass part for saxophone
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \transpose ees c''' \bass }
  >>
  \header {
    instrument = "Saxophone (Eb) Bass Line" % not new page
    breakbefore=##t
  }
}


% melody parts, for cellos (octave-shifted)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c,, { \clef bass \simple } % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose c c,, { \clef bass \simpleharmony } % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrumentName = "Variant"
      \set Staff.shortInstrumentName = "Var."
      \transpose c c,, { \clef bass \mandolin } % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose c c' { \clef bass \bass } % 1 octave up
    >>
  >>
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
}
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \transpose c c,, << \clef bass \longvar >> }
  >>
  \header {
    instrument = "Cello Solo"
    breakbefore=##t
  }
}

% tablature parts
%{ %%% XXX THIS DOESN'T TRANSPOSE XXX
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new TabStaff <<
%     \set TabStaff.stringTunings = #mandolin-tuning
      \set TabStaff.stringTunings = #'(16 9 2 -5)
      \set Staff.instrumentName = "Mandolin"
      \set Staff.shortInstrumentName = "Man."
      \removeWithTag #'key \mandolin
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #'(4 2 -3 -10 9)
      \set Staff.instrumentName = "Banjo"
      \set Staff.shortInstrumentName = "Ban."
      \removeWithTag #'key \banjo
    >>
    \new TabStaff << 
      \set TabStaff.instrumentName = "Guitar"
      \set TabStaff.shortInstrumentName = "Gui."
      \time 4/4
      \new TabVoice \guitarA
      \new TabVoice \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrumentName = "Bass"
      \set TabStaff.shortInstrumentName = "Bas."
      \set TabStaff.stringTunings = #bass-tuning
      \removeWithTag #'key \bass
    >>
  >>
  \header {
    instrument = "Mandolin/Banjo/Guitar/Bass"
    breakbefore=##t
  }
}
%}

% guitar (capo on 3rd fret)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose g e \harmonies
    }
    \context Staff = fluteA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose g e \simple
    }
  >>
  \header {
    instrument = "Guitar (capo on 3rd fret)"
    breakbefore=##t
  }
}

% piano part (same as guitar part)
\score {
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new PianoStaff <<
      \new Staff {
	\set Staff.printPartCombineTexts = ##f
	\partcombine
	{ \transpose c c' \guitarB }
	{ \partcombine { \partial 8*2 r4 } \guitarC }
      }
      \new Staff { \clef bass \guitarA }
    >>
  >>
  \header {
    instrument = "Piano"
    breakbefore=##t
  }
}

% midi score
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=mandolin <<
      \set Staff.midiInstrument = "flute"
      \transpose c c' \mandolin
    >>
    \context Staff=melody <<
      \set Staff.midiInstrument = "fiddle"
      { 
	\partial 8*2
	s4 | s1*31 | s2 s4
	\removeWithTag #'partial \simple
      }
    >>
    \context Staff=harmony <<
      \set Staff.midiInstrument = "fiddle"
      { 
	\partial 8*2
	s4 | s1*31 | s2 s4
	\removeWithTag #'partial \simpleharmony
      }
    >>
    \context Staff=variant <<
      \set Staff.midiInstrument = "piccolo"
      { 
	\partial 8*2
	s4 | s1*63 | s2 s4
	\transpose c c' \removeWithTag #'partial \longvar
      }
    >>
    
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      \repeat unfold 3 { \banjo }
    >>
    \context Staff=guitar <<
      \set Staff.midiInstrument = "acoustic guitar (steel)"
      \time 4/4
      \new Voice \repeat unfold 3 { \guitarA }
      \new Voice \repeat unfold 3 { \guitarB } >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      \repeat unfold 3 { \bass }
    >>
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      \repeat unfold 3 { \harmonies }
    >>
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 2)
      }
    }


}
