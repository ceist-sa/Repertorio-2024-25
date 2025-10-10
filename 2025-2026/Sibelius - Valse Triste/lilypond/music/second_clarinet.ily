\version "2.24.4"
\language "portugues"
\include "../../../../styles/ranges.ily"
\include "../globals.ily"

notes = \relative do' {
    \set Staff.midiInstrument = #"clarinet"
    \clef treble
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
    re2.\mp ~ |
    re ~ |
    re ~ |
    re |
    re ~ |
    re ~ |
    re ~ |
    re |
    re\p ~ |
    re ~ |
    re ~ |
    re |
    re ~ |
    re ~ |
    re ~ |
    2 ~ 8 r |
    \stopMeasureCount
    % F
    si2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    si ~ |
    si ~ |
    si2 do4\mf( |
    si2.) ~ |
    si2\mf ~ 8 r |
    R2. * 12 |
    % G
    R2. * 8 |
    \startMeasureCount
    re2.\p ~ |
    re ~ |
    re ~ |
    re |
    re ~ |
    re ~ |
    re ~ |
    re2 ~ 8 r |
    \stopMeasureCount
    si2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    si ~ |
    si ~ |
    si2 do4->\mf( |
    si2.) ~ |
    si ~ |
    si2\> ~ 8 r\! |
    % H
    R2. * 4 |
    do2.\mf( |
    si) |
    si ~ |
    si2\> ~ 8 r\! |
    R2. * 5 |
    \startMeasureCount
    si2.\p ~ |
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
    sib2.\mf ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib\< ~ |
    sib ~ |
    sib ~ |
    sib\f ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib\> ~ |
    sib ~ |
    sib2 ~ 8 r\! |
    \stopMeasureCount
    % M
    \startMeasureCount
    sib2.\f ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib ~ |
    sib2 ~ 8 r |
    \stopMeasureCount
    r4 r\fermata r |
    re2.\mp ~ |
    re ~ |
    re\dim ~ |
    re\pp ~ |
    re4. r8 r4 |
    R2. * 3 |
}


second_clarinet_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Clarinete em Si♭ II"
        shortInstrumentName = "Cl. II"
    }
    \transpose sib do' << \notes \marks >>
}

second_clarinet_part = \score {
    \layout {
        \context {
            \Staff
            \consists Measure_counter_engraver
        }
    }
    \new Staff \transpose sib do' <<\notes \marks>>
}