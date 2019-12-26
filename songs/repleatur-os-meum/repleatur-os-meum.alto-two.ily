AltoTwoMusic = \relative c' {
	\set Staff.instrumentName = #"Altus II"
	\set Staff.shortInstrumentName = "A II"

	\incipit {
		\clef "mensural-c3" \key d \minor \time 2/2
		r1 b2.
	}

	r1 b2. c4 | d2 g1 g2 | g2. f4 es2 c | r2 f c d |
	d2. e4 f2. c4 | c1 b4 c d2( | d) g2. f4 es2( | es4) d8 c d4 e f2 f |
	e1 d | r1 r2 r4 d | f g f es es d d2 | r2 r4 f g e f2 |
% p2
	r1 r2 r4 d | es d d g fis2. fis4 | g1 r |
	\repeat unfold 3 { R\breve } |
	r2 d f f4 f | e d d2 cis2. cis4 | d2 f es2. c4( |
% p3
	c) f4. e8 d4 d es d2 | d r1 r4 fis( | fis) g e2 d1 |
	\time 3/1
	\repeat volta 2 {
		\repeat unfold 7 { R\breve. } |
		r\breve f1 | f\breve f1 | f1. f2 f1 | f\breve c1 | f\breve f1 |
		d1. d2 d1 |
% p4
		d d es | b d\breve | d\breve d1 | d\breve d1 | d1. d2 d1 |
		f\breve f1 | c\breve b1 |
		b1. b2 d1 | d d es | d d\breve | d\breve d1 | g fis\breve | g\breve r1 |
		d d d | cis\breve r1 | e e f | f\breve e1 | d d\breve |
	}
	\alternative {
		{
			d\breve r1 |
		}
		{
			d\breve r1 |
		}
	}
	R\breve. |
% p5
	g1 g g | g\breve. | es1 c c | d\breve. \bar "|."
}


stanzaOneLyricsChoirTwoAlto = \lyricmode {
    Rep -- _ _ _ le -- a -- _ _ tur os me -- um,
		lau -- _ _ de tu -- a, __ _ _
		lau -- _ _ _ _ _ _ _ de tu -- a.

    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja, al -- le -- lu -- ja.
    Ut pos -- sim can -- ta -- re ti -- bi
    al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja.
    Al -- le -- lu -- ja.

    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Gau -- de -- bunt la -- bi -- a me -- a dum
    can -- ta -- ve -- ro ti -- bi al -- le -- lu -- ja.
    Al -- le -- lu -- ja,
    al -- le -- lu -- ja,
    Al -- le -- lu -- ja,
		al -- le -- lu -- ja.
    ja.
    Al -- le -- lu -- ja,
    al -- le -- lu -- ja.
}
