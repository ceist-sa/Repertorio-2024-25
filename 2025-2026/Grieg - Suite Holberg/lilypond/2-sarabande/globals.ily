\version "2.24.4"

\include "../globals.ily"
\include "../instrument_names.ily"

\language "português"

marks = {
    \compressEmptyMeasures
    \tempo "Andante."
    \time 3/4
    \key sol \major
    \repeat volta 2 {
    s2. * 8 |
    }
    %repeat bar
    \repeat volta 2 {
    s2.^\markup{\italic "poco mosso"}
    s2. * 7 |
    %F
    \mark #6
    s2. * 6 |
    s2.^\markup{\italic "ritenuto poco a poco"} |
    s2. |
    %G
    \mark \default
    \after 16 \tempo "Tempo I" % this was coliding with the rehearsal mark
    s2. |
    s2. * 7 |
    %repeat bar
    }
}