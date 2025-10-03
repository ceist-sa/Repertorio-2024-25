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
  s2 s32 s32 \< s8 s16 \!
  s4\ffp\> s4 s4\pp |
  % O
  s2. \pp |
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
  s8 s8\p s2 |
  s2. |
  s4.\! s8\< s16 s16\> s8 |
  s4\! s2\cresc |
  s2. |
  s4 s4 s4\dim |
  s2. |
  s4 s2\>
  % Q
  s8\! s8 \pp s2 |
  s2. * 2 |
  s4 s8 s8\< s4 |
  s8\! s8\mf s4 s4 \dim |
  s2 s4\> |
  s8\! s8 \pp s2 |
  s2. |
  % R
  s8 s8\p s2 |
  s2. |
  s8 \cresc s8 s2 |
  s2. |
  s8 s8\f s2 |
  s2 s4\< |
  s2.\ff |
  s2 s4\< |
  s4\ffp\>  s4 s4 \pp |
}

notes = \relative do' {
  \set Staff.midiInstrument = #"violin"
  \clef treble
  <re sol>8\div 8 8 8 8 8 |
  <mib sol>8 8 8 8 8 8 |
  <do fas>8 8 8 8 8 8 |
  <re sol>8 [8 8 8] <sib fa'!>8 [<sib mib>8] |
  <sib re>8 8 8 8 8 8 |
  r8 re re re reb do |
  si8 8 8 8 8 8 |
  r8 si si re! re do |
  % N
  s2. * 7 |
  % O
  s2. * 13 |
  % P
  s2. * 6 |
  r4 r fas4( ~ |
  16 mi) mi (fas) r4 r |
  fas16 (mi) mi (fas) r4 fas16 (mi) mi (fas) |
}

notesI = \relative do'' {
  \set Staff.midiInstrument = #"violin"
  s2. * 8 |
  r8 re8\div 8 8 8 8 |
  re8 8 8 8 8 8 |
  r8 la'8 8 8 8 8 |
  la8 8 sol8 sib8 la8 8 |
  la8 8 sol8 8 la8 8 |
  sol8 [fa mi re] la' [la] |
  la8 la,,8 8 8 la4 |
  % O
  sib'8 8 8 8 8 8 |
  sib8 8 8 8 8 8 |
  la8 8 8 8 8 8 |
  sib8 8 8 8 8 8 |
  la8 [8 8 8] sol8 [8] |
  sol8 sol fa fa r4 |
  r4 r sib8 8 |
  sib8 sol fa sol r4 |
  r4 sib8 fa sol sib |
  fa8 sib sib [sib la la] |
  sib8 sib sib re do la |
  sib8 [do re-> do] sib [sol'16 (fa)] |
  fa8-> [mi->] fa8 [8 8 8] |
  % P
  r8 sib,8 8 [8 8 8] |
  r8 la8 8 [8 8 8] |
  R2. |
  r8 fas fas fas mi mi |
  R2. |
  r8 fas fas fas mi mi |
  s2. * 3 |
  r8 fas-. fas-. fas-. sol-. sol-. |
  sols8-. sols-. la-. la-. sib-. sib-. |
  % Q
  r8 sib8-. 8-. 8-. 8-. 8-. |
  r8 <sol la>8 8 8 8 8 |
  r8 <fas la>8 8 8 8 8 |
  r8 sol8 8 8 8 8 |
  r8 <re sib'>8 8 8 8 8 |
  r8 <mib sol>8 8 8 mib8 8 |
  r8 sol8 8 8 fa8 8 |
  r8 <sol, mib'>8 8 8 8 8 |
  % R
  r8 <fas' la>8 8 8 8 8 |
  r8 <sol sib>8 8 8 8 8 |
  r8 <si re>8 8 8 8 8 |
  r8 <do mib>8 8 8 8 8 |
  r8 re' mib re dos re |
  re8 re do! mib re re |
  re8-> [re do do] re [re] |
  do8 [sib la sol] re' [re] |
  re8 re,,8 8 8 4 |
}

notesII = \relative do'' {
  \set Staff.midiInstrument = #"violin"
  s2. * 8 |
  r8 re,8 8 8 8 8 |
  re8 8 8 8 8 8 |
  r8 la'8 8 8 8 8 |
  la8 8 sol8 sib8 la8 8 |
  la8 8 sol8 8 la8 8 |
  sol8 [fa mi re] la' [la] |
  la8 la,8 8 8 la4 |
  % O
  fa'8 8 8 8 8 8 |
  sol8 8 8 8 8 8 |
  fa8 8 8 8 8 8 |
  fa8 [8 8 8] mib8 [8] |
  mib8 [8] re8 [8 8 8] |
  do8 8 8 8 r4 |
  r4 r4 fa8 8 |
  fa8 mib do mib r4 |
  r4 fa8 fa mib re |
  fa8 mi fa8 [8 8 8] |
  sol8-> 8 8 sib la fa |
  sol8 [la sib-> la] sol [la] |
  sib8-> [8-> 8 8] la la |
  % P
  r8 fa8 8 [8 8 8] |
  r8 mib8 8 [8 8 8] |
  R2. |
  r8 re8 8 8 8 8 |
  R2. |
  r8 re8 8 8 8 8 |
  s2. * 3 |
  r8 re8-. 8-. 8-. mib!8-. 8-. |
  mi8-. 8-. fa8-. 8-. fas8-. 8-. |
  % Q
  r8-. sol8-. 8-. 8-. 8-. 8-. |
  r8 mib8 8 8 8 8 |
  r8 mib8 8 8 8 8 |
  r8 re8 8 sol fa mib |
  r8 fa8 8 8 8 8 |
  r8 re8 8 8 reb do |
  r8 <si re!>8 8 8 8 8 |
  r8 si8 8 re8 8 do8 |
  r8 re mib re dos re |
  r8 re mib re dos re |
  r8 sol lab sol fas sol |
  r8 sol lab sol fas sol |
  r8 re' mib re dos re |
  re8 re do! mib re re |
  re8-> [re do do] re [re] |
  do8 [sib la sol] re' [re] |
  re8 re,8 8 8 4 |

}


staves = {
  \oneStaff
  s2. * 15 |
  % O
  s2. * 11 |
  \twoStaves
  s2. * 2 |
  % P
  \oneStaff
  s2. * 3 |
  \twoStaves
  s2. * 3 |
  \oneStaff
  s2. * 5 |
  % Q
  s2. |
  \twoStaves
  s2. * 7 |
  % R
  s2. * 4 |
  \oneStaff
}


second_violin = << \notes \partCombine \notesI \notesII \marks \dynamics >>
second_violinI = <<\notes \notesI \marks \dynamics>>
second_violinII = <<\notes \notesII \marks \dynamics>>

second_violin_conductor = {
   \new Staff \with {
     printPartCombineTexts = ##f
     instrumentName = \second_violin_name_long
     shortInstrumentName = \second_violin_name_short
   }
   \second_violin
}

second_violin_air = \score {
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
      << \second_violinI \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \second_violinII \staves >>
      \new Staff \with {
        printPartCombineTexts = ##f
        \override VerticalAxisGroup.remove-layer = 2
      }
      << \second_violin \staves >>
    >>
  }
}

% \second_violin_air