\version "2.24.4"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "music/1413-18-Cb.ily"

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
    }
    \header {
        instrument = \double_bass_name_long
        filename = "Fauré - Élégie - DOUBLE BASS"
    }
    \score { 
		\new Staff {
			\reperes \silencesMulti <<
				\marks
				\keepWithTag #'partie { \double_bass_notes }
			>>
		}
	}
}