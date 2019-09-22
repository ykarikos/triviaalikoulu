\version "2.19.80"
\include "suomi.ly"

\include "../i-herrans-tienare.music.ily"
\include "i-herrans-tienare.header.ily"

\header {
  title = "I Herrans Tienare (cantus II)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "SopranoTwo" {
		    \global
        \SopranoTwoMusic
      }
     \new Lyrics \lyricsto "SopranoTwo" {
       \stanzaOneLyrics
     }
    >>
  >>
  \midi {
    \tempo 4 = 160
  }
  \layout {
    \context {
      \Voice
      \consists "Ambitus_engraver"
    }
    indent = 3.5\cm
    incipit-width = 2\cm
    \context {
     \Staff \RemoveEmptyStaves
   }
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
