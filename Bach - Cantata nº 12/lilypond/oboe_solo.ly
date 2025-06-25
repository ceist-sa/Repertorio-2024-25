\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

oboeSolo = \relative {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef treble
    % insert notes here
}

\bookpart {
    \header {
        instrument = "Oboé Solo"
        filename = "Bach - Cantata nº 12 - OBOÉ SOLO"
    }
    \score {
        \new Staff {
            <<\oboeSolo \marks>>
        }
    }
}