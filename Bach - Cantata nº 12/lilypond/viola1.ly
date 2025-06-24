\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violaI = \relative {
    \set Staff.midiInstrument = #"viola"
    \override NoteHead.color = #viola-range
    \key_time_tempo
    \clef alto
    s1*16 % replace with actual notes
    \bar "|."
}

\bookpart {
    \header {
        instrument = "Viola I"
        filename = "Bach - Cantata nº 12 - VIOLA 1"
    }
    \score {
        \new Staff {
            \violaI
        }
    }
}