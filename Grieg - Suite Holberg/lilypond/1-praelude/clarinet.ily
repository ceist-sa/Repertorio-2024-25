\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la {
    \set Staff.midiInstrument = #"clarinet"
    \clef "treble"
    s1 * 7 |
    s4 s4 s4 la'4 \pp \solo ( |
    fas'1-> |
    mi) |
    mi->( |
    re) |
    re2->\piup ( dos) |
    dos->( si) |
    si1( |
    la2 sol) |
    fas4-. re'4 -.\f \crescmolto \tutti la4 -. fas4 -. | % 18
    re4 -.\< la4 -. fas4 -. re4\fz  | % 19
    R1 * 2 |
    sol16\solo\fp ( fas16 sol16 si16 sol16 fas16 sol16 si16 sol16 fas16 sol16 si16  sol16 fas16 -\! sol16 do16 ) | % 22
    la16 ( sol16 la16 re16 si16 la16 si16 mi16 do16 si16 do16 fas16 re16 do16 re16 sol16 ) | % 23
    s1 | % 24
    R1 | % 25
    mi,16\solo\fp ( mib16 mi16 sol16 mi16 mib16 mi16 sol16 mi16 mib16 mi16 sol16 mi16\< mib16 mi16 la16 ) | % 26
    fas16 ( mi16 fas16 si16 sol16 fas16 sol16 reb'16 la16 sol16 la16 mib'16 si16 la16 si16 mi16 ) | % 27
    s1 * 2 |
    s4 s8 r8 r4 r8 las,8 -. -> |
    fas8 -. -> r8 r4 r2 | % 31
    R1*3 |
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
    si4\p r4 r4 re4\solo\pp ( |
    si'1-> |
    la1 ) |
    la1-> ( |
    sol ) |
    sol2-> (fas) |
    fas2-> (mi) |
    mi1 (|
    re2 do)
    si4-.\f \rthm sol\tutti \rthm sol \rthm sol |
    \rthm si\< \rthm re \rthm sol si4-.\fz |
    r4 \rthm sol, \rthm sol \rthm sol |
    \rthm si\< \rthm re \rthm sol si4-.\fz |
    s1 * 5 |
}

notesI = \relative la {
    R1*3 |
    r2 r4 dos4\mp -> | % 5
    re2\cresc -> mi2 -> | % 6
    re2. -> re4 ->  | % 7
    mi2 -> mi2 -> | % 8
    fas4\f r4 r4 s4 | % 9
    s1 * 10 |
    fas,2-> ~ 4 r4 |
    s1 * 3 |
    si2->\tutti ~ 4 r4 |
    s1 * 3 |
    fa'2\f -> r4 fa4 -> | % 28
    mi2 -> r4 mi4 -> | % 29
    do4 ~ -> do8 s8 s4 s4 |
    s1 * 4 |
    r2 r4 si'4\piup |
    do2 (la) |
    si (sol) |
    la (sol) |
    fas4\pp r4 r2 |
    s1 * 29 |
    r4 sol4->\ff la-> fas-> |
    sol-> si-> do-> fa,-> |
    sol-> fas'!-> sol-> sol-> |
    re2-> do-> |
    si1\fermata\ffz |
}

notesII = \relative la {
    R1*3 |
    r2 r4 sol4\mp -> | % 5
    fas2\cresc -> mi2 -> | % 6
    fas2. -> si4 ->  | % 7
    la2 -> la2 -> | % 8
    re,4\f r4 r4 s4 | % 9
    s1 * 10 |
    re2-> ~ 4 r4 |
    s1 * 3 |
    res2->\tutti ~ 4 r4 |
    s1 * 3 |
    do'2\f -> r4 re4 -> | % 28
    si2 -> r4 do4 -> | % 29
    las4 ~ -> las4 s4 s4 |
    s1 * 4 |
    r2 r4 fas'4\piup |
    sol2 (mi) |
    fas (re) |
    mi (dos) |
    res4 r4 r2 |
    s1 * 29 |
    r4 sol,4->\ff la-> fas-> |
    sol-> si-> do-> fa,-> |
    sol-> fas'!-> sol-> sol-> |
    re2-> do-> |
    si1\fermata\ffz |
}

clarinet = \transpose do re { << \notes \marks>> }
clarinetI = \transpose do re { << \notes \notesI \marks>> }
clarinetII = \transpose do re { << \notes \notesII \marks>> }

clarinet_conductor = {
  \new Staff \with {
    instrumentName = \clarinet_name_long
    shortInstrumentName = \clarinet_name_short
  }
  \clarinet
}

clarinetI_praelude = \score {
    \header { piece = "I. Praelude" }
    \compressMMRests {
        \new Staff
        \clarinetI
    }
}

clarinetII_praelude = \score {
    \header { piece = "I. Praelude" }
    \compressMMRests {
        \new Staff
        \clarinetII
    }
}