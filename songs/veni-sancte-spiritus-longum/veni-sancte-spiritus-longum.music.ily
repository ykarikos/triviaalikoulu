#(set-global-staff-size 16)

global = {
  \time 2/2
  \key c \major
  \set Staff.midiInstrument = #"voice oohs"
}


SopranoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus I"
	\set Staff.shortInstrumentName = "C I"

	\incipit { \clef "mensural-g" \key c \major \time 2/2 e''4. }

	\repeat volta 2 {
		e4. e8 d4. d8 | h4. c8 c4. h8 | c2 r |
		R1 | R1 | R1 |
		h4. h8 c4. c8 | e4. e8 d4. d8 | e2 r |
		c4. c8 h4. c8 | c4. c8 e2 |
% p2
		\time 3/1
		c1 c h | c\breve c1 | e\breve d1 | e\breve c1 | e e d | e\breve r1 |
	}
	\repeat volta 2 {
		\time 2/2
		d2 d4 d8 d | e4 e8 d c4 h | c2 h4 c | d2 e |
		d2 d4 d8 d | c4 c8 h a4 a | c2 c4 h | h2 a |
% p3
		e'4. e8 d4. d8 | R1 | R1 |
		\time 3/1
		e1 e d |
		e\breve e1 | e\breve d1 | e\breve c1 | e e d | e\breve r1 |
	}
	\repeat volta 2 {
		\time 2/2
		r2 e | d8 d d d d4 d8 d | e4 e8 e e4 e | e2 e4 e | c c a a |
% p4
		c4. h8 cis2 | e4 c d2 | e1 | e4 e d2 | e1 |
		\time 3/1
		e e d | e\breve r1 | e\breve d1 | e\breve c1 | e e d | e\breve r1 |
		e2 e e e e e | e\breve e1 | c2 c c c c c | c\breve c1 |
		c2 c c c c c | c\breve c1 |
% p5
		c1 e d | e\breve r1 | d2 d d d d d | c\breve h1 |
		e e e | e1. d2 c1 | e\breve. |
	}
}

stanzaOneLyricsSoprano = \lyricmode {
	Ve -- ni Sanc -- te, Sanc -- te Spi -- ri -- tus,
	Ve -- ni Sanc -- te, Sanc -- te Spi -- ri -- tus,
	Ve -- ni Sanc -- te Spi -- ri -- tus

	Rep -- le -- tu -- o -- rum
	cor -- da, cor -- da fi -- de -- li -- um.
	Et tu -- i a -- mo -- ris in e -- is
	ig -- nem ac -- cen -- de,
	et tu -- i a -- mo -- ris in e -- is
	ig -- nem ac -- cen -- de,

	Ve -- ni, ve -- ni
	Rep -- le -- tu -- o -- rum
	cor -- da, cor -- da fi -- de -- li -- um.

	Qui per di -- ver -- si -- ta -- tem lin -- gua -- rum
	qunq -- ta -- rum gen -- tes in u -- ni -- ta -- te
	fi -- de -- i con -- gre -- gas -- ti.

	Al -- le -- lu -- ja.

	Al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu, al -- le -- lu -- ja.
}

stanzaOneLyrics = \lyricmode {
	Ve -- ni Sanc -- te, Sanc -- te Spi -- ri -- tus,
	Ve -- ni Sanc -- te, Sanc -- te Spi -- ri -- tus,
	Ve -- ni Sanc -- te Spi -- ri -- tus

	Rep -- le -- tu -- o -- rum
	cor -- da, cor -- da fi -- de -- li -- um.
	Et tu -- i a -- mo -- ris in e -- is
	ig -- nem ac -- cen -- de,
	et tu -- i a -- mo -- ris in e -- is
	ig -- nem ac -- cen -- de,

	Ve -- ni, ve -- ni, Sanc -- te Spi -- ri -- tus
	Rep -- le -- tu -- o -- rum
	cor -- da, cor -- da fi -- de -- li -- um.

	Qui per di -- ver -- si -- ta -- tem lin -- gua -- rum
	qunq -- ta -- rum gen -- tes in u -- ni -- ta -- te
	fi -- de -- i con -- gre -- gas -- ti.

	Al -- le -- lu -- ja.

	Al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu -- ja, al -- le -- lu -- ja,
	al -- le -- lu, al -- le -- lu -- ja.
}

