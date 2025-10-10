\version "2.24.4"

\include "../../../../styles/ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \set Staff.midiInstrument = #"clarinet"
    % \override NoteHead.color = #clarinet-range
    \clef "treble"
    r2 |
    R1 * 3 |
    r2 si,4 ( -> do4 ) -. |
    do4 ( -> mi4 ) -. mi4 -> fas4 -. |
    fas2 re4 mi4 |
    do4 re4 re4 mi4 |
    la,2 si2 ~ -> |
    si4 r4 |
    % H
    r2 |
    s1 * 9  |
    s1 * 5 |
    s2 |
    % I
    s2 |
    s1 * 11 |
    % K
    s1 * 5 |
    s2 |
    % MUSETTE
    s2 |
    s1 * 7 |
    s2 |
    % L
    re2 ( ~  |
    re8 mi8 ) mi8 ( fa8 ) fa2 ( ~ |
    fa8 sol8 ) fa8 ( sol8 ) mi4 fa8 ( sol8 ) |
    \grace { fa16 (sol16 } fa8 mi8) re4 r2 |
    R1*2 |


}

notesI = \relative la {
    % \override NoteHead.color = #clarinet-range
    s2 |
    s1 * 8 |
    s2 |
    % H
    s2 |
    la4. ->  r8 r2 |
    la4. -> r8 la2  |
    re2 ( dos2  |
    si2 la2  |
    sol2 fas2 )  |
    R1 * 4 |
    r2 sol'4 ( ->  sol4 ) -. |
    sol4 ( -> sol4 ) -. sol4 -> do4-. |
    do2 ->  sol4 sol4 |
    sol4 fas4 sol4 mi4 |
    re2 re2 ~ -> |
    re4 r4 |
    % I
    r2 |
    R1 * 3 |
    r2 do2 |
    \grace { si16 (do16 } si8) -> [la8] sol4 -. do8 -> re8 mi4 -. |
    si2 -> mi2 -> |
    \grace { re16 (mi16 } re8) -> [si8] re4 -. \grace { do16 (re16 } do8) -> [la8] do4 -. |
    si4 -. la4 -. r2 |
    R1 * 3|
    r2 re4 -. ->  re4 -. -> |
    re4 -. ->    sol4 -. -> sol4 -. -> do4 -. -> |
    do2 ->   sol4 sol4 |
    sol4 fas4 sol4 mi4 |
    re2 \breathe re2 ~ -> |
    re4 r4
    % MUSETTE
    mi8 (re mi sol |
    fa8 mi re fa) mi (re do mi|
    re8 si sol4) la'8-> (do la fa) |
    mi8-> (sol mi do) si-> (re si sol) |
    sol2-> sol'4. sol8-> ~ |
    4. sol8-> ~ 4. sol8-> ~ |
    2 la8-> (do la fa) |
    mi8-> (sol mi do) si8-> (re si sol) |
    sol4-> ~8 r8 |
    % L
    s2 |
    s1*5 |
    r2 la'4 -.  la4 -. |
    si4 -. si4 -. si4 -. si4 -. |
    la4 -. la4 -. la4 -. sol4 -. |
    sol4 -. fa4 -. fa4 -. mi4 -. |
    mi4 -. re4 -. re4 -. do4 -. |
    sol'4 -.  fa4 -. sol4 -. sol4 -. |
    sol4 ~   sol8 r8 mi8 (re mi sol |
    fa8 mi re fa) mi (re do mi|
    re8 si sol4) la'8-> (do la fa) |
    mi8-> (sol mi do) si-> (re si sol) |
    sol2-> sol'4. sol8-> ~ |
    4. sol8-> ~ 4. sol8-> ~ |
    2 la8-> (do la fa) |
    mi8-> (sol mi do) si8-> (re si sol) |
    sol4-> ~8 r8 |
}

