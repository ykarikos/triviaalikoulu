\version "2.19.80"
\include "suomi.ly"

\include "../cedit-hyems-eminus.music.ily"
\include "cedit-hyems-eminus.header.ily"

\header {
  title = "Cedit hyems eminus (tenor)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsTenor
      }
      \new Lyrics \lyricsto "Tenore" {
        \stanzaTwoLyricsTenor
      }
      \new Lyrics \lyricsto "Tenore" {
        \stanzaThreeLyricsTenor
      }
      \new Lyrics \lyricsto "Tenore" {
        \stanzaFourLyricsTenor
      }
      \new Lyrics \lyricsto "Tenore" {
        \stanzaFiveLyricsTenor
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
