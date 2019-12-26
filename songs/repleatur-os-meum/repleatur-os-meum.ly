\version "2.19.49"
\include "suomi.ly"

\include "../paper-margins.ily"

#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}

% First choir

\include "repleatur-os-meum.soprano-one.ily"
\include "repleatur-os-meum.alto-one.ily"
\include "repleatur-os-meum.tenor-one.ily"
\include "repleatur-os-meum.bass-one.ily"

% Second choir

\include "repleatur-os-meum.soprano-two.ily"
\include "repleatur-os-meum.alto-two.ily"
\include "repleatur-os-meum.tenor-two.ily"
\include "repleatur-os-meum.bass-two.ily"

#(set-global-staff-size 16)

\header {
  title = "Repleatur os meum"
%  subtitle = ""
  composer = "Gabriele Fattorini (1570-1615)"
  mutopiacomposer = "Anonymous"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuotit on lisensoitu Creative Commons Nimeä-JaaSamoin 3.0 (CC BY-SA 3.0) -ehdoin."
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
       \stanzaOneLyricsChoirOneSoprano
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoOneMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsChoirOneAlto
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreOneMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsChoirOneTenor
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassOneMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyricsChoirOneBass
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
       \stanzaOneLyricsChoirTwoSoprano
     }
    >>
    \new Staff <<
      \new Voice = "AltoTwo" {
        \global
        \AltoTwoMusic
      }
     \new Lyrics \lyricsto "AltoTwo" {
       \stanzaOneLyricsChoirTwoAlto
     }
    >>
    \new Staff <<
      \new Voice = "TenoreTwo" {
        \global
        \TenoreTwoMusic
      }
      \new Lyrics \lyricsto "TenoreTwo" {
       \stanzaOneLyricsChoirTwoTenore
      }
    >>
    \new Staff <<
      \new Voice = "BassTwo" {
        \global
        \BassTwoMusic
      }
      \new Lyrics \lyricsto "BassTwo" {
       \stanzaOneLyricsChoirTwoBass
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
