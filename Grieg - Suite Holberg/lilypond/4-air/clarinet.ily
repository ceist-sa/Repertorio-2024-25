\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notesI =  \relative la {
     \set Staff.midiInstrument = #"clarinet"
     % \override NoteHead.color = #clarinet-range
     \clef "treble"
    re8  re8  re8  re8  re8  re8  |
    mib8  mib8  mib8  mib8  mib8  mib8  |
    do8  do8  do8  do8  do8  do8  |
    re8  re8  re8  re8 sib8 sib8 |
    sib8 sib8  sib8  sib8  sib8  sib8  |
    r8 sol8  sol8  sol8 sol8 sol8 |
    sol8 sol8  sol8  sol8  sol8  sol8  |
    r8 sol8  sol8  sol8  sol8  sol8  |
    r8 re'8  re8  re8  re8  re8  |
    re8  re8  re8  re8  re8  re8  |
    r8 la'8  la8  la8  la8  la8  |
    la8  -- la8  -- sol8  -- sib8  -- la8 la8 |
    la8 -> la8 sol8 sol8 la8 la8 |
    sol8 fa8 mi8 re8 la'8 la8 |
    la8 la,8 la8 la8 la4 |
    fa'8  fa8  fa8  fa8  fa8  fa8  |
    mib8  mib8  mib8  mib8  mib8  mib8  |
    mib8  mib8  mib8  mib8  mib8  mib8  |
    re8  re8  re8  re8  re8  re8  |
    do8  do8  do8  do8  sib8  sib8  |
    sib8  sib8  la8  la8  sib8  sib8  |
    sib8  sib8  la8  sib8  sib8  sib8  |
    sib8  sib8  la8  sib8  sib8  la8  |
    sib8  sib8  sib8  do8  sib8  sib8  |
    sib8 mi8 do8 do8 do8 do8 |
    mib8 mib8 mib8 mib8 mib8 mib8 |
    mib8 mib8 mib8 -> mib8 mib8 sol16 ( fa16 ) |
    fa8 -> mi8 -> fa8 fa8 fa8 fa8 |
    r8 re8\ffz re8 \partCombineApart re8\> re8 re8 |
    r8\! do8\dim  do8  do8  do8  do8\!  |
    \partCombineAutomatic la8  la8  la8  la8  sib8  sib8  |
    r8 la8  la8  la8  sol8  sib8  |
    la8  la8  la8  la8  sib8  sib8  |
    r8 la8  la8  la8  sol8  sol8  |
    re'8  re8  re8  -> re8  la8  la8  |
    sib8  -> sib8  re8  re8  re8  -> re8  |
    re8  re8  re8  re8  la8  sol8  |
    r8 fas'8-.  fas8-.  fas8-.  sol8-.  sol8-.  |
    sols8-.  sols8-.  la8-.  la8-.  sib8-.  sib8-.  |
    sol,8-.  sol8-.  sol8-.  sol8-.  sol8-.  sol8-.  |
    r8 la8  la8  la8  la8  la8  |
    la8  la8  la8  la8  la8  la8  |
    r8 sol8  sol8  sol8  sol8  sol8  |
    sib8  sib8  sib8  sib8  sib8  sib8  |
    r8 sol8  sol8  sol8  sol8  sol8  |
    sol8  sol8  sol8  sol8  \partCombineApart sol16 ( sols16 ) sols8 |
    \partCombineAutomatic r8 sol8  sol8  sol8  sol8  sol8  |
    \partCombineApart fas2 \pcantab ( ~ fas16 la16 ) sol16 fas16 |
    la16 ( sol16 fas16 sol16 ) \grace{fas16 (sol la} sol2) |
    si2 ( ~ si16 \fermata re16 ) do16 si16 |
    re16 ( do16 si16 do16 ) \grace{si16 (do re} do2) | |
    \partCombineAutomatic r8 la'8 la8 la8 la8 la8 |
    sib8 sib8 la8 la8 la8 la8 |
    \partCombineApart mib2 -> sol8. fa16 |
    fa16 ( mi16 ) mi16 mib16 mib16 ( re16 ) re8 \tuplet 3/2 {sol32 fas32 mi32 } fas8 sol16 |
    sol8 \partCombineAutomatic sib,8 sib8 sib8 sib4 |
}

