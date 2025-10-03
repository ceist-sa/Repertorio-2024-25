\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notesI =  \relative la' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef "treble"
    \partCombineApart re4 re2--\< |
    \tuplet 3/2 {re32\! ( -> do32 si32 } do16\> ~ do8 ~ do4.\! ) r8 |
    do4 do2--\< |
    \tuplet 3/2 {do32\! ( -> sib32 la32 } sib16\> ~ sib8 ~ sib4.\! ) r8 |
    r8 fa'4 -> re8 -- sib8 -- lab8 -- |
    lab32 ( -> sol32 fa32 sol32 \tuplet 3/2 {fa32 sol32 lab32 } sol16 sol2 ) |
    r8 re'8\p ( ~ -> re16\dim si16 ) si16 sol16 sol16\< ( lab16\! ) lab16\> fa16\! |
    fa32 ( -> mib32 re32 mib32 \tuplet 3/2 {re32 mib32 fa32 } mib16 mib2 ) |
    \partCombineAutomatic r8 la8  la8  la8  la8  la8  |
    sol8  sol8  sol8  sol8  sol8  sol8  |
    r8 mi'8  mi8  mi8  mi8  mi8  |
    re8  -- re8  -- mi8  -- mi8  -- \partCombineApart mi8 mi8 |
    \partCombineAutomatic re8 -> re8 re8 re8 re8 re8 |
    re8 re8 dos8 la8 mi'8 mi8 |
    fa8 \partCombineApart re,8 re8 re8 re4 |
    R2.*9 |
    \partCombineAutomatic fa8 sib8 sib8 sib8 la8 la8 |
    sib8 sib8 sib8 re8 do8 la8 |
    sib8 do8 re8 -> do8 sib8 sol'16 ( fa16 ) |
    fa8 -> mi8 -> fa8 fa8 fa8 fa8 |
    r8 sib,8 sib8 sib8 sib8 sib8 |
    r8 la8  la8  la8  la8  la8  |
    fas4\p ( ~ fas16 mi16 ) mi16 ( re16 ) mi16 ( fas16 ) fas16 ( sol16 ) |
    R2. |
    fas4 ( ~ fas16 mi16 ) mi16\< ( re16 ) mi16\! ( fas16\> ) \tuplet 3/2 {la16 (sol16 fas16)\! } |
    R2. |
    \partCombineApart fas4\< ( ~ fas16\! mi16 ) mi16 ( fas16 ) r4 |
    r4 fas4\cresc ( ~ fas16 mi16 ) mi16 ( fas16 ) |
    r4 fas16\dim ( mi16 ) mi16 ( fas16 ) r4 |
    fas16 ( sol16 ) sol16 ( sols16 ) sols16 ( la16 ) la16 ( re16 ) re16
    ( dos16 ) dos16 ( re16 ) |
    re16 ( dos16 ) dos16 ( re16 ) re16\> ( dos16 ) dos16 ( re16 ) re16 (dos16 ) dos16 ( re16\! ) |
    r8 \partCombineAutomatic sol,8-.\pp  sol8-.  sol8-.  sol8-.  sol8-.  |
    r8 sol8  sol8  sol8  sol8  sol8  |
    r8 fas8  fas8  fas8  fas8  fas8  |
    r8 re8  re8  sol8  fa8  mib8  |
    r8 fa8  fa8  fa8  fa8  fa8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    r8 re8  re8  re8  re8  re8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    r8 la8  la8  la8  la8  la8  |
    r8 sib8  sib8  sib8  sib8  sib8  |
    r8 re8  re8  re8  re8  re8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    r8 fas8 fas8 fas8 fas8 fas8 |
    sol8 sol8 sol8 sol8 sol8 \partCombineApart fas16. ( sol32 ) |
    sol2 ~ -> sol8. fa!16 |
    fa16 ( mi16 ) mi16 mib16 mib16 ( re16 ) re8 \tuplet 3/2 {sol32 ( fas32 mi32 } fas8 sol16 ) |
    \partCombineAutomatic sol8 sol,8 sol8 sol8 sol4 \bar "|."
}

