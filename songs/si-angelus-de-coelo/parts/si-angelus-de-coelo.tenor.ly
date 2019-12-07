\version "2.19.80"
\include "suomi.ly"

\include "../si-angelus-de-coelo.music.ily"
\include "si-angelus-de-coelo.header.ily"

\header {
  title = "Si Angelus de coelo (tenor)"
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
      \new Lyrics \lyricsto "Tenore" {
       \stanzaTwoLyrics
      }
    >>
  >>
  \midi {
    \tempo 4 = 120
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
