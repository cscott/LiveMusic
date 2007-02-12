\version "2.6.3"
\header {
  title = "Frosty Morning"
  piece = "Traditional"
  mutopiatitle = "Frosty Morning"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  source = "The Fiddler's Fakebook (melody only)"
  style = "Folk"
  maintainer = "C. Scott Ananian"
  maintainerEmail = "cananian@alumni.princeton.edu"
  maintainerWeb = "http://cscott.net"
  lastupdated = "2007/Feb/11"
  meter = 240
}
#(set-default-paper-size "letter")
%#(set-global-staff-size 18)

%%%%%%% HACK(ISH) TO SUPPORT PARENTHESIZED NOTES
%%%%%%% I think newer Lilyponds have a \parenthesized tweak to do this.
%%%%%%% From http://lilypond.org/doc/v2.6/input/regression/collated-files.html
%%%%%%%  "stencil-hacking.ly"

#(define (parenthesize-callback callback)
   "Construct a function that will do CALLBACK and add parentheses."
   (define (parenthesize-stencil grob)
     "This function adds parentheses to the original callback for
GROB.  The dimensions of the stencil is not affected."
     
     (let* ((fn (ly:get-default-font grob))
	    (pclose (ly:font-get-glyph fn "accidentals.rightparen"))
	    (popen (ly:font-get-glyph fn "accidentals.leftparen"))
	    (subject (callback grob))

	    ; remember old size
	    (subject-dim-x (ly:stencil-extent subject 0))
	    (subject-dim-y (ly:stencil-extent subject 1)))

        ;; add parens
        (set! subject
	     (ly:stencil-combine-at-edge 
	      (ly:stencil-combine-at-edge subject 0 1 pclose 0.2)
	      0 -1 popen  0.2))

	; revert old size.
       (ly:make-stencil
        (ly:stencil-expr subject) subject-dim-x subject-dim-y)))
   parenthesize-stencil)
par = \override NoteHead  #'print-function = #(parenthesize-callback Note_head::print)
nopar = \revert NoteHead #'print-function
    

melody = \relative c' { % middle c
  \tag #'key \key g \major
  \time 4/4

  \repeat volta 2 {
    e='8 d e( g) a \par g \nopar a \par g \nopar |
    a='8 b c( d) e4 \times 2/3 { d,8( e fis } |
    g='8) \par a \nopar b a g4 d |
    g='8 a b( c d4) \par d,4( \nopar |
    e='8) d e g a \par g \nopar a \par g \nopar |
    a='8 b c d( e4) e8 d |
    c=''( b) a c( b a) g4 |
  } \alternative {
    { a='4. b8( a4) \par d,4 \nopar | }% the d should be tied to the first e
    { a'='4. b8( a2) | }
  }
  \repeat volta 2 {
    e'=''4 a a a |
    a=''8( b) a( g e) d( cis d) |
    e=''8( d) e fis( g fis) g( fis |
    e=''8) d b d( e4) e |
    a,='4 a8 \par a( \nopar c4) c8 \par c( \nopar |
    d=''8 c) d \par d( \nopar e4) e8 d |
    c=''8 b a c b( a) g4 |
  } \alternative {
    { a='4( a8 b a2) }
    { a='1 }
  }
  \bar "|."
}

bass = \transpose c c,,
{
  \tag #'key \key g \major
  \time 4/4

  \repeat volta 2 {
    a2 e | a e' | g d' | g d' |
    a2 e | a e' | a g |
   }
   \alternative {
     { a e }
     { a a }
   }

 % Part 2
  \repeat volta 2 {
    a2 e | a e' | g d' | g d' |
    a2 c' | d' e' | a g |
   }
   \alternative {
     { a e }
     { a a }
   }
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \time 4/4

  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(0 . 2)
    \mark\default
    a4:m a:m a:m a:m |
    a4:m a:m a:m a:m |
    g4 g g g |
    g4 g g g |
\break
    a4:m a:m a:m a:m |
    a4:m a:m a:m a:m |
    a4:m a:m g g |
  }
  \alternative {
    { a4:m a:m a:m a:m | }
    { \set chordChanges = ##f
      a4:m \set chordChanges = ##t a:m a:m a:m | }
  }
\break
   
% Part 2
  \repeat volta 2 {
    \once\override Score.RehearsalMark #'extra-offset = #'(-3 . 0)
    \mark\default
    a4 a a a |
    a4 a a a |
    g4 g g g |
    g4 g g g |
\break
    a4:m a:m a:m a:m |
    a4:m a:m a:m a:m |
    a4:m a:m g g |
  }
  \alternative {
    { a4:m a:m a:m a:m | }
    { \set chordChanges = ##f
      a4:m \set chordChanges = ##t a:m a:m a:m | }
  }
}

\paper {
  scoreTitleMarkup = \bookTitleMarkup
  bookTitleMarkup = \markup {}
  raggedbottom = ##t
}

% combined score
\score {
  \header {
    instrument = "Combined Score"
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \melody
%      \partcombine \melody \alternate
    >>
%{
    \new Staff <<
      \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.instr = "Ban."
      \banjo
    >>
%}
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrument = "Bass "
      \set Staff.instr = "Bas."
      \bass
    >>
%{
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.instr = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
%}
  >>
  \layout { }
}
				
%{
% flute score
\score {
  \header {
    instrument = "Flute"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = fluteA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \melody
    }
    \context Staff = fluteB {
      \set Staff.instrument = "Alt. Melody"
      \set Staff.instr = "Alt."
      \alternate
    }
  >>
}
%}

% cello score (octave-shifted)
\score {
  \header {
    instrument = "Cello"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = celloA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \transpose c c, << \clef bass \melody >> % 1 octave down
    }
%{
    \context Staff = celloB {
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c,, << \clef bass \alternate >> % 2 octaves down
    }
%}
    \context Staff = celloC {
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \transpose c c' << \clef bass \bass >> % 1 octave up
    }
  >>
}

%{
% banjo/bass score (tablature)
\score {
  \header {
    instrument = "Banjo/Bass"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \context Staff = fluteA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \melody
    }

    \new TabStaff <<
      \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "gDGBD)" } }
      \set Staff.instr = "Ban."
      \set TabStaff.stringTunings = #banjo-open-g-tuning
      \removeWithTag #'key \banjo
    >>
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrument = "Bass "
      \set Staff.instr = "Bas."
      \removeWithTag #'key \bass
    >>
  >>
}

% piano/guitar score
\score {
  \header {
    instrument = "Piano/Guitar"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \harmonies
    }
    \new Staff <<
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \set Staff.printPartCombineTexts = ##f
      \small\partcombine \melody \alternate
    >>
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.instr = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \time 4/4 \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
  >>
  \layout { }
}
%}

% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << 
       \set Staff.midiInstrument = "fiddle"
       r1 \melody
     >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
    \context Staff=alternate <<
       \set Staff.midiInstrument = "fiddle"
       r1 \alternate
     >>
    \context Staff=banjo <<
      \set Staff.midiInstrument = "banjo"
      r1\pp
      \banjo
    >>
%}
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1\ff
      \transpose c c' \bass
    >>
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
    \tempo 2=120
  }
}
