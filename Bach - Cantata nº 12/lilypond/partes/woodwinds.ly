\version "2.24.4"
\include "../../../styles.ily"
\include "../globals.ily"
\include "../musica/woodwinds.ily"

\book {
    \paperStyle
    \paper {
        page-count = #1
        indent = 2\cm
        short-indent = 1\cm
    }
    \pieceHeaders
    \header {
        instrument = "Sopros (Órgão)"
        filename = "Bach - Cantata nº 12 - SOPROS (ÓRGÃO)"
    }
    \score {
        \scoreHeaders
        \new StaffGroup <<
            \new Staff \with {
                instrumentName = "Flauta I"
                shortInstrumentName = "Fl. I"
            } {
                \fluteI
            }

            \new Staff \with {
                instrumentName = "Flauta II"
                shortInstrumentName = "Fl. II"
            } {
                \fluteII
            }

            \new Staff \with {
                instrumentName = "Flauta III"
                shortInstrumentName = "Fl. III"
            } {
                \fluteIII
            }

            \new Staff \with {
                instrumentName = "Oboé"
                shortInstrumentName = "Ob."
            } {    
                \oboe
            }

            \new Staff \with {
                instrumentName = "Clarinete III"
                shortInstrumentName = "Cl. III"
            } {
                \transposition sib
                \transpose do re {
                    \clarinetIII
                }
            }
        >>
    }
}