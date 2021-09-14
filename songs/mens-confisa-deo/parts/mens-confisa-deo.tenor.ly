\version "2.20.0"
\include "suomi.ly"

\include "../mens-confisa-deo.music.ily"
\include "mens-confisa-deo.header.ily"

\header {
  title = "Mens confisa Deo (tenor)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsTenore
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
     \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
}