notesII = \relative la {
    % \override NoteHead.color = #clarinet-range
    s2 |
    s1 * 8 |
    s2 |
    % H
    s2 |
    sol4 (  fas8 ) r8 r2 |
    sol4 ( fas8 ) r8 fas2 |
    si2 ( la2 |
    sol2 fas2  |
    mi2 re2 )  |
    R1 * 4 |
    r2 si'4 ( ->  do4 ) -. |
    do4 ( -> mi4 ) -. mi4 -> fas4-. |
    fas2 ->  re4 mi4 |
    do4 re4 re4 mi4 |
    la,2 si2 ~ -> |
    si4 r4 |
    % I
    r2 |
    R1 * 3 |
    r2 sol2 ->  |
    sol8 -> sol8 sol4 -. sol8 -> sol8 sol4 -. |
    sol2 -> si2 -> |
    sol8 -> sol8 sol4 -. sol8 -> sol8 sol4 -. |
    sol4 -. fas4 -.  r2 |
    R1 * 3 |
    r2 si4 -. ->  re4 -. -> |
    re4 -. ->  do4 -. ->  do4 -. -> sol'4 -. -> |
    fas2 ->  re4 mi4 |
    do4 re4 re4 do8 si8 |
    la4. ( \trill \grace { sol16 la16 } si8 ) \breathe si2 ~ -> |
    si4 r4 |
    % MUSETTE
    sol4. sol8-> ~ |
    4. 8-> ~4. 8-> ~ |
    2 fa'8-> (la fa re) |
    do8-> (mi do la) sol (si sol re) |
    mi2-> sol'4. sol8-> ~ |
    4. 8-> ~4. 8-> ~ |
    2 la8-> (do la fa) |
    mi8-> (sol mi do) si-> (re si sol) |
    sol4-> ~8 r8 |
    % L
    s2 |
    s1*5 |
    r2 fa'4 -.  fa4 -. |
    sol4 -. sol4 -. sol4 -. sol4 -. |
    fa4 -. fa4 -. fa4 -. mi4 -. |
    mi4 -. re4 -. re4 -. do4 -. |
    do4 -. si4 -. si4 -. do4 -. |
    do4 -.  do4 -. re4 -. re4 -. |
    mi4 ~   mi8 r8 sol,4. sol8-> ~ |
    4. 8-> ~4. 8-> ~ |
    2 fa'8-> (la fa re) |
    do8-> (mi do la) sol (si sol re) |
    mi2-> sol'4. sol8-> ~ |
    4. 8-> ~4. 8-> ~ |
    2 la8-> (do la fa) |
    mi8-> (sol mi do) si-> (re si sol) |
    sol4-> ~8 r8 |
}

dynamics = {
  s2 |
  s1 * 3 |
  s2 s2\f |
  s1 |
  s1 \fz |
  s1 * 2 |
  s2 |
  % H
  s2 |
  s1\p |
  s1 * 8 |
  s2 s2\f |
  s1 |
  s1 \fz |
  s1 * 2 |
  s2 |
  % I
  s2 |
  s1 * 3 |
  s2 s2 \f |
  s1 |
  s2 s2\f |
  s1 * 5 |
  % K
  s2 s2 \f |
  s1\< |
  s1 \ff |
  s1 * 2 |
  s2 |
  % MUSETTE
  s2\pp |
  s1 * 7 |
  s2 |
  % L
  s2 _\markup{\dynamic p \italic cantab.} |
  s1 * 5 |
  s2 s2\f |
  s1 * 3 |
  s2. s4\< |
  s1 |
  s2\ff s2\pp|
  s1 * 7 |
  s2 |
}

staves = {
  \oneStaff
  s2 |
  s1 * 8 |
  s2 |
  % H
  s2 |
  s1 * 14 |
  s2 |
  % I
  s2 |
  s1 * 11 |
  % K
  s1 * 5 |
  s2 |
  % MUSETTE
  \twoStaves
  s2 |
  s1 * 2 |
  \oneStaff
  s1 * 5 |
  s2 |
  % L
  s2 |
  s1 * 11 |
  % M
  \twoStaves
  s1 * 3 |
  \oneStaff
  % ...
}

clarinet = \transpose do re { << \partCombine << \notes \notesI >> << \notes \notesII >> \marks \dynamics >> }
clarinetI = \transpose do re { << \notes \notesI \marks \dynamics >> }
clarinetII = \transpose do re { << \notes \notesII \marks \dynamics >> }

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
            \consists Merge_rests_engraver
            \override VerticalAxisGroup.remove-layer = 2
        }
        << \clarinet >>
    >>
}

clarinet_conductor = {
  \new GrandStaff \with {
    \consists Keep_alive_together_engraver
    instrumentName = \clarinet_name_long
    shortInstrumentName = \clarinet_name_short
    soloText = "Cl. I"
    soloIIText = "Cl. II"
  }
  \clarinet_staves
}

clarinetI_gavotte = \score {
  \header { piece = "III. Gavotte" }
  
    \new Staff
    \clarinetI
  
}

clarinetII_gavotte = \score {
  \header { piece = "III. Gavotte" }
  
    \new Staff
    \clarinetII
  
}

% \score {
%   <<
%   \new Staff {\clarinetI}
%   \new Staff {\clarinetII}
%   \clarinet_conductor
%   >>
% }