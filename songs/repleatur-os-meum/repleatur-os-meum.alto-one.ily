AltoOneMusic = \relative c' {
	\set Staff.instrumentName = #"Altus I"
	\set Staff.shortInstrumentName = "A I"

	\incipit { \clef "mensural-c3" \key d \minor \time 2/2 b2. }

	b2. b4 d g g2( | g) g g d | d1 es | d2 c1 f2 |
	f2. e4 d e f2( | f4) e8 d e2 d1 | g2. f4 es2. f4 | g1 f2 d |
	e1 fis2 r4 a | f g f es es d d2 | r1 r2 r4 d | f g f2 r2 r4 f |
% p2
	g d f f es d d2 | r2 r4 d d2. d4 | d2. d4 f2 f4 f |
	e d d2 cis2. cis4 | d2 f es2. c4( | c) f4. e8 d4 d es d2 |
	d1 r | \repeat unfold 3 { R\breve } |
% p3
	r4 d2 f4 e2 d | r1 r2 fis |
	\time 3/1
	\repeat volta 2 {
		f\breve f1 | f1. f2 f1 | f\breve c1 | f\breve f1 | d1. d2 d1 | d d es |
		b d\breve | d\breve r1 |
		\repeat unfold 7 { R\breve. } |
% p4
		r\breve f1 | f\breve f1 | f1. f2 f1 | f\breve c1 | f\breve f1 |
		g1. g2 g1 | fis g g | g fis\breve | g\breve r1 | R\breve. |
		d1 d c | d\breve r1 |
		cis cis d | e\breve r1 | r\breve g1 | g fis\breve |
	}
	\alternative {
		{
			g\breve fis1 |
		}
		{
			g\breve r1 |
		}
	}
	g g g | g\breve r1 |
% p5
	g\breve g1 | g\breve. | g\breve. \bar "|."
}

stanzaOneLyricsChoirOneAlto = \lyricmode {
    Rep -- _ _ _ _ le -- a -- tur os me -- um
    lau -- de tu -- _ _ _ _ _ _ _ a,
    lau -- _ _ _ _ _ de tu -- a.
    Al -- le -- lu -- ja, al -- le -- lu -- ja
    Al -- le -- lu -- ja
    Al -- le -- lu -- ja, al -- le -- lu -- ja,
    Al -- le -- lu -- ja.
    Ut pos -- sim can -- ta -- re ti -- bi
    al -- le -- lu -- ja, al -- le -- lu -- ja,
    al -- le -- lu -- ja.
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
    Al -- le -- lu -- ja.
}
