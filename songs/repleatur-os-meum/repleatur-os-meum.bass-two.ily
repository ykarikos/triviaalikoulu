
BassTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus II"
	\set Staff.shortInstrumentName = "B II"

	\incipit {
		\clef "mensural-f" \key d \minor \time 2/2
		r1 g1
	}

	\clef bass
	r1 g1( | g2) g g1 | g,2 g c1 | b2 f'2. e4 d2( |
	d4) c b1 f2 | c'1 g2 g'( | g4) f es2. d4 c2( | c) g d'1 |
	a d | r1 r2 r4 g | f es d es c d g,2 | r2 r4 d' e g f2 |
% p2
	r1 r2 r4 g | c, d g, g d'2. d4 | g,1 r |
	\repeat unfold 3 { R\breve } |
	r2 g d' d4 d | cis d b2 a2. a4 | d4. c8 b4 b  es4. d8 c4 c |
% p3
	f4. e8 d4 g2 c,4 d2 | g, r1 r4 d'( | d) g a2 d,1 |
	\time 3/1
	\repeat volta 2 {
		\repeat unfold 7 { R\breve. } |
		r\breve d1 | b\breve b1 | b1. b2 b1 | f'\breve f1 |
		f\breve d1 | g1. g2 g1 |
% p4
		fis g c, | es d\breve | g,\breve b1 |
		b\breve b1 | b1. b2 b1 | f\breve f1 | f\breve b1 |
		g1. g2 g1 | d' g, c | g d'\breve |
		g,\breve g'1 | es d\breve | g,\breve r1 |
		d' d b | a\breve r1 | c c f | b,\breve c1 | g d'\breve |
	}
	\alternative {
		{
			g,\breve r1 |
		}
		{
			g\breve r1 |
		}
	}
	R\breve. | c1 c h |
% p5
	c2 d es c g'1 | c, c c | g\breve. \bar "|."
}

stanzaOneLyricsChoirTwoBass = \lyricmode {
    Rep -- le -- a -- tur os me -- um,
		lau -- _ _ _ _ de tu -- a,
		lau -- _ _ _ _ de tu -- _ a.
    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja, al -- le -- lu -- ja.
    Ut pos -- sim can -- ta -- re ti -- bi
    al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja, al -- le -- lu -- ja.
    Al -- le -- lu -- ja.

    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Al -- le -- lu -- ja,
    al -- le -- lu -- ja,
    Al -- le -- lu -- ja
		al -- le -- lu -- ja.
    ja.
    Al -- le -- lu -- ja, __ _ _ _ _
    al -- le -- lu -- ja.
}
