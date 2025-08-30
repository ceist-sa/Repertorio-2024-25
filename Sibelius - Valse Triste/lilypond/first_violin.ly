\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

first_violin = \relative do'' {
    \override NoteHead.color = #violin-range
    \clef treble
}

first_violin_conductor = \relative do'' {
    \new Staff \with {
        instrumentName = "Violino I"
        shortInstrumentName = "Vln. I"
        midiInstrument = #"violin"
    } 
    << \first_violin \marks >>
}