\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "music/viola.ily"
\include "globals.ily"

\bookpart {
    \header {
        instrument = "Viola (para violinista)"
        filename = "Sibelius - Valse Triste - VIOLA (VIOLIN - MEZZOSOPRANO CLEF)"
    }
    \markup{
        \vspace #1
        \justify{Esta partitura contém a parte de viola, mas as notas estão escritas em clave de dó na segunda linha, ou seja, igual a clave de sol, mas uma quinta mais baixo. A partitura não está transposta. Contém apenas a segunda linha das violas.} 
    }
    \score {
        \layout {
            \context {
                \Staff
                \consists Measure_counter_engraver
            }
        }
        \new Staff {
            <<\marks \viola \clef mezzosoprano>>
        }
    }
}