\version "2.12.0"
\header {
  title = "The Devil Went Down To Georgia"
  meter = 125
}
#(set-default-paper-size "letter")
#(set-global-staff-size 14)

% 105 measures = 204 seconds = 1.943 s/measure = 123 bpm
% 241 measures = 7:41=461 seconds = 9 + (32 * 7) + 8 = 125.5 bpm

% drums (4 equal beats) 0-2.2s   1 measure
% intro (2.2-17.5)               8 measures
% opener (17.5s)                32 measures
%   steal 24     4 measures
%   deal 31      8 measures
%   left 40      8 measures
%   well johnny.. (48s) 8 measures
% figure (1:19)                 32 measures
%   square thru 1:35
%   1:42 dosado
%   1:51 fire
%   2:06 chicken
%   2:14 granny  8 measures
% figure 2:22                   32 measures
%   2:53 fire
% middle break (3:24)
%   3:56 fire

% KEY CHANGES from d minor to d major between "fire on the mountain" and
% "granny does your dog bite" (also for "but if you lose the devil gets
% your soul") but we're going to keep the key signature as d minor to
% reduce the reader's confusion.

claps = \relative c'' {
  \override NoteHead #'style = #'cross
  a4 a a a |
  R1*7
}

melodyfigure = \relative c'' {
  a4 ~ a8 a a4 a | bes4 a a ~ a8 a8 | g4 ~ g8 g g4 e | g4 r4 r4 g4 |
  a4 a a a8 a | a a a4 a a | g4 ~ g8 c,8 c4 c | c r4 r2 |
  a'4 ~ a8 a ~ a4 a | a4 a8 a~a r8 r4 | g4 ~ g8 e g4 e | g4 r4 r2 |
  a4 a a a | a a a a | a2 a | a r2 |
% chorus
  a4 a8 a8 a4 a8 b~ | b b4. a4 r4 | R1*2 |
  g4 g8 g8 ~ g8 g8 g8 g | a4 a g r4 | R1*2 |
  a8 a a a a4 a4 | b8 b b4 a4 r4 | R1*2 |
  g8 g g g g4 g | a4 a g r4 | % skip last two measures (pickup)
}
melody = \relative c'' {
  \key d \minor
  \set Score.markFormatter = #format-mark-box-letters
  
  R1 | % first measure: 4 drum beats
  R1*7 | % intro
  \override NoteHead #'style = #'cross
  r4 a4 a r8 a | % pickup measure
% OPENER
  \bar "||" \mark\default
  a8 a a4 a4 a8 a ~ | a4 a a a | a8 a a a a4 a8 a ~ | a4 r4 r4 a4 |
  a8 a8 a8 a4 a8 a a | a4 a8 a ~ a a a a | a a a a ~ a a a4 | r1 |
  a4 a8 a ~ a4 a4 | a4 a4 r2 | r8 a4 ~ a8 a4 a8 a8 ~ | a4 r4 r2 |
  a4 a8 a8 a4 a | a4 a4 a4 a | 
  \revert NoteHead #'style cis4(a) cis(a) | cis(a) a2 |

% chorus
  a8 a4. a4 a8 a ~ | a8 a4. a4 g | g g g8 e4 g8 ~ | g2 r2 |
  g4 g g f | g g8 g ~ g4 g | a4 a8 a4. d,4 | d2 r4 r8 a'8 |
  a4 a a a | a a a g | g8 g4. g4 f | g2 r4 r8 g8 |
  a4 a a4. a8 | a8 a4. a4 a | a1 ~ | a1 |

% FIGURE
  \repeat volta 2 { \mark\default
    \melodyfigure
  }
  \alternative {
    { r1 r1 }
    { \override NoteHead #'style = #'cross
      r1 r4 a8 a r8 a4 a8
      \revert NoteHead #'style
    }
  }

% MIDDLE BREAK
  \mark\default
  \override NoteHead #'style = #'cross
  a4 a a a | a8 a4 a8 ~ a a a4 | a8 a4 a8 ~ a4 a | a r4 r4 a |
  a4 a a a | a a a8 a a a | a4 a a a | a r4 r2 |
  a4 a8 a ~ a4 a4 | a4 a4 r2 | r8 a4 ~ a8 a4 a8 a8 ~ | a4 r4 r2 |
  a4 a8 a8 a4 a | a4 a4 a4 a | 
  \revert NoteHead #'style cis4(a) cis(a) | cis(a) r2 |

% chorus
  a4 a8 a8 a4 a8 b~ | b b4. a4 r4 | R1*2 |
  g4 g g g8 g | a4 a g r4 | R1*2 |
  a8 a a a a4 a4 | b8 b b4 a4 r4 | R1*2 |
  g8 g g g g4 g | a4 a g r4 | R1*2 |

% FIGURE
  \repeat volta 2 { \mark\default
    \melodyfigure
  }
  \alternative {
    { r1 r1 }
    { \override NoteHead #'style = #'cross
      r1 r2 a8 a a r8
      \revert NoteHead #'style
    }
  }

% CLOSER
  \mark\default
  \override NoteHead #'style = #'cross
  a8 a a4 a8 a a4 | a8 a4 a8 ~ a4 a8 a | a8 a a a a4 a8 a ~ | a4 r4 r8 a8 a4 |
  a4 a a a | a8 a a a ~ a4 a8 a | a4 a a8 a4 a8 ~ | a4 r4 r2 |
  a4 a8 a ~ a4 a4 | a4 a4 r2 | r8 a4 ~ a8 a4 a8 a8 ~ | a4 r4 r2 |
  a4 a8 a8 a4 a | a4 a4 a4 a | 
  \revert NoteHead #'style cis4(a) cis(a) | cis(a) r2 |
  % chorus
  a4 a8 a8 a4 a8 b~ | b b4. a4 r4 | R1*2 |
  g4 g g g8 g | a4 a g r4 | R1*2 |
  a8 a a a a4 a4 | b8 b b4 a4 r4 | R1*2 |
  g8 g g g g4 g | a4 a g r4 | R1*2 |

% TAG
  \override NoteHead #'style = #'cross
  d'4 d8 d c4 c | bes bes a r4 |
  d4 g,8 g g g g g | g4 g g r4 |
  a1 ~ | a4 d d8 d ~ d4 | d4 r4 r2 | R1*2 |
  \bar "|."
}


opener = \lyricmode { % 32 measures
  Circle left.
  The | dev -- il went down to Geor -- gia.
  He was | look -- in' for a soul to steal. __ %4
  He | was in a bind 'cause he was way be -- hind, __
  and he was will -- in' to make __ a deal. | %4
  Walk a -- round your cor -- ner, see saw your own. | %4
  Al -- le -- mande left that cor -- ner girl and weave that ring. %4
% chorus
  Well, | John -- ny, ros -- in up __ your bow and play your fid -- dle hard, __
  Do -- sa -- do go once a -- round now prom -- en -- ade your pard'. %4
  And if you win you get this shin -- y fid -- dle made of gold. %4
  But if you lose the dev -- il gets your soul. __ %4
}

figureC = \lyricmode { % 32 measures
  Square thru "4" hands a -- round, move a -- round that floor.
  Do -- sa -- do and then you do an eight chain four.
  Fire on the moun -- tain, run, __ boys, run.
  Swing the cor -- ner, prom -- en -- ade her, son.
  Chick -- en in the bread -- pan, pick -- in' out dough.
  Gran -- ny, does your dog bite? No, child, no.
}
figureA = \lyricmode {
  Heads you prom -- en -- ade half -- way a -- round the ring you go.
  Now, "2" "&" "4" do a right "&" left thru "&" turn the girl you go.
  \figureC
}
figureB = \lyricmode {
  Sides you prom -- en -- ade half -- way a -- round the ring you go.
  Now, "1" "&" "3" do a right "&" left thru "&" turn the girl you go.
  \figureC
}

middle = \lyricmode { % 32 measures
  Circle left
  When the dev -- il fin -- ished, John -- ny said, __
  "\"Well," you're pret -- ty good, __ old son,
  but sit down in that chair right there
  and let me show you how it's "done.\""
  Walk a -- round your cor -- ner, see saw your own. | %4
  Al -- le -- mande left that cor -- ner girl and weave that ring. %4
  Fire on the moun -- tain, run, __ boys, run.
  Do -- sa -- do, prom -- en -- ade her, son.
  Chick -- en in the bread -- pan, pick -- in' out dough.
  Gran -- ny, does your dog bite? No, child, no.
}

closer = \lyricmode { % 32 measures
  Cir -- cle left
  John -- ny said, "\"Dev" -- il, just come on back __
  if you ev -- er want to try a -- gain. __
  'Cause I told you once, you son -- of -- a -- gun, __
  I'm the best that's ev -- er "been.\"" __
  Walk a -- round your cor -- ner, see saw your own. | %4
  Al -- le -- mande left that cor -- ner girl and weave that ring. %4
  Fire on the moun -- tain, run, __ boys, run.
  Do -- sa -- do, prom -- en -- ade her, son.
  Chick -- en in the bread -- pan, pick -- in' out dough.
  Gran -- ny, does your dog bite? No, child, no.
}

tagg = \lyricmode { % 8 measures
  Bow to your part -- ner, cor -- ners too. | % 2 measures
  Wave to the pret -- ty girl a -- cross from you. | % 2 measures
  Whoa, you did it good!  | % 4 measures
}

fiddle = \relative c'' {
  \set Staff.midiInstrument = "fiddle"
  \key d \minor
% drum intro
  r1 |
% fiddle intro
  d8 cis d e f e f g | a g f g a g f a |
  g8 e g a g e c d | e dis e f e c a4 |
  d8 e d a c d c a | bes c bes g a bes a4 ~ |
  a1 ~ | a1 |
% opener
  R1*16 |
  d1 ~ | d4 a'2 f4 |
  g1 ~ | g4 e2 c4 |
  d1 ~ | d4 bes2 g4 |
  a1 ~ | a4 ~ a8 g f g a f |
  a1 ~ | a2 ~ a8 cis8 ~ cis4 |
  d4( bes2.) ~ | bes4 g2. |
  a8-> e e e a-> e e e | a-> e cis e a-> e cis e |
  a8-> e e e e e e e | e-> e4 e8 e4 e8 e |
  \repeat unfold 2 {
% figure
    \repeat volta 2 {
      R1*16 |
      R1*2 | d'8 cis d e  fis b a fis | d fis e d  b cis d4
      R1*2 | c8 b c b  c d e f | g e g a  g e c4 |
      R1*2 | d8 b' b a  fis d b cis | d a fis d  b cis d4 |
      R1*2 |
    }\alternative {
      { c'4 ~ c8 d8 ~ d4 c4 ~ | c8 c ~ c4 a,2 | }
      { c'4 ~ c8 d8 ~ d4 c4 ~ | c8 c ~ c4 a,2 | }
    }
% break/closer
    R1*16 |
    R1*2 | d'8 cis d e  fis b a fis | d fis e d  b cis d4
    R1*2 | c8 b c b  c d e f | g e g a  g e c4 |
    R1*2 | d8 b' b a  fis d b cis | d a fis d  b cis d4 |
    R1*2 | c'4 ~ c8 d8 ~ d4 c4 ~ | c8 c ~ c4 a,2 |
  }
% outro
  d'8 e d a  c d c a | bes c bes g  a bes a f |
  r4 g4 r8 e4 d8 | g4 r8 e4 d8 e8. d16 |
  d'8 e d a c d c a | bes c bes g a bes a4 |
  r4 a,2 r4 | r4. a4. c4 | d4. r8 r2 | 
}

harmonies = \chordmode {
   \set Staff.midiInstrument = "pizzicato strings"
   r1 |
% intro
   d1*2:m | c1*2 |
   d2:m c | bes, a,:m |
   g, a, | d4:m a,4. c4. |
% opener
   \set chordChanges = ##f
   d1*3:m | r2. d4:m | % up strum followed by down strum
   d1*3:m | r2. d4:m |
   d1*3:m | r2. d4:m |
   d1*4:m |
   d1:m |
   \set chordChanges = ##t
   d:m |
   c1 | c |
   g1:m | g:m |
   d1:m | d:m | d:m | d:m |
   g,1:m | g,2:m gis,:dim7 |
   a,1 | a, | a, | a, |
  \repeat unfold 2 {
% figure
    \repeat volta 2 {
      d1:m | d:m | c | c |
      d1:m | d:m | c | c |
      d1:m | d:m | c | c |
      a | a | a | a |
      
      d | d | d | d |
      c | c | c | c |
      d | d | d | d |
      c | c |
    }
    \alternative {
      { c1 c } { c1 c }
    }
% break/closer
    \set chordChanges = ##f
    d1*3:m | r2. d4:m | % up strum followed by down strum
    d1*3:m | r2. d4:m |
    d1*3:m | r2. d4:m |
    d1*4:m |
    \set chordChanges = ##t
    d1 | d | d | d |
    c | c | c | c |
    d | d | d | d |
    c | c | c | c |
  }
% outro
   d1*2:m | c1*2 |
   d2:m c | bes, a,:m |
   g, a, | d4.:m a,4. c4 |
   d4.:m r8 r2 |
}

bass = \relative c,
{
  \set Staff.midiInstrument = "acoustic bass"
% drum intro
  r1 |
% intro
  \octaveCheck d,
  d2\3 a\4 | d2\3 d4\3 cis | c2 g | c2 g4 c |
  d2\3 c | bes a | g a | d4\3 a4. c4. |
% opener
  \repeat unfold 3 {
  \octaveCheck d,
  d2\3 a\4 | d4\3 a2\4 c4 | d2\3 a\4 | d4\3 f2\3 e4\3 |
  }
  d2\3 a\4 | d4\3 a2\4 c4 | d2\3 a\4 | bes4 b c cis |
  \octaveCheck d,
  d2\3 a\4 | d2\3 a4\4 d\3 |
  c2 g | c2 c |
  g'2 d | g g |
  d a | d a4 d | d2 a | d2 d |
  g2 d | g gis |
  \override Glissando #'style = #'zigzag
  a2\3\glissando g4\3\glissando f\3\glissando |
  e\3\glissando d\3\glissando c\3\glissando bes\3\glissando |
  a2 g | f e |
  \repeat unfold 2 {
% figure
    \repeat volta 2 {
      \octaveCheck d,,
      \repeat unfold 2 { d'2\3 a\4 | d2\3 a4\4 d\3 | c2 g | c2 c4 cis | }
      \octaveCheck d,
      d2\3 a\4 | d2\3 a4\4 d\3 | c2 g | c2 c2 |
      a'2 e | a e | a g | f e |

      \octaveCheck d,
      d2\3 a\4 | d2\3 a\4 | d2\3 a\4 | d2\3 d4\3 cis |
      c2 g | c2 g | c2 g | c2 c4 cis |
      d2\3 a\4 | d2\3 a\4 | d2\3 a\4 | d2\3 d4\3 cis |
      c2 g | c2 g |
    }
    \alternative {
      { c2 g | c4 a b c | } { c2 g | c4 a b c | }
    }
% break/closer
    \repeat unfold 3 {
      \octaveCheck d,
      d2\3 a\4 | d4\3 a2\4 c4 | d2\3 a\4 | d4\3 f2\3 e4\3 |
    }
    d2\3 a\4 | d4\3 a2\4 c4 | d2\3 a\4 | bes4 b c cis |
    
    \octaveCheck d,
    d2\3 a\4 | d2\3 a\4 | d2\3 a\4 | d2\3 d4\3 cis |
    c2 g | c2 g | c2 g | c2 c4 cis |
    d2\3 a\4 | d2\3 a\4 | d2\3 a\4 | d2\3 d4\3 cis |
    c2 g | c2 g | c2 g | c4 a b c |
  }
%outro
  \octaveCheck d,
  d2\3 a\4 | d2\3 d\3 | c2 g | c2 g4 c |
  d2\3 c | bes a |
  g a | d4.\3 a4. c4 |
  d4.\3 r8 r2 |
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
      \tempo 2=125
      \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Voice"
      \set Staff.shortInstrumentName = "Voc"
      \melody
    }
    \lyricsto melody \new Lyrics {
      \opener \figureA \middle \figureB \closer \tagg
    }
    \context Staff = fiddle {
      \set Staff.instrumentName = "Fiddle"
      \set Staff.shortInstrumentName = "Fid"
      \fiddle
    }
    \context Staff = clarinet {
      \set Staff.instrumentName = "Clarinet"
      \set Staff.shortInstrumentName = "Cla"
      \transpose bes c' << \fiddle >>
    }
    \context Staff = celloA {
      \set Staff.instrumentName = "Cello 1"
      \set Staff.shortInstrumentName = "Cel1"
      \transpose c c, << \clef bass \fiddle >> % 1 octave down
    }
    \context Staff = celloB {
      \set Staff.instrumentName = "Cello 2"
      \set Staff.shortInstrumentName = "Cel2"
      \transpose c c' << \clef bass \bass >> % 1 octave up
    }
    \new TabStaff <<
      \set Staff.instrumentName = "Bass "
      \set TabStaff.stringTunings = #bass-tuning
      \bass
    >>
    \context Staff = claps {
      \set Staff.instrumentName = "Drums"
      \claps
    }
    \override Score.VerticalAxisGroup #'remove-first = ##t
  >>
  \layout {
    \context {
      \RemoveEmptyStaffContext
    }
  }
}

				
% cello score
\score {
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \tempo 2=125
      \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Voice"
      \set Staff.shortInstrumentName = "Voc"
      \melody
    }
    \lyricsto melody \new Lyrics {
      \opener \figureA \middle \figureB \closer \tagg
    }
    \context Staff = celloA {
      \set Staff.instrumentName = "Cello 1"
      \set Staff.shortInstrumentName = "Cel.1"
      \transpose c c, << \clef bass \fiddle >> % 1 octave down
    }
    \context Staff = celloB {
      \set Staff.instrumentName = "Cello 2"
      \set Staff.shortInstrumentName = "Cel.2"
      \transpose c c' << \clef bass \bass >> % 1 octave up
    }
  >>
  \layout { }
}
% flute score
\score {
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \tempo 2=125
      \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Voice"
      \set Staff.shortInstrumentName = "Voc"
      \melody
    }
    \lyricsto melody \new Lyrics {
      \opener \figureA \middle \figureB \closer \tagg
    }
    \context Staff = fluteA {
      \set Staff.instrumentName = "Flute"
      \set Staff.shortInstrumentName = "Flu."
      \fiddle
    }
  >>
  \layout { }
}
% clarinet score
\score {
  \header {
    instrument = "Clarinet"
    breakbefore=##t
  }
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \tempo 2=125
      \transpose bes c' << \harmonies >>
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Voice"
      \set Staff.shortInstrumentName = "Voc"
      \transpose bes c' << \melody >>
    }
    \lyricsto melody \new Lyrics {
      \opener \figureA \middle \figureB \closer \tagg
    }
    \context Staff = clarinet {
      \set Staff.instrumentName = "Clarinet"
      \set Staff.shortInstrumentName = "Cla"
      \transpose bes c' << \fiddle >>
    }
  >>
  \layout { }
}
% guitar/bass score
\score {
  \header {
    instrument = "Guitar/Bass"
    breakbefore=##t
  }
  <<
    \context ChordNames {
      \set chordChanges = ##t
      \tempo 2=125
      \harmonies
    }
    \context Voice = melody {
      \set Staff.instrumentName = "Voice"
      \set Staff.shortInstrumentName = "Voc"
      \melody
    }
    \lyricsto melody \new Lyrics {
      \opener \figureA \middle \figureB \closer \tagg
    }
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrumentName = "Bass "
      \set Staff.shortInstrumentName = "Bas."
      \bass
    >>
  >>
  \layout { }
}


% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
%    \context Staff=upper << r4\pianotop >>
%    \context Staff=lower << r4\f\pianobot >>
    \context Staff=chords <<r4\p\harmonies >>
    \context Staff=melody << r4\melody >>
    \context Staff=fiddle << r4\fiddle >>
%    \context Staff=alternate << r4\alternate >>
%    \context Staff=banjo << r4\banjo >>
    \context Staff=bass << r4\bass >>
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 125 2)
      }
    }


}
