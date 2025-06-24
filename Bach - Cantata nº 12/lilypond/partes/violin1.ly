\version "2.24.4"
\include "../../../styles.ily"
\include "../globals.ily"
\include "../musica/violin1.ily"

\book {
    \paperStyle
    \pieceHeaders
    \header {
        instrument = "Violino I"
        filename = "Bach - Cantata nº 12 - VIOLINO 1"
    }
    \score {
        \scoreHeaders
        \new Staff {
            \violinI
        }
    }
}