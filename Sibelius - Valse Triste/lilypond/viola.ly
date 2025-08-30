\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

viola = \relative do'{
    \override NoteHead.color = #viola-range
    \clef alto

}

viola_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Viola"
        shortInstrumentName = "Vla."
        midiInstrument = #"viola"
    } 
    << \viola \marks >>
}