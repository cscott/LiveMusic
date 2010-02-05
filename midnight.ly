\version "2.12.2"
\header {
  title = "Midnight in Moscow"
  subtitle = "Phase II Two-Step (AAABC)"
  composer = "Russian Folk Tune"
  lastupdated = "2010/Feb/4"
}
#(set-default-paper-size "letter")

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
  oddFooterMarkup = \markup { \fill-line { 2010-02-04 } }
}

linebreaks = {
  \time 4/4
  \tempo "Two step" 4 = 124

  s1*8 \break

  \repeat volta 2 {
    s1*6 \break
  }
  \alternative {
    { s1*2 }
    { s1*2 \break }
  }
}

melodyC = \relative c' {
  \clef "treble"
  \key c \minor

  c='4 ees g ees | f2 ees4 d | g2 f2 | c2. r4 |
  ees='4 g bes bes | c2 bes4 aes | g1 | a2 b2 | \break

  \repeat volta 2 {
  d=''4 c g2 | r4 ees4 d c=' | g'4 f aes2 ~ | aes4 r4 bes aes |
  g='2 f4 ees | g2 f2 |
  }
  \alternative {
    { c1 | a'2 b2 | }
    { c,1 ~ | c4 r4 r2 | }
  }
}
melody = {
  \set Score.markFormatter = #format-mark-box-letters
 \time 4/4
  \mark \default % A part
 \melodyC \bar "||" \break
  \mark \default % B part
 \transpose c d \melodyC \bar "||" \break
  \mark \default % C part
 \transpose c f \melodyC \bar "|." }

harmonyC = \chordmode {
  c2:m c:m | f2:m f:m | g2:7 g:7 | c2:m c:m |
  ees2 ees | f2:m bes:7 | ees2 ees | d2:m7 g:7 |
  \repeat volta 2 {
    c2:m c:m |  c2:m c:m | f2:m f:m | f2:m f:m |
    c2:m c:m | d2:m7 g:7 |
  }
  \alternative {
    { c2:m c:m | d2:m7 d:m7 | }
    { c2:m c:m | c2:m s2 | }
  }
}
harmony = {
  \set Score.markFormatter = #format-mark-box-letters
  \time 4/4
  %\mark \default % A part
  \harmonyC
  %\mark \default % B part
  \transpose c d \harmonyC
  %\mark \default % C part
  \transpose c f \harmonyC
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

% clarinet score
\score {
  <<
    \context Staff = clarinetA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose bes c' \melody
    }
    %\context Staff = clarinetB {
    %  \set Staff.instrumentName = "Bass"
    %  \set Staff.shortInstrumentName = "Bas."
    %  \transpose bes c'' \bass
    %}
  >>
  \header {
    instrument = "Clarinet (Bb)"
    breakbefore=##t
  }
}

% saxophone score
\score {
  <<
    \context Staff = saxA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose ees c' \melody
    }
    %\context Staff = saxB {
    %  \set Staff.instrumentName = "Bass"
    %  \set Staff.shortInstrumentName = "Bas."
    %  \transpose ees c'' \bass
    %}
  >>
  \header {
    instrument = "Saxophone (Eb)"
    breakbefore=##t
  }
}

% flute score
\score {
  <<
    %\context ChordNames {
    %     \set chordChanges = ##t
    %     \harmony
    %}
    \context Staff = fluteA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \transpose c c' \melody
    }
    %\context Staff = bass {
    %  \set Staff.instrumentName = "Bass"
    %  \set Staff.shortInstrumentName = "Bas."
    %  \clef bass \linebreaks
    %}
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 124 4)
      }
    }
}
