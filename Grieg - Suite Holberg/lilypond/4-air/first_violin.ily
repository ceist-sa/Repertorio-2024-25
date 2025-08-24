\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

notes = \relative do''{
  \clef treble 
  re4 re2-- | 
  \tuplet 3/2 {re32-> \( do si} do16~ do8~ do4. \) r8|
  do4 do2-- |
  \tuplet 3/2 {do32-> \( sib la} sib16~ sib8~ sib4. \) r8|
  r8 fa'4 re8-- sib-- lab-- |
  lab32->(sol fa sol \tuplet 3/2 {fa sol lab} sol16~ sol2) |
  r8 re'8->\(( re16) si\) si sol sol( lab) lab fa |
  fa32->(mib re mib \tuplet 3/2 {re mib fa} mib16~ mib2) | %N
  s2.*7 |%O
  re'4 re2-- |
  fa16( mib) mib re \tuplet 3/2 {re32\( mib fa} mib16~ mib4.\) |
  r4 fa4.( do8) |
  mib16( re) re do \tuplet 3/2 {do32\( re mib } re16~ re8\) r16 mib8( sib16) |
  re16( do) do( re) re( la) la( do) do( sib) sib( do) |
  do( sol) sol( sib) sib( la) la( fa) r4 |
  r4 r4 fa'4~( |
  fa16 mib) mib( do) do( mib) mib( fa) r4 |
  r4 fa16( do) do( sol') sol( re) re( fa) |
  %divisi
  s2.*5 |%P
  R2. |
  fas,4~( fas16 mi) mi( re) mi( fas) fas( sol) |
  R2. |
  fas4~( fas16 mi) mi( re) mi( fas) \tuplet 3/2 { la( sol fas)} |
  R2. |
  fas4~( fas16 mi) mi( fas) r4 |
  r4 fas4~( fas16 mi) mi( fas) |
  r4 fas16( mi) mi( fas) r4 |
  fas16( sol) sol( sols) sols( la) la( re) re( dos) dos( re)|
  re( dos) dos( re) re( dos) dos( re) re( dos) dos( re) | %Q
  r16 dos16 dos( re) re( dos) dos( re) re( dos) dos( re) |
  r16 si si( do) do( si) si( do) do( si) si( do) |
  r16 si si( do) do( si) si( do) do( si) si( do) |
  r16 la la(sib) sib( la) la( sib) sib( la) la( sib) |
  r16 mi mi( fa) fa( mi) mi( fa) fa( mi) mi( fa) |
  r16 la, la(sib) sib( la) la( sib) sib( fas) fas( sol) |
  r16 dos16 dos( re) re( dos) dos( re) re( dos) dos( re) |
  r16 fas, fas( sol) sol( fas) fas( sol) sol( re) re( mib)| %R
  s2.*9 |
}

notesI = \relative do'{
  s2.*8| %N
  r8 fas'8 fas fas fas fas|
  sol sol sol sol sol sol|
  r8 dos dos dos dos dos |
  re re re re re dos16.(re32) |
  re2->\(( re8.) do!16\)|
  do16( si) si sib sib(la) la8 \tuplet 3/2 {re32\( dos si} dos8 re16\) |
  re8 re,, re re re4 |
  %O
  s2.*9|
  r16 sib'' sib( do) do4~( do8. sol'16) |
  sol4~( sol16 sib) sib( la) la( fa) fa sol|
  sol( la) la sib sib->( la) la sol sol( do,) do fa |
  fa( sib,) sib do do4~(do8. sib16) | %P
  sib4( sib8) r8 r4 |
  s2.*18|
  %R
  fas2~( fas16 la) sol fas |
  la( sol fas sol) \grace {fas\( sol la} sol2 \) |
  si2~( si16 re) do si |
  re( do si do) \grace{si\( do re} do2 \) |
  r8 fas8 fas fas fas fas |
  sol sol sol sol sol fas16.( sol32) |
  sol2~ sol8. fa16 |
  fa16( mi) mi mib mib( re) re8 \tuplet 3/2 {sol32\( fas mi} fas8 sol16 \) |
  sol8 sol, sol sol sol4 |

}

