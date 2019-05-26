\version "2.19.49"
\include "suomi.ly"

global = { 
%  \numericTimeSignature
  \time 4/2 
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Gloria et honore (á 8)"
%  subtitle = ""
  composer = "Jacobus Gallus (1550–1591)"
  mutopiacomposer = "Anonymous"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
  tagline = "The source is available at https://github.com/ykarikos/triviaalikoulu"
}

\paper {
    #(define fonts
        (make-pango-font-tree "Palatino"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}

% First choir

\include "soprano-one.ly"
\include "alto-one.ly"
\include "tenor-one.ly"
\include "bass-one.ly"

stanzaOneLyricsChoirOne = \lyricmode {
	Glo -- ri -- a et ho -- no -- re
	co -- ro -- nas -- ti e -- um Do -- mi -- ne
}


% Second choir

\include "soprano-two.ly"
\include "alto-two.ly"
\include "tenor-two.ly"
\include "bass-two.ly"

stanzaOneLyricsChoirTwo = \lyricmode {
	Glo -- ri -- a et ho -- no -- re
	co -- ro -- nas -- ti e -- um Do -- mi -- ne
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
       \stanzaOneLyricsChoirTwo
     }
    >>
    \new Staff <<
      \new Voice = "AltoTwo" {
        \global
        \AltoTwoMusic
      }
     \new Lyrics \lyricsto "AltoTwo" {
       \stanzaOneLyricsChoirTwo
     }
    >>
    \new Staff <<
      \new Voice = "TenoreTwo" {
        \global
        \TenoreTwoMusic
      }
      \new Lyrics \lyricsto "TenoreTwo" {
       \stanzaOneLyricsChoirTwo
      }
    >>
    \new Staff <<
      \new Voice = "BassTwo" {
        \global
        \BassTwoMusic
      }
      \new Lyrics \lyricsto "BassTwo" {
       \stanzaOneLyricsChoirTwo
      }
    >>
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