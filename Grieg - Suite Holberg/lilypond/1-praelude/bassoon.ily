\version "2.24.4"

\include "../instrument_names.ily"
\include "globals.ily"
\include "../hairpin.ily"
\include "../../../ranges.ily"

\language "português"

notes = \relative sol,{
    \clef bass 
    \set midiInstrument = #"bassoon"
    % \override NoteHead.color = #bassoon-range
    R1 * 3 |
    r2 r4 sol4->\mp |
    fas2-> mi-> |
    fas2.-> si4-> |
    la2-> la->|
    % A
    re1 |
    R1 * 8 |
    r4 re'-.\f la-. fas-. |
    re-. la-. fas-. re-. |
    %repeat bar
    fas2-> ~ 4 r4 |
    r2 r4 r8 re8-. |
    sol8-. \repeat unfold 7 {sol8-.} |
    \repeat unfold 8 {sol8-.} |
    res2-> ~ 4 r4 |
    r2 r4 r8 si'8-. |
    mi,8-. \repeat unfold 7 {mi8-.} |
    \repeat unfold 8 {mi8-.} |
    mi4-> mi'-> re-> re,->|
    re4-> re'-> do-> do,->|
    do4-> ~8 r8 r4 r8 do8->-. |
    %B
    si8-.-> r8 r4 r2 |
    R1 * 9 |
    r4 la'2 la4 |
    la 4 ~8 r8 r2 |
    %C
    \rthm sol-> \rthm si-> \rthm do-> \rthm re-> |
    \rthm mi-> \rthm fas-> \rthm mi-> \rthm re-> |
    \rthm do-> \rthm do \rthm la->  \rthm la |
    \rthm si-> \rthm si \rthm si \rthm fa' |
    \rthm mi,->  \rthm mi \rthm re-> \rthm re |
    \rthm do-> \rthm do \rthm do \rthm do'-> |
    \rthm si-> \rthm si \rthm la-> \rthm la |
    sol2.-> sol'4-> |
    fas2.-> fas,4-> |
    mi4-> mi'-> re-> re,-> |
    do-> do'-> si-> si,-> |
    la'-> la-> si,-> do-> |
    re1-> |
    % D
    sol1 |
    R1*8
    %E
    r4 sol''4-. re4-. si-. |
    sol4-. re-. si-. sol-. |
    fa1->\startTrillSpan |
    \afterGrace fa1( {mi16 fa)} |
    mi4->\stopTrillSpan mi'-> re-> do-> |
    si4-> fa'-> mi-> re-> |
    do4-> do'-> si-> mi-> |
    re2-> re,-> |
    sol,1 \fermata |
}

dynamics = {
    s1 * 4 |
    s1 \cresc |
    s1 * 2 |
    %A
    s1 \fp 
    s1 * 8 |
    s4 s4 s2 |
    s2 s4 s4\fz |
    %repeat bar 
    s1 * 2 |
    s1 \fp |
    s1 |
    s1 \f |
    s1 |
    s1 \fp |
    s1 |
    s1 \f |
    s1 * 2 |
    %B
    s1 * 10 |
    s4 s4 \f \< s2 |
    s1 \fz |
    %C
    s1 * 3 |
    s2 s4 s4_\markup{\italic sempre \dynamic ff} |
    s1 |
    s1 * 7 |
    s1 \> |
    %D
    s1 \p |
    s1 * 8 |
    s4 s4 \crescmolto s2 |
    s4 \< s4 s2 |
    s1 \! |
    \hairpinWithRightAlignedText \markup{\italic \tiny "molto"}
    % I don't have to understand this, someone did it for me
    %https://lsr.di.unimi.it/LSR/Snippet?id=947
    s1\< |
    s4 s4 \ff s2 |
    s1 * 3 |
    s1 \ffz |
}

bassoon = <<\notes \marks \dynamics >>


bassoon_conductor = {
    \new Staff \with {
        instrumentName = \bassoon_name_long
        shortInstrumentName = \bassoon_name_short
    }
    \bassoon
}

bassoon_praelude = \score {
    \header { piece = "I. Praelude" }
    
        \new Staff
        \bassoon
    
}

% \bassoon_praelude