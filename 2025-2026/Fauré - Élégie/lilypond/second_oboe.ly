\version "2.24.4"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "music/1413-04-Hb2.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = \second_oboe_name_long
        filename = "Fauré - Élégie - OBOE II"
    }
    \score { 
        \new Staff {
            \reperes \silencesMulti <<
				\marks
                \keepWithTag #'partie { \second_oboe_notes }
            >>
        }
    }
}