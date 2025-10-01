\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

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
    mi2.\mp ~ |
    mi ~ |
    mi ~ |
    mi |
    mi ~ |
    mi ~ |
    mi ~ |
    mi |
    mi\p ~ |
    mi ~ |
    mi ~ |
    mi |
    mi ~ |
    mi ~ |
    mi ~ |
    2 ~ 8 r |
    \stopMeasureCount
    % F
    dos2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    dos ~ |
    dos ~ |
    dos2 re4\mf( |
    dos2.) ~ |
    dos2\mf ~ 8 r |
    R2. * 12 |
    % G
    R2. * 8 |
    \startMeasureCount
    mi2.\p ~ |
    mi ~ |
    mi ~ |
    mi |
    mi ~ |
    mi ~ |
    mi ~ |
    mi2 ~ 8 r |
    \stopMeasureCount
    dos2._\markup{\dynamic p \italic "cresc. un poco al"} ~ |
    dos ~ |
    dos ~ |
    dos2 re4\mf->( |
    dos2.) ~ |
    dos ~ |
    dos2\> ~ 8 r\! |
    % H
    R2. * 4 |
    re2.\mf( |
    dos) |
    dos ~ |
    dos2\> ~ 8 r\! |
    R2. * 5 |
    \startMeasureCount
    dos2.\p ~ |
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
    do2.\mf ~ |
    do ~ |
    do ~ |
    do ~ |
    do ~ |
    do\< ~ |
    do ~ |
    do ~ |
    do\f ~ |
    do ~ |
    do ~ |
    do ~ |
    do ~ |
    do\> ~ |
    do ~ |
    do2 ~ 8 r\! |
    \stopMeasureCount
    % M
    \startMeasureCount
    do2.\f ~ |
    do ~ |
    do ~ |
    do ~ |
    do ~ |
    do ~ |
    do ~ |
    do2 ~ 8 r |
    \stopMeasureCount
    r4 r\fermata r |
    mi2.\mp ~ |
    mi ~ |
    mi\dim ~ |
    mi\pp ~ |
    mi4. r8 r4 |
    R2. * 3 |
}


second_clarinet_conductor = \relative do' {
    \new Staff \with {
        instrumentName = "Clarinete em Si♭ II"
        shortInstrumentName = "Cl. II"
    }
    \transpose do re << \notes \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        page-count = #1
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        instrument = "Clarinete em Si♭ II"
        filename = "Sibelius - Valse Triste - CLARINET II"
    }
    \score {
        \layout {
            \context {
                \Staff
                \consists Measure_counter_engraver
            }
        }
        \new Staff \transpose do re <<\notes \marks>>
    }
}