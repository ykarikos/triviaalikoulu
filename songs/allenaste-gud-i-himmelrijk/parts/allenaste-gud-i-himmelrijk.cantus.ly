\version "2.20.0"
\include "suomi.ly"

\include "../allenaste-gud-i-himmelrijk.music.ily"
\include "allenaste-gud-i-himmelrijk.header.ily"

\header {
  title = "Allenaste Gud i himmelrik (cantus)"
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
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneRepeatLyrics
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsFin
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneRepeatLyricsFin
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
