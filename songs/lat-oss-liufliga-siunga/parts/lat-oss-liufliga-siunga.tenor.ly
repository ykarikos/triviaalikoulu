\version "2.20.0"
\include "suomi.ly"

\include "../lat-oss-liufliga-siunga.music.ily"
\include "lat-oss-liufliga-siunga.header.ily"

\header {
  title = "Låt oss liufliga siunga (tenor)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
    >>
  >>
  \midi {
    \globaltempo
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
