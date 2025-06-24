\version "2.24.4"
\include "../../../styles.ily"
\include "../globals.ily"
\include "../musica/violin2.ily"

\book {
    \paperStyle
    \paper {
        systems-per-page = #7
    }
    \pieceHeaders
    \header {
        instrument = "Violino II"
        filename = "Bach - Cantata nº 12 - VIOLINO 2"
    }
    \score {
        \scoreHeaders
        \new Staff {
            \violinII
        }
    }
}