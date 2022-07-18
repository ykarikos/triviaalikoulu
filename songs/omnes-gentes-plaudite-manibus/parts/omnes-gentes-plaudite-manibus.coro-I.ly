\version "2.20.0"
\include "suomi.ly"


\include "../omnes-gentes-plaudite-manibus.global.ily"
\include "../omnes-gentes-plaudite-manibus.lyrics.ily"

% First choir

\include "../omnes-gentes-plaudite-manibus.soprano-one.ily"
\include "../omnes-gentes-plaudite-manibus.alto-one.ily"
\include "../omnes-gentes-plaudite-manibus.tenor-one.ily"
\include "../omnes-gentes-plaudite-manibus.bass-one.ily"


\include "omnes-gentes-plaudite-manibus.header.ily"

\header {
  title = "Omnes gentes plaudite manibus (coro I)"
}


\score {
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
