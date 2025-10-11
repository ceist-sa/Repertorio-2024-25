\version "2.24.4"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "music/1413-17-Vc.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = \cello_name_long
        filename = "Fauré - Élégie - CELLO"
    }
    \score { 
		\new Staff {
			\reperes \silencesMulti <<
				\marks
				\keepWithTag #'partie { \cello_notes }
			>>
		}
	}
}