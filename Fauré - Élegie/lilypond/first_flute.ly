\version "2.24.4"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "Mus/1413-01-Fl1.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = \first_flute_name_long
        filename = "Fauré - Élégie - FLUTE I"
    }
    \fluteI
}