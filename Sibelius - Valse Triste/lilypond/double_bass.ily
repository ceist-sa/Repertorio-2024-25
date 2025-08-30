\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

double_bass = \relative do, {
    \override NoteHead.color = #cello-range
    \clef bass
}

double_bass_conductor = \relative do, {
    \new Staff \with {
        instrumentName = "Contrabaixo"
        shortInstrumentName = "Cb."
        midiInstrument = #"contrabass"
    } 
    << \double_bass \marks >>
}