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

pianotop = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 8 r8
  \repeat volta 2 {
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
  \alternative {
    { <ees' c''>16 aes' <ees' bes'>8 <ees' aes'> r8 | }
    { <ees' c''>16 aes' <ees' bes'>8 <ees' aes'> r8 \bar "||" | }
  }
}
pianobot = {
  \tag #'key \key aes \major
  \time 2/4
  \partial 8 <ees ees,>8 |
  \repeat volta 2 {
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
  \alternative {
    { <ees aes c'>8 <ees g des'> <aes c'> <ees, ees> | }
    { <ees aes c'>8 <ees g des'> <aes c'> <a, a> | }
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
