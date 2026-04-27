\version "2.24.4"
\language "portugues"
\include "../../../../styles/style_part.ily"
\include "../../../../styles/ranges.ily"
\include "../globals.ily"
\include "../instrument_names.ily"

violin_II_ten_aria_con_coro = \score {
    \header { piece = "No. 10 Aria con coro" }
    \new Staff
    \new Voice = "violin_II" \relative la' {
        \compressEmptyMeasures
        \clef "treble" \time 3/4 \key fa \major | % 1
        fa2 ( -\p mi4 | % 2
        fa2 sol4 ) | % 3
        do,4. ( re8 ) mi4 | % 4
        fa2 r4 | % 5
        fa2 r4 | % 6
        sol2 r4 | % 7
        la2 ( sib8 sol8 ) | % 8
        fa4 ( mi4 ) mi4 | % 9
        mi2. ~ | \barNumberCheck #10
        mi2. ~ | % 11
        mi2. | % 12
        fa4 ( -. fa4 -. fa4 ) -. | % 13
        fa2. | % 14
        fa4 ( -. fa4 -. fa4 ) -. | % 15
        fa2. ~ | % 16
        fa4 mi4 ( -. mi4 ) -. | % 17
        sol2. | % 18
        fa2. | % 19
        mi2 ( re4 ) | \barNumberCheck #20
        re4 ( mi4 ) r4 | % 21
        mi4 ( -. mi4 -. mi4 ) -. | % 22
        mi2 fa8 ( re8 ) | % 23
        do2 ( si4 ) | % 24
        do4 mi4 ( -. mi4 ) -. | % 25
        mi2. ~ | % 26
        mi4 ( fa4 ) fa4 | % 27
        re2. | % 28
        do4 sol'4 ( -. sol4 ) -. | % 29
        sol4 ( la4 sib4 ) | \barNumberCheck #30
        do2 ( la8 fas8 ) | % 31
        re2 ( do4 ) | % 32
        do4 ( sib4 ) r4 | % 33
        mi2. | % 34
        r4 fa4 ( do4 ) | % 35
        r4 lab4 ( fa4 | % 36
        si4 do4 ) do4 | % 37
        do4 ( fa4 la4 ) | % 38
        la8 ( sol8 ) sol2 | % 39
        do,4 ( sol'4 sib4 ) | \barNumberCheck #40
        sib4 ( la4 ) r4 | % 41
        do2. ( | % 42
        sib2. ) | % 43
        la2 ( sol4 ) | % 44
        sol4 ( la4 ) r4 | % 45
        la4 ( -. la4 -. la4 ) -. | % 46
        la2 ( sib8 sol8 ) | % 47
        fa2 ( mi4 ) | % 48
        fa4 ( -. fa4 -. fa4 ) -. | % 49
        fa2. ~ | \barNumberCheck #50
        fa2 ( sol4 ) | % 51
        fa2 ( mi4 ) | % 52
        fa4 ( -. fa4 -. fa4 ) -. | % 53
        fa2 ( sol4 ) | % 54
        do,4. ( re8 ) mi4 | % 55
        fa2 r4 \fermata \bar "|." | % 56
    }
}

\paper {
    bookTitleMarkup = ""
}
\bookpart {
    \header {
        instrument = \second_violin_name_long
    }
    \violin_II_ten_aria_con_coro
}