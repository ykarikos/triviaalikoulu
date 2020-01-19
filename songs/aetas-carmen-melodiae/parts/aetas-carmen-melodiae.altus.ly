\version "2.19.49"
\include "suomi.ly"

\include "../aetas-carmen-melodiae.music.ily"
\include "aetas-carmen-melodiae.header.ily"

\header {
  title = "Ætas carmen melodiæ (altus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyrics
     }
     \new Lyrics \lyricsto "Alto" {
       \stanzaTwoLyrics
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
