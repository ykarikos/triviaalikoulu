\version "2.20.0"
\include "suomi.ly"


\include "../omnes-gentes-plaudite-manibus.global.ily"
\include "../omnes-gentes-plaudite-manibus.lyrics.ily"

% Second choir

\include "../omnes-gentes-plaudite-manibus.soprano-two.ily"
\include "../omnes-gentes-plaudite-manibus.alto-two.ily"
\include "../omnes-gentes-plaudite-manibus.tenor-two.ily"
\include "../omnes-gentes-plaudite-manibus.bass-two.ily"

\include "omnes-gentes-plaudite-manibus.header.ily"

\header {
  title = "Omnes gentes plaudite manibus (coro II)"
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
    \globaltempo
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
