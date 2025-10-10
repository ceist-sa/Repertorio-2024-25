\version "2.24.4"

\include "../../../../styles/ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la {
    \set Staff.midiInstrument = #"clarinet"
    \clef "treble"
    s1 * 7 |
    s1 * 9 |
    s4 re'4 -.\f la4 -. fas4 -. | % 18
    re4 -. la4 -. fas4 -. re4\fz  | % 19
    % repeat bar
    re2-> ~ 4 r4 |
    R1 |
    s1 * 2 |
    res2-> ~ 4 r4 |
    R1 | % 25
    s1 * 2 |
    s1 * 2 |
    s1 * 5 |
    s1 * 5 |
    R1 |
    r4 do'2\f\< do4 | % 41
    do4\fz ~ do8 r8 r2 | % 42
    r4 \rthm sol->\ff \rthm la-> \rthm si-> | % 43
    \rthm do-> \rthm re-> \rthm do-> \rthm si-> | % 44
    \rthm la-> \rthm la \rthm la-> \rthm la | % 45
    \rthm sol-> \rthm sol \rthm sol \rthm si_\markup{\italic sempre \dynamic ff} | % 46
    \rthm sol-> \rthm sol \rthm re'-> \rthm re | % 47
    \rthm do-> \rthm do \rthm do \rthm la-> | % 48
    \rthm si-> \rthm si \rthm la-> \rthm la | % 49
    sol'2. -> sol4 -> |
    fas2. -> fas4 -> | % 51
    mi4 -> mi4 -> re4 -> re4 -> | % 52
    do4 -> do4 -> si4 -> si4 -> | % 53
    la4 -> la4 -> si4 -> do4 -> | % 54
    re1\> -> | % 55
    % D
    si4\p s2. |
    s1 * 8 |
    s4 \rthm sol \rthm sol \rthm sol |
    \rthm si\< \rthm re \rthm sol si4-.\fz |
    r4 \rthm sol, \rthm sol \rthm sol |
    \rthm si\< \rthm re \rthm sol si4-.\fz |
    s1 * 5 |
}

notesI = \relative la {
    R1*3 |
    r2 r4 dos4 -> | % 5
    re2 -> mi2 -> | % 6
    re2. -> re4 ->  | % 7
    mi2 -> mi2 -> | % 8
    fas4 r4 r4 la4 \pp ( |
    fas'1-> |
    mi) |
    mi->( |
    re) |
    re2->\piup ( dos) |
    dos->( si) |
    si1( |
    la2\crescmolto sol) |
    fas4-. s2. |
    s1 |
    % repeat bar
    s1 * 2 |
    sol16\fp ( fas16 sol16 si16 sol16 fas16 sol16 si16 sol16 fas16 sol16 si16  sol16 fas16 -\! sol16 do16 ) | % 22
    la16 ( sol16 la16 re16 si16 la16 si16 mi16 do16 si16 do16 fas16 re16 do16 re16 sol16 ) | % 23
    s1 * 2 |
    mi,16\fp ( mib16 mi16 sol16 mi16 mib16 mi16 sol16 mi16 mib16 mi16 sol16 mi16\< mib16 mi16 la16 ) | % 26
    fas16 ( mi16 fas16 si16 sol16 fas16 sol16 reb'16 la16 sol16 la16 mib'16 si16 la16 si16 mi16\! ) | % 27
    fa,2\f -> r4 fa4 -> | % 28
    mi2 -> r4 mi4 -> | % 29
    do4 ~ -> do8 r8 r4 r8 las8 -. -> |
    fas8 -. -> r8 r4 r2 | % 31
    R1 * 3 |
    r2 r4 si'4 |
    do2 (la) |
    si (sol) |
    la (sol) |
    fas4\pp r4 r2 |
    s1 * 3 |
    % C
    s1 * 13 |
    % D
    s4 r4 r4 re4\pp ( |
    si'1-> |
    la1 ) |
    la1-> ( |
    sol ) |
    sol2-> (fas) |
    fas2-> (mi) |
    mi1 (|
    re2 do)
    % E 
    si4-.\f s2. |
    s1 * 3 |
    r4 sol'4->\ff la-> fas-> |
    sol-> si-> do-> fa,-> |
    sol-> fas'!-> sol-> sol-> |
    re2-> do-> |
    si1\fermata |
}

notesII = \relative la {
    R1*3 |
    r2 r4 sol4 -> | % 5
    fas2 -> mi2 -> | % 6
    fas2. -> si4 ->  | % 7
    la2 -> la2 -> | % 8
    re,4 r4 r2 | % 9
    R1 * 8 |
    r4 s2. |
    s1 |
    % repeat bar
    s1 * 2 |
    R1 * 2 |
    s1 * 2 |
    R1 * 2 |
    do'2\f -> r4 re4 -> | % 28
    si2 -> r4 do4 -> | % 29
    las4 ~ -> las8 r8 r4 r8 las8 -. -> |
    fas8 -. -> r8 r4 r2 | % 31
    R1 * 3 |
    r2 r4 fas'4 |
    sol2 (mi) |
    fas (re) |
    mi (dos) |
    res4\pp r4 r2 |
    s1 * 3 |
    % C
    s1 * 13 |
    % D
    s4 r4 r2 |
    R1 * 8 |
    % E
    r4 s2. |
    s1 * 3 |
    r4 sol,4->\ff la-> fas-> |
    sol-> si-> do-> fa,-> |
    sol-> fas'!-> sol-> sol-> |
    re2-> do-> |
    si1\fermata |
}

dynamics = { % this is very dub, but some places require it
    s1 * 3 |
    s2 s4 s4\mp |
    s1\cresc |
    s1 * 2 |
    % A
    s4\f s2. |
    s1 * 10 |
    % repeat bar
    s1 * 11 |
    % B
    s1 * 4 |
    s2. s4\piup |
    s1 * 7 |
    % C
    s1 * 13 |
    % D
    s1 * 9 |
    % E
    s1 * 8 |
    s1 \ffz |
}

clarinetI = \transpose do re { << \notes \notesI \marks \dynamics >> }
clarinetII = \transpose do re { << \notes \notesII \marks \dynamics >> }
clarinet = \transpose do re { << \partCombine << \notes \notesI >> << \notes \notesII >> \marks \dynamics >>}

clarinet_conductor = {
  \new Staff \with {
    instrumentName = \clarinet_name_long
    shortInstrumentName = \clarinet_name_short
    soloText = #"Cl. I"
    soloIIText = #"Cl. II"
  }
  \clarinet
}

clarinetI_praelude = \score {
    \header { piece = "I. Praelude" }
    
        \new Staff
        \clarinetI
    
}

clarinetII_praelude = \score {
    \header { piece = "I. Praelude" }
    
        \new Staff
        \clarinetII
    
}