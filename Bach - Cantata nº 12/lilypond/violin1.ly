\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violinI = \relative {
    \set Staff.midiInstrument = #"violin"
    \override NoteHead.color = #violin-range
    \clef treble
    % insert notes here
}

\bookpart {
    \header {
        instrument = "Violino I"
        filename = "Bach - Cantata nº 12 - VIOLINO 1"
    }
    \score {
        \new Staff {
            <<\violinI \marks>>
        }
    }
}