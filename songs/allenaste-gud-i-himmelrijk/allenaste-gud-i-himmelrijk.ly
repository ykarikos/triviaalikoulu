\version "2.20.0"
\include "suomi.ly"

\include "../paper-margins.ily"

\include "allenaste-gud-i-himmelrijk.music.ily"

\header {
  title = "Allenaste Gud i himmelrik"
  subtitle = ""
  composer = "tuntematon"
  arranger = "sov: Hieronymus Praetorius (1560–1629)"
  mutopiacomposer = "Anonymous"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuottien tekijänoikeudet on luovutettu vapaaseen yleiseen käyttöön Creative Commons 0:n mukaisesti."
  tagline = "Lähde: https://triviaalikoulu.sonusborealis.fi"
}

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
