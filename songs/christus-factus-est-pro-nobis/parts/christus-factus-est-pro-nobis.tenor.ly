\version "2.19.80"
\include "suomi.ly"

\include "../christus-factus-est-pro-nobis.music.ily"
\include "../christus-factus-est-pro-nobis.lyrics.ily"
\include "christus-factus-est-pro-nobis.header.ily"

\header {
  title = "The Song Title (tenor)"
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
      \new Lyrics \lyricsto "Tenore" {
       \stanzaTwoLyricsTenore
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