notesII =  \relative la' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef "treble"
    sol8  sol8  sol8  sol8  sol8  sol8  |
    sol8  sol8  sol8  sol8  sol8  sol8  |
    fas8  fas8  fas8  fas8  fas8  fas8  |
    sol8  sol8  sol8\<  sol8 fa8 mib8 |
    re8\mf re8  re8  re8  re8  re8  |
    r8 re8  re8\>  re8  reb8  do8\!  |
    si8\p  si8  si8  si8  si8  si8  |
    r8 si8  si8  re!8  re8  do8  |
    r8 fas8  fas8  fas8  fas8  fas8  |
    sol8  sol8  sol8  sol8  sol8  sol8  |
    r8 dos8  dos8  dos8  dos8  dos8  |
    re8  -- re8  -- re8  -- re8  -- re8 dos16. ( re32 ) |
    re2 ~ -> re8. do ?16 |
    do16 ( si16 ) si16 sib16 sib16 ( la16 ) la8 \tuplet 3/2 {re32 ( dos32 si32 } dos8 dos16 ) |
    re2. |
    sib8\pp  sib8  sib8  sib8  sib8  sib8  |
    sib8  sib8  sib8  sib8  sib8  sib8  |
    la8  la8  la8  la8  la8  la8  |
    sib8  sib8  sib8  sib8  sib8  sib8  |
    la8  la8  la8  la8  sol8  sol8  |
    sol8  sol8  fa8  fa8  r4 |
    r4 r4 sib8 sib8 |
    sib8 sol8 fa8 sol8 r4 |
    r4 sib8 fa8 sol8 sib8 |
    fa8 mi8 fa8 fa8 fa8 fa8 |
    sol8 sol8 sol8 sib8 la8 fa8 |
    sol8 la8 sib8 la8 sol8 la8 |
    sib8 -> sib8 -> sib8 sib8 la8 la8 |
    r8 fa8 fa8 fa8 fa8 fa8 |
    r8 mib8  mib8  mib8  mib8  mib8  |
    re8\p  re8  re8  re8  re8  re8  |
    R2. |
    re8  re8  re8  re8  re8  re8  |
    R2. |
    re8  re8  re8\cresc  -> re8  re8  re8  |
    re8  -> re8  re8  re8  re8  -> re8  |
    re8  re8  re8\dim  re8  re8  re8\!  |
    R2. |
    R2. |
    sib8-.\pp sib8-. sib8-. sib8-. sib8-. sib8-. |
    r8 mib8  mib8  mib8  mib8  mib8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    r8 sib8 sib8 sib8 sib8 sib8 |
    r8 re8  re8  re8  re8  re8  |
    r8 re8  re8  re8  reb8  do8 |
    r8 si8 si8 si8 si8 si8 |
    r8 si8 si8 re8  re8  do8 |
    r8 fas8  fas8  fas8  fas8  fas8  |
    r8 sol8  sol8  sol8  sol8  sol8  |
    r8 si8  si8  si8  si8  si8  |
    r8 do8  do8  do8  do8  do8  |
    r8 re8 mib8 re8 dos8 re8 |
    re8 re8 do ?8 mib8 re8 re8 |
    re8 re8 do8 do8 re8 re8 |
    do8 sib8 la8 sol8 re'8 re8 |
    re8 re,8 re8 re8 re4 |
}

dynamics = {
  s2.\p |
  s2. * 2 |
  s4 s2 |
  s2. |
  s4 s2 |
  s2. |
  s2.
  % N
  s2. * 2 |
  s8 s8\cresc s2 |
  s2 s4\< |
  s8\f\> s8 s8 s8\! s4 |
  s2 s32 s32 \< s8 s16 \!
  s4\ffp\> s4 s4\pp |
  % O
  s2. |
  s2. * 3 |
  s2. \cresc |
  s4 s4 s4\! |
  s2 s4\p |
  s4\< s8 s8\! s4 |
  s4 s4\p \cresc s4 |
  s4 s2\< |
  s2.\ff |
  s8\< s8\! s2 |
  s4 s2\< |
  s8\! s8\ffz s8 s4.\> |
  s8\! s8 \dim s4 s8 s8\! |
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
  s8\! s8\mf s4 s4 \dim |
  s2 s4\> |
  s8\! s8 \pp s2 |
  s2. |
  % R
  s8 s8\p s2 |
  s2. |
  s8 s8\cresc s2 |
  s2. |
  s8 s8\f s2 |
  s2 s4\< |
  s2.\ff |
  s2 s4\< |
  s4\ffp\>  s4 s4 \pp |
}

staves = {
  \twoStaves
  s2. * 8
  \oneStaff
  s2. * 4
  \twoStaves
  s2. * 3
  \oneStaff
  s2. * 15
  \twoStaves
  s2. * 7
  \oneStaff
  s2. * 2 
  % Q 
  s2. * 14
  \twoStaves
  s2. * 2 
  \oneStaff
  s2. * 1
}


oboe = << \partCombine \notesI \notesII \marks \dynamics>>
oboeI = << \notesI \marks \dynamics >>
oboeII = <<  \notesII \marks \dynamics >>


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
      \consists Merge_rests_engraver
      \override VerticalAxisGroup.remove-layer = 2
      }
      \oboe
  >>
}

oboe_conductor = {
  \new GrandStaff \with {
    \consists Keep_alive_together_engraver
    \consists Keep_alive_together_engraver
    instrumentName = \oboe_name_long
    shortInstrumentName = \oboe_name_short
    soloText = "Ob. I"
    soloIIText = "Ob. II"
  }
  \oboe_staves
}

oboeI_air = \score {
  \header { piece = "IV. Air" }
  \compressMMRests {
    \new Staff
    \oboeI
  }
}

oboeII_air = \score {
  \header { piece = "IV. Air" }
  \compressMMRests {
    \new Staff
    \oboeII
  }
}

% \score {
%   <<
%   \new Staff {\oboeI}
%   \new Staff {\oboeII}
%   \oboe_conductor
%   >>
% }
