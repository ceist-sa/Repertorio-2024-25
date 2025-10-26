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
        instrument = "Viola (para violinista)"
        filename = "Fauré - Élégie - VIOLA (VIOLIN - MEZZOSOPRANO CLEF)"
    }
    \markup{
        \vspace #1
        \justify{Esta partitura contém a parte de viola, mas as notas estão escritas em clave de dó na segunda linha, ou seja, igual a clave de sol, mas uma quinta mais baixo. A partitura não está transposta. Contém apenas a segunda linha das violas.} 
    }
    \score {
		\new Staff {
			\reperes \silencesMulti <<
				\marks
				\keepWithTag #'partie { \viola_notes }
                \clef mezzosoprano
			>>
		}
	}
}