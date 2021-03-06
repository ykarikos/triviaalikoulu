\version "2.20.0"
\include "suomi.ly"



\include "../isti-sunt-triumphatores.lyrics.ily"

% First choir

\include "../isti-sunt-triumphatores.soprano-one.ily"
\include "../isti-sunt-triumphatores.alto-one.ily"
\include "../isti-sunt-triumphatores.tenor-one.ily"
\include "../isti-sunt-triumphatores.bass-one.ily"


\include "isti-sunt-triumphatores.header.ily"

\header {
  title = "Isti sunt triumphatores (coro I)"
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
       \stanzaOneLyricsChoirOneAlto
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreOneMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsChoirOneTenor
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassOneMusic
      }
      \new Lyrics \lyricsto "Bass" {
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
