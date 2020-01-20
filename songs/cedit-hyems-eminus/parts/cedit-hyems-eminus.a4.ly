\version "2.19.80"
\include "suomi.ly"

\include "../cedit-hyems-eminus.music.ily"
\include "cedit-hyems-eminus.header.ily"


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
       \stanzaTwoLyrics
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaThreeLyrics
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaFourLyrics
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaFiveLyrics
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsFin
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaTwoLyricsFin
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaThreeLyricsFin
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaFourLyricsFin
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaFiveLyricsFin
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
