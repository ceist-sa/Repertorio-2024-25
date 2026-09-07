\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"

notes = \relative {
    \tempo "Lento"
    \time 4/4
    \key do \major
    \clef treble
    \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
    \compressEmptyMeasures
    R1 * 8
    \mark #35
    R1 * 19
    \mark \default
    R1 * 14
    \mark \default
    R1 * 14
    R1 \fermata
    \bar "||"
    \mark \default
    \tempo "Andante maestoso" 
    \key re \major
    <re fas>1 \f |
    <re si'> |
    <re la'> |
    <sol, la'> |
    <fas' sol>\mf |
    <si, fas'> |
    <fas' sol> |
    <si, fas'> |
    \mark \default
    <re fas> \f |
    <re si'> |
    <re la'> |
    <sol, la'> |
    R1 * 2 |
    <la mi'>\mf |
    <la sib> |
    mi' |
    mi |
    mi |
    mi |
    R1 * 6 |
    <re la'>\ff ~ |
    1 ~|
    4 r4 r2 |
    \fine
}

trombone_part = \score {
    \header {
        piece = "Epílogo"
    }
    \layout {
        \context {
            \Staff
            \consists Measure_counter_engraver
        }
    }
    \new Staff \transpose do re \notes
}


\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        page-count = #1
    }
    \header {
        title = "Vathek"
        composer = "Luís de Freitas Branco"
        instrument = "Trombone"
        filename = "TROMBONE - Freitas Branco - Vathek"
    }
    \trombone_part
}