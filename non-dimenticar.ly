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

melody = \relative c' { % middle c
  \tag #'key \key bes \major
  \time 4/4

  % intro
  r8 f='4 f8 bes d, f bes |
  r8 d=''4 a8 f d f a |
  r8 bes='4 g8 ees g bes c |
  f,='4-. r4. f8 d' c |

  % verse
  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    bes='8 c d bes c4. a8 |
    g='8 a bes g a4. f8 |
    g='2 f2 ~ |
    f='2 ees8 g bes d |
    c=''1 ~ |
  }
  \alternative {
    { c2 ees,8 f g a | g1 ~ | g2. r4 | }
    { c2\repeatTie ees,8 f a c | bes1 ~ | }
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

  bes='8 c d bes c4. a8 |
  g='8 a bes g a4. f8 |
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
  bes='4
}
melodytag = \relative c'' { % c above middle c
  % outro
  bes8 bes' bes aes ges aes |
  f=''4 f,8 d' c ees g bes |
  f'='''1 ~ |
  f='''2. r4 |
  \bar "|."
}

alto = \relative c' { % middle c
  \tag #'key \key bes \major
  \time 4/4

  % intro
  r8 d='4 d8 f bes, d f |
  r8 a='4 f8 d a d f |
  r8 g='4 ees8 bes ees g ees |
  c='4-. r4. c8 f ees |

  \repeat volta 2 {
    f='8 a bes f a4. f8 |
    ees='8 f g ees f4. d8 |
    ees='2 c2( |
    b=2) c8 ees g bes |
    g='1( |
  }
  \alternative {
    { f2) c8 d ees f | d2( b | c2.) r4 | }
    { f2\repeatTie c8 d f a | f2( ees | }
  }

  fes='4) r4 g8 f g gis |
  a='2 d,8 cis d ees |
  f='2 g8 a bes g |
  g='2 ees2 ~ |
  ees='2 aes8 g aes a |
  bes='2 ees,8 d ees f |
  g='4. f8 g a bes g |
  bes='2 g2( |
  f='2.) r4 |

  f='8 a bes f a4. f8 |
  ees='8 f g ees f4. d8 |
  ees='2 c2( |
  b=2) c8 ees g bes |
  a='2 bes8 a g ees |
  f='2 bes8 a ges ees |

  f='2( ees4 ges |
  f='2.) r4 |

  % outro
  f='4
}
altotag = \relative f' {
  f8 f' f ees d ees |
  d=''4 d,8 bes' aes c ees g |
  d'='''1 ~ |
  d='''2. r4 |
  \bar "|."
}

% same as alto part, but some very low notes raised.
% I assume the clarinet can play E below middle C (but not Eb)
altoclar = \relative c' { % middle c
  \tag #'key \key bes \major
  \time 4/4

  % intro
  r8 d='4 d8 f d d f |
  r8 a='4 f8 d d d f |
  r8 g='4 ees8 ees ees g ees |
  f='4-. r4. f8 f ees |

  \repeat volta 2 {
    f='8 a bes f a4. f8 |
    ees='8 f g ees f4. d8 |
    ees='2 ees2( |
    d='2) ees8 ees g bes |
    g='1( |
  }
  \alternative {
    { f2) ees8 d ees f | d2( f | ees2.) r4 | }
    { f2\repeatTie ees8 d f a | f2( ges | }
  }

  g='4) r4 g8 f g gis |  % the first g here is really a double-flat
  a='2 d,8 e d ees |
  f='2 g8 a bes g |
  g='2 ees2 ~ |
  ees='2 aes8 g aes a |
  bes='2 ees,8 d ees f |
  g='4. f8 g a bes g |
  bes='2 g2( |
  f='2.) r4 |

  f='8 a bes f a4. f8 |
  ees='8 f g ees f4. d8 |
  ees='2 ees2( |
  d='2) ees8 ees g bes |
  a='2 bes8 a g ees |
  f='2 bes8 a ges ees |

  f='2( ees4 ges |
  f='2.) r4 |

  % outro
  f='4
}

lowbes = \relative c, { < \tag #'n bes \tag #'l \tag #'s \tag #'c bes' >4 }
lowb   = \relative c, { < \tag #'n b   \tag #'l \tag #'s \tag #'c b'   >4 }
lowcx  = \relative c, { < \tag #'n c   \tag #'l \tag #'s \tag #'c c'   >4 }
lowc   = \relative c, { < \tag #'n \tag #'l c   \tag #'s \tag #'c c'   >4 }
lowdes = \relative c, { < \tag #'n \tag #'l \tag #'s des \tag #'c des' >4 }
lowdx = \relative c,  { < \tag #'n \tag #'l \tag #'s d   \tag #'c d'   >4 }
bass = \relative c { % c below middle c
  \tag #'key \tag #'n \tag #'l \tag #'s \tag #'c \key bes \major
  \time 4/4

  % intro
  bes=,4-. r4 r2 |
  d=4-. r4 r2 |
  c=4-. r4 r2 |
  f,=,4-. r4 r2 |

  % verse
  \repeat volta 2 {
    \lowbes f=,4 a d, |
    \lowbes f=,4 d g |
    c=4 g f ees |
    d=,4 \lowb \lowcx ees |
    g=,4 bes c g |
  }
  \alternative {
    { f=,4 a c f, |
      \lowbes f=,4 \lowb f |
      \lowc g=,4 f \lowc | }
    { f=,4 a c f, |
      \lowbes f=,4 ees \lowc |
    }
  }

  \lowbes \lowdes \lowbes \lowdx | 
  f=,4 c' bes a |
  f=,4 c' bes fis |
  ees=,4 bes' c g |
  ees=,4 bes' g c |
  g=,4 d' c bes |
  g=,4 d' c bes |
  \lowc ees,=,4 bes' c |
  f=4 c a ees |
  \lowbes f=,4 a d, |
  \lowbes f=,4 d g |
  c=4 g f ees |
  d=,4 \lowb \lowcx ees |
  f=,4 a c g |
  f=,4 a c ees |
  bes=,4 f ees ges |
  bes=,4
  \tag #'n \relative c, { f4 bes, }
  \tag #'l \tag #'s \tag #'c \relative c { f4 bes }
  r4 |

  % outro
  bes=,4 d ees ges |
  bes=4 f ees c |
  bes=,4 f ees ges |
  bes=,4
  \tag #'n \relative c, { f4 bes, }
  \tag #'l \tag #'s \tag #'c \relative c { f4 bes }
  r4 |
  \bar "|."
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \chordProperties
  \time 4/4

  % intro
  bes4 bes bes bes |
  d4:m d:m d:m d:m |
  ees4:6 ees:6 ees:6 ees:6 |
  f4/c f/c f/c f/c |

  % verse
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

  % outro
  bes4 bes ees:m ees:m |
  bes4 bes ees ees |
  bes4 bes ees ees:m |
  bes2. r4 |
}

words = \lyricmode {
  % intro
  "" "" "" "" "" ""
  "" "" "" "" "" ""
  "" "" "" "" "" ""
  "" "" "" ""
  % verse
  Non Di -- men -- ti -- car
  means don't for -- get you are
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

  Non Di -- men -- ti -- car
  al -- though you trav -- el far,
  my dar -- ling __
  It's my heart you own
  so I'll wait a -- lone
  Non Di -- men -- ti -- car.
  car.
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
    \context Staff = melody <<
      \context Voice = melody { \small\melody\melodytag }
      \context Lyrics = one \lyricsto melody \words
    >>
    \context PianoStaff <<
      \context Staff = upper <<
	\set Staff.printPartCombineTexts = ##f
	\partcombine {\melody\melodytag} {\alto\altotag}
      >>
      \context Staff = lower <<
	%\set Staff.printPartCombineTexts = ##f
	\clef bass
	\keepWithTag #'n \bass
      >>
    >>
%{
    \new Staff <<
	\clef bass
	\key bes \major \time 4/4
	\transpose c c,, \harmonies
    >>
    \new Staff <<
      \set Staff.instrumentName = \markup{ \column{ "Banjo" "capo'd" "to A" } }
      \set Staff.shortInstrumentName = "Ban."
      \transpose bes a \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \keepWithTag #'n \bass
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
				
% flute score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Voice = fluteA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c' { \melody \transpose c c, \melodytag }
    }
    \context Staff = fluteB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose c c' { \alto \transpose c c, \altotag }
    }
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}

% clarinet score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c \harmonies
    }
    \context Staff = clarinetA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose bes c { \melody \melodytag }
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
    \context Staff = clarinetB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose bes c { \altoclar \altotag }
    }
    \context Staff = clarinetC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes c''
      \keepWithTag #'c \bass
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
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose ees c' { \melody \transpose c c, \melodytag }
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
    \context Staff = saxB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \new Voice = alto {
	\transpose ees c' { \alto \transpose c c, \altotag }
      }
    }
    \context Staff = saxC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c''
      \keepWithTag #'s \bass
    }
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
    \context Staff = guiA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose bes a { \melody \melodytag }
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
%{
    \context Staff = guiB {
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
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      % 1 octave down
      \clef bass
      \transpose c c, { \melody \transpose c c, \melodytag }
    }
    \new Lyrics \lyricsto "celloA" { \words }
    \context Staff = celloB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      % 1 octave down
      \clef bass
      \transpose c c, { \alto \transpose c c, \altotag }
    }
    \context Staff = celloC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \clef bass 
      \keepWithTag #'l \bass
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
         \transpose bes a \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes a { \melody \melodytag }
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
      \removeWithTag #'key \keepWithTag #'n \bass
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
      \small\partcombine {\melody\melodytag} \alternate
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
       r1 { \melody \melodytag }
     >>
    \context Staff=alto << 
       \set Staff.midiInstrument = "fiddle"
       r1 { \alto \altotag }
     >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1\ff
      %\transpose c c'
      \keepWithTag #'n \bass
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      r1\pp
      \banjo
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
      tempoWholesPerMinute = #(ly:make-moment 110 4)
      }
    }
}
