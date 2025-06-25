\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violaI = \relative {
    \set Staff.midiInstrument = #"viola"
    \override NoteHead.color = #viola-range
    \clef alto
    % insert notes here
}

\bookpart {
    \header {
        instrument = "Viola I"
        filename = "Bach - Cantata nº 12 - VIOLA 1"
    }
    \score {
        \new Staff {
            <<\violaI \marks>>
        }
    }
}