\version "2.19.80"
\include "suomi.ly"

\include "../paper-margins.ily"

\include "nunc-zymphonizate.music.ily"

\header {
  title = "Nunc Zymphonizate"
%  subtitle = ""
  subsubtitle = "alla quarta bassa"
  composer = "Giovanni Gastoldi (n. 1554–1609)"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuottien tekijänoikeudet on luovutettu vapaaseen yleiseen käyttöön Creative Commons 0:n mukaisesti."
  tagline = "Lähde: https://triviaalikoulu.sonusborealis.fi"
}

\paper {
  system-system-spacing.basic-distance = #18
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
