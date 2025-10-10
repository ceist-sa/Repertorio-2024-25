\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

notes = \relative do' {
    \set Staff.midiInstrument = #"bassoon"
    \override NoteHead.color = #bassoon-range
    \clef bass
    R2. * 8 |
    % A
    R2. * 16 |
    % B
    R2. * 16 |
    % C
    R2. * 16 |
    % D
    R2. * 16 |
    % E
    \startMeasureCount
    si2.\mp ~ |
    si( |
    do) |
    do( |
    si) ~ |
    si( |
    do) |
    do( |
    si)\p ~ |
    si( |
    do) |
    do( |
    si) ~ |
    si |
    do ~ |
    2 ~ 8 r |
    \stopMeasureCount
    % F
    sol2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    sol |
    la( |
    sol2) la4\mf( |
    sol2.) |
    la2.\mf ~ |
    la_\markup{\italic "dim. molto"} ~ |
    la ~ |
    la ~ |
    la2\pp ~ 8 r |
    R2. * 8 |
    % G
    R2. * 8 |
    \startMeasureCount
    si2.\p ~ |
    si( |
    do) |
    do( |
    si) ~ |
    si |
    do ~ |
    do2 ~ 8 r |
    \stopMeasureCount
    sol2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    sol |
    la( |
    sol2) la4\mf->( |
    sol2.) |
    la( |
    sol2)\> ~ 8 r\! |
    % H
    R2. * 4 |
    fa2.\mf( |
    sol) |
    la( |
    sol2)\> ~ 8 r\! |
    R2. * 5 |
    \startMeasureCount
    si,2.\p ~ |
    si ~ |
    si_\markup{\italic "poco a poco cresc. al"} ~ |
    si ~ |
    si ~ |
    si ~ |
    si ~ |
    si\f ~ |
    si ~ |
    si\dim ~ |
    si2\p ~ 8 r |
    \stopMeasureCount
    % I / J
    R2. |
    \startMeasureCount
    re2.\p ~ |
    re_\markup{\italic "poco cresc."} ~ |
    re ~ |
    re\f ~ |
    re ~ |
    re\dim ~ |
    re2\p ~ 8 r |
    \stopMeasureCount
    % K
    R2. |
    r4 r fa\f-> |
    r r mib-> |
    r r re-> ~ |
    \startMeasureCount
    re2.\< ~ |
    re ~ |
    re ~ |
    re2 ~ 8 r\! |
    \stopMeasureCount
    % L
    \startMeasureCount
    sol2.\mf ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol\< ~ |
    sol ~ |
    sol ~ |
    sol\f ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol\> ~ |
    sol ~ |
    sol2 ~ 8 r\! |
    \stopMeasureCount
    % M
    \startMeasureCount
    sol2.\f ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol ~ |
    sol2 ~ 8 r |
    \stopMeasureCount
    r4 r\fermata r |
    re2.\mp ~ |
    re ~ |
    re\dim ~ |
    re\pp ~ |
    re4. r8 r4 |
    R2. * 3 |
}

bassoon_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Fagote"
        shortInstrumentName = "Fg."
    }
    << \partCombine \notes \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        page-count = #1
    }
    \header {
        instrument = "Fagote"
        filename = "Sibelius - Valse Triste - FAGOTE"
    }
    \score {
        \layout {
            \context {
                \Staff
                \consists Measure_counter_engraver
            }
        }
        \new Staff <<\notes \marks>>
    }
}