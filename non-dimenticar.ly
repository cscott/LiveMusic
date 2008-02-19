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
#(set-global-staff-size 18)

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
  \once \override Score.RehearsalMark
  #'break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph #"scripts.coda" }
  bes='1 ~ |
  % D.S. should go at end of line, not beginning; align right.
  % lilypond doesn't allow multiple marks on a single bar line, so
  % attach it to the final rest instead. (and skooch it over a bit)
  bes='2
  \once \override TextScript #'self-alignment-X = #left
  \once \override TextScript #'extra-offset = #'( -2.0 . 0.0 )
  \once \override TextScript #'font-size = #2
  r2^\markup{ "D.S. al Coda" }
  \bar ":|"
  |
  \break\noPageBreak
  % coda symbol at start of tag
  \mark \markup { \musicglyph #"scripts.coda" }
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
    d='8 f g ees f4. d8 |
    ees='2 c2( |
    b=2) c8 ees g bes |
    g='1( |
  }
  \alternative {
    { f2) c8 d ees f | d2( b | c2.) r4 | }
    { f2\repeatTie c8 d f a | f2( ees | }
  }

  fes='4) r4 g8 f g gis |
  aes='2 d,8 cis d ees |
  f='2 f8 a bes fis |
  g='2 d2 |
  c='2 g'8 g aes a |
  bes='2 e,8 dis e f |
  g='4. f8 g a bes g |
  bes='2 g2( |
  f='2.) r4 |

  f='8 a bes f a4. f8 |
  d='8 f g ees f4. d8 |
  ees='2 c2( |
  b=2) c8 ees g bes |
  g='2 bes8 a g ees |
  g='2 bes8 a ges ees |

  f='2( g4 d |
  ees='2) g4 ges |

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
    d='8 f g ees f4. d8 |
    ees='2 ees2( |
    d='2) ees8 ees g bes |
    g='1( |
  }
  \alternative {
    { f2) ees8 d ees f | d2( f | ees2.) r4 | }
    { f2\repeatTie ees8 d f a | f2( ges | }
  }

  g='4) r4 g8 f g gis |  % the first g here is really a double-flat
  aes='2 d,8 e d ees |
  f='2 f8 a bes fis |
  g='2 d2 |
  c='2 g'8 g aes a |
  bes='2 e,8 dis e f |
  g='4. f8 g a bes g |
  bes='2 g2( |
  f='2.) r4 |

  f='8 a bes f a4. f8 |
  d='8 f g ees f4. d8 |
  ees='2 ees2( |
  d='2) ees8 ees g bes |
  g='2 bes8 a g ees |
  g='2 bes8 a ges ees |

  f='2( g4 d |
  ees='2) g4 ges |

  % outro
  f='4
}

