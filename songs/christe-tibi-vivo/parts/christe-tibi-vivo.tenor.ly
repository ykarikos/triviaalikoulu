\version "2.19.49"
\include "suomi.ly"

\include "../christe-tibi-vivo.music.ily"
\include "christe-tibi-vivo.header.ily"

\header {
  title = "Christe tibi vivo (tenor)"
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
    \tempo 4 = 160
  }
  \layout {
    \context {
      \Voice
      \consists "Ambitus_engraver"
		\hide Slur
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
