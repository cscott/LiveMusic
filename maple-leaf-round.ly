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
  meter = 97 % quarter note
}
#(set-default-paper-size "letter")
#(set-global-staff-size 18)

pianotopbreak = {
  ees''16 e''8 f''16 |
  <aes'' aes'>8. f''16 d''8. b'16 |
  <f'' f'>8. d''16 b'8. aes'16 |
  <d'' d'>8. b'16 aes'8. f'16 |
  b'8. aes'16 f'8. d'16 |
  ees'16 f' ees' d' ~ d'8. ees'16 |
  e'8. f'16 ges'8. g'16 |
}
pianotopbreakin = {
  <aes' aes>4 r4 |
  r2 |
}
pianotopbreakout = {
  <aes' aes>4 ees''16 f''8 ees''16 |
  <aes'' aes'>4 r4 |
}
pianotopA = {
  \mark\default
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
    <ees' c''>16 aes' <ees' bes'>8 <ees' aes'> r8 \bar "||" |
}
pianotopB = {
  \mark\default
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
    % to coda
    r16 aes' c'' ees'' <aes' aes''>8 r8 |
}
pianotop = {
  \tempo 4 = 97
  \tag #'key \key aes \major
  \time 2/4

  \partial 4
  \pianotopbreak
  \pianotopbreakin
  \repeat volta 3 {
    \pianotopA
    \pianotopB
  }
  % coda
  r16 aes' c'' ees''
  \pianotopbreak
  \pianotopbreakout
}

pianobotbreak = {
  % r4 |
  <d f aes b>4 r4 |
  <f aes b d'>4 r4 |
  <d f aes b>4 r4 |
  <f aes b d'>4 r4 |
  <ees bes des'>4 r4 |
  r2 |
}
pianobotbreakin = {
  r4 <ees ees,>4 |
  <f f,>4 <g g,>4 | % usually an <ees ees,>8 here?
}
pianobotbreakout = {
  r4 <ees ees,>4 |
  <aes aes,>4\staccato <aes, aes,,>4\staccato
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
    <ees aes c'>8 <ees g des'> <aes c'> <a, a> |
}
pianobotB = {
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
    <aes, aes>8 <aes c' ees'> <aes c' ees'> <ees, ees> |
}
pianobot = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 4
  r4 \pianobotbreak
  \pianobotbreakin
  \repeat volta 3 {
    \pianobotA
    \pianobotB
  }
  % coda
  <aes, aes>8 <aes c' ees'> <aes c' ees'> <ees, ees> |
  \pianobotbreak
  \pianobotbreakout
}

melodybreak = {
  s4 | s2*6 |
}
melodybreakin = {
  s2*2 |
}
melodybreakout = {
  r4 ees''16 f''8 ees''16 |
  aes''4 r4 |
}
melodyA = {
  r16 aes'( c'' aes' c'') ees''8-\accent c''16( |
  des''16 c'' bes') ees''-\accent ~ ees''8 r  |
  r16 aes'( c'' aes' c'') ees''8-\accent c''16( |
%% 5
  des''16 c'' bes') ees''-\accent ~ ees''8 r  |
  e''4-\accent( ees''8) ees''  |
  e''4-\accent( ees'')  |
  e''8-\accent e''-\accent ~ e''-\accent e''  |
  ees''4-\accent ~ ees''-\accent  |
%% 10
  aes''8 aes'' aes'' aes''16 aes'' ~  |
  aes''16 ees''( f'' c'') ees'' f''8-\accent r16  |
  aes'16( bes' ces'') aes'( bes' aes'8) bes' 16(  |
  c''16 aes' bes' aes' ~ aes'8) r  |
  aes''8 aes'' aes'' aes''16 aes'' ~  |
