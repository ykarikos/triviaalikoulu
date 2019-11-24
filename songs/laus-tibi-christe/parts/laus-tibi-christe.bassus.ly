\version "2.19.80"
\include "suomi.ly"

\include "../laus-tibi-christe.music.ily"
\include "laus-tibi-christe.header.ily"

\header {
  title = "Laus tibi Christe (bassus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyrics
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaTwoLyrics
      }
    >>
  >>
  \midi {
    \tempo 4 = 200
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
