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
  oddFooterMarkup = \markup { \fill-line { Uploaded 2010-02-05 22:04 } }
}

linebreaks = {
  \time 4/4
  \tempo "Two step" 4 = 165

  \repeat unfold 2 {
  s1*8 \break

  \repeat volta 2 {
    s1*6 \break
  }
  \alternative {
    { s1*2 }
    { s1*2 \break }
  }
}
}

melodyCtagged = \relative c' {
  \key c \minor

  c='4 ees g ees | f2 ees4 d | g2 f2 | c2. r4 |
  ees='4 g bes bes | c2 bes4 aes | g1 | a2 b2 | \break

  \repeat volta 2 {
    d=''4 c g2 | r4 ees4 d c=' | g'4 f aes2 ~ | aes4 r4 bes aes |
    g='2 f4 ees | \tag #'notfinal { g2 f2 | }
  }
  \alternative {
    { \tag #'final { g2 f2 | }
      c1 | a'2 b2 |
      \tag #'final { \break } }
    { \tag #'final { g4 aes a b | c1 ~ | c1 ~ | c1 ~ | c2 ~ c4-. r | }
      \tag #'notfinal { c,1 ~ | c4 r4 r2 | }
    }
  }
}
melodyC = {
  \keepWithTag #'notfinal \melodyCtagged \break
}
melodyFinal = {
  \keepWithTag #'final \melodyCtagged \break
}

melody = {
  \set Score.markFormatter = #format-mark-box-letters
  %\clef "treble"
  \time 4/4
  \tempo "Two step" 4 = 165

  \mark \default % A part
  \melodyC \bar ":|" \break
  \mark \default % B part
  \transpose c d \melodyC \bar "||" \break
  \mark \default % C part
  \transpose c f \melodyFinal \bar "|."
}

altoCtagged = \relative c' {
  \key c \minor

  g=4 c=' ees c | c2 c4 b | ees2 d2 | g,2. r4 |
  bes=4 ees g g | aes2 g4 f | ees1 | f2 g2 | \break

  \repeat volta 2 {
    g='4 g ees2 | r4 c4 g g= | c='4 aes f'2 ~ | f4 r4 f f |
    ees='2 c4 c | \tag #'notfinal { d2 b2 | }
  }
  \alternative {
    { \tag #'final { d2 b2 | }
      c='1 | f2 g2 |
      \tag #'final { \break } }
    { \tag #'final { d4 f f g | ees2 d | c1 ~ | c1 ~ | c2 ~ c4-. r | }
      \tag #'notfinal { c='1 ~ | c4 r4 r2 | }
    }
  }
}
altoC = {
  \keepWithTag #'notfinal \altoCtagged \break
}
altoFinal = {
  \keepWithTag #'final \altoCtagged \break
}

alto = {
  \set Score.markFormatter = #format-mark-box-letters
  %\clef "treble"
  \time 4/4
  \tempo "Two step" 4 = 165

  \mark \default % A part
  \altoC \bar ":|" \break
  \mark \default % B part
  \transpose c d \altoC \bar "||" \break
  \mark \default % C part
  \transpose c f \altoFinal \bar "|."
}

