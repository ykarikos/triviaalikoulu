\version "2.19.49"
\include "suomi.ly"


\include "../isti-sunt-triumphatores.lyrics.ily"

% First choir

\include "../isti-sunt-triumphatores.bass-one.ily"


\include "isti-sunt-triumphatores.header.ily"

\header {
  title = "Isti sunt triumphatores (bassus I)"
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