%% 15
  aes''16 ees''( f'' c'') ees'' f''8-\accent r16  |
  aes'16( bes' ces'') aes'( bes' aes'8) bes'16(
  c''16 aes' bes' aes' ~ aes'8) r  |
}
melodyB = {
    r8 ees'' r16 d''8.-\accent  |
    %% 20
    des''8 r16 c''-\accent ~ c''8 bes'  |
    r8 aes' r16 f'8.-\accent  |
    aes'8 r16 f'-\accent ~ f'8 fis'  |
    r8 g' r16 f' 8.-\accent  |
    g'8 r16 f'-\accent ~ f'8 f'  |
    %% 25
    r8 aes' r16 f'8.-\accent  |
    aes' 8 r16 f'-\accent ~ f'8 fis'  |
    r8 ees'' r16 d''8.-\accent  |
    des''8 r16 c''-\accent ~ c''8 bes'  |
    r8 aes' r16 f'8.-\accent  |
    %% 30
    aes'8 aes' g' ges'  |
    f'8 r16 f' a'8 c''  |
    des''8 c''16 bes' ~ bes'4  |
    c''8 c'' aes'16 bes'8 aes'16 ~  |
    aes'4 r  |
}
melody = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 4
  \melodybreak
  \melodybreakin
  \repeat volta 3 {
    \melodyA
    \melodyB
  }
  % coda
  aes'4
  \melodybreak
  \melodybreakout
  \bar "|."
}

