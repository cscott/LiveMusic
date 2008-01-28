\version "2.6.3"
\header {
  title = "Soldier's Joy"
  piece = "Traditional"
  mutopiatitle = "Soldier's Joy"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar, Banjo, Piano"
  source = "Transcribed by ear (no copyright)"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "Taj Morton"
  maintainerEmail = "taj@wildgardenseed.com"
  maintainerWeb = "http://www.wildgardenseed.com"
  lastupdated = "2006/Jul/8"
  meter = 126
  
%  footer = "Mutopia-2004/12/19-510"
%  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}
#(set-default-paper-size "letter")

melody = \relative c''
{
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2 fis8( g8 )
  
  \repeat volta 2 {
    a8 fis8 d8 fis8
    a8 fis8 d8 fis8
    a4 d4 d4
    cis8 ( b8 )
    a8 fis8 d8 fis8
    a8 fis8 d8 fis8
    g4 e4 e4
    
    fis8( g8 )
    a8 fis8 d8 fis8
    a8 fis8 d8 fis8
    a4 d4 d4 e8( g8 )
    
    fis8 a8 fis8 d8
    e8 g8 fis8 e8
  } \alternative {
    { d4 d8 d8 d4 fis,8( g8 ) }
    { d'4 << d4 fis >> << d fis >> d,8( e8 ) }
  }
  
% Part 2

  \repeat volta 2 {
    fis4 g4 a4 g8( fis8)
    e8 d8 e8 fis8 g4 e8( g8)
    
    fis4 g4 a4 g8( fis8)
    e8 d8 cis8 b8 a4 d8( e8)
    
    fis4 g4 a4 g8( fis8)
    e8 d8 e8 fis8 g4 e8( g8)

    fis8 a fis d e g fis e
  } \alternative {
    { d4 d8 d d4 d8( e) }
    { d4 << d8 fis8 >> << d fis >> << d4 fis4 >> \bar "|." }
  }
}

alternate = \relative c'' % based on the banjo part
{
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2

  a8\3( b\3)
  \repeat volta 2 {
    d8 a fis( d) d( fis) fis a
    a4 fis' d a8( b)
    d8 a fis( d) d( fis) fis a
    e4 a e a8( b)
    d8 a fis( d) d( fis) fis a
    a4 fis' d fis
    g8( e) e d cis( a) b( cis)
  }
  \alternative {
        {
    d4 fis8 a d,4 a8( b)
        }
        {
    d4 fis8 a d,4 fis8( a)
        }
  }

% Part 2

  \repeat volta 2 {
    d,4 e fis a,8 b
    a8 g fis a d4 g8 b
    d,4 e d fis,8 a
    cis8 b a e cis4 e8( a)
    d4 e fis a,8 b
    a8 g fis a d4 a8 g
    fis8 d fis g
               cis( a) b( cis)
  }
  \alternative {
        {
    d4 fis8 a\5 d,4 a8\3( b\3)
        }
        {
    d4 fis8 a\5 d,4 \bar "|."
        }
  }
}

banjo = \relative c' { % clawhammer banjo part
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2

  a8\3( b\3)
  \repeat volta 2 {
    d8 a fis( d) d( fis) fis a'\5
    a,8\3( b\3) b a'\5 d,4\2 a8\3( b\3)
    d8 a fis( d) d( fis) fis a'\5
    e,4 a8 a'\5 e,4 a8( b)
    d8 a fis( d) d( fis) fis a'\5
    a,8\3( b\3) b a'\5 d,4\2 fis\1
    g8( e) e d cis( a) b( cis)
  }
  \alternative {
        {
    d4 fis8 a\5 d,4 a8\3( b\3)
        }
        {
    d4 fis8 a\5 d,4 fis8( a\5)
        }
  }

% Part 2

  \repeat volta 2 {
    fis8 d g a\5 a\1 fis\2 a\1 a\5
    e8 d fis a\5 g4 g8 a\5
    fis8 d g a\5 a\1( e) fis a\5
    e8 d cis( a) a( cis) e a\5
    fis8 d g a\5 a\1( e) fis a\5
    e8 d fis a\5 <g d b>4 fis
    g8( e) e d cis( a) b( cis)
  }
  \alternative {
        {
    d4 fis8 a\5 d,4 a8\3( b\3)
        }
        {
    d4 fis8 a\5 d,4 \bar "|."
        }
  }
}

harmonies = \chordmode {
  \set Score.markFormatter = #format-mark-box-letters
  \time 4/4
\once\override Score.RehearsalMark #'extra-offset = #'(1 . 2)
\mark\default
   \tag #'partial \partial 8*2 r4
   \repeat volta 2 {
   d4 d4 d4 d4
   d4 d4 d4 d4
   d4 d4 d4 d4
   a4 a4 a4 a4
\break
   d4 d4 d4 d4
   d4 d4 d4 d4
   d4 d4 a4 a4
  }
  
  \alternative {
      {
   d4 d4 d4 d4
      }

      {
   d4 d4 d4 d4
      }
  }
\break

\once\override Score.RehearsalMark #'extra-offset = #'(-4 . 2)
\mark\default % fix this!

% Part 2
  \repeat volta 2 {
   d4 d4 d4 d4
   g4 g4 g4 g4
   d4 d4 d4 d4
   a4 a4 a4 a4
\break
   d4 d4 d4 d4
   g4 g4 g4 g4
   d4 d4 a4 a4
  }
  
  \alternative {
      {
   d4 d4 d4 d4
      }

      {
   d4 d4 d4 \bar "|."
      }
  }
}

