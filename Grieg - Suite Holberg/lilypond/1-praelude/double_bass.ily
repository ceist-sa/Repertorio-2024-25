\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

notes = \relative sol,{
    \set Staff.midiInstrument = #"contrabass"
    \transposition do
    \clef bass 
    sol1\ffp ~ |
    sol ~ |
    sol ~ |
    sol2. sol'4-> |
    fas2->\cresc mi-> |
    fas2.-> si4-> |
    la2-> la,->|
    % A
    re1 \fp
    R1 |
    r2 r4 la'4\pizz |
    re, r4 r2 |
    r2 r4 la'4 |
    re,\piup r4 re r4 |
    r2 re4 r4 |
    r4 re4-> r2 |
    R1 |
    r4 re'4-.\arco\f la-. fas-. |
    re-. la-. fas-. re'-.\fz |
    %repeat bar
    fas,2-> ~4 r4 |
    R1 |
    sol1\fp ~ |
    sol4 r4 r2 |
    res'2-> ~ 4 r4 |
    R1 |
    mi,1\fp \~ |
    mi4 r4 r2 |
    mi'4-> mi'-> re-> re,->|
    re4-> re'-> do-> do,->|
    do4-> ~8 r8 r4 r8 do8->-. |
    %B
    si8-.-> r8 r4 r2 |
    R1*9
    r2 r4\f la4 \< | %solved with a hack
    re4\fz ~ 8 r8 r2 |
    %C
    \rthm sol,->\f  \rthm sol \rthm sol \rthm sol|
    \rthm sol-> \rthm sol \rthm sol \rthm sol |
    \rthm sol-> \rthm sol \rthm sol-> \rthm sol |
    \rthm sol-> \rthm sol \rthm sol \rthm fa'->_\markup{\italic sempre \dynamic ff} |
    \rthm mi 8-> \rthm mi \rthm re-> \rthm re |
    \rthm do-> \rthm do \rthm do \rthm do'-> |
    \rthm si-> \rthm si \rthm la-> \rthm la |
    sol2.-> sol'4 |
    fas2.-> fas,4 |
    mi4-> mi'-> re-> re,-> |
    do-> do'-> si-> si,-> |
    la-> la'-> si,-> do-> |
    re1->\> |
    % D
    sol,1 \p |
    R1 |
    r2 r4 re'4\pizz |
    sol,4 r4 r2 |
    r2 r4 re'4 |
    sol,4\piup r4 sol4 r4 |
    r2 sol4 r4 |
    r4 sol4-> r2 |
    R1 |
    %E
    r4 sol''4\f\arco re4-. si-. |
    sol4-.\< re-. si-. sol-.\! |
    fa4-> r4 r2 |
    R1 |
    mi4-> mi'->\ff re-> do-> |
    si4-> fa'-> mi-> re-> |
    do4-> do'-> si-> mi-> |
    re2-> re,-> |
    sol,1\fermata\ffz |
}

double_bass = << \notes \marks >>

double_bass_conductor = {
  \new Staff \with {
    instrumentName = \double_bass_name_long
    shortInstrumentName = \double_bass_name_short
  }
  \double_bass
}

double_bass_praelude = \score {
  \header { piece = "I. Praelude" }
  \compressMMRests{
    \new Staff
    \double_bass
  }
}

% \double_bass_praelude