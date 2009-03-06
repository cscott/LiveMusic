% -*- coding: utf-8; -*-
\version "2.10.33"
\include "alt-chords.ly"
\header {
  title = "Maple Leaf Rag"
  subtitle = "Intro A B A B A B Coda"
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
  r16 ees'' e'' f'' |
  <aes'' aes'>16 f'' d'' b' 
  <f'' f'>16 d'' b' aes' |
  <d'' d'>16 b' aes' f'
  b'16 aes' f' d' |
  \times 2/3 { ees' f' ees'} d'16 ees'
  e'16 f' ges' g' |
}
pianotopbreakin = {
  <aes' aes>8 r8
  r4 |
}
pianotopbreakout = {
  <aes' aes>16 ees''16 f'' ees'' <aes'' aes'>8 r8 | 
}
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
    <ees' c''>16 aes' <ees' bes'>8 <ees' aes'> r8 \bar "||" |
}
pianotopB = {
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
  <d f aes b>8 r
  <f aes b d'>8 r |
  <d f aes b>8 r
  <f aes b d'>8 r |
  <ees bes des'>8 r
  r4 |
}
pianobotbreakin = {
  r8 <ees ees,>8
  <f f,>8 <g g,>8 | % usually an <ees ees,>8 here?
}
pianobotbreakout = {
  r8 <ees ees,>8
  <aes aes,>8\staccato <aes, aes,,>8\staccato |
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
  s4 | s2*3 |
}
melodybreakin = {
  s2 |
}
melodybreakout = {
  r16 ees''16 f'' ees'' aes''8  r8 |
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
  c''16 aes' bes' aes' ~ aes'8) r\breathe  |
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
  aes'4\repeatTie
  \melodybreak
  \melodybreakout
  \bar "|."
}
melodyflute = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 4
  \melodybreak
  \melodybreakin
  \repeat volta 3 {
    \melodyA
    \transpose c c' { \melodyB }
  }
  % coda
  aes'4\repeatTie
  \melodybreak
  \melodybreakout
  \bar "|."
}

altobreak = {
  s4 | s2*3 |
}
altobreakin = {
  s2 |
}
altobreakout = {
  r16 c''16 des'' c'' <aes' ees''>8  r8 |
}
altoA = {
  r16 ees'( aes' ees' aes') c''8-\accent aes'16( |
  bes'16 aes' g') bes'-\accent ~ bes'8 r  |
  r16 ees'( aes' ees' aes') c''8-\accent aes'16( |
