\version "2.20.0"
\include "suomi.ly"


\include "../isti-sunt-triumphatores.lyrics.ily"

% First choir

\include "../isti-sunt-triumphatores.soprano-one.ily"
\include "../isti-sunt-triumphatores.alto-one.ily"
\include "../isti-sunt-triumphatores.tenor-one.ily"
\include "../isti-sunt-triumphatores.bass-one.ily"

% Second choir

\include "../isti-sunt-triumphatores.soprano-two.ily"
\include "../isti-sunt-triumphatores.alto-two.ily"
\include "../isti-sunt-triumphatores.tenor-two.ily"
\include "../isti-sunt-triumphatores.bass-two.ily"

\include "isti-sunt-triumphatores.header.ily"

\paper {
  system-separator-markup = \slashSeparator
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
       \stanzaOneLyricsChoirTwoAlto
     }
    >>
    \new Staff <<
      \new Voice = "TenoreTwo" {
        \global
        \TenoreTwoMusic
      }
      \new Lyrics \lyricsto "TenoreTwo" {
       \stanzaOneLyricsChoirTwoTenor
      }
    >>
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
