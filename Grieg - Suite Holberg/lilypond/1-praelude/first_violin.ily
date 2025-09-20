\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

notes = \relative do'{
  \clef treble 
  \key sol \major
  \rthm si \rthm si \rthm si \rthm do |
  \rthm re \rthm mi \rthm fas \rthm sol |
  \rthm la \rthm la \rthm si \rthm si |
  \rthm sol \rthm sol \rthm sol \rthm la-> |
  \rthm la-> \rthm la \rthm dos-> \rthm dos |
  \rthm re-> \rthm re \rthm re \rthm re-> |
  \rthm re-> \rthm re \rthm dos-> \rthm dos |
  % A
  re4-. r4 r2 |
  si'2 4. 8-- ( |
  mi,2) r4 r8 \tuplet 3/2 {mi16( fas sol} |
  la2) 4. 8--( |
  re,2) r4 r8 \tuplet 3/2 {re16( mi fas} |
  sol2) r4 r8 \tuplet 3/2 {dos,16( re mi} |
  fas2) r4 r8 \tuplet 3/2 {si,16( dos re} |
  mi4-.) r4 dos2 ~ |
  dos2 ~ \afterGrace dos2 ( {si16 dos)} |
  re4-. \rthm re, \rthm fas \rthm la |
  \rthm re \rthm fas \rthm la re4-. |
  % repeat bar
  r4 do!4-> ~ (16 la) la (fas) fas (re) re (do!) | 
  R1 |
  si,8  16 16 8 r8 r2 |
  R1 |
  r4 la''4-> ~ (16 fas) fas (res) res (si) si (la) | 
  R1 |
  sol,8 16 16 8 r8 r2 |
  R1 |
  do 8-> 8 fa'16-> (do) do (fa) fa-> (re) re (fa) re,8-> 8 |
  si 8-> 8 mi'16-> (si) si (mi) mi-> (do) do (mi) do,8-> 8 |
  mi8-. mi'-> ~ (16 las,) las (mi) mi8 r8 r8 mi8-.-> |
  res8-.-> r8 r4 r4 s4 |
  s1 * 7 |
  s4 r4 r2 |
  R1 |
  s1 |
  s2 r2 |
  % C
  r4 sol''2 re8-- si-- |
  la8. (sol16) 4 4-. (4-.) |
  mi2-> \afterGrace fas->( {mi16 fa)}|
  sol2-> ~ 8 r8 \rthm si, |
  \rthm do-> \rthm do \rthm fa-> \rthm fa |
  \rthm mi-> \rthm mi \rthm mi \rthm fas->|  
  \rthm sol-> \rthm sol \rthm do-> \rthm do |  
  \rthm si-> \rthm si \rthm si \rthm si |  
  \rthm la-> \rthm la \rthm la \rthm la |  
  \rthm sol-> \rthm sol \rthm fas-> \rthm fas |
  \rthm mi-> \rthm mi \rthm re-> \rthm re |  
  \rthm do-> \rthm do \rthm si-> \rthm si |  
  \rthm la-> \rthm la \rthm la \rthm la |
  % D
  sol4 r4 r2 |
  s1 * 8 |
  % E
  s8 r8 \rthm sol, \rthm si \rthm re |
  \rthm sol \rthm si \rthm re sol4-. |
  r4 \rthm sol,, \rthm si \rthm re |
  \rthm sol \rthm si \rthm re sol4-. |
  r4 s4 s2 |
  s1 * 4 |
}

notesI = \relative do'{
  s1 * 29 |
  %B
  s8 s8 s4 s4 \twoStaves si''4 |
  do2 (la) |
  si (sol) |
  la (sol) |
  fas r4 res4 |
  mi2 (do) |
  re (si) |
  do (las) |
  si4 \oneStaff s4 s2 |
  s1 |
  \rthm do-> \rthm sol'-> \rthm do-> \rthm sol'-> |
  \tuplet 7/4 {fas16 (mi re do si la sol)} fas8 r8 s2 |
  % C
  s1 * 13 |
  %D
  s1 |
  mi'2 4. 8-- ( |
  la,2) r4 r8 \tuplet 3/2 {la16( si do} |
  re2) 4. 8--( |
  sol,2) r4 r8 \tuplet 3/2 {sol16( la si} |
  do2) r4 r8 \tuplet 3/2 {fas,16( sol la} |
  si2) r4 r8 \tuplet 3/2 {mi,16( fas sol} |
  la4-.) r4 fas2 ~ |
  fas2 ~ \afterGrace fas2 ( {mi16 fas)} |
  %E
  sol8-. s8 s4 s2 |
  s1 * 3 |
  s4 sol4->\div fas-> mi-> |
  re-> la'-> sol-> fa-> |
  mi-> mi'-> re-> sol-> |
  si,2-> la4.-> (sol8-- ) |
  sol1 \fermata | 
}