treblebreak = {
  r4 |
  r8 <d' f' aes' b'> r <d' f' aes' b'> |
  r8 <f' aes' b' d''> r <f' aes' b' d''> |
  r8 <d' f' aes' b'> r <d' f' aes' b'> |
  r8 <f' aes' b' d''> r <f' aes' b' d''> |
  r8 <ees' bes' des''> r4 |
  r2 |
}
treblebreakin = {
  <aes' c'' ees''>4 r4 |
  r2 |
}
treblebreakout = {
  <aes' c'' ees''>4 r4 |
  <aes'' c''' ees'''>4 r4 |
}
trebleA = {
  r8 < ees' aes' c'' > r < ees' c'' fis' >  |
  r8 < ees' g' des'' > r < des'' g' ees' >  |
  r8 < c'' ees' aes' > r < c'' fis' ees' >  |
  %% 5
  r8 < des'' g' ees' > r < g' des'' ees'' >  |
  < aes' ces'' fes'' >4-\accent( < g' bes' ees'' >8) < ees'' g' bes' >  |
  < fes'' aes' ces'' >4-\accent( < g' bes' ees'' >)  |
  < aes' ces'' fes'' >8-\accent < aes' ces'' fes'' >-\accent ~ < aes' ces'' fes'' >-\accent < fes'' ces'' aes' >  |
  < g' bes' ees'' >4-\accent ~ < g' bes' ees'' >-\accent  |
  %% 10
  r8 < f' aes' ces'' > r < ces'' aes' f' >  |
  r8 < ees' aes' c'' > r < c'' ees' aes' >  |
  r8 < ces'' aes' f' > r < ces'' aes' f' >  |
  < c'' ees' aes' >8 < bes' g' des' >16 < aes' ees' c' > ~ < c' ees' aes' >8 r  |
  r8 < ces'' aes' f' > r < ces'' f' aes' >  |
  %% 15
  r8 < c'' aes' ees' > r < c'' ees' aes' >  |
  r8 < ces'' f' aes' > r < ces'' f' aes' >  |
  < c'' ees' aes' >8 < des' bes' g' >16 < c' aes' ees' > ~ < aes' c' ees' >8 r  |
}
trebleB = {
    r8 < ees'' bes' g' > r16 < d'' fis' a' >8.-\accent  |
    %% 20
    < des'' aes' f' >8 r16 < c'' g' ees' >-\accent ~ < ees' g' c'' >8 < des' f' bes' >  |
    r8 < c' ees' aes' > r16 < aes c' f' >8.-\accent  |
    < aes' c' ees' >8 r16 < f' c' aes >-\accent ~ < aes c' f' >8 < fis' c' ees' >  |
    r8 < des' ees' g' > r16 < f' des' bes >8.-\accent  |
    < g' ees' des' >8 r16 < f' des' bes >-\accent ~ < f' des' bes >8 < f' bes des' >  |
    %% 25
    r8 < aes' c' ees' > r16 < f' aes c' >8.-\accent  |
    < aes' ees' c' >8 r16 < f' c' aes >-\accent ~ < f' c' aes >8 < fis' c' ees' >  |
    r8 < ees'' bes' g' > r16 < d'' a' fis' >8.-\accent  |
    < des'' f' aes' >8 r16 < c'' g' ees' >-\accent ~ < c'' g' ees' >8 < bes' f' des' >  |
    r8 < aes' ees' c' > r16 < f' c' aes >8.-\accent  |
    %% 30
    < aes' ees' c' >8 < c' ges' aes' > < b g' f' > < bes fes' ges' >  |
    < f' ees' a >8 < f' a ees' > r < f' a ees' >  |
    < f' des' bes >8 < f' ees' a > < f' bes des' > < f' bes des' >  |
    r8 < f' d' aes > < f' des' aes > < g' des' bes >  |
    % to coda
    < c' ees' aes' >4 r  |
}
treble = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 4
  \treblebreak
  \treblebreakin
  \repeat volta 3 {
    \trebleA
    \trebleB
  }
  % coda
  < c' ees' aes' >4
  \treblebreak
  \treblebreakout
  \bar "|."
}
bassbreak = {
  r4 |
  aes,4 r |
  f,4 r |
  d,4 r |
  f,4 r |
  ees,4 r |
  r2 |
}
bassbreakin = {
  r4 ees, |
  f,4 g, |
}
bassbreakout = {
  r4 ees |
  aes4\staccato aes,\staccato
}
bassA = {
  aes,8 r a, r  |
  bes,8 r ees ees,  |
  aes,8 r a, r  |
  %% 5
  bes,8 r ees < ees ees' >  |
  < d' d >4-\accent( < ees' ees >8) < ees' ees >  |
  < d' d >4-\accent( < ees' ees >)  |
  < d d' >8-\accent < d' d >-\accent ~ < d' d >-\accent < d' d >  |
  < ees' ees > 8 < ees ees, >-\accent < f f, >-\accent < g g, >-\accent  |
  %% 10
  < aes aes, > 8 r d r  |
  ees 8 r ees, ees  |
  d 8 r d r  |
  ees 8 ees, 16 aes, _~ aes, 8 ees-\accent  |
  d 8 r d r  |
  %% 15
  ees 8 r ees, ees  |
  d 8 r d r  |
  ees8 ees,16 aes, ~ aes,8 < aes aes, >-\accent  |
}
bassB = {
    bes,8 r ees, r  |
    %% 20
    bes,8 r ees, g,  |
    aes,8 r ees, r  |
    aes,8 r aes, a,  |
    bes,8 r ees, r  |
    bes,8 r ees, g,  |
    %% 25
    aes,8 r ees, r  |
    aes,8 r aes, a,  |
    bes,8 r ees, r  |
    bes,8 r ees, g,  |
    aes,8 r ees, r  |
    %% 30
    aes,8 aes, g, ges,  |
    f,8 r c r  |
    bes,8 r f, f,  |
    bes,8 r ees, r  |
    aes,4 r |
}
bass = {
  \tag #'key \key aes \major
  \time 2/4
  
  \partial 4
  \bassbreak
  \bassbreakin
  \repeat volta 3 {
    \bassA
    \bassB
  }
  % coda
  aes,4
  \bassbreak
  \bassbreakout
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
      \set PianoStaff.instrumentName = \markup { "Accomp." }
      \set PianoStaff.shortInstrumentName = \markup { "Acc." }
      \context Staff = upper << \time 2/4 \treble >>
      \context Staff = lower << \clef bass \bass >>
    >>
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

% flute score
\score {
  <<
%{
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
%}
    \context Voice = fluteA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose c c' { \melody }
      }
    }
%{
    \new Lyrics \lyricsto "melody" { \words }
    \context Staff = fluteB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose c c' { \alto \transpose c c, \altotag }
    }
%}
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}

% clarinet score
\score {
  <<
%{
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c \harmonies
    }
%}
    \context Staff = clarinetA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\transpose bes c { \melody }
      }
    }
%{
    \new Lyrics \lyricsto "melody" { \words }
    \context Staff = clarinetB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \transpose bes c { \altoclar \altotag }
    }
%}
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
%}
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
%}
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
      tempoWholesPerMinute = #(ly:make-moment 97 4)
      }
    }
}
