\version "2.19.80"
\include "suomi.ly"

\include "../cedit-hyems-eminus.music.ily"
\include "../cedit-hyems-eminus.lyrics.ily"
\include "cedit-hyems-eminus.header.ily"

\header {
  title = "Cedit hyems eminus (bassus)"
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
        \stanzaTwoLyricsBass
      }
      \new Lyrics \lyricsto "Bass" {
        \stanzaThreeLyricsBass
      }
      \new Lyrics \lyricsto "Bass" {
        \stanzaFourLyricsBass
      }
      \new Lyrics \lyricsto "Bass" {
        \stanzaFiveLyricsBass
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
