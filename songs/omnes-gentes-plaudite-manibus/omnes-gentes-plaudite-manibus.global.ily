globalkey = {
	\key c \major
}

globaltime = {
	\time 2/2
}

globaltempo = {
	\tempo 4 = 130
}

global = {
%  \numericTimeSignature
  \globaltime
%	\set Timing.measureLength = #(ly:make-moment 4/2)
%  \autoBeamOff
  \globalkey
  \set Staff.midiInstrument = #"voice oohs"
}

