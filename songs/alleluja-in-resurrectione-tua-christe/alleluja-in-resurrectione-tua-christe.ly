\version "2.19.49"
\include "suomi.ly"

\include "../paper-margins.ily"

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}

\include "alleluja-in-resurrectione-tua-christe.lyrics.ily"

% First choir

\include "alleluja-in-resurrectione-tua-christe.soprano-one.ily"
\include "alleluja-in-resurrectione-tua-christe.alto-one.ily"
\include "alleluja-in-resurrectione-tua-christe.tenor-one.ily"
\include "alleluja-in-resurrectione-tua-christe.bass-one.ily"

% Second choir

\include "alleluja-in-resurrectione-tua-christe.soprano-two.ily"
\include "alleluja-in-resurrectione-tua-christe.alto-two.ily"
\include "alleluja-in-resurrectione-tua-christe.tenor-two.ily"
\include "alleluja-in-resurrectione-tua-christe.bass-two.ily"

#(set-global-staff-size 16)

\header {
  title = "Alleluja in resurrectione tua Christe"
%  subtitle = ""
  composer = "Jacobus Gallus (1550–1591)"
  mutopiacomposer = "Jacobus Gallus (1550–1591)"
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
       \stanzaOneLyricsChoirOneAlto
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreOneMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsChoirOneAlto
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
       \stanzaOneLyricsChoirTwo
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
       \stanzaOneLyricsChoirTwoAlto
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