%% 5
  bes'16 aes' g') bes'-\accent ~ bes'8 r  |
  ces''4-\accent( bes'8) bes'  |
  ces''4-\accent( bes')  |
  ces''8-\accent ces''-\accent ~ ces''-\accent ces''  |
  bes'4-\accent ~ bes'-\accent  |
%% 10
  d''8 d'' d'' d''16 ees'' ~  |
  ees''16 c''( c'' aes') c'' aes'8-\accent r16  |
  fes'16( fes' aes') fes'( ees' ees'8) ees' 16(  |
  aes'16 ees' g' ees' ~ ees'8) r \breathe |
  d''8 d'' d'' d''16 ees'' ~  |
%% 15
  ees''16 c''( c'' aes') c'' aes'8-\accent r16  |
  fes'16( fes' aes') fes'( ees' ees'8) ees' 16(  |
  aes'16 ees' g' ees' ~ ees'8) r  |
}
altoB = {
    r8 bes' r16 a'8.-\accent  |
    %% 20
    aes'8 r16 g'-\accent ~ g'8 f'  |
    r8 ees' r16 c'8.-\accent  |
    ees'8 r16 c'-\accent ~ c'8 ees'  |
    r8 ees' r16 des' 8.-\accent  |
    ees'8 r16 des'-\accent ~ des'8 des'  |
    %% 25
    r8 ees' r16 c'8.-\accent  |
    ees' 8 r16 c'-\accent ~ c'8 ees'  |
    r8 bes' r16 a'8.-\accent  |
    aes'8 r16 g'-\accent ~ g'8 f'  |
    r8 ees' r16 c'8.-\accent  |
    %% 30
    c'8 c' b bes  |
    a8 r16 c' f'8 a'  |
    bes'8 aes'16 f' ~ f'4  |
    aes'8 aes' f'16 g'8 ees'16 ~  |
    ees'4 r  |
}
alto = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 4
  \altobreak
  \altobreakin
  \repeat volta 3 {
    \altoA
    \altoB
  }
  % coda
  ees'4\repeatTie
  \altobreak
  \altobreakout
  \bar "|."
}
altoflute = {
  \tag #'key \key aes \major
  \time 2/4

  \partial 4
  \altobreak
  \altobreakin
  \repeat volta 3 {
    \altoA
    \transpose c c' { \altoB }
  }
  % coda
  ees'4\repeatTie
  \altobreak
  \altobreakout
  \bar "|."
}

treblebreak = {
  r4 |
  r8 <d' f' aes' b'>
  r8 <f' aes' b' d''> |
  r8 <d' f' aes' b'>
  r8 <f' aes' b' d''> |
  r8 <ees' bes' des''>
  r4 |
}
treblebreakin = {
  <aes' c'' ees''>8 r8
  r4 |
}
treblebreakout = {
  <aes' c'' ees''>8 r8
  <aes'' c''' ees'''>8 r8 |
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
  r8 < ces'' aes' f' > r < c'' ees' aes' >  |
  < c'' ees' aes' >8 < bes' g' des' >16 < aes' ees' c' > ~ < c' ees' aes' >8 r  |
  r8 < ces'' aes' f' > r < ces'' f' aes' >  |
  %% 15
  r8 < c'' aes' ees' > r < c'' ees' aes' >  |
  r8 < ces'' f' aes' > r < c'' ees' aes' >  |
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
  aes,8 r
  f,8 r |
  d,8 r
  f,8 r |
  ees,8 r
  r4 |
}
bassbreakin = {
  r8 ees,
  f,8 g, |
}
bassbreakout = {
  r8 ees
  aes\staccato aes,\staccato
}
bassA = {
  aes,8 r a, r  |
  bes,8 r ees ees,  |
  aes,8 r a, r  |
  %% 5
  bes,8 r ees < ees \tag #'hi ees' >  |
  < \tag #'hi d' d >4-\accent( < \tag #'hi ees' ees >8) < \tag #'hi ees' ees >  |
  < \tag #'hi d' d >4-\accent( < \tag #'hi ees' ees >)  |
  < d \tag #'hi d' >8-\accent < \tag #'hi d' d >-\accent ~ < \tag #'hi d' d >-\accent < \tag #'hi d' d >  |
  < \tag #'hi ees' ees > 8 < \tag #'hi ees ees, >-\accent < \tag #'hi f f, >-\accent < \tag #'hi g g, >-\accent  |
  %% 10
  < \tag #'hi aes aes, > 8 r d r  |
  ees 8 r ees, ees  |
  fes 8 r ees r  |
  ees 8 ees, 16 aes, ~ aes, 8 ees-\accent  |
  d 8 r d r  |
  %% 15
  ees 8 r ees, ees  |
  fes8 r ees r  |
  ees8 ees,16 aes, ~ aes,8 < \tag #'hi aes aes, >-\accent  |
}
bassBB = {
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
}
bassB = {
  \bassBB
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

harmoniesbreak = \chordmode
{ \chordProperties
  s4 |
  aes4:dim7 aes:dim7/f |
  aes4:dim7/d aes:dim7/f |
  ees4:7sus s |
}
harmoniesbreakin = \chordmode
{ \chordProperties
  aes4 aes |
}
harmoniesbreakout = \chordmode
{ \chordProperties
  aes4 aes |
}
harmoniesA = \chordmode
{ \chordProperties
  aes4 aes | ees4/bes ees/bes |
  aes4 aes | ees4/bes ees/bes |
  fes4:7 ees | % the e7 could be a d:dim7 (e7==fes7)
  fes4:7 ees |
  d4:dim7 d:dim7 |
  ees4 ees8/f ees/g |
  d4:dim7/aes d:dim7 |
  aes4/ees aes/ees |
  fes4 aes/ees |
  aes4/ees aes/ees |
  d4:dim7 d:dim7 |
  aes4/ees aes/ees |
  fes4:7 aes/ees |
  aes4/ees aes/ees |
}  
harmoniesB = \chordmode
{ \chordProperties
  ees4:7/bes d |
  des4/bes des/bes |
  aes4 f:m7/ees |
  aes4 f:m7/aes |
  ees4:7/bes ees4:9 |
  ees4:7/bes ees4:9 |
  aes4 f:m/ees |
  aes4 f:m/aes |
  ees4:7/bes d |
  des4/bes des/bes |
  aes4 f:m7/ees |
  aes4 g8:7 ges:7 |
  f4:7 f:7 |
  bes4:m bes:m |
  bes4:9 bes:9 |
  \mark "To Coda"
  aes4 aes |
}

harmonies = \chordmode
{ \chordProperties
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4
  \tempo 4 = 97
  \harmoniesbreak
  \harmoniesbreakin
  \break
  \repeat volta 3 {
    \mark\default
    \harmoniesA
    \bar "||" \break
    \mark\default
    \harmoniesB
  }
  \break
  % coda
  \mark\markup { \musicglyph #"scripts.coda" }
  aes4
  \harmoniesbreak
  \harmoniesbreakout
  \bar "|."
}

% this part is kinda faked; it's not really chords, it's just bass notes
% but i'm pretending it's chords to make it print right.
jessicabreak = \chordmode
{ \chordProperties
  s4 |
  aes4 aes |
  aes4 aes |
  ees4 s |
}
jessicabreakin = \chordmode
{ \chordProperties
  aes4 aes |
}
jessicabreakout = \chordmode
{ \chordProperties
  aes4 aes |
}
jessicaA = \chordmode
{ \chordProperties
  aes4 aes | ees4 ees |
  aes4 aes | ees4 ees |
  e4 ees | % the e7 could be a d:dim7 (e7==fes7)
  e4 ees |
  d2 |
  ees2 |
  d2 |
  ees2 |
  e4 ees |
  ees2 |
  d2 |
  ees2 |
  e4 ees |
  aes2 |
}  
jessicaB = \chordmode
{ \chordProperties
  bes4 ees4 |
  bes4 ees4 |
  aes2 |
  aes2 |
  ees2 |
  ees2 |
  aes2 |
  aes2 |

  bes4 ees4 |
  bes4 ees4 |
  aes2 |
  aes2 |
  f2|
  bes2|
  bes2|
  \mark "To Coda"
  aes4 aes |
}

jessica = \chordmode
{ \chordProperties
  \set Score.markFormatter = #format-mark-box-letters

  \partial 4
  \tempo 4 = 97
  \jessicabreak
  \jessicabreakin
  \break
  \repeat volta 3 {
    \mark\default
    \jessicaA
    \bar "||" \break
    \mark\default
    \jessicaB
  }
  \break
  % coda
  \mark\markup { \musicglyph #"scripts.coda" }
  aes4
  \jessicabreak
  \jessicabreakout
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
  %annotate-spacing = ##t
  oddFooterMarkup = \markup { \fill-line { $Id: maple-leaf-round.ly,v 1.12 2009-03-06 04:28:29 cananian Exp $ } }
}

% combined score
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
      \set Staff.printPartCombineTexts = ##f
      \small \partcombine \melody \alto
%{
      \context Lyrics = firstverse \lyricsto melody \wordsA
      \context Lyrics = secondverse \lyricsto melody \wordsB
%}
    >>
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
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
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
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \bass
    >>
%}
  >>
  \layout { }
  \header {
    instrument = "Combined Score"
  }
}
				
% piano score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
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
    instrument = "Piano"
    breakbefore=##t
  }
}

% accompaniment score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new Staff <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\small{\melody}
      }
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Accomp." }
      \set PianoStaff.shortInstrumentName = \markup { "Acc." }
      \context Staff = upper << \treble >>
      \context Staff = lower << \clef bass \bass >>
    >>
  >>
  \layout { }
  \header {
    instrument = "Solo and Accompaniment"
    breakbefore=##t
  }
}

