\version "2.19.80"
\include "suomi.ly"

\include "../christus-factus-est-pro-nobis.music.ily"
\include "../christus-factus-est-pro-nobis.lyrics.ily"
\include "christus-factus-est-pro-nobis.header.ily"

\header {
  title = "Christus factus est pro nobis (altus)"
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
     \new Lyrics \lyricsto "Alto" {
       \stanzaTwoLyricsAlto
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
