\version "2.24.4"
\include "../../../styles.ily"
\include "../globals.ily"
\include "../musica/viola1.ily"

\book {
    \paperStyle
    \pieceHeaders
    \header {
        instrument = "Viola I"
        filename = "Bach - Cantata nº 12 - VIOLA 1"
    }
    \score {
        \scoreHeaders
        \new Staff {
            \violaI
        }
    }
}