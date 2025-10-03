\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notesI =  \relative la' {
    \set Staff.midiInstrument = #"flute"
    \clef "treble"
    R2.*8
    r8 fas'8  fas8  fas8  fas8  fas8  |
    sol8  sol8  sol8  sol8  sol8  sol8  |
    r8 dos8  dos8  dos8  dos8  dos8  |
    re8  -- re8  -- re8  -- re8  -- re8 \partCombineApart dos16. ( re32 ) |
    \partCombineAutomatic re2 ~ -> re8. do ?16 |
    do16 ( si16 ) si16 sib16 sib16 ( la16 ) la8 \tuplet 3/2 {re32 ( dos32 si32 }
    dos8 dos16 ) |
    re2. |

    R2.*9  |
    r16 sib16 sib16 ( do16 ) do4 ~ do8. ( sol'16 ) |
    sol4 ( ~ sol16 sib16 ) sib16 ( la16 ) la16 ( fa16 ) fa16 sol16 |
    sol16 ( la16 ) la16 sib16 sib16 ( -> la16 ) la16 sol16 sol16 ( do,16
    ) do16 fa16 |
    fa16 ( sib,16 ) sib16 do16 do4 ( ~  do8. sib16 ) |
    sib4 ~  sib8 r8 r4 |
    R2.*9 |
    R2.  |
   \partCombineApart r16  dos,16\pp dos16 ( re16 ) re16 ( dos16 ) dos16 ( re16 )
    re16 ( dos16 ) dos16 ( re16 ) |
    r16 si16 si16 ( do16 ) do16 ( si16 ) si16 ( do16 ) do16 ( si16 ) si16
    ( do16 ) |
    r16 si16 si16 (do16) do16 (si16) si16 (do16) do16 (si16) si16 (do16) |
    r16 la16 la16 (sib16) sib16 (la16) la16 (sib16) sib16 (la16) la16 (sib16) |
    r16 mi16\mf mi16 (fa16) fa16 (mi16) mi16 (fa16) fa16\dim (mi16) mi16 (fa16) |
    r16 la,16 la16 (sib16) sib16 (la16) la16 (sib16) sib16\> (fas16) fas16 (sol16)\! |
    r16 dos16\pp dos16 (re16) re16 (dos16) dos16 (re16) re16 (dos16) dos16 (re16) |
    \partCombineAutomatic r16 fas,16 fas16 (sol16) sol16 (fas16) fas16 (sol16) sol16 (re16) re16 (mib16) |
    fas'2 ( ~ fas16 la16 ) sol16 fas16 |
    la16 ( sol16 fas16 sol16 ) \grace {fas\( sol la} sol2 \) |
    si2 ( ~ si16 re16 ) do16 si16 |
    re16 ( do16 si16 do16 ) \grace{si\( do re} do2 \) |
    r8 fas8 fas8 fas8 fas8 fas8 |
    sol8 sol8 sol8 sol8 sol8 fas16. ( sol32 ) |
    sol2 ~ -> sol8.  fa ?16 |
    fa16 ( mi16 ) mi16 mib16 mib16 ( re16 ) re8 \tuplet 3/2  {sol32 ( fas32 mi32 }
    fas8 sol16 ) |
    sol2. |
}

