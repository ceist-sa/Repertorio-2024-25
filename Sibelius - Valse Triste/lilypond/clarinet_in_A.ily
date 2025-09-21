\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

clarinet_in_A = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \override NoteHead.color = #clarinet-range
    \clef treble

}

clarinet_in_A_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Clarinete em Lá"
        shortInstrumentName = "Cl. A"
    }
    << \clarinet_in_A \marks >>
}