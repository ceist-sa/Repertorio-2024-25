\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

hornI = \relative do' {
    \set Staff.midiInstrument = #"french horn"
}

hornII = \relative do' {
    \set Staff.midiInstrument = #"french horn"
}

horns_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Trompas"
        shortInstrumentName = "Hn."
    }
    << \partCombine \hornI \hornII \marks >>
}