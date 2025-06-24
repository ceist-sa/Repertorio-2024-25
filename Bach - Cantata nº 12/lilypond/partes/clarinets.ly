\version "2.24.4"
\include "../../../styles.ily"
\include "../globals.ily"
\include "../musica/clarinets.ily"

\book {
    \paperStyle
    \paper {
        system-count = 6
        indent = 2\cm
        short-indent = 1\cm
    }
    \pieceHeaders
    \header {
        instrument = "Clarinetes I e II (Violas I e II)"
        filename = "Bach - Cantata nº 12 - CLARINETES 1 E 2 (VIOLAS 1 E 2)"
    }
    \score {
        \scoreHeaders
        \new GrandStaff <<
            \new Staff \with {
                instrumentName = "Clarinete I"
                shortInstrumentName = "Cl. I"
            } {
                \transposition sib
                \transpose do re {
                    \clarinetI
                }
            }
            \new Staff \with {
                instrumentName = "Clarinete II"
                shortInstrumentName = "Cl. II"
            } {
                \transposition sib
                \transpose do re {
                    \clarinetII
                }
            }
        >>
    }
}