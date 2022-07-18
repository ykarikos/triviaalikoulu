\version "2.20.0"
\include "suomi.ly"

\include "../paper-margins.ily"

\include "omnes-gentes-plaudite-manibus.global.ily"
\include "omnes-gentes-plaudite-manibus.lyrics.ily"

% First choir

\include "omnes-gentes-plaudite-manibus.soprano-one.ily"
\include "omnes-gentes-plaudite-manibus.alto-one.ily"
\include "omnes-gentes-plaudite-manibus.tenor-one.ily"
\include "omnes-gentes-plaudite-manibus.bass-one.ily"

% Second choir

\include "omnes-gentes-plaudite-manibus.soprano-two.ily"
\include "omnes-gentes-plaudite-manibus.alto-two.ily"
\include "omnes-gentes-plaudite-manibus.tenor-two.ily"
\include "omnes-gentes-plaudite-manibus.bass-two.ily"

#(set-global-staff-size 16)

\header {
  title = "Omnes gentes plaudite manibus"
%  subtitle = ""
  composer = "tuntematon"
  mutopiacomposer = "Anonymous"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuottien tekijänoikeudet on luovutettu vapaaseen yleiseen käyttöön Creative Commons 0:n mukaisesti."
  tagline = "Lähde: https://triviaalikoulu.sonusborealis.fi"
}

\paper {
	system-separator-markup = \slashSeparator
}

\score {
<<
  \new StaffGroup = choirOneStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		\global
        \SopranoOneMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoOneMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreOneMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsChoirOne
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassOneMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyricsChoirOne
      }
    >>
  >>

  \new StaffGroup = choirTwoStaff <<
    \new Staff <<
      \new Voice = "SopranoTwo" {
		\global
        \SopranoTwoMusic
      }
     \new Lyrics \lyricsto "SopranoTwo" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "AltoTwo" {
        \global
        \AltoTwoMusic
      }
     \new Lyrics \lyricsto "AltoTwo" {
       \stanzaOneLyricsChoirOne
     }
    >>
    \new Staff <<
      \new Voice = "TenoreTwo" {
        \global
        \TenoreTwoMusic
      }
      \new Lyrics \lyricsto "TenoreTwo" {
       \stanzaOneLyricsChoirOne
      }
    >>
    \new Staff <<
      \new Voice = "BassTwo" {
        \global
        \BassTwoMusic
      }
      \new Lyrics \lyricsto "BassTwo" {
       \stanzaOneLyricsChoirOne
      }
    >>
  >>
>>

  \layout {
    \context {
      \Staff
      \consists "Ambitus_engraver"
    }
    indent = 4\cm
    incipit-width = 2.5\cm
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
