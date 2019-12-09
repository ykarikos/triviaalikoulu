BassOneMusic = \relative c' {
	\set Staff.instrumentName = #"Bassus I"
	\set Staff.shortInstrumentName = "B I"

	\incipit { \clef "mensural-f" \key d \minor \time 2/2 g1. }

	\clef bass
	g1. g2 | g1 g,2 g | g'1 c, | f2. e4 d2. c4 |
	b2 f' b, c | r1 g'2. f4 | es2. d4 c1 | r2 g' d4 e f d |
	a'1 d,2 r4 d | f es d es c d g,2 | r1 r2 r4 g' | f es d2 r2 r4 d |
% p2
	e g f b, c d g,2 | r2 r4 g' d2. d4 | d2. g,4 d'2 d4 d |
	cis d b2 a2. a4 | d4. c8 b4 b es4. d8 c4 c | f4. e8 d4 g2 c,4 d2 |
	g,1 r | R\breve | R\breve | R\breve |
% p3
	r4 g'2 d4 a'2 d, | r1 r2 d |
	\time 3/1
	\repeat volta 2 {
		b\breve b1 | b1. b2 b1 | f'\breve f1 | f\breve d1 | g1. g2 g1 | fis g c, |
		es d\breve | g,\breve r1 | \repeat unfold 7 { R\breve. } |
% p4
		r\breve b1 | b\breve b1 | b1. b2 b1 | f'\breve f1 | f\breve d1 |
		g1. g2 g1 | d g c, | g' d\breve | g\breve r1 | R\breve. | g1 g es | d\breve r1 |
		a1 a d | c\breve r1 | r\breve c1 | g' d\breve |
	}
	\alternative {
		{
			g\breve d1 |
		}
		{
			g\breve r1 |
		}
	}
	c,1 c h | c\breve r1 |
% p5
	c\breve g1 | c2 d es d c1 | g\breve. \bar "|."
}

stanzaOneLyricsChoirOneBass = \lyricmode {
    Rep -- le -- a -- tur os me -- um,
    lau -- _ _ _ _ de tu -- a,
    lau -- _ de tu -- a,
		lau -- de __ _ _ _ tu -- a.
    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja, al -- le -- lu -- ja,
    Al -- le -- lu -- ja.
    Ut pos -- sim can -- ta -- re ti -- bi
    al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja, al -- le -- lu -- ja.
    Al -- le -- lu -- ja.

    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja
    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Al -- le -- lu -- ja
    al -- le -- lu -- ja,
    al -- le -- lu -- ja. Gau --
    ja.
    Al -- le -- lu -- ja
    Al -- le -- lu -- _ _ _ _ ja.
}
