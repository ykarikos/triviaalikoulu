\header {
  title = "Isti sunt triumphatores"
  subtitle = "Porin triviaalikoulun nuottikirja (1725)"
  composer = "Jacobus Gallus (1550–1591)"
  style = "early music"
  maintainer = "Yrjö Kari-Koskinen"
  copyright = "Nuottien tekijänoikeudet on luovutettu vapaaseen yleiseen käyttöön Creative Commons 0:n mukaisesti."
  tagline = "Lähde: https://triviaalikoulu.sonusborealis.fi"
}

#(set-global-staff-size 16)

\paper {
    #(define fonts
        (make-pango-font-tree "Palatino"
                              "Nimbus Sans"
                              "Luxi Mono"
                              (/ staff-height pt 20)))
}

global = {
  \time 2/2
  \key f \major
  \set Staff.midiInstrument = #"voice oohs"
}
