\version "2.24.4"

\include "globals.ily"

\language "português"

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
  s8\! s8\ffz s8 s4.\> |
  s8\! s8 \dim s2 |
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
  s2. \pcantab |
  s2. |
  s2. \cresc |
  s2. |
  s8 s8\f s2 |
  s2 s4\< |
  s2.\ff |
  s2 s4\< |
  s4\ffp\>  s4 s4 \pp |
}

notes = \relative do' {
  \set Staff.midiInstrument = #"viola"
  \clef alto
  sib8 8 8 8 8 8 |
  la8 8 8 8 8 8 |
  la8 8 8 8 8 8 |
  sib8 8 8 8 sol8 8 |
  fa8 8 8 8 8 8 |
  r8 <mib sol>8\nondiv 8 8 8 8 |
  <re sol>8 8 8 8 8 8 |
  r8 <mib sol>8 8 8 8 8 |
  % N
  s2. * 7
  % O
  <re' fa>8 8 8 8 8 8 |
  <do mib>8 8 8 8 8 8 |
  <do mib>8 8 8 8 8 8 |
  <sib re>8 8 8 8 8 8 |
  <la do>8 [8 8 8] <sol sib>8 [8] |
  <sol sib>8 [8] <fa la>8 [8] <fa sib>8 [8] |
  <fa sib>8 [<sol sib>8] <fa la >8 [<sol sib>8] sib8 [8] |
  sib8 [8 la8 sib8] <fa sib>8 [<fa la>8] |
  <sol sib>8 [8] sib8 [<la do>8] sib8 [8] |
  sib8 <sib mi>8 do8 8 8 8 |
  mib!8-> 8 8 8 8 8 |
  mib8 8 8-> 8 s4 |

}

notesI = \relative do'' {
  \set Staff.midiInstrument = #"viola"
  s2. * 8 |
  % N
  r8 la8\div 8 8 8 8 |
  sol8 8 8 8 8 8 |
  r8 mi'8 8 8 8 8 |
  re8 [8 mi8 8] 8 [8] |
  re8 8 8 8 8 8 |
  re8 8 dos8 la8 mi'8 8 |
  fa8 fa,,8 8 8 4 |
  % O
  s2. * 11 |
  s2 mib'8 sol16 (fa) |
  fa8-> [mi->] fa8 [8 8 8] |
  %P
  r8 fa8 8 8 8 8 |
  r8 mib8 8 8 8 8 |
  <la, re>8 [8 8 8] <sib re>8 [8] |
  r8 la8 8 8 sol8 sib8 |
  <la re>8 [8 8 8] <sib re>8 [8] |
  r8 la8 8 8 sol8 8 |
  <la re>8 [8] <sol re'>8-> [8] <la re>8 [8] |
  <sib re>8-> [8] <la re>8 [8] <sol re'>8-> [8] |
  <la re>8 <sol re>8 <la re>8 <sib re>8 <la re>8 <sol re>8 |
  <la re>4 ~ 8 r8 r4 |
  R2. |
  % Q
  sib8-. 8-. 8-. 8-. 8-. 8-. |
  r8 la8 8 8 8 8 |
  <fas la>8 8 8 8 8 8 |
  r8 sol8 8 sib8 8 8 |
  sib8 8 8 8 8 8 |
  r8 sol8 8 8 8 8 |
  sol8 8 8 8 sol16 lab lab8 |
  r8 sol8 8 8 8 8 |
  fas'2 (~16 la) sol fas |
  la16 (sol fas sol) \grace{fas16 (sol la} sol2) |
  si2 (~16 re) do si |
  re16 (do si do) \grace{si16 (do re} do2) |
  r8 \clef treble la'8 8 8 8 8 |
  sol8 [8 la8 8] 8 [8] |
  sol8-> 8 8 8 8 8 |
  sol8 8 fas8 re8 la'8 [8] |
  sib8 \clef alto sib,,8 8 8 4 |
}

notesII = \relative do' {
  \set Staff.midiInstrument = #"viola"
  s2. * 8 |
  % N
  r8 la8 8 8 8 8 |
  sol8 8 8 8 8 8 |
  r8 mi'8 8 8 8 8 |
  re8 [8 mi8 8] 8 [8] |
  re8 8 8 8 8 8 |
  re8 8 dos8 la8 mi'8 8 |
  fa8 fa,8 8 8 4 |
  % O
  s2. * 11 |
  s2 mib'8 [do] |
  sib8-> [sib->] do8 [re mib! mib] |
  %P
  r8 re8 8 8 8 8 |
  r8 do8 8 8 8 8 |
  re,8 8 8 8 8 8 |
  r8 re8 8 8 8 8 |
  re8 8 8 8 8 8 |
  r8 re8 8 8 8 8 |
  re8 8 8-> 8 8 8 |
  re8-> 8 8 8 8-> 8 |
  re8 8 8 8 8 8 |
  re4 ~ 8 r8 r4 |
  R2. |
  % Q
  <re sol>8-. 8-. 8-. 8-. 8-. 8-. |
  r8 <mib sol>8 8 8 8 8 |
  mib8 8 8 8 8 8 |
  r8 re8 8 sol8 8 8 |
  fa8 8 8 8 8 8 |
  r8 mib8 8 8 8 8 |
  re8 8 8 8 8 8 |
  r8 mib8 8 8 8 8 |
  fas2^"sul C" (~16 la) sol fas |
  la16 (sol fas sol) \grace{fas16 (sol la} sol2) |
  si2^"sul G" (~16 re) do si |
  re16 (do si do) \grace{si16 (do re} do2) |
  r8 <fas la>8 8 8 8 8 |
  sol8 [8 la8 8] 8 [8] |
  sol8-> 8 8 8 8 8 |
  sol8 8 fas8 re8 la'8 [8] |
  sib8 sib,8 8 8 4 |
}

staves = {
  \oneStaff
  s2. * 15 |
  % O
  s2. * 12 |
  \twoStaves
  s2. |
  % P
  s2. * 2 |
  % ...
  % two staves until the end
}

viola = <<\notes \partCombine \notesI \notesII \marks \dynamics>>

violaI = <<\notes \notesI \marks \dynamics>>
violaII = <<\notes \notesII \marks \dynamics>>


viola_conductor = {
  \new Staff \with {
    printPartCombineTexts = ##f
    instrumentName = \viola_name_long
    shortInstrumentName = \viola_name_short
  }
  \viola
}

viola_air = \score {
  \header { piece = "IV. Air" }
  \compressMMRests {
    \new GrandStaff \with {
      \consists "Keep_alive_together_engraver"
    }
    <<
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \violaI \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \violaII \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-layer = 2
        printPartCombineTexts = ##f
      }
      << \viola >>
    >>
  }
}

% \viola_air