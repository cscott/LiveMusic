% -*- coding: utf-8; -*-
\version "2.10.33"
\include "alt-chords.ly"
\header {
  title = "Take Me Home, Country Roads"
  source = "John Denver version, additional arrangement by C. Scott"
  style = "Singing Call"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2009/Feb/2"
  meter = 240 % ???
}
#(set-default-paper-size "letter")
#(set-global-staff-size 18)

melody = \relative c' { % middle c
  \tag #'key \key a \major
  \time 2/2 % cut time

  % intro
  r4 a8 e'8 ~ e='4 cis='4 |
  r8 e,8 a e' ~ e=' bis' cis='' e\accent ~ |
  e1 ~ |
  e8 bis cis e ~ e e fis4 |
  cis8 a4. e='4 e |

  % verse
  \repeat volta 2 {
    fis='4. e8 ~ e2 |
    r2 fis='4 e8 fis ~ |
    fis='8 a4. ~ a2 |
    r2 b='8 b4. |
    cis=''4. b8 ~ b2 |
    fis='4 fis fis e |
    fis='8( a4) a8 ~ a2 ~ |
    a1 |
    r2 e4 e='4 |
    fis4. e8 ~ e2 |
    fis4 a a cis |
    cis=''1 |
    b='4 b b b |
    cis4. b8 ~ b2 |
    fis='4 a4 a b8 a ~ |
    a2  \bar "||" \break

    \mark \markup { \musicglyph #"scripts.segno" }
    a='4 b4 |
    cis=''1 ~ |
    cis2 cis8( b) a4 |
    b1 ~ |
    b2 cis4 b |
    a1 ~ |
    a2 cis4 e |
    fis=''1 ~ |
    fis2 fis4 fis |
    e4 cis2. ~ |
    cis2 cis8( b) a4 |
    b='4 cis2.~ |
    cis2 cis8( b) a4 |
    a1 ~ |
    a2 a4
    % "To Coda" should go at end of line, not beginning; align right.
    \once \override TextScript #'self-alignment-X = #left
    \once \override TextScript #'extra-offset = #'( -2.0 . 0.0 )
    \once \override TextScript #'font-size = #2
    b^\markup{ "To Coda" } |
    \break
    a='1 ~ |
    a4 r4 r2 |
  }
  \alternative {
    { r2 e='4 e | }
    { r4 a='4 a a | gis2 a4 b | }
  }
  cis=''4 cis cis cis |
  cis=''4( b) a4. a8 |
  d=''4. d8 d4 d |
  d=''4 cis b a |
  b='2 cis4. cis8 |
  b2. b4 |
  cis=''4 cis cis cis |
  b4 b b8 b4. |
  a='4 a a8 a4. |
  a='4. a8 a a4. |
  b='4 cis4 b2 ~ |
  b2 b4 cis |
  d=''1 ~ |
  d4
  % D.S. should go at end of line, not beginning; align right.
  % lilypond doesn't allow multiple marks on a single bar line, so
  % attach it to the final rest instead. (and skooch it over a bit)
  \once \override TextScript #'self-alignment-X = #right
  \once \override TextScript #'extra-offset = #'( -2.0 . 0.0 )
  \once \override TextScript #'font-size = #2
  r4^\markup{ "D.S. al Coda" }
  \bar "||"
  \break
  % coda symbol at start of tag
  \partial 4*0 % reset timing for coda
  \mark \markup { \musicglyph #"scripts.coda" }
  a='1 ~ |
  a4 r4 cis8( b) a4 |
  b1 ~ |
  b2 cis8( b) a4 |
  a1 ~ |
  a2 cis8( b) a4 |
  b1 ~ |
  b2 cis8( b) a4 |
  a1 ~ |
  a2 ~ a4\fermata r4 \bar ":|" |
}
melodytag = \relative c'' { % c above middle c
  % outro
}

alto = \relative c' { % middle c
  \tag #'key \key a \major
  \time 2/2
  r1
}
altotag = \relative f' {
}

% same as alto part, but some very low notes raised.
% I assume the clarinet can play E below middle C (but not Eb)
altoclar = \relative c' { % middle c
  \tag #'key \key a \major
  \time 2/2

  r1
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

lowa   = \relative c, { < \tag #'n a \tag #'l \tag #'s \tag #'c a' >4 }
lowbes = \relative c, { < \tag #'n bes \tag #'l \tag #'s \tag #'c bes' >4 }
lowb   = \relative c, { < \tag #'n b   \tag #'l \tag #'s \tag #'c b'   >4 }
lowcx  = \relative c, { < \tag #'n c   \tag #'l \tag #'s \tag #'c c'   >4 }
lowc   = \relative c, { < \tag #'n \tag #'l c   \tag #'s \tag #'c c'   >4 }
lowdes = \relative c, { < \tag #'n \tag #'l \tag #'s des \tag #'c des' >4 }
lowdx = \relative c,  { < \tag #'n \tag #'l \tag #'s d   \tag #'c d'   >4 }
bass = \relative c { % c below middle c
  \tag #'key \tag #'n \tag #'l \tag #'s \tag #'c \key a \major
  \time 2/2

  % intro
  a=,2 e | a e | a e | a e |
  a=,2 e |
  % verse
  \repeat volta 2 {
    a e | fis cis' | fis, fis |
    e=,2 b' | e, b' | d, d | a' e |
    a=,2 e | a e | a e | fis cis' | fis, fis |
    e=,2 b' | e, b' | d2 cis4 b | a=,2
    % signo
    e=,2 | a e | a cis,4 d | e=,2 b' | e, b' |
    fis=,2 cis | fis fis4 e | d2 a' | d2 cis4 b | a=,2 e |
    a=,2 cis,4 d | e=,2 b' | e, b4 cis | d=,2 a' | d2 cis4 b |
    a=,2 e | a e |
  }
  \alternative {
    { a=,2 e | }
    { fis=,1 | e1 | }
  }
  % b part
  a=,2 e | a b4 cis | d2 cis4 b | a=,2 gis4 fis |
  e=,2 b' | e, b' | fis=,2 fis | g g | d' cis4 b |
  a=,2 gis4 fis | e=,2 b' | e, b' | e, b' | e4 r4
  % outro
  \partial 4*0 % reset timing for coda
  a,=,2 e | a gis4 fis | e=,2 b' | e, fis4 gis | a=,2 e |
  a=,2 gis4 fis | e=,2 b' | e, e | a e | a ~ a4\fermata r4 |
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \chordProperties
  \time 2/2

  % intro
  a4 a a a |
  a4 a a a |
  a4 a a a |
  a4 a a a | \break
  a4 a a a |

  % verse
  \repeat volta 2 {
    \mark \default % A part
    a4 a a a |
    fis4:m fis:m fis:m fis:m |
    fis4:m fis:m fis:m fis:m |
    e4 e e e |
    e4 e e e |
    d4 d d d |
    a4 a a a |
    a4 a a a |
    a4 a a a |
    a4 a a a |
    fis4:m fis:m fis:m fis:m |
    fis4:m fis:m fis:m fis:m |
    e4 e e e |
    e4 e e e |
    d4 d d d |
    a4 a 
    % signo
    a a |
    a4 a a a |
    a4 a a a |
    e4 e e e |
    e4 e e e |
    fis4:m fis:m fis:m fis:m |
    fis4:m fis:m fis:m fis:m |
    d4 d d d |
    d4 d d d |
    a4 a a a |
    a4 a a a |
    e4 e e e |
    e4 e e e |
    d4 d d d |
    d4 d d d |
    % to coda
    a4 a a a |
    a4 a a a |
  }
  \alternative {
    { a4 a a a | }
    { fis4:m fis:m fis:m fis:m | e4 e e e | }
  }

  \mark\default % B part
  a4 a a a |
  a4 a a a |
  d4 d d d |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  fis4:m fis:m fis:m fis:m |
  g4 g g g |
  d4 d d d |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  e4:7 e:7 e:7 e:7 |
  e4:7 e:7
  % ds al coda
  %\mark\default % C part % multiple marks here not allowed.
  % outro
  \partial 4*0 % reset timing for coda
  a4 a a a |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  a4 a a a |
  a4 a a a |
  e4 e e e |
  e4 e e e |
  a4 a a a |
  a4 a a a |
}

wordsA = \lyricmode {
  % intro
  "" "" ""
  "" "" "" "" "" ""
  "" "" "" "" "" |
  "" ""
  % verse
  Al -- most
  heav -- en, __
  West Vir -- gin -- ia. __
  Blue Ridge
  Moun -- tains, __
  Shen -- an -- do -- ah
  Riv -- er. __
  __
  Life is
  old there, __
  old -- er than the
  trees, __
  young -- er than the
  moun -- tains __
  grow -- in' like a breeze.
  __

  Coun -- try
  Roads, __
  take __ me
  home __
  to the
  place __
  I be -- long: __
  West Vir --
  gin -- ia, __
  moun -- tain
  mom -- ma, __
  Take __ me
  home, __
  Coun -- try
  Roads. __
  All my
  % ending 2
  I hear her
  voice, in the
  morn -- in' hour she
  calls __ me, the
  ra -- di -- o re --
  minds me of my
  home far a --
  way, and
  driv -- in' down the
  road I get a
  feel -- in' that I
  should have been home
  yes -- ter -- day, __
  yes -- ter -- day. __
  % coda
  Roads, __
  take __ me
  home, __
  Coun -- try
  Roads, __
  take __ me
  home, __
  Coun -- try
  Roads. __
}
wordsB = \lyricmode {
  % intro
  "" "" ""
  "" "" "" "" "" ""
  "" "" "" "" "" |
  "" "" "" ""
  % verse
  mem -- 'ries __
  gath -- er 'round __
  her, __
  min -- er's
  la -- dy, __
  stran -- ger to blue
  wa -- ter. __
  Dark and
  dust -- y, __
  paint -- ed on the
  sky, __
  mist -- y taste of
  moon -- shine, __
  tear -- drop in my eye.
  %__
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
%{
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." }
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
      \new Voice = melody {
	\transpose c c' { \melody \transpose c c, \melodytag }
      }
    }
    \new Lyrics \lyricsto "melody" { \wordsA }
    \new Lyrics \lyricsto "melody" { \wordsB }
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
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
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
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
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
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
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
    \new Lyrics \lyricsto "celloA" { \wordsA }
    %\new Lyrics \lyricsto "celloA" { \wordsB }
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
    \new Lyrics \lyricsto "melody" { \wordsA }
    %\new Lyrics \lyricsto "melody" { \wordsB }
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
%{
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
    \new Lyrics \lyricsto "melody" { \small\wordsA }
    %\new Lyrics \lyricsto "melody" { \small\wordsB }
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
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
%{
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      r1\pp
      \banjo
    >>
%}
%{
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
      tempoWholesPerMinute = #(ly:make-moment 220 4)
      }
    }
}