pianotop = \relative c'''
{
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2
  #(set-octavation 1)

  r4
  \repeat volta 2 {
    r4 d fis d
    r4 d fis d
    r4 d fis d

    r4 a cis a
    r4 d fis d
    r4 d fis d
    r4 d cis a
  }
  
  \alternative {
      {
    r4 d fis d
      }

      {
    r4 d fis d
      }
  }

% Part 2
  \repeat volta 2 {
    r4 d fis d
    r4 g b g
    r4 d fis d
    r4 a cis a
    r4 d fis d
    r4 g b g
    r4 fis cis' a
  }
  
  \alternative {
      {
    r4 d, fis d
      }

      {
    r4 d4 <d fis a>4 \bar "|."
      }
  }
}

pianobot = \relative c,%,
{
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2 
%  #(set-octavation -1)

  r4
  \repeat volta 2 {
   d2 a' d, a' d, g
   a e d a' d, a' d, a'
  }
  
  \alternative {
      {
	d,2 a'
      }

      {
	d,2 a'
      }
  }

% Part 2
  \repeat volta 2 {
     d,2 fis g b, d g a e
     d2 fis g b d a
  }
  
  \alternative {
      {
	d,2 d'
      }

      {
	d,2. \bar "|."
      }
  }
}

bass =  \relative c,
{
  \tag #'key \key d \major
  \time 4/4
  \tag #'partial \partial 8*2 

  r4
  \repeat volta 2 {
   d2\3 a'\2 d,\3 a'\2 d,\3 g\2
   a\2 e\3 d\3 a'\2 d,\3 a'\2 d,\3 a'\2
  }
  
  \alternative {
      {
	d,2\3 a'\2
      }

      {
	d,2\3 a'\2
      }
  }

% Part 2
  \repeat volta 2 {
     d,2\3 a g b d\3 a\4 a\4 e
     d'2\3 a g b d\3 a
  }
  
  \alternative {
      {
	d2\3 d'
      }

      {
	d,2.\3 \bar "|."
      }
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
      \set Staff.printPartCombineTexts = ##f
      \partcombine \melody \alternate
    >>
    \new Staff <<
      \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "aDADE)" } }
      \set Staff.instr = "Ban."
      \banjo
    >>
%{
    \new TabStaff <<
      \set TabStaff.stringTunings = #bass-tuning
      \set Staff.instrument = "Bass "
      \set Staff.instr = "Bas."
      \bass
    >>
%}
    \new PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
      \set PianoStaff.instr = \markup { "Pia." \hspace #2.0 }
      \context Staff = upper << \pianotop >>
      \context Staff = lower << \clef bass \pianobot >>
    >>
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
% clarinet score
\score {
  \header {
    instrument = "Clarinet"
    breakbefore=##t
  }
  <<
    \context ChordNames {
         \set chordChanges = ##t
         \transpose bes c' \harmonies
    }
    \context Staff = clarA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \transpose bes c' \melody
    }
    \context Staff = clarB {
      \set Staff.instrument = "Alt. Melody"
      \set Staff.instr = "Alt."
      \transpose bes c' \alternate
    }
  >>
}
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
      \transpose c c,, << \clef bass \melody >> % 2 octaves down
    }
    \context Staff = celloB {
      \set Staff.instrument = "Harmony"
      \set Staff.instr = "Har."
      \transpose c c,, << \clef bass \alternate >> % 2 octaves down
    }
    \context Staff = celloC {
      \set Staff.instrument = "Bass"
      \set Staff.instr = "Bas."
      \transpose c c' << \clef bass \bass >> % 1 octave up
    }
  >>
}
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
%{
    \context Staff = fluteA {
      \set Staff.instrument = "Melody"
      \set Staff.instr = "Mel."
      \melody
    }
%}
    \new TabStaff <<
      \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "aDADE)" } }
      \set Staff.instr = "Ban."
      \set TabStaff.stringTunings = #'(4 2 -3 -10 9)
% G tuning: 2 -1 -5 -10 7
% Double-C: 2 0 -5 -12 7
% capo'd:   4 2 -3 -10 9  (aDADE)
% D tuning: 2 -3 -6 -10 7
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
      %\small\partcombine \melody \alternate
      \melody
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


% midi score.
\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=melody << 
       \set Staff.midiInstrument = "fiddle"
       r1 \melody
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
    \context Staff=bass <<
      \set Staff.midiInstrument = "acoustic bass"
      r1
      \bass
    >>
%{
    \context Staff=chords <<
      \set Staff.midiInstrument = "pizzicato strings"
      r1\pp
      \harmonies
    >>
%}
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
  >>
  \midi {
    \tempo 2=120
  }
}
