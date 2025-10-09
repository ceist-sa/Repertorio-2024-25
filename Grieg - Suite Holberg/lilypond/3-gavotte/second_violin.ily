\version "2.24.4"

\include "globals.ily"

\language "português"

dynamics = {
  s2\pp |
  s1 |
  s1 \fpp |
  s1 |
  s2 s2\f |
  s1 |
  s1 \fz |
  s1 * 2 |
  s2 |
  % H
  s2 \p |
  s1 |
  s2 \once \override Hairpin.to-barline = ##f s2\< |
  s2\! s2 |
  s2 s2\> |
  s2 s2\! |
  s2 s2 |
  s1 |
  s1 \fpp |
  s1 |
  s2 s2\f |
  s1 |
  s1 \fz |
  s1 * 2 |
  s2 |
  % I
  s2 \fpp |
  s1 |
  s2 s2 \fpp |
  s1 |
  s2 s2 \f |
  s1 |
  s2 s2\f |
  s1 |
  s2 s2 \pp |
  s1 |
  s1\fpp |
  s1 |
  % K
  s2 s2 \f |
  s1\< |
  s1 \ff |
  s1 * 2 |
  s2 |
  % MUSETTE
  s2 \pp |
  s1 * 7 |
  s2 |
  % L
  s2\p |
  s1 * 2 |
  s2 s2\cantab |
  s1\cresc |
  s1 |
  s2 s2\f |
  s1 * 3 |
  s2. s4\< |
  s1 |
  s2\ff s2\pp |
  s1 * 7 |
  s2 |
}

notes = \relative do'' {
  \set Staff.midiInstrument = #"violin"
  \clef treble
  s2 |
  s1 * 3 |
  s2 sol4-> (4-.) |
  sol4-> (4-.) sol-> do-. |
  do2-> sol4 sol |
  sol4 fas sol mi |
  re2 re2-> ~|
  4 r4 |
  % H
  s2 |
  s1 * 9 |
  s2 sol4-> (4-.) |
  sol4-> (4-.) sol-> do-. |
  do2-> sol4 sol |
  sol4 fas sol mi |
  re2 re2-> ~|
  4 r4 |
  % I
  s2 |
  s1 * 3 |
  s2 sol2-> |
  sol8-> 8 4-. 8-> 8 4-. |
  sol2-> si-> |
  sol8-> 8 4-. 8-> 8 4-. |
  sol4-. fas-. s2 |
  s1 * 3 |
  % K
  s1 * 5 |
  s2 |
  % MUSETTE
  s2 |
  s1 * 7 |
  s2 |
  % L
  si,4-. si-. |
  la4-. dos-. re-. re-. |
  re4-. re-. <sib re>-. dos-. |
  re-. re-. s2 |

}

notesI = \relative do'' {
  sol4-> (la8) r8 |
  la4-> (do8) r8 do4-> (mi8) r8 |
  mi2 (\grace{re16 mi} re8 do si4 |
  do4 la) \grace{si16 (do} si8 la sol4) |
  la2 s2 |
  s1 * 4 |
  s2 |
  % H
  la4 (re) |
  re,4.-> r8 la' (fas la re) |
  re,4.-> r8 re2 |
  sol2-> (fas |
  mi2 re ~ |
  1) |
  r2
  \partCombineApart
  sol4->\pp (la8) r8 |
  la4-> (do8) r8 \partCombineAutomatic do4-> (mi8) r8 |
  mi2 (\grace{re16 mi} re8 do si4 |
  do4 la) \grace{si16 (do} si8 la sol4) |
  la2 s2 |
  s1 * 4 |
  s2 |
  % I
  do2 |
  \grace{si16 ^(do} si8 la sol4 do8 re mi4 |
  si2) mi |
  \grace{re16 ^(mi} re8-> si re4 \grace{do16 re} do8 la do4) |
  si4-. la-. s2 |
  s1 * 3 |
  s2 re,4-> (mi8) r8 |
  mi4-> (sol8) r8 sol4-> (la8) r8 |
  la2 (si4 mi, ~|
  4 re) re2 |
  % K
  re2 re'4-> re-> |
  re4-> sol-> sol-> do-> |
  do2-> sol4 sol |
  sol4 fas sol mi |
  re2 \breathe re2-> ~ |
  4 r4 |
  % MUSETTE
  sol,4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 do-> |
  sol2-> re-> |
  do2-> sol''4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 fa8-> (la fa re) |
  do8-> (mi do la) sol-> (si sol re) |
  mi4-> ~ 8 r8 |
  % L
  s2 |
  s1 * 2 |
  s2 fa'2( ~ |
  8 sol) sol (la) la2 ( ~|
  8 sib) la (sib) sol4 la8 (sib) |
  \grace{la16 ^(sib} la8 sol) fa4-. la la |
  si!4 4 4 4 |
  la4 4 4 sol |
  sol4 fa fa mi |
  mi4 re re do |
  sol'4 fa sol sol |
  % M
  sol4 ~ 8 r8 sol,4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 do-> |
  sol2-> re-> |
  do2-> sol''4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 fa8-> (la fa re) |
  do8-> (mi do la) sol-> (si sol re) |
  mi4-> ~ 8 r8 |
}

