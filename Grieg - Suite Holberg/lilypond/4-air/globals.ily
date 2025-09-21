\version "2.24.4"

\include "../globals.ily"
\include "../instrument_names.ily"

\language "português"

marks = {
    \tempo "Andante religioso."
    \time 3/4
    \key sol \minor
    \repeat volta 2 {
    s2. * 8 |
    % N
    \mark #13
    s2. * 4 |
    s2 s4_\markup{\italic "dim.  e  ritard."} |
    s2. |
    s8 s8_\markup{\italic "rit. molto"} s2 |
    }
    % repeat bar, O
    \mark \default
    \tempo "a tempo"
    s2. * 12 |
    s4 s2_\markup{\italic "poco rit"} |
    % P
    \mark \default
    \tempo "a tempo"
    s2. * 10 |
    s2._\markup{\italic "poco rit"} |
    % Q
    \mark \default
    \after 16 \tempo "a tempo"
    s2. * 8 |
    % R
    \mark \default
    s2. * 6 |
    s2 s4_\markup{\italic "dim.  e  ritard."} |
    s2. |
    s8 s8_\markup{\italic "molto rit."} s2 \bar "|." |
}