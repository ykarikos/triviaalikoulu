\version "2.19.80"
\include "suomi.ly"

\include "../veni-sancte-spiritus-longum.music.ily"
\include "veni-sancte-spiritus-longum.header.ily"

\header {
  title = "Veni Sancte Spiritus (longum, tenor)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyrics
      }
    >>
  >>
  \midi {
    \tempo 4 = 100
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
