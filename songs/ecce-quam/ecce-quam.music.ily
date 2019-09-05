#(set-global-staff-size 16)

global = {
%  \numericTimeSignature
  \time 2/2
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \key d \minor
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus"
	\set Staff.shortInstrumentName = "C"

	\incipit { 
        \clef "mensural-g" 
        \set Staff.middleCClefPosition = #3
        \set Staff.middleCPosition = #3
        \set Staff.clefPosition = #0
        \key d \minor \time 2/2 g2
    }

    \repeat volta 2 {
        g2 g4 a | b2 b4 b | b b b b | a2 a | a a4 a | g2 g4 g |
        fis g g fis |
    }
    \alternative {
        {
            g1 |
        }
        {
            g2 r4 g |
        }
    }
    \repeat volta 2 {
        e g g fis | g g g g | es g g fis |
    }
    \alternative {
        {
            g2 r4 g |
        }
        {
            g1 |
        }
    }
% 2
    \repeat volta 2 {
        b2 a4 g | a2 d | d cis | d1 | b2 b4 b | c2 c4 b | a g g fis |
    }
    \alternative {
        {
            g1 |
        }
        {
            g2 r4 g |
        }
    }
    \repeat volta 2 {
        es g g fis | g g g g | es g g fis |
    }
    \alternative {
        {
            g2 r4 g |
        }
        {
            g2 r4 b |
        }
    }
% 3
    a2 g | g fis | g r4 b | a g g fis | g1 |
    g2 g( | g) g | g1( | g) \bar "|."

}

stanzaOneLyrics = \lyricmode {
    Ec -- ce quam sit ti -- bi dul -- ce ru -- bens os, 
    quam sint ti -- bi can -- di -- da lu -- mi -- na tu -- a. a.
    Ca -- pil -- lus ti -- bi fla -- vus est
    ti -- bi mol -- li -- cu -- la. Ca -- la.
    O me -- a lux et cor -- cu -- lum
    fac me so -- lum ti -- bi fi -- e -- ri spon -- sum. sum. Vox
    tu -- a dul -- cis la -- bi -- a
    tu -- a sunt mol -- li -- a, vox a,
    Ve -- ni in hor -- tu -- lum,
    ve -- ni in hor -- tu -- lum.
    Lus -- ci -- ni -- a.
}

AltoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 d'2 }

	d2 d4 f |
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key d \minor \time 2/2 b2 }

	\clef "treble_8"
	b2 b4 c |
}

BassMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 g2 }

	\clef bass
	g2 g4 f |
}
