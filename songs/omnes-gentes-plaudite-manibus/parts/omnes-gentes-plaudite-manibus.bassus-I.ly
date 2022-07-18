\version "2.20.0"
\include "suomi.ly"


\include "../omnes-gentes-plaudite-manibus.global.ily"
\include "../omnes-gentes-plaudite-manibus.lyrics.ily"

% First choir

\include "../omnes-gentes-plaudite-manibus.bass-one.ily"


\include "omnes-gentes-plaudite-manibus.header.ily"

\header {
  title = "Omnes gentes plaudite manibus (bassus I)"
}


\score {
  \new StaffGroup = choirOneStaff <<
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