% guitar, capo'd up one fret
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose aes g \harmonies
    }
    \new Staff <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody \transpose aes g {
	\small{\melody}
      }
    >>
  >>
  \layout { }
  \header {
    instrument = "Guitar (capo'd up 1 fret)"
    breakbefore=##t
  }
}

% jessica's bass score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \jessica
    }
    \new Staff <<
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \new Voice = melody {
	\small{\melody}
      }
    >>
  >>
  \layout { }
  \header {
    instrument = "Bass (simple)"
    breakbefore=##t
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
      \new Voice = melody { \melodyflute }
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

% flute+alto score
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
      \new Voice = melody { \melodyflute }
    }
    \context Staff = fluteB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \new Voice = alto { \altoflute }
    }
  >>
  \header {
    instrument = "Flute w/ alto part"
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
	\transpose bes c { \melodyflute }
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
      \removeWithTag #'hi \bass
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
	\transpose ees c { \melodyflute }
      }
    }
    \context Staff = saxB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      \new Voice = alto {
	\transpose ees c { \altoflute }
      }
    }
    \context Staff = saxC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c''
      \removeWithTag #'hi \bass
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
    \context Voice = celloA {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      % 1 octave down
      \clef bass
      \transpose c c,, { \melodyflute }
    }
%{
    \context Staff = celloB {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Alto"
      \set Staff.shortInstrumentName = "Alt."
      % 1 octave down
      \clef bass
      \transpose c c, { \alto }
    }
%}
    \context Staff = celloC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \clef bass 
      \removeWithTag #'hi \bass
    }
  >>
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
}

% cello score (nothing but the bass)
\score {
  <<
%{
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
%}
    \context Staff = celloC {
      #(set-accidental-style 'modern-cautionary)
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \clef bass 
      \removeWithTag #'hi {
  \set Score.markFormatter = #format-mark-box-letters
  \tag #'key \key aes \major
  \time 2/4
  
  \partial 4
  \tempo 4 = 97
  \bassbreak
  \bassbreakin
  \break
  \repeat volta 3 {
    \mark\default
    \bassA
    \bar "||" \break
    \mark\default
    \bassBB
    \mark "To Coda"
    aes,4 r |
  }
  \break
  % coda
  \mark\markup { \musicglyph #"scripts.coda" }
  aes,4
  \bassbreak
  \bassbreakout
  \bar "|."
}
    }
  >>
  \header {
    instrument = "Cello (only bass)"
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
    \context Staff=alto << 
       \set Staff.midiInstrument = "fiddle"
       r1 { \alto }
     >>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1\ff
      %\transpose c c'
      \bass
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
%{
    \context Staff=upper <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \treble
    >>
    \context Staff=lower <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \bass
    >>
%}
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 97 4)
      }
    }
}
