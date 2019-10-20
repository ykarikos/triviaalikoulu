\version "2.19.80"
\include "suomi.ly"

\include "../lobt-gott-ihr-christen-alle.music.ily"
\include "lobt-gott-ihr-christen-alle.header.ily"

\header {
  title = "Lobt Gott ihr Christen alle (cantus I)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "SopranoOne" {
		    \global
        \SopranoOneMusic
      }
     \new Lyrics \lyricsto "SopranoOne" {
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
