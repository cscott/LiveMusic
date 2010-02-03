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
  ees='4 g bes bes | c2 bes4 aes | g1 | a2 b2 \bar "||" | \break

  \repeat volta 2 {
  d=''4 c g2 | r4 ees4 d c=' | g'4 f aes2 ~ | aes4 r4 bes aes |
  g='2 f4 ees | g2 f2 |
  }
  \alternative {
    { c1 | a'2 b2 | }
    { c,1 ~ | c4 r4 r2 | \bar "|." }
  }
}
harmony = \chordmode {
  c2:m c:m | f2:m f:m | g2:7 g:7 | c2:m c:m |
  ees2 ees | f2:m bes:7 | ees2 ees | d2:7 d:7 |
  \repeat volta 2 {
    c2:m c:m |  c2:m c:m | f2:m f:m | f2:m f:m |
    c2:m c:m | d2:m7 g:7 |
  }
  \alternative {
    { c2:m c:m | d2:7 d:7 | }
    { c2:m c:m | c2:m s2 | }
  }
}


% combined score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmony
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      %\set Staff.voltaSpannerDuration = #(ly:make-moment 3 4)
      \melody
    }
    %\new Lyrics \lyricsto "melody" { \words }
  >>
  \layout { }
  \header {
    instrument = "Combined Score"
  }
}

% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody <<
       \set Staff.midiInstrument = "fiddle"
       r1 \melody
     >>
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmony
    >>
  >>

  \midi {
%    \context {
%      \Score
%      tempoWholesPerMinute = #(ly:make-moment 80 4)
%      }
    }
}