SopranoTwoMusic = \relative c'' {
	\set Staff.instrumentName = #"Cantus II"
	\set Staff.shortInstrumentName = "C II"

	\incipit { \clef "mensural-c1" \key c \major \time 2/2 c''4. }

  \repeat volta 2 {
  	c4. c8 a4. a8 | g4. a8 g4. g8 | g2 r |
  	R1 | R1 | R1 |
  	g4. g8 a4. a8 | c4. c8 h4. h8 | c2 r |
  	a4. a8 g4. a8 | g4. g8 c2 |
    \time 3/1
% p2
    g1 g g | g\breve g1 | c\breve h1 | c\breve g1 | c c h | c\breve r1 |
  }
  \repeat volta 2 {
    \time 2/2
    h2 h4 h8 h | c4 c8 g a4 g | a2 g4 a | h2 c |
    a h4 h8 h | a4 a8 g f4 f | a2 g4 fis | gis2 a |
% p3
    c4. c8 a4. a8 | R1 | R1 |
    \time 3/1
    c1 c h |
    c\breve c1 | c\breve d1 | c\breve g1 | c c h | c\breve r1 |
  }
  \repeat volta 2 {
    \time 2/2
    r2 c |
    h8 h h h h4 h8 h | c4 c8 c c4 c | c2 c4 c | a a f f |
% p4
    a4. gis8 a2 | c!4 a h2 | c1 | c4 c h2 | c1 |
    \time 3/1
    c1 c h | c\breve r1 | c\breve h1 | c\breve g1 | c c h | c\breve r1 |
    c2 c c c c c | c\breve c1 | g2 g g g g g | g\breve g1 |
    a2 a a a a a | a\breve a1 |
% p5
    a c h | c\breve r1 | a2 a a a a a | g\breve g1 |
    c c c | c1. a2 g1 | c\breve. |
  }
}

AltoMusic = \relative c'' {
	\set Staff.instrumentName = #"Altus"
	\set Staff.shortInstrumentName = "A"

	\incipit { \clef "mensural-c3" \key c \major \time 2/2 e'4. } % !! e or g?

  \repeat volta 2 {
  	g4. g8 f4. f8 | e4. f8 d4. d8 | e2 r |
  	g4. g8 f4. f8 | e4. e8 h4. h8 | c2 r |
  	R1 | R1 | R1 |
  	f4. f8 e4. f8 | e4. e8 g2 |
% p2
    \time 3/1
    e1 e d | e\breve e1 | g\breve g1 | g\breve e1 | e e g | g\breve r1 |
  }
  \repeat volta 2 {
    \time 2/2
    g2 g4 g8 g | g4 g8 d e4 d | e2 e4 f | e2 e |
    f2 g4 g8 g| f4 f8 e d4 d | e2 e4 d | e2 e |
% p3
    g4. g8 f4. f8 | e4. e8 d4. d8 | e2 r |
    \time 3/1 g1 g g |
    g\breve g1 | g\breve g1 | g\breve e1 | g g g | g\breve r1 |
  }
  \repeat volta 2 {
    \time 2/2 r2 g |
    g8 g g g g4 g8 g | g4 g8 g g4 g | g2 g4 g | f c d d |
% p4
    e4. e8 e2 | g4 f8( e) d4( g) | g1 | g4 g g2 | g1 |
    \time 3/1
    g1 g g | g\breve r1 | g\breve g1 | g\breve e1 | e e g | g\breve r1 |
    g2 g g g g g | g\breve g1 | e2 e e e e e | e\breve e1 |
    f2 f f f f f | f\breve f1 |
% p5
    f g g | g\breve r1 | f2 f f f f f | e\breve e1 |
    g g g | g1. f2 e( g) | g\breve. |
  }
}

TenoreMusic = \relative c' {
	\set Staff.instrumentName = #"Tenor"
	\set Staff.shortInstrumentName = "T"

	\incipit { \clef "mensural-c4" \key c \major \time 2/2 g4. }

	\clef "treble_8"
	g4. g8 a4. a8 | h4. a8 g4. g8 | g2 r |
	e'4. e8 d4. d8 | c4. c8 g4. g8 | g2 r |
	R1 | R1 | R1 |
	c4. c8 h4. c8 | c4. h8 c2 |
}

BassMusic = \relative c {
	\set Staff.instrumentName = #"Bassus"
	\set Staff.shortInstrumentName = "B"

	\incipit { \clef "mensural-f" \key c \major \time 2/2 c4. }

	\clef bass
	c4. c8 d4. d8 | e4. f8 g4. g8 | c,2 r |
	g'4. g8 f4. f8 | e4. e8 d4. d8 | e2 r |
	R1 | R1 | R1 |
	f4. f8 e4. f8 | g4. g8 c,2 |
}
