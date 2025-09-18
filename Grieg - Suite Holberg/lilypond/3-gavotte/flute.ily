\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \override NoteHead.color = #flute-range
    \clef "treble" 
    r2 | % 2
    R1*3 | % 5
    r2 sol4 ( ->  la4 ) -. | % 6
    la4 ( -> do4 ) -. do4-> mi4 -. | % 7
    mi2 -> re8 do8 si4 | % 8
    do4 la4 si8 ( do8 ) la8 sol8 | % 9
    \grace { fas16 (sol16 } fas4. sol8) sol2 ~ -> |
    sol4 r4 |
    % H
    r2 |
    R1 * 9  |
    s1 * 5 |
    s2 |
    % I
    s2 |
    s1 * 11 |
    % K 
    s1 * 5 |
    s2 |
    % MUSETTE
    r2 | 
    R1*3|
    r2 mi'8( re mi sol |
    fa mi re fa) mi( re do mi |
    re si sol4) do'2-> |
    sol-> re-> |
    do4->( do8) r8 |
    % L
    r2 |
    R1*5 |
    s1 * 6 |
    % M
    s1 | 
    R1*3|
    r2 mi8( re mi sol |
    fa mi re fa) mi( re do mi |
    re si sol4) do'2-> |
    sol-> re-> |
    do4->( do8) r8 |
}

notesI = \relative la' {
    s2 |
    s1 * 8 |
    s2 |
    % H 
    s2 |
    s1 * 9 |
    r2 sol'4 ( -> -\f la4 ) | % 22
    la4 ( -> do4 ) do4 ( -> mi4 ) | % 23
    mi2 -> -\fz re8 do8 si4 | % 24
    do4 la4 si8 ( do8 ) la8 sol8 | % 25
    \grace { fas16 ( sol16 } fas4. sol8 sol2 ) ~ -> | % 26
    sol4 r4 |
    % I 
    r2 |
    R1 * 3 | % 31
    r2 do2 -> | % 32
    \grace { si16 re16 } si8 -> la8 sol4 -. do8 -> re8 mi4 | % 33
    si2 -> mi2 -> | % 34
    \grace { re16 mi16 } re8 -> si8 re4 \grace { do16 re16 } do8 -> la8
    do4 -. | % 35
    si4 -. la4 -. r2 | % 36
    R1*3 | % 39
    r2 sol4 -. ->  la4 -. -> |
    la4 -. ->  do4 -. -> do4 -. -> mi4 -. -> | % 41
    mi2 -> re8 do8 si4 | % 42
    do4 la4 si8 ( do8 ) la8 sol8 | % 43
    fas4. ( \trill \grace { mi16 fas16 } sol8 ) sol2 ~ -> | % 44
    sol4 r4 | 
    % MUSETTE
    s2 |
    s1 * 7 |
    s2 |
    % L 
    s2 |
    s1 * 5 |
    r2 fa'2 ( ~ | % 61
    fa8 sol8 ) fa8 sol8 mi2 ( ~ | % 62
    mi8 fa8 ) mi8 fa8 re8 ( mi8 ) re8 mi8 | % 63
    do8 ( re8 ) do8 re8 si8 ( do8 ) si8 do8 | % 64
    la8 ( si8 ) la8 si8 sol8 ( la8 ) sol8 ( do8 ) | % 65
    sol8 ( do8 ) fa,8 ( do'8 ) do4 si8 ( do8 ) | % 66
    do4 ~ -\ff do8 r8 r2 | % 67
}

notesII = \relative la' {
    s2 |
    s1 * 8 |
    s2 |
    % H 
    s2 |
    s1 * 9 |
    r2 sol'4 ~ -> -\f sol4 -. | % 22
    sol4 ~ -> sol4 -. sol4 ( -> do4 ) | % 23
    do2 -> -\fz sol4 sol4 | % 24
    sol4 fas4 sol4 mi4 | % 25
    re2 re2 ~ -> | % 26
    re4 r4 |
    % I
    r2 |
    R1 * 3 |
    r2 mi2 -> | % 32
    re8 -> do8 si4 -. mi8 -> fas8 sol4 -. | % 33
    re2 -> sol2 -> | % 34
    fas8 -> re8 fas4 -. mi8 -> do8 mi4 -. | % 35
    sol4 -. fas4 -. r2 | % 36
    R1 * 3 | % 39
    r2 re4 -. ->  re4 -. -> | 
    re4 -. ->  sol4 -. -> sol4 -. -> do4 -. -> | % 41
    do2 ->  sol4 sol4 | % 42
    sol4 fas4 sol4 mi4 | % 43
    re2 re2 ~ -> | % 44
    re4 r4
    % MUSETTE
    s2 |
    s1 * 7 |
    s2 |
    % L 
    s2 |
    s1 * 5 |
    r2 fa2 ~ | % 61
    fa8 sol8 fa8 sol8 mi2 ~ | % 62
    mi8 fa8 mi8 fa8 re8 mi8 re8 mi8 | % 63
    do8 re8 do8 re8 si8 do8 si8 do8 | % 64
    la8 si8 la8 si8 sol8 la8 sol8 do8 | % 65
    sol8 do8 fa,8 do'8 do4 si8 -\< do8 | % 66
    do4 ~ -\ff do8 r8 r2 | % 67
}



dynamics = {
  
}

flute = << \notes \partCombine \notesI \notesII \marks \dynamics>>
fluteI = << \notes \notesI \marks \dynamics >>
fluteII = << \notes \notesII \marks \dynamics >>

staves = {
    \oneStaff
}

flute_staves = {
    <<
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \fluteI \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \fluteII \staves >>
        \new Staff \with {
            printPartCombineTexts = ##f
            \consists Merge_rests_engraver
            \override VerticalAxisGroup.remove-layer = 2
        }
        << \flute \staves >>
    >>
}

flute_conductor = {
  \new Staff \with {  
    printPartCombineTexts = ##f
    instrumentName = \flute_name_long
    shortInstrumentName = \flute_name_short
    midiInstrument = #"flute"
  }
  \flute
}

flute_part = {
    \new GrandStaff \with {
        \consists "Keep_alive_together_engraver"
    }
    \flute_staves
}



% \score{
%   \flute_part
%   \layout {}
% }