\version "2.19.80"
\include "suomi.ly"

\include "../veni-sancte-spiritus.music.ily"
\include "veni-sancte-spiritus.header.ily"

\header {
  title = "Veni Sancte Spiritus (bassus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
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