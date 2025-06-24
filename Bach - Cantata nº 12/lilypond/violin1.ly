\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violinI = \relative {
    \set Staff.midiInstrument = #"violin"
    \override NoteHead.color = #violin-range
    \key_time_tempo
    \clef treble
    s1*16 % replace with actual notes
    \bar "|."
}

\bookpart {
    \header {
        instrument = "Violino I"
        filename = "Bach - Cantata nº 12 - VIOLINO 1"
    }
    \score {
        \new Staff {
            \violinI
        }
    }
}