notesII = \relative do'' {
  sol4-> (sol8) r8 | %compiler throws a warning here, but it seems fine
  sol4-> (sol8) r8 sol4-> (do8) r8 |
  do2 si4 _(sol4 ~|
  4 fas) sol (re) |
  fas2 s2 |
  s1 * 4 |
  s2 |
  % H
  re4 (fas) |
  re4.-> r8 re4 (fas) |
  re4.-> r8 re2 |
  re1 ( ~|
  2 la2 ~|
  1) |
  r2 r2 |
  r2 sol'4->\pp (do8) r8 |
  do2 si4 _(sol4 ~|
  4 fas) sol (re) |
  fas2 s2 |
  s1 * 4 |
  s2 |
  % I
  sol2 |
  sol1 ~ |
  2 si |
  la2 (sol) |
  sol4-. fas-. s2 |
  s1 * 3 |
  s2 si,4-> (do8) r8 |
  do4-> (mi8) r8 mi4-> (fas8) r8 |
  fas2 (sol4 mi |
  la,4 re) sol, (si) |
  % K
  la2 re4-> re-> |
  re4-> sol-> sol-> do-> |
  do2-> sol4 sol |
  sol4 fas sol mi |
  re2 \breathe re2-> ~ |
  4 r4 |
  % MUSETTE
  sol,4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 la'8-> (do la fa) |
  mi8-> (sol mi do) si-> (re si sol) |
  sol2-> sol'4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 la8-> (do la fa) |
  mi8-> (sol mi do) si-> (re si sol) |
  sol4-> ~8 r8 |
  % L
  s2 |
  s1 * 2 |
  s2 fa'2( ~ |
  8 sol) sol (la) la2 ( ~|
  8 sib) la (sib) sol4 la8 (sib) |
  \grace{la16 ^(sib} la8 sol) fa4-. la la |
  si!4 4 4 4 |
  la4 4 4 sol |
  sol4 fa fa mi |
  mi4 re re do |
  sol'4 fa sol sol |
  % M
  sol4 ~ 8 r8 sol,4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 la'8-> (do la fa) |
  mi8-> (sol mi do) si-> (re si sol) |
  sol2-> sol'4. sol8-> ~ |
  4. 8-> ~4. 8-> ~ |
  2 la8-> (do la fa) |
  mi8-> (sol mi do) si-> (re si sol) |
  sol4-> ~8 r8 |
}


staves = {
  \twoStaves
  s2 |
  s1 * 3 |
  \oneStaff
  s1 * 5 |
  s2 |
  % H
  \twoStaves
  s2 |
  s1 * 10 |
  \oneStaff
  s1 * 4 |
  s2 |
  % I
  \twoStaves
  s2 |
  s1 * 4 |
  \oneStaff
  s1 * 4 |
  \twoStaves
  s1 * 3 |
  % K
  s1 * 5 |
  s2 |
  % MUSETTE
  s2 |
  s1 * 7 |
  s2 |
  % L
  \oneStaff
  s2 |
  s1 * 2 |
  \twoStaves
  % ... two staves until the end
}


second_violin = << \notes \partCombine \notesI \notesII \marks \dynamics >>
second_violinI = <<\notes \notesI \marks \dynamics>>
second_violinII = <<\notes \notesII \marks \dynamics>>

second_violin_conductor = {
  \new Staff \with {
    printPartCombineTexts = ##f
    \consists Merge_rests_engraver
    instrumentName = \second_violin_name_long
    shortInstrumentName = \second_violin_name_short
  }
  \second_violin
}

second_violin_gavotte = \score {
  \header { piece = "III. Gavotte" }
  
    \new GrandStaff \with {
      \consists "Keep_alive_together_engraver"
    }
    <<
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \second_violinI \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \second_violinII \staves >>
      \new Staff \with {
        printPartCombineTexts = ##f
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-layer = 2
      }
      << \second_violin >>
    >>
  
}

% \second_violin_gavotte