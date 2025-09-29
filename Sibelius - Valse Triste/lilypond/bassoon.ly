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
    dos2.\mp ~ |
    dos( |
    re) |
    re( |
    dos) ~ |
    dos( |
    re) |
    re( |
    dos)\p ~ |
    dos( |
    re) |
    re( |
    dos) ~ |
    dos |
    re ~ |
    2 ~ 8 r |
    \stopMeasureCount
    % F
    la2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    la |
    si( |
    la2) si4\mf( |
    la2.) |
    si2.\mf ~ |
    si_\markup{\italic "dim. molto"} ~ |
    si ~ |
    si ~ |
    si2\pp ~ 8 r |
    R2. * 8 |
    % G
    R2. * 8 |
    \startMeasureCount
    dos2.\p ~ |
    dos( |
    re) |
    re( |
    dos) ~ |
    dos |
    re ~ |
    re2 ~ 8 r |
    \stopMeasureCount
    la2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    la |
    si( |
    la2) si4\mf->( |
    la2.) |
    si( |
    la2)\> ~ 8 r\! |
    % H
    R2. * 4 |
    sol2.\mf( |
    la) |
    si( |
    la2)\> ~ 8 r\! |
    R2. * 5 |
    \startMeasureCount
    dos,2.\p ~ |
    dos ~ |
    dos_\markup{\italic "poco a poco cresc. al"} ~ |
    dos ~ |
    dos ~ |
    dos ~ |
    dos ~ |
    dos\f ~ |
    dos ~ |
    dos\dim ~ |
    dos2\p ~ 8 r |
    \stopMeasureCount
    % I / J
    R2. |
    \startMeasureCount
    mi2.\p ~ |
    mi_\markup{\italic "poco cresc."} ~ |
    mi ~ |
    mi\f ~ |
    mi ~ |
    mi\dim ~ |
    mi2\p ~ 8 r |
    \stopMeasureCount
    % K
    R2. |
    r4 r sol\f-> |
    r r fa-> |
    r r mi-> ~ |
    \startMeasureCount
    mi2.\< ~ |
    mi ~ |
    mi ~ |
    mi2 ~ 8 r\! |
    \stopMeasureCount
    % L
    \startMeasureCount
    la2.\mf ~ |
    la ~ |
    la ~ |
    la ~ |
    la ~ |
    la\< ~ |
    la ~ |
    la ~ |
    la\f ~ |
    la ~ |
    la ~ |
    la ~ |
    la ~ |
    la\> ~ |
    la ~ |
    la2 ~ 8 r\! |
    \stopMeasureCount
    % M
    \startMeasureCount
    la2.\f ~ |
    la ~ |
    la ~ |
    la ~ |
    la ~ |
    la ~ |
    la ~ |
    la2 ~ 8 r |
    \stopMeasureCount
    r4 r\fermata r |
    mi2.\mp ~ |
    mi ~ |
    mi\dim ~ |
    mi\pp ~ |
    mi4. r8 r4 |
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