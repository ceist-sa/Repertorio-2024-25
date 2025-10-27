\version "2.24.4"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\include "music/1413-16-A.ily"

\bookpart {
    \header {
        instrument = "Viola (para violinista)"
        filename = "Fauré - Élégie - VIOLA (VIOLIN - TRANSPOSED)"
    }
    \markup{
        \vspace #1
        \justify{Esta partitura contém a parte de viola, mas as notas transpostas para coincidir com o correspondente no violino, ou seja, tudo está escrito uma quinta acima do que verdadeiramente soa.} 
    }
    \score {
		\new Staff {
			\reperes \silencesMulti <<
				\marks
                \transpose f c' \keepWithTag #'partie { \viola_notes }
                \clef treble
			>>
		}
	}
}