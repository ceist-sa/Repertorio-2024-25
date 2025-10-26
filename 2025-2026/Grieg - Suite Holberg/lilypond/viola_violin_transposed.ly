\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"

\include "1-praelude/viola.ily"
\addQuote "violaII-praelude" {\violaII}

\include "2-sarabande/viola.ily"
\addQuote "violaII-sarabande" {\violaII}

\include "3-gavotte/viola.ily"
\addQuote "violaII-gavotte" {\violaII}

\include "4-air/viola.ily"
\addQuote "violaII-air" {\violaII}

\include "5-rigaudon/viola.ily"
\addQuote "violaII-rigaudon" {\viola_tutti}

\layout {
    \context Staff {
        \compressEmptyMeasures
    }
}

\bookpart {
    
    \header {
        instrument = "Viola (para violinista)"
        filename = "Grieg - Suite Holberg - VIOLA (VIOLIN - TRANSPOSED)"
    }

    \markup{
        \vspace #1
        \justify{Esta partitura contém a parte de viola, mas as notas transpostas para coincidir com o correspondente no violino, ou seja, tudo está escrito uma quinta acima do que verdadeiramente soa. Contém apenas a segunda linha das violas.} 
    }
    \score {
        \header { piece = "I. Praelude" }
        \new Staff {
            \time 4/4
            \clef treble
            \transposition fa
            \quoteDuring "violaII-praelude" {s1 * 72}
            \fine % to fix a bug
        }
    }

    \score {
        \header { piece = "II. Sarabande" }
        \new Staff {
            \time 3/4
            \clef treble
            \transposition fa
            \quoteDuring "violaII-sarabande" {s2. * 32}
            \fine % to fix a bug
        }
    }
    \score {
        \header { piece = "III. Gavotte" }
        \new Staff {
            \time 2/2
            \clef treble
            \transposition fa
            \quoteDuring "violaII-gavotte" {\partial 2 s2 s1 * 8 \partial 2 s2 \partial 2 s2 s1 * 14 \partial 2 \partial 2 s2 \partial 2 s2 s1 * 11 \partial 2 s2 \partial 2 s2 s1 * 4 \partial 2 s2 \partial 2 s2 s1 * 7 \partial 2 s2 \partial 2 s2 s1 * 19 \partial 2 s2}
            \fine % to fix a bug
        }
    }
    \score {
        \header { piece = "IV. Air" }
        \new Staff {
            \time 3/4
            \clef treble
            \transposition fa
            \quoteDuring "violaII-air" {s2. * 56}
            \fine % to fix a bug
        }
    }
    \score {
        \header { piece = "V. Rigaudon" }
        \new Staff {
            \time 2/2
            \clef treble
            \transposition fa
            \quoteDuring "violaII-rigaudon" { \partial 4 s4 s1 * 7 \partial 2. s2. \partial 4 s4 s1 * 31 \partial 2. s2. \partial 4 s4 s1 * 7 \partial 2. s2. \partial 4 s4 s1 * 26 \partial 2. s2. }
            \fine % to fix a bug
        }
    }
}

