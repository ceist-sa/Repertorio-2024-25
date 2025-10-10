\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "music/cello.ily"
\include "globals.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        instrument = "Violoncelo"
        filename = "Sibelius - Valse Triste - CELLO"
    }
    \cello_part
}