\version "2.19.80"
\include "suomi.ly"

\include "../jucundare-jugiter.music.ily"
\include "jucundare-jugiter.header.ily"

\header {
  title = "Jucundare jugiter (altus)"
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
