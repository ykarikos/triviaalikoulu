\version "2.20.0"
\include "suomi.ly"

\include "../in-te-domine-speravi.music.ily"
\include "in-te-domine-speravi.header.ily"

\header {
  title = "In te Domine speravi (cantus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		    \global
        \SopranoMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyrics
     }
    >>
  >>
  \midi {
    \tempo 4 = 220
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
