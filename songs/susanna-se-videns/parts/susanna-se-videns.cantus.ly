\version "2.19.80"
\include "suomi.ly"

\include "../susanna-se-videns.music.ily"
\include "susanna-se-videns.header.ily"

\header {
  title = "Susanna se, videns (cantus)"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		    \global
        \SopranoMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsSoprano
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaTwoLyricsSoprano
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
