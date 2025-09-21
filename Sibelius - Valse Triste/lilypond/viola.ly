\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

viola = \relative do'{
    \set Staff.midiInstrument = #"viola"
    \override NoteHead.color = #viola-range
    \clef alto

}

viola_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Viola"
        shortInstrumentName = "Vla."
    }
    << \viola \marks >>
}