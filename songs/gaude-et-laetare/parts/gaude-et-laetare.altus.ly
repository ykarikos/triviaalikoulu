\version "2.19.80"
\include "suomi.ly"

\include "../gaude-et-laetare.music.ily"
\include "gaude-et-laetare.header.ily"

\header {
  title = "Gaude et laetare (altus)"
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
    \tempo 2 = 160
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
