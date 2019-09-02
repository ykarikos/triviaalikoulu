\version "2.19.49"
\include "suomi.ly"


global = {
%  \numericTimeSignature
  \time 2/2
	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key c \major
  \set Staff.midiInstrument = #"voice oohs"
}

\include "../anima-mea-expectat-dominum.lyrics.ily"

% Second choir

\include "../anima-mea-expectat-dominum.soprano-two.ily"
\include "../anima-mea-expectat-dominum.alto-two.ily"
\include "../anima-mea-expectat-dominum.tenor-two.ily"
\include "../anima-mea-expectat-dominum.bass-two.ily"

\include "anima-mea-expectat-dominum.header.ily"

\header {
  title = "Anima mea expectat Dominum (coro II)"
}

\score {
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

  \midi {
    \tempo 4 = 160
  }
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