bassCtagged = \relative c, {
  \key c \minor
  c=,4 r g' r |
  f r g r |
  ees r d r |
  c r8 c \tag #'nocello {bes4}
         \tag #'cello \tag #'walk {d4} d4 |

  ees=,4 r bes' r |
  aes r \tag #'nocello {bes,}
        \tag #'cello \tag #'walk {bes'} r |
  ees, r8 g bes4 g |
  f4 r g r |

  \repeat volta 2 {
    c,=,4 r g' r | c, r r2 | f4 r c r | f r ees aes |
    g=, r c g | \tag #'nofinal { f=, r g f | }
  }
  \alternative {
    { \tag #'final { f=, r g f | }
      \tag #'nocello \tag #'walk { c=,4 r bes r | a r g r | }
      \tag #'cello { c=,4 r g' r | d r g r | } }
    { \tag #'final { f=, r g f | }
      c=,4 r g' r | c, r g' r |
      \tag #'final { c,=,4 r g' f | ees d c r | }
    }
  }
}

bassC = \removeWithTag #'cello \bassCtagged
% alternate without the drop down scale
bassCnowalkdown = \removeWithTag #'walk \bassCtagged
% alternate for when c, is the lowest note available
bassCcello = \removeWithTag #'nocello \bassCtagged

bass = {
  %\clef "bass"
  \time 4/4

  {\removeWithTag #'final \bassC} \bar ":|" \break
  \transpose c d {\removeWithTag #'final \bassC} \bar "||" \break
  \transpose c f {\removeWithTag #'nofinal \bassC} \bar "|."
}
basscello = {
  \time 4/4

  {\removeWithTag #'final \bassCcello} \bar ":|" \break
  \transpose c d {\removeWithTag #'final \bassCnowalkdown} \bar "||" \break
  \transpose c f {\removeWithTag #'nofinal \bassC} \bar "|."
}
basssax = {
  \time 4/4

  s1*8 \repeat volta 2 { s1*6 } \alternative { s1*2 } { s1*2 } \bar ":|" \break
  \transpose c d {\removeWithTag #'final \bassCcello} \bar "||" \break
  \transpose c f {\removeWithTag #'nofinal \bassCnowalkdown} \bar "|."
}
bassclarinet = {
  \time 4/4

  \transpose c c' {\removeWithTag #'final \bassC} \bar ":|" \break
  \transpose c d  {\removeWithTag #'final \bassCcello} \bar "||" \break
  \transpose c f  {\removeWithTag #'nofinal \bassCnowalkdown} \bar "|."
}

harmonyC = \chordmode {
  c2:m c:m | f2:m f:m | g2:7 g:7 | c2:m c:m |
  ees2 ees | f2:m bes:7 | ees2 ees | d2:m7 g:7 |
  \repeat volta 2 {
    c2:m c:m |  c2:m c:m | f2:m f:m | f2:m f:m |
    c2:m c:m | \tag #'nofinal { d2:m7 g:7 | }
  }
  \alternative {
    { \tag #'final { d2:m7 g:7 | }
      c2:m c:m | d2:m7 d:m7 | }
    { \tag #'final { d2:m7 g:7 | }
      c2:m c:m | c2:m s2 |
      \tag #'final { c2:m c2:m | c2:m c4:m r | }
    }
  }
}
harmony = {
  \set Score.markFormatter = #format-mark-box-letters
  \time 4/4
  %\mark \default % A part
  \removeWithTag #'final \harmonyC
  %\mark \default % B part
  \transpose c d \removeWithTag #'final \harmonyC
  %\mark \default % C part
  \transpose c f \removeWithTag #'nofinal \harmonyC
}


% combined score
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmony
    }
    \context Staff = melody <<
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      %\set Staff.voltaSpannerDuration = #(ly:make-moment 3 4)
      \clef "treble"
      \set printPartCombineTexts = ##f
      \new Voice = melody { \partcombine \melody \alto }
    >>
    %\new Lyrics \lyricsto "melody" { \words }
    \context Staff = bass {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \clef bass \bass
    }
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
      \clef "treble" \transpose bes c' <<
	\new Voice = melody { \voiceOne \melody }
	\new Voice = alto { \small \voiceTwo \alto }
      >>
    }
    \context Staff = clarinetB {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose bes c'' \bassclarinet
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
    \context Staff = saxA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \clef "treble" \transpose ees c' <<
	\new Voice = melody { \voiceOne \melody }
	\new Voice = alto { \small \voiceTwo \alto }
      >>
    }
    \context Staff = saxB {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \transpose ees c'' \basssax
    }
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
      \clef "treble" \transpose c c' <<
	\new Voice = melody { \voiceOne \melody }
	\new Voice = alto { \small \voiceTwo \alto }
      >>
    }
    \context Staff = bass {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \clef "treble" \transpose c, c' \basscello
    }
  >>
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
}

% cello score (octave-shifted)
\score {
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmony
    }
    \context Staff = celloA {
      \set Staff.instrumentName = "Melody"
      \set Staff.shortInstrumentName = "Mel."
      \clef "bass" \transpose c c, \melody  % 1 octave down
    }
    %\new Lyrics \lyricsto "celloA" { \words }
%{
    \context Staff = celloB {
      \set Staff.instrumentName = "Harmony"
      \set Staff.shortInstrumentName = "Har."
      \transpose c c,, << \clef bass \alternate >> % 2 octaves down
    }
%}
    \context Staff = celloC {
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bas."
      \clef bass \basscello
    }
  >>
  \header {
    instrument = "Cello"
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
    \context Staff=melody <<
       \set Staff.midiInstrument = "fiddle"
       r1 \alto
     >>
    %\context Staff=chords <<
    %  \set Staff.midiInstrument = "pizzicato strings"
    %  r1\pp
    %  \harmony
    %>>
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1
      \transpose c c' \bass
    >>
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 165 4)
      }
    }
}
