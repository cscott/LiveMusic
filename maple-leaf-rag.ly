% -*- coding: utf-8; -*-
\version "2.12.0"
\include "alt-chords.ly"
\header {
  title = "Maple Leaf Rag"
  source = "Joplin, additional arrangement by C. Scott"
  style = "Round Dance (polka/two-step)"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2009/Feb/2"
  meter = 240 % ???
}
#(set-default-paper-size "letter")
#(set-global-staff-size 18)

pianotopA = {
    r16 aes'16 <ees' ees''> aes' c'' <ees' ees''>8 g'16 |
    <ees' ees''>16 g' bes' <ees' ees''> ~ <ees' ees''>4 |
    r16 aes'16 <ees' ees''> aes' c'' <ees' ees''>8 g'16 |
    <ees' ees''>16 g' bes' <ees' ees''> ~ <ees' ees''>8 r16 <ees' ees''>16 |

    r16 aes'16 ces'' <fes' fes''> r <ees' ees''> r <ees' ees''> |
    r16 aes'16 ces'' <fes' fes''> r <ees' ees''> r8 |
    \change Staff = "lower" \stemUp \slurUp
    r16 aes,(^\markup{ \italic "r.h." } ces aes) r aes( ces' aes') |
    \change Staff = "upper" \stemNeutral \slurNeutral
    r16 aes'( ces'' aes'') r aes''( ces''' aes''') |

    <aes'' aes'''>8 <aes'' aes'''> <aes'' aes'''> <aes'' aes'''>16 <aes'' aes'''> ~ |
    <aes'' aes'''>16 ees''' <aes'' f'''> c''' ees''' <aes'' f'''>8 <aes'' fes''>16 ~ |
    <aes'' fes''>16 bes'' <fes'' ces'''> aes'' bes'' <ees'' c'''>8 aes''16 |
    <ees'' c'''>16 aes'' <ees'' bes''>8 <ees'' aes''> r16 <aes' aes''> ~ |

    <aes' aes''>8 <aes' aes''> <aes' aes''> <aes' aes''>16 <aes' aes''> ~ |
    <aes' aes''>16 ees'' <aes' f''> c'' ees'' <aes' f''>8 <aes' fes'>16 ~ |
    <aes' fes'>16 bes' <fes' ces''> aes' bes' <ees' c''>8 aes'16 |
}
pianotop = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 8 r8
  \repeat volta 2 {
    \pianotopA
  }
  \alternative {
    { <ees' c''>16 aes' <ees' bes'>8 <ees' aes'> r8 | }
    { <ees' c''>16 aes' <ees' bes'>8 <ees' aes'> r8 \bar "||" | }
  }

  \repeat volta 2 {
    r16 g''16 <ees'' ees'''> g'' bes'' <d'' d'''>8 g''16 |
    <des'' des'''>16 g'' bes'' <c'' c'''> ~ <c'' c'''> ees'' <bes' bes''> ees'' |
    r16 c'' <aes' aes''> c'' ees'' <f' f''>8 c''16 |
    <aes' aes''>16 c'' ees'' <f' f''> ~ <f' f''> c'' <f' f''>8 |

    r16 ees'' <g' g''> bes' des'' <f' f''>8 ees''16 |
    <g' g''>16 bes' des'' <f' f''> ~ <f' f''> des'' <f' f''>8 |
    r16 c'' <aes' aes''> c'' ees'' <f' f''>8 c''16 |
    <aes' aes''>16 c'' ees'' <f' f''> ~ <f' f''> c'' <f' f''>8 |

    r16 g''16 <ees'' ees'''> g'' bes'' <d'' d'''>8 g''16 |
    <des'' des'''>16 g'' bes'' <c'' c'''> ~ <c'' c'''> ees'' <bes' bes''> ees'' |
    r16 c'' <aes' aes''> c'' ees'' <f' f''>8 c''16 |
    <aes' aes''>8 <aes' aes''> <g' g''> <ges' ges''> |

    r16 f' a' c'' f'' c'' a' f' |
    r16 f' bes' des'' <f' f''>8 <f' bes' des''> |
    <d' f' aes' c''>8 r16 <d' f' aes' c''> r16 <des' bes'>8 ees'16
  } \alternative {
    { <c' aes'>8 <ees' ees''> <ees' ees''> <ees' ees''> | }
    { r16 aes' c'' ees'' <aes' aes''>8 r8 \bar "||" | }
  }

  \pianotopA
  <ees' c''>16 aes' <ees' bes'>8 <ees' aes'> <aes' aes''> \bar "||" |

  % TRIO
  \tag #'key \key des \major
  \repeat volta 2 {
    <aes' c'' ees'' aes''>8. \mark "Trio" <bes' c'' ees'' aes''>16 ~ <bes' c'' ees'' aes''>
    <c'' ees''> bes'8 |
    <aes' c'' ees'' aes''>8. <bes' c'' ees'' aes''>16 ~ <bes' c'' ees'' aes''>
    <c'' ees''> bes' <c'' ees''> |
    aes'16 des'' bes' des'' f'' aes' des'' f'' |
  
    bes'16 des'' f'' aes' ~ aes' f'' bes' f'' |
    <aes' c'' ees'' aes''>8. <bes' c'' ees'' aes''>16 ~ <bes' c'' ees'' aes''>
    <c'' ees''> bes'8 |
    <aes' c'' ees'' aes''>8. <bes' c'' ees'' aes''>16 ~ <bes' c'' ees'' aes''>
    <c'' ees''> bes' <c'' ees''> |
    aes'16 des'' bes' des'' f'' aes' des'' f'' |
  
    bes'16 des'' f'' aes' ~ aes' f'' a' <ees'' f''> |
    <bes' d'' f'' bes''>8. <c'' d'' f'' bes''>16 ~ <c'' d'' f'' bes''> <d'' f''> c''8 |
    <bes' d'' f'' bes''>8. <c'' d'' f'' bes''>16 ~ <c'' d'' f'' bes''> <d'' f''> c'' <d'' f''> |

    r16 ees'' <bes' bes''> ees''  ges'' <c'' c'''>8 ees''16 |
    <bes' bes''>16 ees'' ges'' <c'' c'''> ~ <c'' c'''> ees'' <bes' bes''>8 |
    <des'' fes'' des'''>8 <des'' fes'' des'''> <c'' fes'' c'''> <bes' fes'' bes''> |
    <aes' f''>16 des'' ees'' <bes' ges''> ~ <bes' ges''> bes' <aes' f''>8 |

    <g' f''>16 des'' ees'' <ges' f''> ~ <ges' f''> c'' <ges' ees''> <f' des''> ~ |
  } \alternative {
    { <f' des''>16 <aes' aes''>8 f''16 <aes' aes''> f'' <aes' aes''> f'' | }
    { <f' des''>16\repeatTie des'' f'' aes'' <des'' des'''>8 r | }
  }

  \tag #'key \key aes \major
  \repeat volta 2 {
    <aes' aes''>8 <aes' f''> <aes' aes''> <aes' f''> |
    <f'' aes''>8 <f'' bes''>16 <f'' c'''> ~ <f'' c'''> bes'' aes'' f'' |
    ees''16 f''8 <aes' c''>16 ~ <aes' c''>4 |
    r16 ees'' <aes' f''> c'' ees'' <aes' f''>8 c''16 |

    <g' ees''>8 f''16 <g' bes'> ~ <g' bes'>4 |
    r16 des'' <g' f''> bes' des'' <g' f''>8 <aes' c''>16 ~ |
    <aes' c''>16 ees'' <aes' f''> c'' ees'' <aes' f''>8 <aes' c''>16 ~ |

    <aes' c''>16 ees'' <aes' f''> c'' ees'' <aes' f''>8 ees''16 |
    <aes' aes''>8 <aes' f''> <aes' aes''> <aes' f''> |
    <f'' aes''>8 <f'' bes''>16 <f'' c'''> ~ <f'' c'''> bes'' aes'' f'' |

    aes''8 f'' ees''16 aes''8 <aes' c''>16 ~ |
    <aes' c''>16 ees'' <aes' f''> c'' ees'' <aes' f''>8 <aes' f'>16 ~ |
    <aes' f'>16 bes' <aes' f'>8 <aes' fes'> <bes' fes'>16 <ees' aes'> ~ |

    <ees' aes'>16 bes' <ees' c''> aes' bes' <ees' c''>8 <d' aes'>16 ~ |
    <d' aes'>16 bes' <d' c''> aes' r16 <des' bes'>8 ees'16 |
  } \alternative {
    { <c' aes'>8 <ees' ees''> <ees' ees''> <ees' ees''> | }
    { <c' aes'>8 <g' des'' ees''> <aes' c'' ees'' aes''> \bar "|." }
  }
}

