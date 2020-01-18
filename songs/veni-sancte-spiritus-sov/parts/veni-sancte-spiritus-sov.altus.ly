\version "2.19.80"
\include "suomi.ly"

\include "../veni-sancte-spiritus-sov.music.ily"
\include "../veni-sancte-spiritus-sov.lyrics.ily"
\include "veni-sancte-spiritus-sov.header.ily"

\header {
  title = "Veni Sancte Spiritus (altus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsAlto
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
