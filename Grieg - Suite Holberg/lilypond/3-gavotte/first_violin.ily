\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

notes = \relative do'{
  \set Staff.midiInstrument = #"violin"
  \clef treble
  \key sol \major
  s2|
  s1*2 |
  %tutti
  R1 |
  r2 sol'4-> \tutti ( la-.) |
  la->( do-.) do-> mi-. |
  mi2-> re8 do si4 |
  do4 la si8( do) la sol |
  \grace{ fas16( sol} fas4. sol8) sol2->~|
  sol4 r4 r2|%H
  si4->( la8) r8 r2 |
  \grace{si16( dos} si4-> la8) r8 la8( fas la re) |
  sol,( mi sol re') fas,( re fas re') |
  mi,(re mi re') re,( dos re re')|
  re,( dos re re') re,( dos re re')|
  %divisi
  r2 s2 |
  s1 * 2 |
  %tutti
  R1 |
  r2 sol,4-> \tutti ( la-.) |
  la->( do-.) do-> mi-. |
  mi2-> re8 do si4 |
  do4 la si8( do) la sol |
  \grace{ fas16( sol} fas4. sol8-.) sol2->~|
  sol4 r4 r2| %I
  R1*3 |
  r2 do2-> |
  \grace { si16( do} si8->) la sol4-. do8-> re mi4-. |
  si2-> mi-> |
  \grace { re16( mi} re8->) si re4-. \grace { do16( re} do8->) la do4-.|
  %divisi
  s1 *37 |
  s2 |
}

notesI = \relative do'{
  \partCombineApart
  r2|
  R1*2 |
  \partCombineAutomatic
  %tutti
  s1*6 |
  s2 |
  % H
  s2 |
  s1 * 5 |
  %divisi
  s2 \partCombineApart r2 |
  R1 * 2 |
  \partCombineAutomatic
  %tutti
  s1 * 6 |
  s2 |
  % I
  s2 |
  s1 * 7 |
  %divisi
  <re si'>4\nondiv <re la'>4 \partCombineApart sol4( la8) r8 |
  la4->( do8) r8 do4->( mi8) r8 |
  mi2 \grace{ re16\( ( mi} re8) do si4 |
  do la\) \grace{ si16\( ( do} si8) la sol4\) | %K
  \partCombineAutomatic
  la2 sol'4-> la-> |
  la-> do-> do-> mi-> |
  mi2-> re8 do si4 |
  do4 la si8(do) la sol |
  \afterGrace fas4.\trill( { mi16 fas} sol8) \breathe sol2->~|
  sol4 r4 |
  % MUSETTE
  r2 |
  R1*3|
  r2 mi8( re mi sol |
  fa mi re fa) mi( re do mi |
  re si sol4) do'2-> |
  sol-> re-> |
  do4->( do8) r8 |
  % L
  r2 |
  R1 *2 |
  r2 re4-. re-. |
  do-. mi-. fa-. fa-. |
  fa-. fa-. fa-. mi-. |
  fa-. fa-. fa'2~\( |
  fa8 sol\) fa sol mi2~\( |
  mi8 fa \) mi fa re( mi) re mi |
  do( re) do re  si( do) si do |
  la( si) la si sol( la) sol( do) |
  sol( do) fa,( do') do4 si8(do) | %M
  do4( do8) r8 r2|
  R1 *3 |
  r2 mi,8( re mi sol |
  fa mi re fa) mi(re do mi |
  re si sol4) do'2-> |
  sol-> re-> |
  do4->( do8) r8 |


}

notesII = \relative do'{
  \once \stemUp
  sol2 \div ~|
  \once \stemUp
  sol1~|
  \once \stemUp
  sol2. r4 |
  %tutti
  s1*12 |
  %divisi
  s2 sol2\div ~|
  sol1~|
  sol2. r4 |
  %\stemNeutral
  %\partCombineAutomatic
  %tutti
  s1 *14 |
  %divisi
  <re' si'>4 <re la'>4 sol( sol8) r8 |
  sol4->( sol8) r8 do4->( do8) r8 |
  do2 si4( sol~|
  sol fas) sol( re)| %K
  fas2 sol4-> la-> |
  la-> do-> do-> mi-> |
  mi2-> re8 do si4 |
  do4 la si8(do) la sol |
  \afterGrace fas4.\trill( { mi16 fas} sol8) \breathe sol2->~|
  sol4 r4 r2|
  R1*3|
  r2 mi8( re mi sol |
  fa mi re fa) mi( re do mi |
  re si sol4) do'2-> |
  sol-> re-> |
  do4->( do8) r8 r2 | %L
  R1 *2 |
  r2 sib'4-. sib-. |
  la-. sib-. do-. do-. |
  re-. re-. re-. do-. |
  do-. fa,-. fa'2~\( |
  fa8 sol\) fa sol mi2~\( |
  mi8 fa \) mi fa re( mi) re mi |
  do( re) do re  si( do) si do |
  la( si) la si sol( la) sol( do) |
  sol( do) fa,( do') do4 si8(do) | %M
  do4( do8) r8 r2|
  R1 *3 |
  r2 mi,8( re mi sol |
  fa mi re fa) mi(re do mi |
  re si sol4) do'2-> |
  sol-> re-> |
  do4->( do8) r8 |
}

staves = {
  \oneStaff s2
  s1*33
  %{\twoStaves%} s1 *35
  s2
}




dynamics = {
s2 \pp |
s1 *3 |
s2  s4 \f s4 |
s1 \< |
s2 \fz s2 |
s1 |
s1 |
s1 |
s4\p s4 s2|
s1*4|
s2 s2 \pp |
s1 *3 |
s2 s2\f |
s1 |
s1 \fz |
s1 *6 |
s2 s2 \f |
s1|
s2 s2 \f |
s1 |
s2 s2 \pp |
s1 |
s2 \fp s2 |
s1 |
s2 s2 \f |
s4 \< s4 s2 |
s2 \ff s2 |
s1 *6
s2 s2 \pp |
s1 *6
s2 s2 \p |
s2 s2 \cresc |
s1 |
s2 s2 \f |
s1*3 |
s2 s4 s8 \< s8 |
s2 s4 s8 \! s8 |
s4 \ff s4 s2 |
s1 *3 |
s2 s4 \pp s4 |
s1 * 3 |
s2 |


}



first_violin = << \notes \partCombine \notesI \notesII \marks \dynamics >>
first_violinI = <<\notes \notesI \marks \dynamics>>
first_violinII = <<\notes \notesII \marks \dynamics>>

first_violin_conductor = {
  \new Staff \with {
    printPartCombineTexts = ##f
    \consists Merge_rests_engraver
    instrumentName = \first_violin_name_long
    shortInstrumentName = \first_violin_name_short
  }
  \first_violin
}

first_violin_gavotte = \score {
  \header { piece = "III. Gavotte" }
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
      << \first_violinI \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \first_violinII \staves >>
      \new Staff \with {
        printPartCombineTexts = ##f
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-layer = 2
      }
      << \first_violin \staves >>
    >>
  }
}

% \first_violin_gavotte