\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

hornI = \relative do' {
    
}

hornII = \relative do' {
    
}

horns_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Trompas"
        shortInstrumentName = "Hn."
        midiInstrument = #"french horn"
    } 
    << \partCombine \hornI \hornII \marks >>
}