notesII =  \relative la' {
    \set Staff.midiInstrument = #"flute"
    \clef "treble"
    R2.*8 |
    r8 re8  re8  re8  re8  re8  |
    re8  re8  re8  re8  re8  re8  |
    r8 la'8  la8  la8  la8  la8  |
    la8  -- la8  -- sol8  -- sib8  -- la8 la8 |
    la8 -> la8 sol8 sol8 la8 la8 |
    sol8 fa8 mi8 re8 la'8 la8 |
    la2. |
    R2.*9 |
    r16 sib,16 sib16 ( do16 ) do4 ~ do8. ( sol'16 ) |
    sol4 ( ~ sol16 sib16 ) sib16 ( la16 ) la16 ( fa16 ) fa16 sol16 |
    sol16 ( la16 ) la16 sib16 sib16 ( -> la16 ) la16 sol16 sol16 ( do,16
    ) do16 fa16 |
    fa16 ( sib,16 ) sib16 do16 do4 ( ~ do8. sib16 ) |
    sib4 ~ sib8 r8 r4 |
    R2.*10 |
    r8 sib8-.\pp  sib8-.  sib8-.  sib8-.  sib8-.  |
    r8 la8  la8  la8  la8  la8  |
    r8 la8  la8  la8  la8  la8  |
    r8 sol8  sol8  sol8  sol8  sol8  |
    r8 sib8\mf  sib8  sib8  sib8\dim  sib8  |
    r8 sol8  sol8  sol8\!  r4 |
    r8 sol8\pp  sol8  sol8  fa8  fa8  |
    R2. |
    fas2 ( ~ fas16 la16 ) sol16 fas16 |
    la16 ( sol16 fas16 sol16 ) \grace {fas\( sol la} sol2 \) |
    si2 ( ~ si16 re16 ) do16 si16 |
    re16 ( do16 si16 do16 ) \grace{si\( do re} do2 \) |
    r8 re'8 mib8 re8 dos8 re8 |
    re8 re8 do!8 mib8 re8 re8 |
    re8 re8 do8 do8 re8 re8 |
    do8 sib8 la8 sol8 re'8 re8 |
    re2. |
}

dynamics = {
  s2. |
  s2. * 2 |
  s4 s2 |
  s2. |
  s4 s2 |
  s2. |
  s2.
  % N
  s8 s8\p s2 |
  s2. |
  s8 s8\cresc s2 |
  s2 s4\< |
  s8\f\> s8 s8 s8\! s4 |
  s2 s32 s32 \< s8 s16 \!
  \once\override Hairpin.minimum-length = #8
    s2 \ffp \> s4 \pp |
  % O
  s2. |
  s2. * 3 |
  s2. |
  s4 s4 s4 |
  s2 s4 |
  s4 s8 s8 s4 |
  s4 s4 s4 |
  s16 s16\mp s8 s2\< |
  s4\ff s4 s4\< |
  s8 s8\! s2 |
  s4 s2\< |
  s8\!\ffz s8\> s8\! s4. |
  s8 s8 s4 s8 s8 |
  s2. |
  s8 s8 s2 |
  s2. |
  s2. |
  s4\! s2 |
  s2. |
  s4 s4 s4 |
  s2. |
  s4 s2
  % Q
  s8 s8  s2 |
  s2. * 2 |
  s4 s8 s8\< s4 |
  s8\! s8 s4 s4 |
  s2 s4 |
  s8 s8 s2 |
  s2. |
  % R
  s8\p s8 s2 |
  s2. |
  s8 \cresc s8 s2 |
  s2. |
  s8 s8\f s2 |
  s2 s4\< |
  s2.\ff |
  s2 s4\< |
  s4\ffp\>  s4 s4 \pp |
}

staves = {
  \oneStaff
  s2. * 12
  \twoStaves
  s2. * 3
  \oneStaff
  s2. * 24
  %\twoStaves
  s2. * 8
  \oneStaff
  s2. * 6
  \twoStaves
}


flute = << \partCombine \notesI \notesII \marks \dynamics>>
fluteI = << \notesI \marks \dynamics >>
fluteII = <<  \notesII \marks \dynamics >>


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
      \consists Merge_rests_engraver
      \override VerticalAxisGroup.remove-layer = 2
      }
      \flute
  >>
}

flute_conductor = {
  \new GrandStaff \with {
    \consists Keep_alive_together_engraver
    \consists Keep_alive_together_engraver
    instrumentName = \flute_name_long
    shortInstrumentName = \flute_name_short
    soloText = #"Flt. I"
    soloIIText = #"Flt. II"
  }
  \flute_staves
}

fluteI_air = \score {
  \header { piece = "IV. Air" }
  \compressMMRests {
    \new Staff
    \fluteI
  }
}

fluteII_air = \score {
  \header { piece = "IV. Air" }
  \compressMMRests {
    \new Staff
    \fluteII
  }
}

% \score {
%   <<
%   \new Staff {\fluteI}
%   \new Staff {\fluteII}
%   \flute_conductor
%   >>
% }