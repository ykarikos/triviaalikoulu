\version "2.19.49"
\include "suomi.ly"


\include "../alleluja-in-resurrectione-tua-christe.lyrics.ily"
\include "alleluja-in-resurrectione-tua-christe.header.ily"

% First choir

\include "../alleluja-in-resurrectione-tua-christe.soprano-one.ily"
\include "../alleluja-in-resurrectione-tua-christe.alto-one.ily"
\include "../alleluja-in-resurrectione-tua-christe.tenor-one.ily"
\include "../alleluja-in-resurrectione-tua-christe.bass-one.ily"

% Second choir

\include "../alleluja-in-resurrectione-tua-christe.soprano-two.ily"
\include "../alleluja-in-resurrectione-tua-christe.alto-two.ily"
\include "../alleluja-in-resurrectione-tua-christe.tenor-two.ily"
\include "../alleluja-in-resurrectione-tua-christe.bass-two.ily"

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
       \stanzaOneLyricsChoirTwo
     }
    >>
    \new Staff <<
      \new Voice = "TenoreTwo" {
        \global
        \TenoreTwoMusic
      }
      \new Lyrics \lyricsto "TenoreTwo" {
       \stanzaOneLyricsChoirTwo
      }
    >>
    \new Staff <<
      \new Voice = "BassTwo" {
        \global
        \BassTwoMusic
      }
      \new Lyrics \lyricsto "BassTwo" {
       \stanzaOneLyricsChoirTwoBass
      }
    >>
  >>
>>

  \midi {
    \tempo 2 = 90
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
