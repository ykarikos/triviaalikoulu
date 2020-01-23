\version "2.19.80"
\include "suomi.ly"

\include "../paper-margins.ily"

\include "cedit-hyems-eminus.music.ily"

\header {
  title = "Tuiman talven taucomast (Cedit hyems eminus)"
  composer = "Daniel Friderici (1584-1638)"
  poet = "suom. sanat Hemminki Maskulainen (n. 1550–1619)"
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
      \new Voice = "Soprano" {
		    \global
        \SopranoMusic
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
        \stanzaOneLyricsAltoFin
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaTwoLyricsAltoFin
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaThreeLyricsAltoFin
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaFourLyricsAltoFin
      }
      \new Lyrics \lyricsto "Alto" {
        \stanzaFiveLyricsAltoFin
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
