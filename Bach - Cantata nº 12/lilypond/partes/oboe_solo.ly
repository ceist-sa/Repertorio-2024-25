\version "2.24.4"
\include "../../../styles.ily"
\include "../globals.ily"
\include "../musica/oboe_solo.ily"

\book {
    \paperStyle
    \pieceHeaders
    \header {
        instrument = "Oboé Solo"
        filename = "Bach - Cantata nº 12 - OBOÉ SOLO"
    }
    \score {
        \scoreHeaders
        \new Staff {
            \oboeSolo
        }
    }
}