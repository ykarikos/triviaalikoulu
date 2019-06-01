\version "2.19.49"
\include "suomi.ly"

global = { 
%  \numericTimeSignature
  \time 2/2 
	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key c \major
  \set Staff.midiInstrument = #"voice oohs"
}

\header {
  title = "Ætas carmen melodiæ"
%  subtitle = ""
  composer = "Daniel Friderici (1548–1638)"
  poet = "suom. sanat Hemminki Maskulainen (n. 1550–1619)"
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
	\repeat volta 2 {
		c2.( h8 a g2. a4 | h c d8 c d e d4. c8 h a h4) |
		c1 h2. h4 | c2 c4 h2 a4 gis2 | gis r4 a h c2 h4 |
		a \slurDashed a( a) gis a2. a4 | 
		\set Timing.measureLength = #(ly:make-moment 6/2)
		h c2 h4 a g2 fis4 g1 |
	}
	\repeat volta 2 {
		\set Timing.measureLength = #(ly:make-moment 4/2)
		g4. f8 e4 c e4. f8 g2 | fis4. g8 a4 c h4. h8 c2 |
		c4. d8 e4 c h4. h8 c2 |
		r4 c2 c4 h a gis a | gis1 gis4 a2 h4 | c2 c d e |
		d1 e2 c | g \slurSolid a2.( c4 c2~ | c) h4( a) h2 h |
	}
	\alternative {
		{
			\set Timing.measureLength = #(ly:make-moment 2/2)
			c1 |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			c\breve \bar "|."
		}
	}
}

stanzaOneLyrics = \lyricmode {
	Æ -- tas, æ -- tas car -- men me -- lo -- di -- æ,
	psal -- lat lau -- dem in Mes -- si -- æ,
    psal -- lat lau -- dem in Mes -- si -- æ.
	Can -- ti -- co læ -- ti -- ti -- æ,
	can -- ti -- co læ -- ti -- ti -- æ,
	can -- ti -- co læ -- ti -- ti -- æ,
	Nam que di -- gnus est ho -- no -- re,
	qui pla -- ca -- vit pas -- si -- o -- ne
	Pat -- rem om -- nis gra -- ti -- æ. æ.
}

stanzaOneLyricsTenor = \lyricmode {
	Æ -- tas, æ -- tas car -- men me -- lo -- di -- æ
	psal -- lat lau -- dem in Mes -- si -- æ,
    psal -- lat lau -- dem in Mes -- si -- æ.
	Can -- ti -- co læ -- ti -- ti -- æ,
	can -- ti -- co, canti -- co læ -- ti -- ti -- æ,
	can -- ti -- co læ -- ti -- ti -- æ,
	Nam que di -- gnus est ho -- no -- re,
	qui pla -- ca -- vit pas -- si -- o -- ne
	Pat -- rem om -- nis gra -- ti -- æ. æ.
}

stanzaTwoLyrics = \lyricmode {
	Ää -- nell, ää -- nell cau -- nist mo -- nen mut -- cain
	Caik Chris -- tu -- xen cun -- jat veisad -- cam
	Chris -- tu -- xen cun -- jat vei -- sad -- cam.
	Kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos vird -- hell i -- loid -- cam.
	Hän on kel -- vol -- li -- nen kunn -- jaan
	Quin pii -- nal -- lans saat lep -- py -- män
	Ar -- mon I -- sän Ju -- ma -- lan. lan.
}

stanzaTwoLyricsSoprano = \lyricmode {
	Ää -- nell, ää -- nell cau -- nist mo -- nen mut -- cain
	Caik Chris -- tu -- xen cun -- jat_vei -- sad -- cam
	Chris -- tu -- xen cun -- jat vei -- sad -- cam.
	Kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos vird -- hell i -- loid -- cam,
	kii -- tos vird -- hell i -- loid -- cam.
	Hän on kel -- vol -- li -- nen kunn -- jaan
	Quin pii -- nal -- lans saat lep -- py -- män
	Ar -- mon I -- sän Ju -- ma -- lan. lan.
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
	Ar -- mon I -- sän Ju -- ma -- lan. lan.
}

AltoMusic = \relative c'' {
  \set Staff.instrumentName = #"Altus"
  \set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key c \major \time 2/2 g'2 }
	\repeat volta 2 {
		g2.( f4 e2. d8 c | h4 a g a h g g'2) | g1 g2. g4 |
		g2 g4 g2 e4 e2 | e e g4 g2 g4 | e f \slurDashed e( e) e2 e |
		g4 g2 f4 f d d2 d1
	}
	\repeat volta 2 {
		e4. d8 c4. g'8 g4. f8 e2 | a4. g8 f4 g g4. g8 g2 |
		g4. g8 g4 g g4. g8 g2 |
		r4 g2 g4 g e e d | e1 e4 e2 g4 | a2. g4 f2 g |
		g1 g2 e~ | e4 e e2 f \slurSolid e8( d e f | g1.) g2
	}
	\alternative {
		{
			\set Timing.measureLength = #(ly:make-moment 2/2)
			g1 |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			g\breve \bar "|."
		}
	}
}

TenoreMusic = \relative c' {
  \set Staff.instrumentName = #"Tenor"
  \set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key c \major \time 2/2 e'2 }

	\clef "treble_8"
	\repeat volta 2 {
		e2.( d8 c h4 c h a | g a h4. c8 d4 e d2) | 
		e1 d2. d4 | e2 e4 d2 c4 h2 | h2 cis d4 e2 d4 | 
		c4 d \slurDashed h( h) cis2 cis | 
		d4 e2 d4 c h a2 h1
	}
	\repeat volta 2 {
		c4. a8 g4 a c4. a8 g4 h8 c | 
		d4  \slurDashed d8( g,) c4 e d4. d8 e2 |
 		e4. d8 c4 e d4. d8 e2 |
		r4 e2 e4 d c h a | h1 h4 cis2 d4 |
		\slurSolid f( f,8 g a2) a4 a c c~( | c h8 a h2) c g |
		c1 c2 a | d( e d) d |
	}
	\alternative {
		{
			\set Timing.measureLength = #(ly:make-moment 2/2)
			e1 |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			c\breve \bar "|."
		}
	}

}

BassMusic = \relative c {
  \set Staff.instrumentName = #"Bassus"
  \set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key c \major \time 2/2 c2 }

	\clef bass
	\repeat volta 2 {
		c2.( d4 e c e f | g\breve) | c,1 g'2. g4 |
		c,2 c4 g'2 a4 e2 | e a g4 c,2 g'4 |
		a d, \slurDashed e( e) a,2 a' |
		g4 c,2 d4 f g d2 g,1
	}
	\repeat volta 2 {
		c4. d8 e4 f c4. d8 e2 | d4. e8 f4 c g'4. g8 c,2 |
		c'4. h8 c4 c,4 g'4. g8 c,2 |
		r4 c2 c4 g' a e f | e1 e4 a2 g4 | f2. e4 d2 c |
		g'1 c,2 c~ | c a f a | g1. g2 |
	}
	\alternative {
		{
			\set Timing.measureLength = #(ly:make-moment 2/2)
			c1 |
		}
		{
			\set Timing.measureLength = #(ly:make-moment 4/2)
			c\breve \bar "|."
		}
	}
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
     \new Lyrics \lyricsto "Soprano" {
       \stanzaTwoLyricsSoprano
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
     \new Lyrics \lyricsto "Alto" {
       \stanzaTwoLyrics
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
      \new Lyrics \lyricsto "Bass" {
       \stanzaTwoLyrics
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
%		\hide Slur
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