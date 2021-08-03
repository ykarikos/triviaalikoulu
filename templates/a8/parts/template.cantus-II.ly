\version "2.20.0"
\include "suomi.ly"


\include "../template.global.ily"
\include "../template.lyrics.ily"

% Second choir

\include "../template.soprano-two.ily"
\include "../template.alto-two.ily"
\include "../template.tenor-two.ily"
\include "../template.bass-two.ily"

\include "template.header.ily"

\header {
  title = "The Song Title (cantus II)"
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
