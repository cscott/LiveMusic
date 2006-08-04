\version "2.3.25"
\header {
  title = "Mississippi Sawyer"
  piece = "Traditional"
}
#(set-default-paper-size "letter")
#(set-global-staff-size 18)

% simplified melody.  A part like mandolin, B part simpler.
simple = \relative c {
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
simpleharmony = \relative c'' {
  \time 4/4
  \tag #'key \key d \major
  \tag #'partial \partial 8*2
  
  d8 e |
  \repeat volta 2 {
    fis4 fis8 d fis4 fis8 d |
    fis4 fis8 d fis g fis d |
    b4 d8 cis b4 d8 cis |
    b4 d8 cis b cis d cis |
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

mandolin = \relative c {
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
longvar = \relative c'' {
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
banjo = \relative c {
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
harmonies = \chordmode {
  \tag #'partial \partial 8*2
  r4 |
  \repeat volta 2 {
    \mark\default
    d2 d | d d | g g | g g |
    d2 d | d d | d a |
  } \alternative {
    { d2 d | }
    { d2 d | }
  }
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
bass = \relative c,
{
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2
  r4
  \repeat volta 2 {
    d2 a | d2 a | g2 d' | g,2 d' |
    d2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 a | }
  }
  \repeat volta 2 {
    d2 a | d2 a | a2 e | a2 e |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { a2 d4 }
  }
}

% guitar accompaniment
guitarA = \relative c
{
  \tag #'partial \partial 8*2
  r4
  \repeat volta 2 {
    d2 a | d2 a | g2 d' | g,2 d' |
    d2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 a | }
  }
  \repeat volta 2 {
    d2 a | d2 a | a2 e | a2 e |
    d'2 a | d2 a | d2 a |
  } \alternative {
    { d2 a | }
    { d2 s4 }
  }
}

guitarB = \relative c
{
  \tag #'partial \partial 8*2
  s4 \arpeggioUp
  \repeat volta 2 {
    s4 <a' d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
    s4 <g d' g>\arpeggio s4 <g d' g>\arpeggio |
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
    s4 <g cis e>\arpeggio s4 <g cis e>\arpeggio |
    s4 <g cis e>\arpeggio s4 <g cis e>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio |
    s4 <a d fis>\arpeggio s4 <g cis e>\arpeggio |
  } \alternative {
    { s4 <a d fis>\arpeggio s4 <a d fis>\arpeggio | }
    { s4 <a d fis>\arpeggio <a, a' d fis>4\arpeggio }
  }
}
guitarC = \relative c
{
  \tag #'partial \partial 8*2
  s4 \arpeggioUp
  \repeat volta 2 {
    \repeat unfold 7 { r4 s4 r4 s4 | }
  } \alternative {
    { r4 s4 r4 s4 | }
    { r4 s4 r4 s4 | }
  }
  \repeat volta 2 {
    \repeat unfold 7 { r4 s4 r4 s4 | }
  } \alternative {
    { r4 s4 r4 s4 | }
    { r4 s4 s4 }
  }
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
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \context Staff=simple <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \partcombine \simple \simpleharmony
    >>
    \context Staff=mandolin <<
      \set Staff.instrument = "Solo"
      \set Staff.instr = "Sol."
      \mandolin
    >>
    \context Staff=banjo <<
      \clef "treble_8"
      \set Staff.instrument = "Banjo"
      \set Staff.instr = "Ban."
      \banjo
    >>
    \new Staff << 
      \set Staff.instrument = \markup{ \column{ "Guitar/" "Bass" } }
      \set Staff.instr = "Gui."
      \clef "treble_8"
      \time 4/4
      \key d \major
      \new Voice { \guitarA }
      \new Voice { \guitarB }
      \new Voice { \guitarC }
    >>
  >>
}

% melody parts, for flutes (non-transposing)
\score {
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \simple
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \simpleharmony
    >>
    \new Staff <<
      \set Staff.instrument = "Variant"
      \set Staff.instr = "Var."
      \mandolin
    >>
  >>
}
\score {
  \header {
    instrument = "Flute Solo" % not new page
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \longvar }
  >>
}

% melody parts, for cellos (octave-shifted)
\score {
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \transpose c c,, << \clef bass \simple >> % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c,, << \clef bass \simpleharmony >> % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrument = "Variant"
      \set Staff.instr = "Var."
      \transpose c c,, << \clef bass \mandolin >> % 2 octaves down
    >>
    \new Staff <<
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \transpose c c' << \clef bass \bass >> % 1 octave up
    >>
  >>
}
\score {
  \header {
    instrument = "Cello Solo"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \new Staff { \transpose c c,, << \clef bass \longvar >> }
  >>
}

% tablature parts
\score {
  \header {
    instrument = "Mandolin/Banjo/Guitar/Bass"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new TabStaff <<
%     \set TabStaff.stringTunings = #mandolin-tuning
      \set TabStaff.stringTunings = #'(16 9 2 -5)
      \set Staff.instrument = "Mandolin"
      \set Staff.instr = "Man."
      \removeWithTag #'key \mandolin
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #'(4 2 -3 -10 9)
      \set Staff.instrument = "Banjo"
      \set Staff.instr = "Ban."
      \removeWithTag #'key \banjo
    >>
    \new TabStaff << 
      \set TabStaff.instrument = "Guitar"
      \set TabStaff.instr = "Gui."
      \time 4/4
      \new TabVoice \guitarA
      \new TabVoice \guitarB
    >>
    \new TabStaff <<
      \set TabStaff.instrument = "Bass"
      \set TabStaff.instr = "Bas."
      \set TabStaff.stringTunings = #bass-tuning
      \removeWithTag #'key \bass
    >>
  >>
}

% piano part (same as guitar part)
\score {
  \header {
    instrument = "Piano"
    breakbefore=##t
  }
  <<
    \set Score.markFormatter = #format-mark-box-letters
    \context ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new PianoStaff <<
      \new Staff {
	\partcombine
	{ \transpose c c' \guitarB }
	{ \partcombine { \partial 8*2 r4 } \guitarC }
      }
      \new Staff { \clef bass \guitarA }
    >>
  >>
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
    \tempo 2=120
  }
}
