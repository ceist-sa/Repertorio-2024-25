\version "2.24.4"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "music/1413-16-A.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = \viola_name_long
        filename = "Fauré - Élégie - VIOLA"
    }
    \score {
		\new Staff {
			\reperes \silencesMulti <<
				\marks
				\keepWithTag #'partie { \viola_notes }
			>>
		}
	}
}