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
  
  footer = "Mutopia-2004/12/19-510"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[188mm][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}}"
}
#(set-default-paper-size "letter")

banjo = \relative c'
{
  \set Staff.instrument = \markup{ \column{ "Banjo" "(tuned" "aDADE)" } }
  \set Staff.midiInstrument = "banjo"
  \partial 8*2 a8\3( b\3)

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
  \break

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
    d4 fis8 a\5 d,4
        }
  }
}

melody = \relative c''
{
  \set Staff.instrument = "Melody "
  \set Staff.midiInstrument = "fiddle"
  \key d \major
  \partial 8*2 fis8( g8 )

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
    }

    \alternative {
        {
          d4 d8 d8 d4 fis,8( g8 )
        }

        {
          d'4 << d4 fis >> << d fis >> d,8( e8 )
        }
    }
  \break

% Part 2

  \repeat volta 2 {
    fis4 g4 a4 g8( fis8)
    e8 d8 e8 fis8 g4 e8( g8)

    fis4 g4 a4 g8( fis8)
    e8 d8 cis8 b8 a4 d8( e8)

    fis4 g4 a4 g8( fis8)
    e8 d8 e8 fis8 g4 e8( g8)

    fis8 a fis d e g fis e
  }

  \alternative {
    {
      d4 d8 d d4 d8( e)
    }
    {
      d4 << d8 fis8 >> << d fis >> << d4 fis4 >> \bar "|."
    }
  }
}

alternate = \relative c'' % based on the banjo part
{
  \set Staff.instrument = "Alt. Melody"
  \set Staff.midiInstrument = "fiddle"
  \key d \major
  \partial 8*2 a8\3( b\3)

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
  \break

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
    d4 fis8 a\5 d,4
        }
  }
}

harmonies = \chordmode {
   \set Staff.midiInstrument = "pizzicato strings"
   \set Score.markFormatter = #format-mark-box-letters
   \partial 8*2 r4 \mark\default
   \repeat volta 2 {
   d4 d4 d4 d4
   d4 d4 d4 d4
   d4 d4 d4 d4
   a4 a4 a4 a4
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
  \break\mark\default % fix this!

% Part 2
  \repeat volta 2 {
   d4 d4 d4 d4
   g4 g4 g4 g4
   d4 d4 d4 d4
   a4 a4 a4 a4
   d4 d4 d4 d4
   g4 g4 g4 g4
   d4 d4 a4 a4
  }
  
  \alternative {
      {
   d4 d4 d4 d4
      }

      {
   d4 d4 d4
      }
  }
}

pianotop = \relative c'''
{
  \key d \major
  \partial 8*2 r4
  #(set-octavation 1)

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
  \break

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
    r4 d4 <d fis a>4
      }
  }
}

pianobot = \relative c,,
{
  \set Staff.midiInstrument = "acoustic bass"
  \key d \major
  \partial 8*2  r4
  #(set-octavation -1)

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
  \break

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
	d,2.
      }
  }
}

\score {
   <<
      \context ChordNames {
         \set chordChanges = ##t
         \harmonies
      }
   \context Staff = one \melody
   \new Staff << \alternate >>
   \context TabStaff <<
     \set TabStaff.stringTunings = #'(4 2 -3 -10 9)
% G tuning: 2 -1 -5 -10 7
% Double-C: 2 0 -5 -12 7
% capo'd:   4 2 -3 -10 9  (aDADE)
% D tuning: 2 -3 -6 -10 7
     \banjo
   >>
   \context PianoStaff <<
      #(set-accidental-style 'piano-cautionary)
      \set PianoStaff.instrument = \markup { "Piano" \hspace #2.0 }
     \context Staff = upper << \time 4/4 \pianotop >>
     \context Staff = lower << \clef bass \pianobot >>
   >>
   >>

   \layout{ }
}

\score {
  \unfoldRepeats
  \context PianoStaff <<
    \context Staff=upper << r4\pianotop >>
    \context Staff=lower << r4\f\pianobot >>
    \context Staff=chords <<r4\p\harmonies >>
    \context Staff=melody << r4\melody >>
    \context Staff=alternate << r4\alternate >>
    \context Staff=banjo << r4\banjo >>
  >>
  \midi {
    \tempo 2=110
  }
}
