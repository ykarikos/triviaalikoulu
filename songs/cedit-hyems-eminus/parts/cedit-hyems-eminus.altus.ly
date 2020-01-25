\version "2.19.80"
\include "suomi.ly"

\include "../cedit-hyems-eminus.music.ily"
\include "cedit-hyems-eminus.header.ily"

\header {
  title = "Cedit hyems eminus (altus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaOneLyricsAlto
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaTwoLyricsAlto
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaThreeLyricsAlto
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaFourLyricsAlto
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaFiveLyricsAlto
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
