\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \override NoteHead.color = #oboe-range
    \clef "treble"
    r2 | 
    R1 * 3| 
    r2 sol4 ~  sol4 -. | 
    sol4 ~ -> sol4 -. sol4 ( -> do4 ) -. | 
    do2 ->  sol4 sol4 | 
    sol4 fas4 sol4 mi4 | 
    re2 re2 ~ -> | 
    re4 r4 |
    % H
    r2 | 
}

notesI = \relative la' {
    \override NoteHead.color = #oboe-range
    s2 | 
    s1*8 |
    s2 |
    % H  
    s2 | 
    si4 (  la8 ) r8 r2 | 
    \grace { si16 dos16 } si4 la8 r8 la8 (  fas8 la8 re8 )  | 
    sol,8 ( mi8 sol8 re'8 ) fas,8 ( re8 fas8 re'8 ) | 
    mi,8 ( re8 mi8 re'8 ) re,8 (  dos8 re8 re'8 ) | 
    re,8 ( dos8 re8 re'8 ) re,8 ( dos8 re8  re'8 ) | 
    R1 * 4 |
    r2 si4 ( ->  do4 ) -. | 
    do4 ( -> mi4 ) -. mi4 ( -> fas4 ) -. | 
    fas2 ->  re4 mi4 | 
    do4 re4 re4 mi4 | 
    la,2 si2 ( -> | 
    si4 ) r4 | 
    % I 
    r2 
    R1 * 3 |  
    r2 do2 ->  | 
    \grace { si16 do16 } si8 -> la8 sol4 -. do8 -> re8 mi4 -. | 
    si2 -> mi2 -> | 
    \grace { re16 mi16 } re8 -> si8 re4 -. \grace { do16 re16 } do8 la8
    do4 -. | 
    si4 -. la4 -. r2 | 
    R1 * 3 | 
    r2 si4 -. ->  re4 -. -> | 
    re4 -. ->  do4 -. -> do4 -. -> sol'4 -. ->  | 
    fas2 ->  re4 mi4 | 
    do4 re4 re4 do8 si8 | 
    la4. ( \trill \grace { la16 si16 } si8 ) si2 ~ -> | 
    si4 r4 |
}

notesII = \relative la {
    \override NoteHead.color = #oboe-range
    s2 | 
    s1*8 |
    s2 |
    % H 
    s2 | 
    re4. ->  r8 r2 | 
    re4. -> r8 re2 | 
    sol2 ( fas2 | 
    mi2 re2 ~  | 
    re1 ) | 
    R1 * 4 | 
    r2 sol4 (  la4 ) -. | 
    la4 ( -> do4 ) -. do4 ( -> mi4 ) -. | 
    mi2 ->  re8 do8 si4 | 
    do4 la4 si8 ( do8 ) la8 sol8 | 
    \grace { fas16 sol16 } fas4. sol8 sol2 ~ -> | 
    sol4 r4 | 
    r2 | 
    R1 | 
    R1 |
    R1 |
    r2 mi2 ->  | 
    re8 -> do8 si4 -. mi8 -> fas8 sol4 -. | 
    re2 -> sol2 -> | 
    fas8 -> re8 fas4 -. mi8 -> do8 mi4 -. | 
    sol4 -. fas4 -. r2 | 
    R1 | 
    R1 | 
    R1 | 
    r2 sol4 -. ->  la4 -. -> | 
    la4 -. ->  do4 -. -> do4 -. -> mi4 -. -> | 
    mi2 ->   re8 do8 si4 | 
    do4 la4 si8 ( do8 ) la8 sol8 | 
    fas4. ( \trill \grace { fas16 sol16 } sol8 ) sol2 ~ -> | 
    sol4 r4
}

dynamics = {
  
}

oboe = << \notes \partCombine \notesI \notesII \marks \dynamics>>
oboeI = << \notes \notesI \marks \dynamics >>
oboeII = << \notes \notesII \marks \dynamics >>

staves = {
    \oneStaff
}

oboe_staves = {
    <<
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \oboeI \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \oboeII \staves >>
        \new Staff \with {
            printPartCombineTexts = ##f
            \consists Merge_rests_engraver
            \override VerticalAxisGroup.remove-layer = 2
        }
        << \oboe \staves >>
    >>
}


oboe_conductor = {
  \new GrandStaff \with {
    \consists "Keep_alive_together_engraver"
    printPartCombineTexts = ##f
    instrumentName = \oboe_name_long
    shortInstrumentName = \oboe_name_short
    midiInstrument = #"oboe"
  }
  \oboe_staves
}