pianotop = {
  \tag #'key \key bes \major
  \time 4/4

  % intro
  r8 << { f'4 f'8 bes' d' f' bes' | } \\
	{ d'4. s2 | } >>
  r8 << { d''4 a'8 f' d' f' a' | } \\
	{ f'4. s2 | } >>
  r8 << { bes'4 g'8 ees' g' bes' c'' | } \\
	{ ees'4. s2 | } >>
  <f' ees'>4 r4. f'8 d'' c'' |

  % verse
  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    << { bes'8 c'' d'' bes' <c'' a'>4. a'8 | } \\
       { d'2 d'2 | } >>
    << { g'8 a' bes' g' <a' f'>4. f'8 | } \\
       { <bes f'>2 b2 | } >>
    << { <g' ees' bes>2 <f' ees' a>2 ~ | } \\
       { s1 | } >>
    << { <f' d' aes>2 ees'8 g' bes' d'' | } \\
       { s2 ees'2 | } >>
    << { c''1 ~ | } \\
       { <ees' g'>1 ~ | } >>
  }
  \alternative {
    { << { c''2 ees'8 f' g' a' | <g' d'>2 ~ <g' d'>8 f' ees' d' | ees'8 f' \times 2/3 { g'8 bes' c'' } d''2 | } \\
	 { \stemUp <ees' g'>2 \stemDown bes4 <cis' a>4 | \stemUp bes2 \stemDown aes2 | bes4 ees' <g' ees'> ~ <ges' ees'> | } >> }

    { << { c''2\repeatTie ees'8 f' a' c'' | bes'1 ~ | } \\
	 { \stemUp <ees' g'>2\repeatTie \stemDown bes4 <c' ees'>4 | <d' f'>2 <c' ees'> |}
	 >> }
  }

  << { bes'2 bes'8 a' bes' b' | } \\
     { \stemUp <cis' e'>2 \stemDown <d' f'>2 | } >>
  << { <c'' aes'>2 f'8 e' f' g' | } \\
     { \stemUp ees'2 \stemDown d'2 | } >>
  << { aes'2 bes'8 c'' d'' bes' | } \\
     { <c' ees'>2 <d' f'>4 <d' fis'>4 | } >>
  << { c''2 <d' f' g'>2 ~ | } \\
     { \stemUp <ees' g'>2 s2 | } >>
  << { <c' ees' g'>2 c''8 b' c'' cis'' | } \\
     { s2 \stemDown <ees' g'>2 | } >>
  << { d''2 g'8 fis' g' a' | } \\
     { <f' bes'>2 e'2 | } >>
  << { bes'4. a'8 bes' c'' d'' bes' | } \\
     { <d' f'>2 <e' g'> | } >>
  << { d''2 c''2 ~ | } \\
     { <ees' g' bes'>1 | } >>
  << { c''1 | } \\
     { <ees' ges' bes'>2 ~ <ees' f' a'>2 | } >>

  << { bes'8 c'' d'' bes' <c'' a'>4. a'8 | } \\
     { d'2 d'2 | } >>
  << { g'8 a' bes' g' <a' f'>4. f'8 | } \\
     { <bes f'>2 b2 | } >>
  << { <g' ees' bes>2 <f' ees' a>2 ~ | } \\
     { s1 | } >>
  << { <f' d' aes>2 ees'8 g' bes' d'' | } \\
     { s2 ees'2 | } >>
  << { c''2 d''8 c'' bes' g' | } \\
     { \stemUp <ees' g'>2 \stemDown ees'2 | } >>
  << { c''2 d''8 c'' bes' c'' | } \\
     { \stemUp <ees' g'>2 \stemDown <ees' g'>4 <ees' ges'>4 | } >>

  << { <bes' f' d'>2 g'4 a'8 bes' | } \\
     { s2 <f' d'>2 | } >>
  << { <g' d''>4 g'8 a' <ees' g' bes'>4 <ees' ges' c''>4 | } \\
     { ees'2 s2 | } >>

  % outro
  << { bes'4 bes'8 bes'' bes'' aes'' ges'' aes'' | } \\
     { <d' f'>4 s4 <ees'' ges''>2 | } >>
  << { f''4 f'8 d'' c'' ees'' g'' bes'' | } \\
     { <bes' d''>4 s4 g'2 | } >>
  << { <bes'' f'' d''>2 c''8 f'' ees'' bes'' | } \\
     { s2 g'4 <ges' bes'>4 | } >>
  <f'' c'' g'>2. r4 |
  \bar "|."
}
pianobot = {
  \tag #'key \key bes \major
  \time 4/4

  % intro
  << { f2. f4 | } \\
     { bes,2 d2 | } >>
  << { a2 f2 | } \\
     { d2. b,4 | } >>
  << { bes2. g4 | } \\
     { c2 ees2 | } >>
  << { f2 a2 | } \\
     { c2. ees4 | } >>

  \repeat volta 2 {
    <<{ f2. f4 | s2 r4 d4 | s2 r4 c4 | r4 f bes g | r8 c8 ees g bes4 g8 bes |}\\
      { bes,2 f, | d2 g, | c4 c, f,2 | b,2 c | f,1~ | }>>
  } \alternative {
    {
      << { a2 s2 | r4 f s2 | g4 bes bes a | } \\
	 { f,4 f, c <f, ees> | bes,2 b, | c2 f2 | } >>
    }
    {
      << { a2 s2 | r4 f4 ges2 | } \\
	 { f,4\repeatTie f, c f, | bes,2. bes,4~ | } >>
    }
  }

  << { g2 aes2 | r4 c4 s2 | r4 f4 s2 | r4 bes,2 bes,4~ | } \\
     { bes,4 bes,2. | f,2 <bes, aes>2 | f,2 <bes, aes>2 | ees,1 | } >>
  << { bes,4 bes,2. | r4 d4 s2 | r4 d4 s2 | r4 c2 c4 | r4 c2 c4 | } \\
     { ees,1 | g,2 <c bes>2 | g,2 <c bes>2 | f,1 | f,1 | } >>

  % second non-dimenticar
  <<{ f2. f4 | s2 r4 d4 | s2 r4 c4 | r4 f bes g | } \\
    { bes,2 f, | d2 g, | c4 c, f,2 | b,2 c | }>>
  % own, so I'll wait alone
  << { a2 s2 | a2 bes4 bes8 a | } \\
     { f4 f,4 <c bes>2 | f4 f,4 c4 f4 | } >>

  << { r4 f4 <bes g>2 | } \\
     { bes,2 s2 | } >>
  << { s2 bes4 a4 | } \\
     { <c bes>2 f2 | } >>

  % outro
  << { r4 f4  ges2 | } \\
     { bes,2. bes,4 ~ | } >>
  << { f2 ees2 | } \\
     { bes,4 bes,2. | } >>
  << { r4 f4 bes c' | } \\
     { bes,2 ees2 | } >>
  << { <bes, f bes>2. r4 | } \\
     { r2 bes,,4 s4 | } >>
}

pianochatop = {
  \tag #'key \key bes \major
  \time 4/4

  % intro
  r1 | r1 | r1 | r1 |

  % verse
  \repeat volta 2 {
    bes' 8 c'' d'' bes' r d'' f'' a'  |
    r8 a' bes' g' r b' d'' f'  |
    g' 8 c'' ees'' bes' r f' a' ees''  |
    r8 f' b' d'' r g' bes' d''  |
    c'' 8 ees'' g'' bes' r ees'' g'' a'  |
  } \alternative {
    {
      r8 c'' ees'' f' r f' g' a'  |
      g' 8 bes' d'' f' r b' d'' f'  |
      r8 c'' ees'' g' r f'' ees'' c''  |
    }
    {
      r8 c'' ees'' f' r f' a' c''  |
      bes' 8 d'' f'' a' r c'' ees'' ges'  |
    }
  }

  r8 bes' des'' g' r a' bes' b'  |
  c'' 8 ees'' f'' f' r e' f' g'  |
  r8 aes' c'' ees' r c'' d'' bes'  |
  c'' 8 ees'' g'' bes' r ees'' g'' g'  |
  r8 g' bes' des'' r b' c'' cis''  |
  d'' 8 g'' bes'' f'' r fis'' g'' a''  |
  r8 d'' g'' a' r c'' d'' bes'  |
  d'' 8 g'' bes'' c'' r ees'' g'' bes'  |
  r8 c'' ees'' a' r c'' ees'' f'  |

  bes' 8 c'' d'' bes' r d'' f'' a'  |
  r8 a' bes' g' r b' d'' f'  |
  g' 8 c'' ees'' bes' r f' a' ees''  |
  r8 f' b' d'' r g' bes' d''  |
  c'' 8 ees'' g'' a' r c'' bes' g'  |
  r8 c'' ees'' f' r c'' bes' c''  |

  bes' 8 d'' f'' a' r g' ees'' ges'  |
  r8 bes' d'' f' r ees' d'' c''  |

  % outro
  bes' 8 d'' f'' bes' r aes' ges' aes'  |
  r8 bes' d'' f' r g' ees'' c''  |
  bes' 8 d'' f'' a' r g' ees'' ges'  |
  r8 bes' d'' f' bes 4 r  |
  \bar "|."
}
pianochabot = {
  \tag #'key \key bes \major
  \time 4/4

  % intro
  < f bes, d > 2. r4  |
  < f a d > 2. r4  |
  < bes g c ees > 2. r4  |
  < f a c > 2. r4  |

  \repeat volta 2 {
    bes, 2 c  |
    g 2 a  |
    c 2 f  |
    b, 2 ees  |
    c 2 bes,  |
  } \alternative {
    {
      f 2 ees  |
      bes, 2 b,  |
      c 2 f  |
    }
    {
      f 2 ees  |
      bes, 2 ees  |
    }
  }

  des 2 bes,  |
  f, 2 bes,  |
  c 2 bes,  |
  ees 2 g  |
  ees 2 c  |
  g, 2 bes,  |
  g 2 bes,  |
  c 2 bes,  |
  f, 2 ees  |

  bes, 2 c  |
  g 2 a  |
  c 2 f  |
  b, 2 ees  |
  f 2 d  |
  f 2 d  |

  bes, 2 ees  |
  bes 2 f  |

  % outro
  bes, 2 ees  |
  bes 2 ees  |
  bes, 2 ees  |
  bes 2 bes, 4 r  |
}

lowa   = \relative c, { < \tag #'n a \tag #'l \tag #'s \tag #'c a' >4 }
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
  bes=,4-. r4 bes'4-. r4 |
  d,=4-. r4 d'4-. r4 |
  c,=4-. r4 ees4-. r4 |
  f,=,4-. r4 r2 |

  % verse
  \repeat volta 2 {
    \lowbes f=,4 a \lowbes |
    d, f=,4 g bes |
    c=4 g f ees |
    \lowb d=,4 \lowcx ees |
    g=,4 bes c g |
  }
  \alternative {
    { f=,4 a c f, |
      \lowbes f=,4 \lowb f |
      \lowc g=,4 f \lowa | }
    { f=,4 a c f, |
      \lowbes f=,4 \lowbes ees |
    }
  }

  \lowbes \lowdes \lowbes \lowdx | 
  f=,4 c' bes a |
  f=,4 c' bes aes |
  ees=,4 bes' d g, |
  ees=,4 bes' g c |
  g=,4 d' c bes |
  g=,4 d' c bes |
  f=,4 c' ees g |
  f=4 c a ees |
  \lowbes f=,4 a \lowbes |
  d,4 f=,4 g bes |
  c=4 g f ees |
  \lowb d=,4 \lowcx ees |
  f=,4 a c g |
  f=,4 a c f |
  bes,=,4 f g d' |
  c=4 bes f c' |

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
  f:74/c f:7/c f:7/c f:7/c |

  % verse
  \repeat volta 2 {
    bes4 bes bes:maj7 bes:maj7 |
    bes4/d bes/d g:9 g:9 |
    c4:m7 c:m7 f:7 f:7 |
    b4:dim7 b:dim7 c:m7 c:m7 |
    c4:m7 c4:m7 c4:m7 c4:m7
  }
  \alternative {
    { f4:9 f:9 c:m7 f:aug7 | bes4 bes b:dim7 b:dim7 | c4:m7 c:m7 ees:maj7/f f:5.13.9- }
    { \set chordChanges = ##f
      f4:9 \set chordChanges = ##t
      f:9 c:m7 f:7 | bes4 bes ees:m6/bes ees:m6/bes | }
  }
  bes4:dim7 bes:dim7 bes:7 bes:7 |
  f4:m7 f:m7 bes:7 bes:7 |
  f4:m7 f:m7 bes:7 bes:7aug |
  ees4:6 ees:6 ees:maj7 ees:maj7 |
  ees4:6 ees:6 ees:6 ees:6 |
  g4:m7 g:m7 c:7 c:7 |
  g4:m7 g:m7 c:7 c:7 |
  c4:m7/f c:m7/f c:m7/f c:m7/f |
  c4:m7.5-/f c:m7.5-/f f:7 f:7 |

  bes4 bes bes:maj7 bes:maj7 |
  bes4/d bes/d g:9 g:9 |
  c4:m7 c:m7 f:7 f:7 |
  b4:dim7 b:dim7 c:m7 c:m7 |
  f4:9 f:9 c:m7 c:m7 |
  f4:9 f:9 c:m7 f:7.9- |
  bes4 bes g:m7 g:m7 |
  c4:m7 c:m7 ees/f f:7.9-

  % outro
  bes4 bes ees:m ees:m |
  bes4 bes ees ees |
  bes4 bes ees:6.9 ees:m6 |
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
  %annotate-spacing = ##t
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
      \context Voice = melody { \small\melody\melodytag }
      \context Lyrics = one \lyricsto melody \words
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
      \removeWithTag #'key \keepWithTag #'n \bass
    >>
%}
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
      \new Voice = melody {
	\transpose c c' { \melody \transpose c c, \melodytag }
      }
    }
    \new Lyrics \lyricsto "melody" { \words }
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
    instrument = "Banjo/Guitar, capo'ed up 1 fret"
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
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \removeWithTag #'key \keepWithTag #'n \bass
    >>
  >>
  \header {
    instrument = "Banjo/Guitar/Bass, capo'ed up 1 fret"
    breakbefore=##t
  }
}
%}

% piano/guitar score
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
      \set Staff.printPartCombineTexts = ##f
      %\small\partcombine {\melody\melodytag} {\alto\altotag}
      \new Voice = melody {
	\small{\melody\melodytag}
      }
    >>
    \new Lyrics \lyricsto "melody" { \small\words }
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." }
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
