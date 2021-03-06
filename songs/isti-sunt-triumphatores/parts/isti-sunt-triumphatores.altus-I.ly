\version "2.20.0"
\include "suomi.ly"


\include "../isti-sunt-triumphatores.lyrics.ily"

% First choir

\include "../isti-sunt-triumphatores.alto-one.ily"


\include "isti-sunt-triumphatores.header.ily"

\header {
  title = "Isti sunt triumphatores (altus I)"
}


\score {
  \new StaffGroup = choirOneStaff <<
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoOneMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyricsChoirOneAlto
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
