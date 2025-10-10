\version "2.24.4"

\include "globals.ily"

\language "português"

dynamics = {
  s2 |
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
  s2 s2\pp |
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
  s1 * 3 |
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
  s1 * 3 |
  s1\cresc |
  s1 |
  s2 s2\f |
  s1 * 3 |
  s2 s2\< |
  s1 |
  s2\ff s2\pp |
  s1 * 7 |
  s2 |
}

notes = \relative do' {
  \set Staff.midiInstrument = #"viola"
  \clef alto
  s2 |
  s1 * 3 |
  s2 si4-> (do-.) |
  do4-> (mi-.) mi-> fas-. |
  fas2-> re4 mi |
  do4 re re mi |
  la,2 si-> ~ |
  4 r4 |
  % H
  s2 |
  s1 * 9 |
  s2 si4-> (do-.) |
  do4-> (mi-.) mi-> fas-. |
  fas2-> re4 mi |
  do4 re re mi |
  la,2 si-> ~ |
  4 r4 |
  % I
  s2 |
  s1 * 3 |
  s2 do2-> |
  \grace{si16(do} si8->) la sol4-. do8-> re mi4-. |
  si2-> mi-> |
  \grace{re16^( mi} re8->) si re4-. \grace{do16 (re} do8->) la do4-. |
  <si re>4\nondiv <la re> sol2 ~ |
  1 ~ |
  1 ~ |
  1 |
  % K
  re'4-. re,-. s2 |
  s1 * 4 |
  s2 |
  % MUSETTE
  s2 |
  s1 * 7 |
  s2 |
  % L
  sol4-. sol-. |
  fa-. sol-. la-. la-. |
  sib4-. sib-. sol-. la-. |
  la4-. re,-. s2 |
  s1 * 8 |
  % M
  s1 * 8 |
  s2 |
}

notesI = \relative do' {
  \partCombineApart
  r2 |
  r2 \partCombineAutomatic sol'4->\pp (la8) r8 |
  la2 si4 (mi, ~ |
  4 re) re2 |
  re2 s2 |
  s1 * 4 |
  s2 |
  % H
  la2 |
  la4.-> r8  la2 |
  la4.-> r8  la2 |
  re2-> (dos |
  si2 la |
  sol2 fas) |
  r2 sol'4-> (sol8) r8 |
  sol4-> (sol8) r8 sol4-> (la8) r8 |
  la2 si4 (mi, ~ |
  4 re) re2 |
  re2 s2 |
  s1 * 4 |
  s2 |
  % I
  mi2 |
  \grace{re16^(mi} re8-> do si4 mi8 fas sol4 |
  re2) sol |
  \grace{fas16^( sol} fas8-> re fas4 \grace{mi16 fas} mi8 do mi4)
  re4-. re-. s2 |
  s1 * 7 |
  % K
  s2 si'4-> re-> |
  re4-> do-> do-> sol'-> |
  fas2-> re4 mi |
  do4 re re do8 si |
  \set breathMarkType = #'outsidecomma
  la4.\trill (\grace{sol16 la} si8) \breathe si2-> ~ |
  4 r4 |
  % MUSETTE
  mi,8 (re mi sol |
  fa8 mi re fa) mi (re do mi|
  re8 si sol4) fa'8-> (la fa re) |
  do8-> (mi do la) sol (si sol re) |
  mi2-> sol'4. sol8-> ~ |
  4. sol8-> ~ 4. sol8-> ~ |
  2 la8-> (do la fa) |
  mi8-> (sol mi do) si8-> (re si sol) |
  sol4-> ~8 r8 |
  % L
  s2 |
  s1 * 2 |
  s2 re'4-. re-. |
  do4-. mi-. fa-. fa-. |
  fa-. fa-. fa-. mi-. |
  fa-. fa-. fa' fa |
  sol4 sol sol sol |
  fa4 fa fa mi |
  mi re re do |
  do si si do |
  do do re re |
  % M
  mi4 ~8 r8 mi,8 (re mi sol |
  fa8 mi re fa) mi (re do mi|
  re8 si sol4) fa'8-> (la fa re) |
  do8-> (mi do la) sol (si sol re) |
  mi2-> sol'4. sol8-> ~ |
  4. sol8-> ~ 4. sol8-> ~ |
  2 la8-> (do la fa) |
  mi8-> (sol mi do) si8-> (re si sol) |
  sol4-> ~8 r8 |
}

