\version "2.12.2"
\header {
  title = "Midnight in Moscow"
  subtitle = "Left Alley Band Singing Call Version"
  composer = "Russian Folk Tune"
  lastupdated = "2010/Feb/3"}
#(set-default-paper-size "letter")
linebreaks = {
  \time 4/4
  \tempo "Two step" 4 = 124

  %% \partial 4
  %% s4 |

  s1*8 \break

  %\repeat unfold 2 {
  %  s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
  %}
}
melody = \relative c' {
  \clef "treble"
  \key c \minor
  \time 4/4

  c='4 ees g ees | f2 ees4 d | g2 f2 | c2. r4 |
  ees='4 g bes bes | c2 bes4 aes | g1 | a2 b2 \bar "||" |

  \repeat volta 2 {
  d=''4 c g2 | r4 ees4 d c=' | g'4 f aes2 ~ | aes4 r4 bes aes |
  g='2 f4 ees | g2 f2 |
  }
  \alternative {
    { c1 | a'2 b2 | }
    { c,1 ~ | c4 r4 r2 | \bar "|." }
  }
}


\score {
  \new PianoStaff = "Melody" <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "melody" <<
      \new Voice \melody
      \new Voice \linebreaks
    >>
    %\new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

