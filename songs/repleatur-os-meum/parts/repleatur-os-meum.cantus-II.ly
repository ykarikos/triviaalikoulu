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

% Second choir

\include "../repleatur-os-meum.soprano-two.ily"
\include "../repleatur-os-meum.alto-two.ily"
\include "../repleatur-os-meum.tenor-two.ily"
\include "../repleatur-os-meum.bass-two.ily"

\include "repleatur-os-meum.header.ily"

\header {
  title = "Repleatur os meum (cantus II)"
}

\score {
  \new StaffGroup = choirTwoStaff <<
    \new Staff <<
      \new Voice = "SopranoTwo" {
		\global
        \SopranoTwoMusic
      }
     \new Lyrics \lyricsto "SopranoTwo" {
       \stanzaOneLyricsChoirTwoSoprano
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