notesII =  \relative la {
    \set Staff.midiInstrument = #"clarinet"
    % \override NoteHead.color = #clarinet-range
    sib8  sib8  sib8  sib8  sib8  sib8  |
    la8  la8  la8  la8  la8  la8  |
    la8  la8  la8  la8  la8  la8  |
    sib8  sib8  sib8  sib8 sol8 sol8 |
    fa8 fa8  fa8  fa8  fa8  fa8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    re8  re8  re8  re8  re8  re8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    r8 la8  la8  la8  la8  la8  |
    sol8  sol8  sol8  sol8  sol8  sol8  |
    r8 mi'8  mi8  mi8  mi8  mi8  |
    re8  -- re8  -- mi8  -- mi8  -- mi8 mi8 |
    re8 re8 re8 re8 re8 re8 |
    re8 re8 dos8 la8 mi'8 mi8 |
    fa8 fa,8 fa8 fa8 fa4 |
    re'8  re8  re8  re8  re8  re8  |
    do8  do8  do8  do8  do8  do8  |
    do8  do8  do8  do8  do8  do8  |
    sib8  sib8  sib8  sib8  sib8  sib8  |
    la8  la8  la8  la8  sol8  sol8  |
    sol8  sol8  fa8  fa8  fa8  fa8  |
    fa8  sol8  fa8  sol8  sib8  sib8  |
    sib8  sib8  la8  sib8  fa8  fa8  |
    sol8  sol8  sib8  la8  sib8  sib8  |
    sib8 sib8 sib8 sib8 la8 la8 |
    sib4. re8 do8 la8 |
    sib8 do8 re8 -> do8 sib8 la8 |
    sib8 -> sib8 -> do8 ( re8 ) mib4 |
    re4\ffz ~ re8 r8 r4 |
    R2. |
    re,8  re8  re8  re8  re8  re8  |
    r8 re8 re8 re8 re8 re8 |
    re8  re8  re8  re8  re8  re8  |
    r8 re8  re8  re8  re8  re8  |
    re8  re8  re8  -> re8  re8  re8  |
    re8  -> re8  re8  re8  re8  -> re8  |
    re8  re8  re8  re8  re8  re8  |
    r8 re'8  re8  re8  mib8  mib8  |
    mi8  mi8  fa8  fa8  fas8  fas8  |
    re,8  re8  re8  re8  re8  re8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    fas8  fas8  fas8  fas8  fas8  fas8  |
    r8 re8  re8  sol8  fa8  mib8  |
    fa8  fa8  fa8  fa8  fa8  fa8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    re8  re8  re8  re8  re8  re8  |
    r8 mib8  mib8  mib8  mib8  mib8  |
    r8 re'8\p  mib8  re8  dos8  re8  |
    r8 re8  mib8  re8  dos8  re8  |
    r8 sol8  sols8  sol8  fas8  sol8  |
    r8 sol8  sols8  sol8  fas8  sol8  |
    r8 fas8 fas8 fas8 fas8 fas8 |
    sol8 sol8 sol8 sol8 sol8 sol8 |
    sol8 sol8 sol8 sol8 sol8 sol8 |
    sol8 sol8 fas8 re8 la'8 la8 |
    sib8 sol,8 sol8 sol8 sol4 |
}

dynamics = {
  s2.\p |
  s2. * 2 |
  s4 s2\< |
  s2. \mf |
  s4 s2\> |
  s2. \p |
  s2. |
  % N
  s2. * 2 |
  s8 s8\cresc s2 |
  s2 s4\< |
  s8\f\> s8 s8 s8\! s4 |
  s2 s32 s32 \< s8 s16 \! |
  s4\ffp\> s4 s4\pp |
  % O
  s2. \pp |
  s2. * 3 |
  s2. \cresc |
  s2 s4\p |
  s2\< s4\p |
  s2\< s8\p s8\< |
  s4 s4\p \cresc s4 |
  s4 s2\< |
  s2.\ff |
  s8\< s8\! s2 |
  s4 s2\< |
  s8\! s8 s8 s4. |
  s8 s8 s2 |
  s2.\p |
  s2. |
  s4. s8\< s16 s16\> s8 |
  s4.\! s8\< s16 s16\> s8 |
  s4\! s2\cresc |
  s2. |
  s4 s2\dim |
  s2. * 2 |
  % Q
  s2. \pp |
  s2. * 2 |
  s4 s8 s8\< s4|
  s4\mf s4 s4 \dim |
  s2 s4\> |
  s2. \pp |
  s2. |
  % R
  s2. |
  s2. |
  s2. \cresc |
  s2. |
  s8 s8\f s2 |
  s2 s4\< |
  s2.\ff |
  s2 s4\< |
  s4\ffp\>  s4 s4 \pp |
}

staves = {
  \oneStaff
  s2. * 28
  \twoStaves
  s2.
  \oneStaff
  s2. * 18
  \twoStaves
  s2. * 4
  \oneStaff
  s2. * 2
  \twoStaves
}


clarinet = \transpose do re { << \partCombine \notesI \notesII \marks \dynamics>> }
clarinetI = \transpose do re { << \notesI \marks \dynamics >> }
clarinetII = \transpose do re { <<  \notesII \marks \dynamics >> }


clarinet_staves = {
  <<
      \new Staff \with {
      \override VerticalAxisGroup.remove-empty = ##t
      \override VerticalAxisGroup.remove-first = ##t
      \override VerticalAxisGroup.remove-layer = 1
      }
      << \clarinetI \staves >>
      \new Staff \with {
      \override VerticalAxisGroup.remove-empty = ##t
      \override VerticalAxisGroup.remove-first = ##t
      \override VerticalAxisGroup.remove-layer = 1
      }
      << \clarinetII \staves >>
      \new Staff \with {
      \override VerticalAxisGroup.remove-layer = 2
      }
      \clarinet
  >>
}

clarinet_conductor = {
  \new GrandStaff \with {
    \consists Keep_alive_together_engraver
    \consists Keep_alive_together_engraver
    instrumentName = \clarinet_name_long
    shortInstrumentName = \clarinet_name_short
    soloText = "Cl. I"
    soloIIText = "Cl. II"
  }
  \clarinet_staves
}

clarinetI_air = \score {
  \header { piece = "IV. Air" }
  
    \new Staff
    \clarinetI
  
}

clarinetII_air = \score {
  \header { piece = "IV. Air" }
  
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