\version "2.19.80"
\include "suomi.ly"

\include "../paper-margins.ily"

\include "lobt-gott-ihr-christen-alle.music.ily"

\header {
  title = "Lobt Gott ihr Christen alle"
%  subtitle = ""
  composer = "Daniel Friderici (1584-1638)"
  mutopiacomposer = "Daniel Friderici (1584-1638)"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuottien tekijänoikeudet on luovutettu vapaaseen yleiseen käyttöön Creative Commons 0:n mukaisesti."
  tagline = "Lähde: https://triviaalikoulu.sonusborealis.fi"
}

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
