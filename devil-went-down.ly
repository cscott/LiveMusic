\version "2.6.3"
\header {
  title = "The Devil Went Down To Georgia"
  meter = 132
}
#(set-default-paper-size "letter")

% 105 measures = 204 seconds = 1.943 s/measure (measure=4 beats) = 123 bpm
% 7:41=461 seconds = 9 + (32 * 7) + 8 = 241 measures = 125.5 bpm

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

melodyfigure = \relative c'' {
  \override NoteHead #'style = #'cross
  a4 a a a | a a a a | a a a a | a r4 r2 | % XXX FIXME
  a4 a a a | a a a a | a a a a | a a a r4 | % XXX FIXME
  a4 a a a | a a a a | a a a r4 | r1 | % XXX FIXME
  a4 a a a | a a a a | a a a r4 | r1 | % XXX FIXME
  \revert NoteHead #'style 
% chorus
  a4 a8 a8 a4 a8 b~ | b b4. a4 r4 | R1*2 |
  g4 g8 g8 ~ g8 g8 g8 g | a4 a g r4 | R1*2 |
  a8 a a a a4 a4 | b8 b b4 a4 r4 | R1*2 |
  g8 g g g g4 g | a4 a g r4 | R1 | % skip last measure (pickup)
}
melody = \relative c'' {
  \key f \major % transpose to d later?
  
  R1 | % first measure: 4 drum beats
  R1*7 | % intro
  \override NoteHead #'style = #'cross
  r2 a8 a r8 a | % pickup measure
% OPENER
  \bar "||" \mark\default
  a8 a a4 a4 a8 a ~ | a4 a a a | a8 a a a a4 a8 a ~ | a4 r4 a8 a a a |
  a4 r4 r8 a8 a a | a4 a8 a ~ a a a a | a a a a ~ a a a4 | r1 |
  a4 a8 a ~ a a4 a8 ~ | a4 a4 r4 r8 a8 ~ | a8 a4 a4 a4 a8 ~ | a4 r4 r2 |
  a4 a a a | a a a \revert NoteHead #'style c | c c r4 r8 c8 |

% chorus
  a8 a4. a4 a8 a ~ | a8 a4. a4 g | g g g8 e4 g8 ~ | g2 r2 |
  g4 g g f | g g8 g ~ g4 g | a8 a4. g4 d | d2 r4 r8 a'8 |
  a4 a a a | a a g g | g8 g4. g4 f | a2 r4 r8 g8 |
  a4 a a4. a8 | a8 a4. a4 a | a1 ~ | a1 |

% FIGURE
  \key d \major % really?
  \repeat volta 2 { \mark\default
    \melodyfigure
  }
  \alternative {
    { r1 }
    { \override NoteHead #'style = #'cross
      r4 a8 a r8 a4 a8
      \revert NoteHead #'style
    }
  }

% MIDDLE BREAK
  \mark\default
  \override NoteHead #'style = #'cross
  a4 a a a | a8 a4 a8 ~ a a a4 | a8 a4 a8 ~ a4 a | a r4 r4 a |
  a4 a a a | a a a8 a a a | a4 a a a | a r4 r2 |
  a4 a8 a ~ a a4 a8 ~ | a4 a4 r4 r8 a8 ~ | a8 a4 a4 a4 a8 ~ | a4 r4 r2 |
  a4 ~ a8 a8 ~ a4 a | a ~ a8 a ~ a4 \revert NoteHead #'style c | c c r2 |

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
    { r1 }
    { r1 }
  }

% CLOSER
  \mark\default
  R1*32

% TAG
  \mark\default
  R1*16
}


opener = \lyricmode { % 32 measures
  Circle left.
  The | dev -- il went down to Geor -- gia.
  He was | look -- in' for a soul to steal. __ %4
  He was in a | bind 'cause he was way be -- hind, __
  and he was will -- in' to make __ a deal. | %4
  Walk a -- round your cor -- ner, see saw round your own. | %4
  Left al -- le -- mande and then you weave that ring %4
% chorus
  Well, | John -- ny, ros -- in up __ your bow and play your fid -- dle hard, __
  Do -- sa -- do go once a -- round now prom -- en -- ade your pard'. %4
  And if you win you get this shin -- y fid -- dle made of gold. %4
  But if you lose the dev -- il gets your soul. __ %4
}

figure = \lyricmode { % 32 measures
  Heads you prom -- en -- ade half -- way a -- round the ring you go
  "2" "&" "4" do a right "&" left thru "&" turn the girl you go
  Square thru "4" hands a -- round, move a -- round that floor
  Do -- sa -- do and then you do an eight chain four
  Fire on the moun -- tain, run, __ boys, run.
  Swing the cor -- ner, prom -- en -- ade her, son.
  Chick -- en in the bread -- pan, pick -- in' out dough.
  Gran -- ny, does your dog bite? No, child, no.
}

middle = \lyricmode { % 32 measures
  Circle left
  When the dev -- il fin -- ished, John -- ny said, __
  "\"Well," you're pret -- ty good, __ old son,
  but sit down in that chair right there
  and let me show you how it's "done.\""
  Walk a -- round your cor -- ner, see saw round your own
  Left al -- le -- mande and weave that ring
  Fire on the moun -- tain, run, __ boys, run.
  Do -- sa -- do, prom -- en -- ade her, son.
  Chick -- en in the bread -- pan, pick -- in' out dough.
  Gran -- ny, does your dog bite? No, child, no.
}

closer = \lyricmode { % 32 measures
  Circle left
  Johnny said, Devil just come on back
  If you ever wanna try again
  'Cause I've told you once, you son-of-a-gun
  I'm the best that's ever been
  Walk around your corner, see saw round your own
  Left allemande and weave that ring
  Fire on the mountain, run boy run
  Dosado, promenade her son
  Chicken in the bread pan pickin' out dough
  Granny will your dog bite, no child no | % 8 measures
}

tagg = \lyricmode { % 16 measures
  Bow to your partner, corners too | % 4 measures
  Wave to the pretty girl across from you | % 4 measures
  Whoa, you did it good  | % 4 measures
  r1*4 | % 4 measures
}

\score {
  <<
    \context Voice = melody {
      \melody
    }
    \lyricsto melody \new Lyrics { \opener \figure \middle \figure \closer \tagg }
  >>
}