notesII = \relative do'{
  s1 * 29
  % B
  s8 s8 s4 s4 fas'4 |
  sol2 (mi) |
  fas (re) |
  mi (dos) |
  res r4 si4 |
  do2 (la) |
  si (sol) |
  la (sol) |
  fas4 s4 s2 |
  s1 |
  \rthm do-> \rthm sol'-> \rthm do-> \rthm sol'-> |
  fas8-> r8 r4 s2 |
  %C
  s1 * 13 |
  %D
  s1 |
  mi2 4. 8-- ( |
  la,2) r4 r8 \tuplet 3/2 {la16( si do} |
  re2) 4. 8--( |
  sol,2) r4 r8 \tuplet 3/2 {sol16( la si} |
  do2) r4 r8 \tuplet 3/2 {fas,16( sol la} |
  si2) r4 r8 \tuplet 3/2 {mi,16( fas sol} |
  la4-.) r4 fas2 ~ |
  fas2 ~ \afterGrace fas2( {mi16 fas)} |
  sol8 s8 s4 s2 |
  s1 * 3 |
  s4 sol4-> fas-> mi-> |
  re-> la'-> sol-> fa-> |
  mi-> mi'-> re-> sol-> |
  si,2-> la4.-> (sol8-- ) |
  sol1 \fermata | 
}

notesIII = \relative do'{
  s1 * 29
  % B
  s8 s8 s4 s4 res'4 |
  mi2 (do) |
  re (si) |
  do (las) |
  si r4 fas4 |
  sol2 (mi) |
  fas (re) |
  mi (dos) |
  res4 s4 s2 |
  s1 |

}

two_divisi_staves = {
  \oneStaff s1 |
  s1 * 38 |
  \twoStaves s1 |
  s2 \oneStaff s2 |
  s1 * 14
  \twoStaves s1 |
  s1 * 7 |
  s8 \oneStaff s8 s4 s2 |
  s1 * 3 |
  s4 \twoStaves s4 s2 |
  s1 * 4 |
}

three_divisi_staves = {
  \oneStaff s1 |
  s1 * 28 |
  s2 s4 \twoStaves s4 |
  s1 * 7 |
  s4 \oneStaff s4 s2 |
}

system_breaks = {
  s1 * 38
  \break
  s1 * 34
}

dynamics = {
  s1\ffp |
  s1\< |
  s2\fp s2\fp |
  s1\fp |
  s1\cresc |
  s1 * 2 |
  % A 
  s1\f |
  s1_\markup{\dynamic p \italic "dolce e tranq."} |
  s1 * 3 |
  s1\piup |
  s1 |
  s2 s2\startTrillSpan |
  s2\crescmolto s2 |
  s1\f\stopTrillSpan |
  s2\< s4 s4\fz |
  % repeat bar
  s1 * 2 |
  s1\fp |
  s1 |
  s4 s4\f s2 |
  s1 |
  s1\fp |
  s1 | 
  s1 \f |
  s1 \f |
  s1 |
  % B 
  s2 s4 s4\p |
  s1 * 3 |
  s2 s4 s4\piup |
  s1 * 3 |
  s1 \pp |
  s1 |
  s4\f s8 s16 s16\< s2 |
  s1\fz |
  % C
  s4 s4\ff s2 |
  s1 |
  s2 \afterGrace s2\startTrillSpan {s16\stopTrillSpan s16} |
  s2 s4 s4_\markup{\italic sempre \dynamic ff} |
  s1 |
  s1 * 7 |
  s8 s8\> s4 s2 |
  % D 
  s1 \p |
  s1_\markup{\dynamic p \italic dolce}
  s1 * 3 |
  s1\piup |
  s1 |
  s2 s2\startTrillSpan |
  s2\crescmolto s2 |
  % E 
  s1 \f \stopTrillSpan |
  s4 \< s4 s4 s4\fz |
  s4 s4\piuf s2 |
  s4\< s4 s4 s4\fz |
  s4 s4\ff s2 |
  s1 * 2 |
  s2 s4.\startTrillSpan s8 \stopTrillSpan |
  s1 \ffz |
}

first_violin = << \notes <<\notesI \\ \notesII \\ \notesIII>> \marks \dynamics >>

first_violinI = << \notes \notesI \marks \dynamics >> 
first_violinII = << \notes \notesII \marks \dynamics >> 
first_violinIII = << \notes \notesIII \marks \dynamics >> 

first_violin_conductor = {
  \new Staff \with {  
    instrumentName = \first_violin_name_long
    shortInstrumentName = \first_violin_name_short
    midiInstrument = #"violin"
  }
  \first_violin
}

first_violin_praelude = \score {
  \header { piece = "I. Praelude" }
  \compressMMRests{
    \new GrandStaff \with {
      \consists "Keep_alive_together_engraver"
    }
    <<
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \first_violinI \three_divisi_staves \system_breaks >>
      \new Staff \with { 
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \first_violinII \three_divisi_staves \system_breaks >>
      \new Staff \with { 
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \first_violinIII \three_divisi_staves \system_breaks >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 2
      }
      << \first_violinI \two_divisi_staves \system_breaks >>
      \new Staff \with { 
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 2
      }
      << \first_violinII \two_divisi_staves \system_breaks >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-layer = 3
      }
      << \first_violin \system_breaks >>
    >>
  }
}

% \first_violin_praelude