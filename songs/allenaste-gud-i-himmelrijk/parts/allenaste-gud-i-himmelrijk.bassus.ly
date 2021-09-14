\version "2.20.0"
\include "suomi.ly"

\include "../allenaste-gud-i-himmelrijk.music.ily"
\include "allenaste-gud-i-himmelrijk.header.ily"

\header {
  title = "Allenaste Gud i himmelrik (bassus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyricsBass
      }
      \new Lyrics \lyricsto "Bass" {
        \stanzaOneRepeatLyricsAlto
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyricsBassFin
      }
      \new Lyrics \lyricsto "Bass" {
        \stanzaOneRepeatLyricsAltoFin
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