notesII = \relative do' {
  si4->\pp\div (do8) r8 |
  do4-> (mi8) r8 mi4-> (fas8) r8 |
  fas2 sol4 (mi |
  la,4 re) sol, (si) |
  re4 (re,) s2 |
  s1 * 4 |
  s2 |
  % H
  fas4 (re) |
  la'4.-> r8  fas4 (re) |
  la'4.-> r8  fas2 |
  si2-> (la |
  sol2 fas |
  mi2 re) |
  r2 si'4-> (do8) r8 |
  do4-> (mi8) r8 mi4-> (fas8) r8 |
  fas2 sol4 (mi |
  la,4 re) sol, (si) |
  re4 (re,) s2 |
  s1 * 4 |
  s2 |
  % I
  sol2 ~ |
  1 ~ |
  2 sol2 ~ |
  1 |
  si8 (do) re4-. s2 |
  s1 * 7 |
  % K
  s2 si4-> re-> |
  re4-> do-> do-> sol'-> |
  fas2-> re4 mi |
  do4 re re do8 si |
  \set breathMarkType = #'outsidecomma
  la4.\trill (\grace{sol16 la} si8) \breathe si2-> ~ |
  4 r4 |
  % MUSETTE
  mi,8 (re mi sol |
  fa8 mi re fa) mi (re do mi|
  re4 sol4) do2-> |
  sol2-> re-> |
  do2-> sol'4. sol8-> ~ |
  4. sol8-> ~ 4. sol8-> ~ |
  2 fa'8-> (la fa re) |
  do8-> (mi do la) sol8-> (si sol re) |
  mi4-> ~8 r8 |
  % L
  s2 |
  s1 * 2 |
  s2 sib'4-. sib-. |
  la4-. sib-. do-. do-. |
  re4-. re-. sib-. do-. |
  do4-. fa,-. fa' fa |
  sol4 sol sol sol |
  fa4 fa fa mi |
  mi re re do |
  do si si do |
  do do re re |
  % M
  mi4 ~8 r8 mi,8 (re mi sol |
  fa8 mi re fa) mi (re do mi|
  re4 sol4) do2-> |
  sol2-> re-> |
  do2-> sol'4. sol8-> ~ |
  4. sol8-> ~ 4. sol8-> ~ |
  2 fa'8-> (la fa re) |
  do8-> (mi do la) sol8-> (si sol re) |
  mi4-> ~8 r8 |
}

staves = {
  \twoStaves
  s2 |
  s1 * 4 |
  \oneStaff
  s1 * 4 |
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
  s1 * 7 |
  % K
  \twoStaves
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
  s1 * 9 |
  % M
  s1 * 8 |
  s2 |
}

viola = <<\notes \partCombine \notesI \notesII \marks \dynamics>>

violaI = <<\notes \notesI \marks \dynamics>>
violaII = <<\notes \notesII \marks \dynamics>>


viola_conductor = {
  \new Staff \with {
    printPartCombineTexts = ##f
    \consists Merge_rests_engraver
    instrumentName = \viola_name_long
    shortInstrumentName = \viola_name_short
  }
  \viola
}

viola_gavotte = \score {
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
      << \violaI \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \violaII \staves >>
      \new Staff \with {
        printPartCombineTexts = ##f
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-layer = 2
      }
      << \viola >>
    >>
  
}

% \score {
%   \viola_conductor
% }