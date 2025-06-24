\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

oboeSolo = \relative {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \key_time_tempo
    \clef treble
    s1*16 % replace with actual notes
    \bar "|."
}

\bookpart {
    \header {
        instrument = "Oboé Solo"
        filename = "Bach - Cantata nº 12 - OBOÉ SOLO"
    }
    \score {
        \new Staff {
            \oboeSolo
        }
    }
}