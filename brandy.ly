\version "2.12.2"
\include "alt-chords.ly"
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

  s1 \noBreak s1 \noBreak s1 \noBreak s1 \break

  \repeat volta 2 {
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break

    s1 \noBreak s1 \noBreak s1 \noBreak s1 \break
    s1 \noBreak s1 \noBreak s1 \noBreak
  }
  \alternative {
    { s1 \noBreak }
    { s1 \break }
  }
}
melody = \transpose e g \relative c' {
  \clef "treble"
  \time 4/4
  \key e \major

  r1 | r1 | r1 | r2 r4 e8 fis |
  \repeat volta 2 {
    % verse
    gis='2 r4 fis8 e |
    fis='8 gis4 e8 ~ e4 cis8 e |
    fis='2 r8 b,8 cis e |
    fis='8 gis4 e8 ~ e4 e8 fis |

    gis='4 gis r4 fis8 e |
    fis='8 gis4 e8 ~ e4 r8 e |
    fis='8 gis4 e8 ~ e e4 e8 ~ |
    e='4 r8 e8 gis gis b4 |

    % chorus
    b='4 cis r8 b8 gis b ~ |
    b='8 cis4. ~ cis4 b8 cis8 |
    e=''4 cis ~ cis8 b cis cis ~ |
    cis=''2. b8( gis) |

    b='4. gis8 b4 b8 cis ~ |
    cis=''8 b4 gis8 ~ gis fis4. |
    fis='4.( e8 ~ e2) |
  }
  \alternative {
    { r2 r4 e='8 fis | }
    { r1 | }
  }
  r1
}
harmony = \transpose e g \chordmode {
  \chordProperties
  e4 e e e | b4:7 b:7 b:7 b:7 | a4. e4. e4 | a4. a4./b a4/b |
  \repeat volta 2 {
    e4 e e e | a8:6 b4:6 cis4.:m7 cis4:m7 | fis4:m7 fis:m7 a a | d4. a4. a4 |
    e4 e e e | a8:6 b4:6 cis4.:m7 cis4:m7 | fis4.:m7 a4/b a/b e8 ~ | e4 r e e |

    cis4:m7 cis:m7 cis:m7 cis:m7 |
    a4:maj7 a:maj7 a:maj7 a:maj7 |
    cis4:m7 cis:m7 cis:m7 cis:m7 |
    a4:maj7 a:maj7 a:maj7 a:maj7 |

    e4 e e e |
    b4:7 b:7 b:7 b:7 |
    a4. e4. e4 |
  }
  \alternative {
    { a4. a4/b a4./b | }
    { a4. a4/b a4./b | }
  }
  e1 |
}

upper = \transpose e g \relative c' {
  \clef "treble"
  \key e \major
  \time 4/4

  %% Intro
  <e gis b>4. gis8 <e gis b>4 b'8 <dis, a' cis>8~ |
  <dis a' cis>8 <dis a' b>4. <b dis gis>4 <a dis fis>4 |
  <a cis fis>4. <gis b e>8~ <gis b e>2 |
  <cis e a>4. <cis e a b>8~ <cis e a b>4 \bar "||" e8 fis8

  \repeat volta 2 {
    %% Verse
    <b, e gis>2 r4 <gis b fis'>8 e'8 |
    <a, cis fis>8 <b dis gis>4 <gis b e>8~ <gis b e>4 cis8 e8 |
    <a, cis e fis>2 r8 b8 <a cis>8 e'8 |
    <a, d fis>8 <a d gis>4 <a cis e>8~ <a cis e>4 <cis e>8 fis8 |

    <b, e gis>4 <b e gis> 4 r4 <gis b fis'>8 e'8 |
    <a, cis fis>8 <b dis gis>4 <b e gis>8~ <b e gis>4 r8 e8 |
    <a, cis fis>8 <b dis gis>4 <a cis e>8~ <a cis e>8 <a cis e>4 <gis b e>8 ~ |
    <gis b e>4 r8 e'8 gis8 gis8 b4 |

    %% Chorus
    <e, gis b>4 <e gis cis>4 r8 b'8 gis8 <e gis b>8~ |
    <e gis b>8 <e gis cis>4.~ <e gis cis>4 b'8 cis8 |
    <gis b e>4 <e gis cis>4~ <e gis cis>8 b'8 cis8 <cis, gis' cis>8~ |
    <cis gis' cis>2. <cis e b'>8 gis'8 |

    <e gis b>4. gis8 <e gis b>4 b'8 <dis, a' cis>8~ |
    <dis a' cis>8 <dis a' b>4 <b dis gis>8~ <b dis gis>8 <a dis fis>4. |
    <a cis fis>4. <gis b e>8~ <gis b e>2 |
  }
  \alternative {
    { <cis e a>4. <cis e a b>8~ <cis e a b>8 <cis e a b>4. | }
    { <cis e a>4. <cis e a b>8~ <cis e a b>8 <cis e a b>4. | }
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
    fis,4. b8~ b8 b4 e,8 ~ |
    e4 r4 r2 |

    %% Chorus
    cis'4. cis8 cis2 |
    a4. a8 a2 |
    cis4. cis8 cis2 |
    a8 a4 e8 a2 |

    <e e'>8 <e e'>4 b'8 <e, e'>2 |
    b'4. b8 b4. b8 |
    a8 a8 a8 e8~ e8 e8 e4 |
  }
  \alternative {
    { a8 a8 a8 b8~ b2 | }
    { a8 a8 a8 b8~ b2 | }
  }
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  ragged-bottom = ##t
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
      \melody
    }
    %\new Lyrics \lyricsto "melody" { \words }
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrumentName = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.shortInstrumentName = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \new Voice \upper
			        \new Voice \linebreaks >>
      \context Staff = lower << \clef bass \lower >>
    >>
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
    \context Staff=upper <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \upper
    >>
    \context Staff=lower <<
      \set Staff.midiInstrument = "acoustic grand"
      r1
      \lower
    >>
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 124 4)
      }
    }
}
