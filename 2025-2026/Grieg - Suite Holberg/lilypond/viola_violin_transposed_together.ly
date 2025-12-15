\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"

\include "1-praelude/viola.ily"
violaI_praelude = \violaI
\addQuote "violaII-praelude" {\violaII}

\include "2-sarabande/viola.ily"
violaI_sarabande = \violaI
\addQuote "violaII-sarabande" {\violaII}

\include "3-gavotte/viola.ily"
violaI_gavotte = \violaI
\addQuote "violaII-gavotte" {\violaII}

\include "4-air/viola.ily"
violaI_air = \violaI
\addQuote "violaII-air" {\violaII}

\include "5-rigaudon/viola.ily"
violaI_rigaudon = \viola_solo
\addQuote "violaII-rigaudon" {\viola_tutti}

\layout {
    \context Staff {
        \compressEmptyMeasures
    }
}

\bookpart {
    
    \header {
        instrument = "Viola (para violinista)"
        filename = "Grieg - Suite Holberg - VIOLA (VIOLA & VIOLIN - TRANSPOSED)"
    }

    \markup{
        \vspace #1
        \justify{A segunda linha desta partitura contém a parte da segunda linha de viola, mas com as notas transpostas para coincidir com o correspondente no violino, ou seja, tudo está escrito uma quinta acima do que verdadeiramente soa.} 
    }
    \score {
        \header { piece = "I. Praelude" }
        \new GrandStaff{
            <<
            \new Staff {
                \violaI_praelude
            }
            \new Staff {
                \time 4/4
                \clef treble
                \transposition fa
                \quoteDuring "violaII-praelude" {s1 * 72}
                \fine % to fix a bug
            }
            >>
        }
    }

    \score {
        \header { piece = "II. Sarabande" }
        \new GrandStaff {
            <<
            \new Staff {
                \violaI_sarabande
            }
            \new Staff {
                \time 3/4
                \clef treble
                \transposition fa
                \quoteDuring "violaII-sarabande" {s2. * 32}
                \fine % to fix a bug
            }
            >>
        }
    }
    \score {
        \header { piece = "III. Gavotte" }
        \new GrandStaff {
            <<
            \new Staff {
                \violaI_gavotte
            }
            \new Staff {
                \time 2/2
                \clef treble
                \transposition fa
                \quoteDuring "violaII-gavotte" {\partial 2 s2 s1 * 8 \partial 2 s2 \partial 2 s2 s1 * 14 \partial 2 \partial 2 s2 \partial 2 s2 s1 * 11 \partial 2 s2 \partial 2 s2 s1 * 4 \partial 2 s2 \partial 2 s2 s1 * 7 \partial 2 s2 \partial 2 s2 s1 * 19 \partial 2 s2}
                \fine % to fix a bug
            }
            >>
        }
    }
    \score {
        \header { piece = "IV. Air" }
        \new GrandStaff {
            <<
            \new Staff {
                \violaI_air
            }
            \new Staff {
                \time 3/4
                \clef treble
                \transposition fa
                \quoteDuring "violaII-air" {s2. * 56}
                \fine % to fix a bug
            }
            >>
        }
    }
    \score {
        \header { piece = "V. Rigaudon" }
        \new GrandStaff {
            <<
            \new Staff {
                \violaI_rigaudon
            }
            \new Staff {
                \time 2/2
                \clef treble
                \transposition fa
                \quoteDuring "violaII-rigaudon" { \partial 4 s4 s1 * 7 \partial 2. s2. \partial 4 s4 s1 * 31 \partial 2. s2. \partial 4 s4 s1 * 7 \partial 2. s2. \partial 4 s4 s1 * 26 \partial 2. s2. }
                \fine % to fix a bug
            }
            >>
        }
    }
}

