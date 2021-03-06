\version "2.19.80"
\include "suomi.ly"

\include "../lobt-gott-ihr-christen-alle.music.ily"
\include "lobt-gott-ihr-christen-alle.header.ily"


\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "SopranoOne" {
        \global
        \SopranoOneMusic
      }
     \new Lyrics \lyricsto "SopranoOne" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "SopranoTwo" {
        \global
        \SopranoTwoMusic
      }
     \new Lyrics \lyricsto "SopranoTwo" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyrics
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyrics
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
