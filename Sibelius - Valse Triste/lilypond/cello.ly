\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

cello = \relative do, {
    \override NoteHead.color = #cello-range
    \clef bass
}

cello_conductor = \relative do, {
    \new Staff \with {
        instrumentName = "Violoncelo"
        shortInstrumentName = "Vlc."
        midiInstrument = #"cello"
    } 
    << \cello \marks >>
}