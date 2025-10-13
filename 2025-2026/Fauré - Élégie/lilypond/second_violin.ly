\version "2.24.4"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "music/1413-15-V2.ily"

\bookpart {
    \header {
        instrument = \second_violin_name_long
        filename = "Fauré - Élégie - VIOLIN II"
    }
    \score { 
        \new Staff {
            \reperes \silencesMulti <<
				\marks
                \keepWithTag #'partie { \second_violin_notes }
            >>
        }
    }
}