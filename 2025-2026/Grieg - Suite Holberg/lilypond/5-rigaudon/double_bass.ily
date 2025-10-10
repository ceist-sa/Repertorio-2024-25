\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative re' {
    \set Staff.midiInstrument = #"contrabass"
    \clef bass
    r4 |
    R1 * 7 |
    re4-.->\f re,-. re-. |
    % S
    r4 |
    R1 * 10 |
    % T
    r4 re\pizz\f re-> r |
    r4 re re-> r |
    R1 |
    r4 re re-> r |
    R1 * 7 |
    % U
    R1 * 6 |
    r2 r4 re\arco \ff |
    sol4-> (fas8--) mi re do si la |
    sol8 la si2-> do4 |
    la4 si8 do re2->\< \fermata |
    sol4-.\!\ffz sol,-. sol-. |
    % Poco meno mosso
    r4 |
    R1 * 7 |
    r2 r 4 |
    r4 |
    R1 * 3 |
    r2 r4 sib'4\f |
    sol'2-> fa-> |
    mib2.-> do4 |
    re mib fa fa, |
    sib2 r2 |
    %V
    R1 * 4 |
    r4 do\pizz r la |
    r4 sib r sol |
    r4 fa r mib |
    r4 re r sol |
    r4 fas\cresc r sib |
    r4 do r dos\arco |
    re4 (do!) sib\ff sol |
    mib'2-> re-> |
    do2.-> la4 |
    sib4 do re re, |
    sol2 sib,4\p^\markup{\italic "più traquillo"} (sol) |
    mib'2-> re |
    do2. la4 |
    sib4 do re re, |
    sol2 \pp \fermata r4 |
}

double_bass = << \notes \marks >>

double_bass_conductor = {
  \new Staff \with {
    instrumentName = \double_bass_name_long
    shortInstrumentName = \double_bass_name_short
  }
  \double_bass
}

double_bass_rigaudon = \score {
  \header { piece = "V. Rigaudon" }
  
    \new Staff
    \double_bass
  
}

% \double_bass_rigaudon