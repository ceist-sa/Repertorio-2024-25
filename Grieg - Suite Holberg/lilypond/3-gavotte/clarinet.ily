\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \override NoteHead.color = #clarinet-range
    \clef "treble" 
    r2 |
    R1 * 3 |
    r2 si,4 ( -> do4 ) -. | % 6
    do4 ( -> mi4 ) -. mi4 ( -> fas4 ) -. | % 7
    fas2 re4 mi4 | % 8
    do4 re4 re4 mi4 | % 9
    la,2 si2 ~ -> |
    si4 r4 |
    % H 
    r2 |

}

notesI = \relative la {
    \override NoteHead.color = #clarinet-range
    s2 |
    s1 * 8 |
    s2 |
    % H
    s2 |
    la4. -> -\p r8 r2 | % 13
    la4. -> r8 la2 -\< | % 14
    re2 ( dos2 -\! | % 15
    si2 la2 -\> | % 16
    sol2 fas2 ) -\! | % 17
    R1 * 4 |
    r2 sol'4 ( -> -\f sol4 ) -. | % 22
    sol4 ( -> sol4 ) -. sol4 ( -> do4 ) -. | % 23
    do2 -> -\fz sol4 sol4 | % 24
    sol4 fas4 sol4 mi4 | % 25
    re2 re2 ~ -> | % 26
    re4 r4 |
    % I
    r2 |
    R1 * 3 | 
    r2 do2 | % 32
    \grace { si16 do16 } si8 -> la8 sol4 -. do8 -> re8 mi4 -. | % 33
    si2 -> mi2 -> | % 34
    \grace { re16 mi16 } re8 -> si8 re4 -. \grace { do16 re16 } do8 ->
    la8 do4 -. | % 35
    si4 -. la4 -. r2 | % 36
    R1 * 3|
    r2 re4 -. -> -\f re4 -. -> | \barNumberCheck #40
    re4 -. -> -\! -\< -\< sol4 -. -> sol4 -. -> do4 -. -> | % 41
    do2 -> -\! -\ff sol4 sol4 | % 42
    sol4 fas4 sol4 mi4 | % 43
    re2 re2 ~ -> | % 44
    re4 r4
    
}

notesII = \relative la {
    \override NoteHead.color = #clarinet-range
    s2 |
    s1 * 8 |
    s2 |
    % H
    s2 |
    sol4 ( -\p fas8 ) r8 r2 | % 13
    sol4 ( fas8 ) r8 fas2 | % 14
    si2 ( la2 | % 15
    sol2 fas2 -\> | % 16
    mi2 re2 ) -\! | % 17
    R1 * 4 |
    r2 si'4 ( -> -\f do4 ) -. | % 22
    do4 ( -> mi4 ) -. mi4 ( -> fas4 ) -. | % 23
    fas2 -> -\fz re4 mi4 | % 24
    do4 re4 re4 mi4 | % 25
    la,2 si2 ( -> | % 26
    si4 ) r4 | % 27
    % I
    r2 |
    R1 * 3 |
    r2 sol2 -> -\f | % 32
    sol8 -> sol8 sol4 -. sol8 -> sol8 sol4 -. | % 33
    sol2 -> si2 -> | % 34
    sol8 -> sol8 sol4 -. sol8 -> sol8 sol4 -. | % 35
    sol4 -. fas4 -. -\pp r2 | % 36
    R1 * 3 | % 39
    r2 si4 -. -> -\f re4 -. -> |
    re4 -. -> -\< do4 -. -> -\! do4 -. -> sol'4 -. -> | % 41
    fas2 -> -\ff re4 mi4 | % 42
    do4 re4 re4 do8 si8 | % 43
    la4. ( \trill \grace { sol16 la16 } si8 ) si2 ~ -> | % 44
    si4 r4
}

dynamics = {
  
}

staves = {
    \twoStaves

}

clarinet = << \notes \partCombine \notesI \notesII \marks \dynamics >>
clarinetI = << \notes \notesI \marks \dynamics >>
clarinetII = << \notes \notesII \marks \dynamics >>

clarinet_staves = {
    <<
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \clarinetI \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \clarinetII \staves >>
        \new Staff \with {
            printPartCombineTexts = ##f
            \consists Merge_rests_engraver
            \override VerticalAxisGroup.remove-layer = 2
        }
        << \clarinet \staves >>
    >>
}

clarinet_conductor = {
  \new GrandStaff \with {
    \consists Keep_alive_together_engraver
    printPartCombineTexts = ##f
    instrumentName = \clarinet_name_long
    shortInstrumentName = \clarinet_name_short
    midiInstrument = #"clarinet"
  }
  \clarinet_staves
}

clarinet_part = {
    \new GrandStaff \with {
        \consists Keep_alive_together_engraver
    }
    \clarinet_staves
}