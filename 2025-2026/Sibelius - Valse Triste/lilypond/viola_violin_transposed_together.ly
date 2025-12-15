\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "music/viola.ily"
\include "globals.ily"

\bookpart {
    \header {
        instrument = "Viola"
        filename = "Sibelius - Valse Triste - VIOLA (VIOLA & VIOLIN - TRANSPOSED)"
    }
    \markup{
        \vspace #1
        \justify{A segunda linha desta partitura contém a parte de viola, mas com as notas transpostas para coincidir com o correspondente no violino, ou seja, tudo está escrito uma quinta acima do que verdadeiramente soa.} 
    }
    \score {
        \layout {
            \context {
                \Staff
                \consists Measure_counter_engraver
            }
        }
        \new GrandStaff {
            <<
            \new Staff {
                <<\marks \viola>>
            }
            \new Staff {
                \transpose fa do' <<\marks \viola \clef treble>>
            }
            >>
        }
    }
}