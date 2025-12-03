\version "2.20.0"
\include "suomi.ly"

\include "../allenaste-gud-i-himmelrijk.music.ily"
\include "allenaste-gud-i-himmelrijk.header.ily"


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
       \stanzaOneRepeatLyrics
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsFin
     }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneRepeatLyricsFin
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsAlto
     }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneRepeatLyricsAlto
     }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsAltoFin
     }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneRepeatLyricsAltoFin
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsTenore
      }
      \new Lyrics \lyricsto "Tenore" {
        \stanzaOneRepeatLyricsAlto
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsTenoreFin
      }
      \new Lyrics \lyricsto "Tenore" {
        \stanzaOneRepeatLyricsTenoreFin
      }
    >>
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
    \tempo 1 = 120
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
