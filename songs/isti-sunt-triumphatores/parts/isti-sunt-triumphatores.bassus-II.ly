\version "2.20.0"
\include "suomi.ly"


\include "../isti-sunt-triumphatores.lyrics.ily"

% Second choir

\include "../isti-sunt-triumphatores.bass-two.ily"

\include "isti-sunt-triumphatores.header.ily"

\header {
  title = "Isti sunt triumphatores (bassus II)"
}

\score {
  \new StaffGroup = choirTwoStaff <<
    \new Staff <<
      \new Voice = "BassTwo" {
        \global
        \BassTwoMusic
      }
      \new Lyrics \lyricsto "BassTwo" {
       \stanzaOneLyricsBass
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
