\version "2.19.49"
\include "suomi.ly"


global = {
%  \numericTimeSignature
  \time 2/2
	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}

% First choir

\include "../repleatur-os-meum.soprano-one.ily"

\include "repleatur-os-meum.header.ily"

\header {
  title = "Repleatur os meum (cantus I)"
}


\score {
  \new StaffGroup = choirOneStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		\global
        \SopranoOneMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsChoirOneSoprano
     }
    >>
  >>

  \midi {
    \tempo 4 = 160
  }
  \layout {
    \context {
      \Staff
      \consists "Ambitus_engraver"

    }
    indent = 4\cm
    incipit-width = 2.5\cm
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
