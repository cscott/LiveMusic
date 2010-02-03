\version "2.12.2"
\header {
  title = "Brandy (You're A Fine Girl)"
%  subtitle = "Left Alley Band Singing Call Version"
%  instrument = "piano"
  composer = "Words and Music by Elliot Lurie"
  lastupdated = "2010/Feb/2"}
#(set-default-paper-size "letter")
linebreaks = {
  \time 4/4
  \tempo "Moderate singing call" 4 = 124

  %% \partial 4
  %% s4 |

  \repeat unfold 5 {
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
  }
}
upper = \transpose e g \relative c' {
  \clef "treble"
  \key e \major
  \time 4/4

  \repeat volta 2 {
    %% Intro
    <e gis b>4. gis8 <e gis b>4 b'8 <dis, a' cis>8~ |
    <dis a' cis>8 <dis a' b>4. <b dis gis>4 <a dis fis>4 |
    <a cis fis>4. <gis b e>8~ <gis b e>2 |
    <cis e a>4. <cis e a b>8~ <cis e a b>4 \bar "||" e8 fis8

    %%  \partial 4
    %%  e8 fis8 |

    %% Verse
    <b, e gis>2 r4 <gis b fis'>8 e'8 |
    <a, cis fis>8 <b dis gis>4 <gis b e>8~ <gis b e>4 cis8 e8 |
    <a, cis e fis>2 r4 <a cis>8 e'8 |
    <a, d fis>8 <a d gis>4 <a cis e>8~ <a cis e>4 <cis e>8 fis8 |

    <b, e gis>4 <b e gis> 4 r4 <gis b fis'>8 e'8 |
    <a, cis fis>8 <b dis gis>4 <b e gis>8~ <b e gis>4 r8 e8 |
    <a, cis fis>8 <b dis gis>4 <a cis e>8~ <a cis e>8 <a cis e>8 <a cis e>4 |
    <gis b e>4 r8 e'8 gis8 gis8 b4 |

    %% Chorus
    <e, gis b>4 <e gis cis>4 r8 b'8 gis8 <e gis b>8~ |
    <e gis b>8 <e gis cis>4.~ <e gis cis>4 b'8 cis8 |
    <gis b e>4 <e gis cis>4~ <e gis cis>8 b'8 cis8 <cis, gis' cis>8~ |
    <cis gis' cis>2. <cis e b'>8 gis'8 |

    <e gis b>4. gis8 <e gis b>4 b'8 <dis, a' cis>8~ |
    <dis a' cis>8 <dis a' b>4 <b dis gis>8~ <b dis gis>8 <a dis fis>4. |
    <a cis fis>4. <gis b e>8~ <gis b e>2 |
    <cis e a>4. <cis e a b>8~ <cis e a b>8 <cis e a b>4. |
  }
}

lower = \transpose e g \relative c, {
  \clef "bass"
  \key e \major
  \time 4/4

  <e e'>8 <e e'>4 b'8 <e, e'>2 |
  b'4. b8 b2 |
  a8 a8 a8 <e e'>8~ <e e'>8 b'8 e,4 |
  a8 a8 a8 b8~ b8 b8 \bar "||" b,4

  %% \partial 4
  %% b4 |

  \repeat volta 2 {
    %% Verse
    e8 e4 e8 gis4 r4 |
    a8 b4 cis8~ cis2 |
    fis,8 fis4 fis8 a2 |
    d8 d4 a8~ a2 |

    e4. e8 gis4 r4 |
    a8 b4 cis8~ cis2 |
    fis,8 b4 b8~ b8 b4. |
    e,4 r4 r2 |

    %% Chorus
    cis'4. cis8 cis2 |
    a4. a8 a2 |
    cis4. cis8 cis2 |
    a8 a4 e8 a2 |

    <e e'>8 <e e'>4 b'8 <e, e'>2 |
    b'4. b8 b4. b8 |
    a8 a8 a8 e8~ e8 e8 e4 |
    a8 a8 a8 b8~ b2 |
  }
}

\score {
  \new PianoStaff = "piano" <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" <<
      \new Voice \upper
      \new Voice \linebreaks
    >>
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