pianobotA = {
    <aes, aes>8 <ees aes c'> <ees aes c'> <a, a> |
    <bes, bes>8 <ees g des'> <ees g des'> <ees, ees> |
    <aes, aes>8 <ees aes c'> <ees aes c'> <a, a> |
    <bes, bes>8 <ees g des'> <ees g des'> <ees, ees> |
    <fes, fes>4 <ees, ees>8 <ees, ees> |
    <fes, fes>4 <ees, ees>8 r8 |
    \stemDown
    aes,,8_\markup{ \italic "l.h." } r aes, r |
    aes8 r aes' r |
    \stemNeutral
    \clef treble

    <d' f' aes' b'>8 <d' f' aes' b'> <d' f' aes' b'> <d' f' aes' b'> |
    <ees' aes' c''>8 <ees' aes' c''> <ees' aes' c''> <ees' aes' c''> |
    <fes' aes' ces''>8 <fes' aes' ces''> <ees' aes' c''> <ees' aes' c''> |
    <ees' aes' c''>8 <ees' g' des''> <aes' c''> r8 |
    \clef bass
    
    <d f aes b>8 <d f aes b> <d f aes b> <d f aes b> |
    <ees aes c'>8 <ees aes c'> <ees aes c'> <ees aes c'> |
    <fes aes ces'>8 <fes aes ces'> <ees aes c'> <ees aes c'> |
}
pianobot = {
  \tag #'key \key aes \major
  \time 2/4
  \partial 8 <ees ees,>8 |
  \repeat volta 2 {
    \pianobotA
  }
  \alternative {
    { <ees aes c'>8 <ees g des'> <aes c'> <ees, ees> | }
    { <ees aes c'>8 <ees g des'> <aes c'> <a, a> | }
  }

  \repeat volta 2 {
    <bes, bes>8 <ees g des'> <ees, ees> <ees g des'> |
    <bes, bes>8 <ees g des'> <ees, ees> <g, g> |
    <aes, aes>8 <ees aes c'> <ees, ees> <ees aes c'> |
    <aes, aes>8 <ees aes c'> <aes, aes> <a, a> |
    
    <bes, bes>8 <ees g des'> <ees, ees> <ees g des'> |
    <bes, bes>8 <ees g des'> <bes, bes> <b, b> |
    <c c'>8 <ees aes c'> <ees, ees> <ees aes c'> |
    <aes, aes>8 <ees aes c'> <aes, aes> <a, a> |
    
    <bes, bes>8 <ees g des'> <ees, ees> <ees g des'> |
    <bes, bes>8 <ees g des'> <ees, ees> <g, g> |
    <aes, aes>8 <ees aes c'> <ees, ees> <ees aes c'> |
    <aes, aes>8 <aes, aes> <g, g> <ges, ges> |

    <f, f>8 <f, f> <a, a> <a, a> |
    <bes, bes>8 <f bes des'> <f bes des'> <f bes des'> |
    <bes, f bes>8 <bes, f bes> <ees, ees> <g, g> |
  } \alternative {
    { <aes, aes>8 <ees aes c'> <ees aes c'> <a, a> | }
    { <aes, aes>8 <aes c' ees'> <aes c' ees'> <ees, ees> | }
  }
  \pianobotA
  <ees aes c'>8 <ees g des'> <aes c'> r8 | 

  % TRIO
  \tag #'key \key des \major
  \repeat volta 2 {
    <ees, ees>8 <aes c' ges'> <ges, ges> <aes c' ges'> |
    <f, f>8 <aes c' ges'> <ees, ees> <c, c> |
    <des, des>8 <aes des' f'> <aes, aes> <aes des' f'> |

    <f, f>8 <aes des' f'> <des, des> <d, d> |
    <ees, ees>8 <aes c' ges'> <ges, ges> <aes c' ges'> |
    <f, f>8 <aes c' ges'> <ees, ees> <c, c> |
    <des, des>8 <aes des' f'> <aes, aes> <aes des' f'> |
  
    <f, f>8 <aes des' f'> <des, des> <c, c> |
    <bes,, bes,>8 <bes d' aes'> <d, d> <bes d' aes'> |
    <f, f>8 <bes d' aes'> <bes, bes> <bes d' aes'> |

    <ees, ees>8 <bes ees' ges'> <ges, ges> <bes ees' ges'> |
    <ees, ees>8 <bes ees' ges'> <ges, ges> <bes ees' ges'> |
    g16 bes8 des'16 fes' des' bes g |
    <aes, aes>8 <aes des' f'> bes, <aes bes d'> |

    <ees bes des'>8 <ees bes des'> <aes c'> <aes c'> |
  } \alternative {
    { <des des'>8 <aes des' f'> <aes des' f'> <d, d> | }
    { <des des'>8 <aes, aes> <des, des> <c c'> | }
  }

  \tag #'key \key aes \major
  \repeat volta 2 {
    <des des'>8 <aes des' f'> <aes des' f'> <c c'> |
    <des des'>8 <aes des' f'> <bes, bes> <b, b> |
    <c c'>8 <aes c' ees'> <aes c' ees'> <ees, ees> |
    <aes, aes>8 <ees aes c'> <ees, ees> <a, a> |

    <bes, bes>8 <ees g des'> <ees, ees> <a, a> |
    <bes, bes>8 <ees g des'> <ees, ees> <g, g> |
    <aes, aes>8 <ees aes c'> <ees, ees> <ees aes c'> |

    <aes, aes>8 <ees aes c'> <bes, bes> <c c'> |
    <des des'>8 <aes des' f'> <aes des' f'> <c c'> |
    <des des'>8 <aes des' f'> <bes, bes> <b, b> |

    <c c'>8 <aes c' ees'> <aes c' ees'> <ees, ees> |
    <aes, aes>8 <ees aes c'> <ees, ees> <ees aes c'> |
    <des, des>8 <des, des> <bes,, bes,> <d, d> |

    <ees, ees>8 <ees aes c'> <ees, ees> <e, e> |
    <f, f>8 <f, f> <g, g> <g, g> |
  } \alternative {
    { <aes, aes>8 <ees aes c'> <bes, bes> <c c'> | }
    { <aes, aes>8 <ees, ees> <aes,, aes,> }
  }
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
  %annotate-spacing = ##t
}

% combined score
%{
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = melody <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \context Voice = melody { \small\melody\melodytag }
      \context Lyrics = firstverse \lyricsto melody \wordsA
      \context Lyrics = secondverse \lyricsto melody \wordsB
    >>
    \context PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \context Staff = upper <<
	\set Staff.instrumentName = \markup{ \column { "Soprano/" "Alto" } }
	\set Staff.shortInstrumentName = "S/A"
	\set Staff.printPartCombineTexts = ##f
	\partcombine {\melody\melodytag} {\alto\altotag}
      >>
      \context Staff = lower <<
	%\set Staff.printPartCombineTexts = ##f
	\set Staff.instrumentName = "Bass"
	\set Staff.shortInstrumentName = "Bas."
	\clef bass
	\keepWithTag #'n \bass
      >>
    >>
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
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \keepWithTag #'n \bass
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." }
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
  >>
  \layout { }
  \header {
    instrument = "Combined Score"
  }
}
%}
				
% piano/guitar score
\score {
  <<
%{
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new Staff <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \set Staff.printPartCombineTexts = ##f
      %\small\partcombine {\melody\melodytag} {\alto\altotag}
      \new Voice = melody {
	\small{\melody\melodytag}
      }
    >>
    \new Lyrics \lyricsto "melody" { \small\wordsA }
    %\new Lyrics \lyricsto "melody" { \small\wordsB }
%}
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." }
      \context Staff = upper << \time 2/4 \pianotop >>
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
%{
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
      tempoWholesPerMinute = #(ly:make-moment 110 4)
      }
    }
}
