\version "2.24.4"

\include "../../../../styles/ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \set Staff.midiInstrument = #"flute"
    % \override NoteHead.color = #flute-range
    \clef "treble"
    r2 |
    R1*3 |
    r2 sol4 ( ->  la4 ) -. |
    la4 ( -> do4 ) -. do4-> mi4 -. |
    mi2 -> re8 do8 si4 |
    do4 la4 si8 ( do8 ) la8 sol8 |
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
    r2 sol'4 ( -> la4 ) |
    la4 ( -> do4 ) do4 -> mi4-. |
    mi2 -> re8 do8 si4 |
    do4 la4 si8 ( do8 ) la8 sol8 |
    \grace { fas16 ( sol16 } fas4. sol8-.) sol2  ~ -> |
    sol4 r4 |
    % I
    r2 |
    R1 * 3 |
    r2 do2 -> |
    \grace { si16 (re16 } si8) -> la8 sol4 -. do8 -> re8 mi4 |
    si2 -> mi2 -> |
    \grace { re16 (mi16 } re8) -> [si8] re4 \grace { do16 (re16 } do8) -> [la8] do4 -. |
    si4 -. la4 -. r2 |
    R1*3 |
    r2 sol4 -. ->  la4 -. -> |
    la4 -. ->  do4 -. -> do4 -. -> mi4 -. -> |
    mi2 -> re8 do8 si4 |
    do4 la4 si8 ( do8 ) la8 sol8 |
    fas4. ( \trill \grace { mi16 fas16 } sol8 ) \breathe sol2 ~ -> |
    sol4 r4 |
    % MUSETTE
    s2 |
    s1 * 7 |
    s2 |
    % L
    s2 |
    s1 * 5 |
    r2 \partCombineChords fa'2 ( ~ |
    fa8 sol8 ) fa8 sol8 mi2 ( ~ |
    mi8 fa8 ) mi8 fa8 re8 ( mi8 ) re8 mi8 |
    do8 ( re8 ) do8 re8 si8 ( do8 ) si8 do8 |
    la8 ( si8 ) la8 si8 sol8 ( la8 ) sol8 ( do8 ) |
    sol8 ( do8 ) fa,8 ( do'8 ) do4 si8 ( do8 ) |
    do4 ~  do8 \partCombineAutomatic r8 r2 |
}

notesII = \relative la' {
    s2 |
    s1 * 8 |
    s2 |
    % H
    s2 |
    s1 * 9 |
    r2 sol'4 ~ ->  sol4 -. |
    sol4 ~ -> sol4 -. sol4 -> do4-. |
    do2 ->  sol4 sol4 |
    sol4 fas4 sol4 mi4 |
    re2 re2 ~ -> |
    re4 r4 |
    % I
    r2 |
    R1 * 3 |
    r2 mi2 -> |
    re8 -> do8 si4 -. mi8 -> fas8 sol4 -. |
    re2 -> sol2 -> |
    fas8 -> re8 fas4 -. mi8 -> do8 mi4 -. |
    sol4 -. fas4 -. r2 |
    R1 * 3 |
    r2 re4 -. ->  re4 -. -> |
    re4 -. ->  sol4 -. -> sol4 -. -> do4 -. -> |
    do2 ->  sol4 sol4 |
    sol4 fas4 sol4 mi4 |
    re2 \breathe re2 ~ -> |
    re4 r4
    % MUSETTE
    s2 |
    s1 * 7 |
    s2 |
    % L
    s2 |
    s1 * 5 |
    r2 fa2 ~ |
    fa8 sol8 fa8 sol8 mi2 ~ |
    mi8 fa8 mi8 fa8 re8 mi8 re8 mi8 |
    do8 re8 do8 re8 si8 do8 si8 do8 |
    la8 si8 la8 si8 sol8 la8 sol8 do8 |
    sol8 do8 fa,8 do'8 do4 si8  do8 |
    do4 ~  do8 r8 r2 |
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
  s1 * 9 |
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
  s1 |
  s2 s2 |
  s1 * 3 |
  % K
  s2 s2 \f |
  s1\< |
  s1 \ff |
  s1 * 2 |
  s2 |
  % MUSETTE
  s2 |
  s1 * 3 |
  s2 s2\pp |
  s1 * 3 |
  s2 |
  % L
  s2|
  s1 * 5 |
  s2 s2\f |
  s1 * 3 |
  s2. s4\< |
  s1 |
  s1\ff |
  s1 * 3|
  s2 s2\pp |
  s1 * 3 |
  s2 |
}

flute = << \partCombine << \notes \notesI >> << \notes \notesII >> \marks \dynamics >>
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
        << \flute >>
    >>
}

flute_conductor = {
  \new Staff \with {
    soloText = #"Flt. I"
    soloIIText = #"Flt. II"
    instrumentName = \flute_name_long
    shortInstrumentName = \flute_name_short
  }
  \flute
}

fluteI_gavotte = \score {
  \header { piece = "III. Gavotte" }
  
    \new Staff
    \fluteI
  
}

fluteII_gavotte = \score {
  \header { piece = "III. Gavotte" }
  
    \new Staff
    \fluteII
  
}

% \score {
%   <<
%   \new Staff {\fluteI}
%   >>
% }