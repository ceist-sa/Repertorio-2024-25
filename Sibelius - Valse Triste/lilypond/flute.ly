\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"


flute = \relative do' {
    \override NoteHead.color = #flute-range
    \clef treble
}

flute_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Flauta"
        shortInstrumentName = "Fl."
        midiInstrument = #"flute"
    } 
    << \flute \marks >>
}