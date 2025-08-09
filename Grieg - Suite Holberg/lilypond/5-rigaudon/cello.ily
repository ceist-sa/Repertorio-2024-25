\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative re' {
    \clef bass 
    r4 |
    R1 * 7 |
    re4-.->\f re,-. re-. |
    % S
    r4 |
    R1 * 6 |
    r4 re\pizz\p r re |
    r4 re\cresc r re |
    r4 re r re |
    r4 re r re |
    % T
    re4->\f r r la |
    re4-> r r la |
    re4-> fas, sol la |
    re4-> r r re\p |
    r4 re r re |
    r4 re r re |
    r4 re r re |
    r4 re re-> r |
    r4 re'\piup r re |
    r4 re r re |
    r4 re r re |
    % U
    r4 re re r |
    r4 re,\pp re r |
    r4 re re r |
    r2 re4 la |
    re,4 la' re r4 |
    R1 |
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
    sol4\pizz\p r4 r2 |
    sol4 r4 r2 |
    r4 fa r mib |
    r4 re r2 |
    do'2 (la) |
    sib2 (sol) |
    fa2 (mib) |
    re2 sol->( |
    fas2) sib->\cresc |
    do2-> dos-> |
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


cello = << \notes \marks >>


cello_conductor = {
  \new Staff \with {
    midiInstrument = #"cello"
    instrumentName = \cello_name_long
    shortInstrumentName = \cello_name_short
  }
  \cello
}

cello_part = \compressMMRests{
  \new Staff \with {
    midiInstrument = #"cello"
  }
  \cello
}

\score {
  \cello_part
  \layout {}
  \midi {\tempo 2 = 120}
}