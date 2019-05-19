\version "2.19.49"
\include "suomi.ly"

global = { 
%  \numericTimeSignature
  \time 4/2 
%  \autoBeamOff
  \key c \major
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Ætas carmen melodiæ"
%  subtitle = ""
  composer = "Daniel Friderici"
%  instrument = "Voice (SATB)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "This work is licensed under the Creative Commons Attribution 4.0 International License."
  tagline = "The source is available at https://github.com/ykarikos/triviaalikoulu"
}

\paper {
    #(define fonts
        (make-pango-font-tree "Palatino"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}


SopranoMusic = \relative c'' {
  \set Staff.instrumentName = #"Cantus"
  \set Staff.shortInstrumentName = "C"

	\incipit { \clef "mensural-c1" \key c \major \time 2/2 c''2 }
	c2.
}

stanzaOneLyrics = \lyricmode {
	Æ -- tas, æ -- tas car -- men me -- lo -- di -- æ,
	psal -- lat lau -- dem in mes -- si -- æ,
    psal -- lat lau -- dem in mes -- si -- æ.
	Can -- ti -- co læ -- ti -- ti -- æ,
	can -- ti -- co læ -- ti -- ti -- æ,
	can -- ti -- co læ -- ti -- ti -- æ,
	Nam que di -- gnus est ho -- no -- re,
	qui pla -- ca -- vit pas -- si -- o -- ne
	Pat -- rem om -- nis gra -- ti -- æ. æ.
}

stanzaOneLyricsTenor = \lyricmode {
	Æ -- tas, æ -- tas car -- men me -- lo -- di -- æ
	psal -- lat lau -- dem in mes -- si -- æ,
    psal -- lat lau -- dem in mes -- si -- æ.
	Can -- ti -- co læ -- ti -- ti -- æ,
	can -- ti -- co, canti -- co læ -- ti -- ti -- æ,
	can -- ti -- co læ -- ti -- ti -- æ,
	Nam que di -- gnus est ho -- no -- re,
	qui pla -- ca -- vit pas -- si -- o -- ne
	Pat -- rem om -- nis gra -- ti -- æ. æ.
}

stanzaTwoLyrics = \lyricmode {
	Ää -- nell, ää -- nell cau -- nist mo -- nen mut -- cain
	Caik Chris -- tu -- xen cunjat vei -- sad -- cam
	Chris -- tu -- xen cun -- jat vei -- sad -- cam.
	Kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos vird -- hell i -- loid -- cam.
	Hän on kel -- vol -- li -- nen kunn -- jaan
	Quin pii -- nal -- lans saat lep -- py -- män
	Ar -- mon I -- sän Ju -- ma -- lan.
}

stanzaTwoLyricsTenor = \lyricmode {
	Ää -- nell, ää -- nell cau -- nist mo -- nen mut -- cain
	Caik Chris -- tu -- xen cun -- jat veisad -- cam
	Chris -- tu -- xen cun -- jat vei -- sad -- cam.
	Kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos, kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos vird -- hell i -- loid -- cam.
	Hän on kel -- vol -- li -- nen kunn -- jaan
	Quin pii -- nal -- lans saat lep -- py -- män
	Ar -- mon I -- sän Ju -- ma -- lan.
}

AltoMusic = \relative c'' {
  \set Staff.instrumentName = #"Altus"
  \set Staff.shortInstrumentName = "A"

  \incipit { \clef "mensural-c3" \key c \major \time 2/2 g'2 }

	g2.

}

TenoreMusic = \relative c' {
  \set Staff.instrumentName = #"Tenor"
  \set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key c \major \time 2/2 e'2 }

	\clef "treble_8"
	\repeat volta 2 {
		e2.( d8 c h4 c h a | g a h4. c8 d4 e d2) | 
		e1 d2. d4 | e2 e4 d2 c4 h2 | h2 cis d4 e2 d4 | 
		c4 d \slurDashed h( h) cis2 d | 
		\time 6/2 
		\once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
		d4 e2 d4 c h a2 h1
	}
	\repeat volta 2 {
		\time 4/2 
		\once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
		c4. a8 g4 a c4. a8 g4 h8 c | 
		d4  \slurDashed d8( g,) c4 e d4. d8 e2 |
 		e4. d8 c4 e d4. d8 e2 |
		r4 e2 e4 d c h a | h1 h4 cis2 d4 |
		\slurSolid f( f,8 g a2) a4 a c c~( | c h8 a h2) c g |
		c1 c2 a | d( e d) d |
	}
	\alternative {
		{
			\time 2/2
			\once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
			e1 |
		}
		{
			\time 4/2
			\once \override Staff.TimeSignature.break-visibility = ##(#f #f #f)
			e\breve \bar "|."
		}
	}

}

BassMusic = \relative c {
  \set Staff.instrumentName = #"Bassus"
  \set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key c \major \time 2/2 c2 }

	\clef bass
	c2.
}



\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "Soprano" {
		\global
        \SopranoMusic
      }
     \new Lyrics \lyricsto "Soprano" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Alto" {
        \global
        \AltoMusic
      }
     \new Lyrics \lyricsto "Alto" {
       \stanzaOneLyrics
     }
    >>
    \new Staff <<
      \new Voice = "Tenore" {
        \global
        \TenoreMusic
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaOneLyricsTenor
      }
      \new Lyrics \lyricsto "Tenore" {
       \stanzaTwoLyricsTenor
      }
    >>
    \new Staff <<
      \new Voice = "Bass" {
        \global
        \BassMusic
      }
      \new Lyrics \lyricsto "Bass" {
       \stanzaOneLyrics
      }
    >>
  >>
  \midi { 
    \tempo 4 = 160
  }
  \layout {
    \context {
      \Voice
      \consists "Ambitus_engraver"
    }
    indent = 3.5\cm
    incipit-width = 2\cm
    \context {
     \Staff \RemoveEmptyStaves
    }
    \context {
     \Score
     \override VerticalAxisGroup.remove-first = ##t
    }
  }
}