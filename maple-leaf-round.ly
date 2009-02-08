% -*- coding: utf-8; -*-
\version "2.10.33"
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

}

melodyA = {
                r16 aes' _( c'' aes' c'' ) ees'' 8 -\accent c'' 16 ^( 
                % warning: overlong bar truncated here |
                des'' 16 c'' bes' ) ees'' -\accent _~ ees'' 8 r  |
                r16 aes' _( c'' aes' c'' ) ees'' 8 -\accent c'' 16 ^( 
                % warning: overlong bar truncated here |
%% 5
                des'' 16 c'' bes' ) ees'' -\accent _~ ees'' 8 r  |
                e'' 4 -\accent ^( ees'' 8 ) ees''  |
                e'' 4 -\accent ^( ees'' )  |
                e'' 8 -\accent e'' -\accent _~ e'' -\accent e''  |
                ees'' 4 -\accent _~ ees'' -\accent  |
%% 10
                aes'' 8 aes'' aes'' aes'' 16 aes'' _~  |
                aes'' 16 ees'' ^( f'' c'' ) ees'' f'' 8 -\accent r16  |
                aes' 16 _( bes' ces'' ) aes' _( bes' aes' 8 ) bes' 16 _( 
                % warning: overlong bar truncated here |
                c'' 16 aes' bes' aes' _~ aes' 8 ) r  |
                aes'' 8 aes'' aes'' aes'' 16 aes'' _~  |
%% 15
                aes'' 16 ees'' ^( f'' c'' ) ees'' f'' 8 -\accent r16  |
                aes' 16 _( bes' ces'' ) aes' _( bes' aes' 8 )
                % warning: overlong bar truncated here |
}
melody = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 8 r8
  \repeat volta 2 {
    \melodyA bes'16(
  }
  \alternative {
    { c'' 16 aes' bes' aes' _~ aes' 8 ) r  | }
    { c'' 16 aes' bes' aes' _~ aes' 8 r  | }
  }
  \repeat volta 2 {
                r8 ees'' r16 d'' 8. -\accent  |
%% 20
                des'' 8 r16 c'' -\accent _~ c'' 8 bes'  |
                r8 aes' r16 f' 8. -\accent  |
                aes' 8 r16 f' -\accent _~ f' 8 fis'  |
                r8 g' r16 f' 8. -\accent  |
                g' 8 r16 f' -\accent _~ f' 8 f'  |
%% 25
                r8 aes' r16 f' 8. -\accent  |
                aes' 8 r16 f' -\accent _~ f' 8 fis'  |
                r8 ees'' r16 d'' 8. -\accent  |
                des'' 8 r16 c'' -\accent _~ c'' 8 bes'  |
                r8 aes' r16 f' 8. -\accent  |
%% 30
                aes' 8 aes' g' ges'  |
                f' 8 r16 f' a' 8 c''  |
                des'' 8 c'' 16 bes' _~ bes' 4  |
                c'' 8 c'' aes' 16 bes' 8 aes' 16 _~  |
	      } \alternative {
		{ aes' 4 r  | }
		{ aes' 4 r  | }
	      }
  \melodyA  bes'16
  c'' 16 aes' bes' aes' _~ aes' 8 r  |
  \bar "|."
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
      \context Voice = melody { \small\melody }
      \context Lyrics = firstverse \lyricsto melody \wordsA
      \context Lyrics = secondverse \lyricsto melody \wordsB
    >>
    \context PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \context Staff = upper <<
	\set Staff.instrumentName = \markup{ \column { "Soprano/" "Alto" } }
	\set Staff.shortInstrumentName = "S/A"
	\set Staff.printPartCombineTexts = ##f
	\partcombine {\melody} {\alto}
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
%}
    \new Staff <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\small{\melody}
      }
    >>
%{
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

% saxophone score
\score {
  <<
%{
    \context ChordNames {
         \set chordChanges = ##t
         \transpose ees c \harmonies
    }
%}
    \context Staff = saxA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose ees c' { \melody }
      }
    }
%{
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
%}
  >>
  \header {
    instrument = "Saxophone (Eb)"
    breakbefore=##t
  }
}


% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << 
       \set Staff.midiInstrument = "fiddle"
       r1 { \melody }
     >>
%{
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
