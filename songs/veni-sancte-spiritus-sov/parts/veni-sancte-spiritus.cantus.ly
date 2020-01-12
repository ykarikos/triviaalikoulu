\version "2.19.80"
\include "suomi.ly"

\include "../veni-sancte-spiritus.music.ily"
\include "../veni-sancte-spiritus.lyrics.ily"
\include "veni-sancte-spiritus.header.ily"

\header {
  title = "Veni Sancte Spiritus (cantus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		    \global
        \SopranoMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsSoprano
     }
    >>
  >>
  \midi {
    \tempo 2 = 240
  }
  \layout {
    \context {
      \Voice
      \consists "Ambitus_engraver"
    }
    indent = 1.5\cm
    \context {
     \Staff \RemoveEmptyStaves
   }
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