notesII = \relative do'{
  s2.*8| %N
  r8 fas8 fas fas fas fas|
  sol sol sol sol sol sol|
  r8 dos dos dos dos dos |
  re re re re re dos16.(re32) |
  re2->\(( re8.) do!16\)|
  do16( si) si sib sib(la) la8 \tuplet 3/2 {re32\( dos si} dos8 re16\) |
  re8 re, re re re4 | %O
  s2.*9| 
  r16 sib' sib( do) do4~( do8. sol'16) |
  sol4~( sol16 sib) sib( la) la( fa) fa sol|
  sol( la) la sib sib->( la) la sol sol( do,) do fa |
  fa( sib,) sib do do4~(do8. sib16) | %P
  sib4( sib8) r8 r4 |
  s2.*18|
  %R 
  fas2~( fas16 la) sol fas |
  la( sol fas sol) \grace {fas\( sol la} sol2 \) |
  si2~( si16 re) do si |
  re( do si do) \grace{si\( do re} do2 \) |
  r8 fas8 fas fas fas fas |
  sol sol sol sol sol fas16.( sol32) |
  sol2~ sol8. fa16 |
  fa16( mi) mi mib mib( re) re8 \tuplet 3/2 {sol32\( fas mi} fas8 sol16 \) |
  sol8 sol, sol sol sol4 |
}

staves = {
  \oneStaff  s2.*8
  \twoStaves s2. *7
  \oneStaff s2. *9
  \twoStaves s2. *5
  \oneStaff s2. *18
  \twoStaves s2.*9  
}




dynamics = {
  s4 \p s2 \< |
  s32 \! s32 s16\> s8 s2 \! |
  s4 s2\< |  
  s32 \! s32 s16\> s8 s2 \! |
  s8 s8 \f  s2 |
  s2.| 
  s4 s4 \dim s16 \< s16\! s16\> s16 \! | 
  s2. |
  s8 s8 \p s2 |
  s2. |
  s8 s8 \cresc s2 | 
  s2 s8 \< s16 s32 s32 \! |
  s4 \f\> s4 s8.\! s16|
  s2 s32 s32 \< s8 s16 \!|
  s8 \ffp s8 \>  s8 s8 s4 \pp | 
  s4 \pp s2 |
  s2. | 
  s4 s8 \< s8 s8 \> s8 \! | 
  s2. |
  s4 \cresc s2 |
  s2. |
  s2 s4 \p |
  s8 s16\< s16 s16 s16 s16 s16\! s4 | 
  s4 s16 \p s16\cresc s8 s4 |  
  s4 s4 \< s4 | 
  s4 \ff s4 s4\< |
  s8 s16 s16 \! s2 |
  s4 s4 \< s4 | 
  s8 \ffz s8 \> s8 \! s8 s4 | 
  s2. | 
  s4 \p s2 | 
  s2. |
  s4 s16 \< s16 s16 s16  s16\> s16 \! s8 |
  s2. | 
  s4 \< s16 \! s16 s8 s4 | 
  s4 s4 \cresc s8 s16 s16 \! |
  s4 s8 \dim s16 s16 \! s4 | 
  s2. | 
  s4 s4\> s8 s16 s16\! |
  s16 s16 \pp s8 s2 | 
  s2. *2 |
  s4. s8\< s8 s16 s16 \! |
  s16 s16 \mf s8 s8 s16 \dim s16 s4 | 
  s2 s16 \> s16 s16 s16 \! |
  s16 s16 \pp s8 s2 | 
  s2. *3 | 
  s2 \cresc s4 | 
  s2. | 
  s8 s8\f s2 | 
  s2 s4 \< | 
  s2 \ff s4 |
  s2 s4 \< | 
  s8\! \ffp s8 \>  s8 s8 s4 \pp |

}



first_violin = << \notes << \notesI \\ \notesII >> \marks \dynamics >>
first_violinI = <<\notes \notesI \marks \dynamics>>
first_violinII = <<\notes \notesII \marks \dynamics>>

first_violin_conductor = {
  \new Staff \with {  
    instrumentName = \first_violin_name_long
    shortInstrumentName = \first_violin_name_short
    midiInstrument = #"violin"
  }
  \first_violin
}

first_violin_part = \compressMMRests{
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
      \override VerticalAxisGroup.remove-layer = 2
    }
    << \first_violin \staves >>
  >>
}

%\score{
%  \first_violin_part
%  \layout {}
%}