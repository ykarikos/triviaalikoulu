\version "2.19.80"
\include "suomi.ly"

\include "../nunc-zymphonizate.music.ily"
\include "nunc-zymphonizate.header.ily"


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
  >>
  \new Staff <<
    \new Voice = "SopranoTwo" {
      \global
      \SopranoTwoMusic
    }
   \new Lyrics \lyricsto "SopranoTwo" {
     \stanzaOneLyrics
   }
   \new Lyrics \lyricsto "SopranoTwo" {
     \stanzaTwoLyrics
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
   \new Lyrics \lyricsto "Alto" {
     \stanzaTwoLyrics
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
    \new Lyrics \lyricsto "Tenore" {
      \stanzaTwoLyrics
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
    \new Lyrics \lyricsto "Bass" {
      \stanzaTwoLyrics
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
