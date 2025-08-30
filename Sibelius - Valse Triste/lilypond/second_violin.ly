\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

second_violin = \relative do'' {
    \override NoteHead.color = #violin-range
    \clef treble
}

second_violin_conductor = \relative do'' {
    \new Staff \with {
        instrumentName = "Violino II"
        shortInstrumentName = "Vln. II"
        midiInstrument = #"violin"
    } 
    << \second_violin \marks >>
}