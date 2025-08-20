\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative do'' {
  \clef alto
  s4 |
  s1 * 7 |
  s2. |
  s4 |
  s1 * 26 |
  s4 r4 r2 |
  R1 |
  si4->\tutti\ff (la8--) sol fas mi re do |
  si8 do re2-> mi4 |
  do4 re do2->\fermata\< |
  si4-.\!\ffz sol-. sol-. |
  % Poco meno mosso
  r4 |
  sol'1\p ~ |
  2. sol4 |
  fa2 mib |
  re2. r4 |
  do2->\mf (la) |
  sib2->\> (sol) |
  fa2 (mib) |
  re2\pp r4 |
  % repeat bar
  r4 |
  sib''1\p ~ |
  2. sib4 |
  la2 sol |
  fa4 (mib) re\f (sib') |
  sib2-> sib-> |
  sib2.-> sib4 |
  sib4 do8 sib \grace{la16 (sib} la2->) |
  sib2 r2 |
  % V
  re,1\p ~|
  2. sol4 |
  fa2 mib |
  re2. r4 |
  mib4 mib (do) do( |
  re) re (sib) sib( |
  la) la (sol) sol( |
  la2) sib4-> sib( |
  la2) re4->\cresc re( |
  mib4->) mib (mi->) mi( |
  fas2->) sol->\ff |
  sol2-> sol-> |
  sol2.-> sol4 |
  sol4 la8 sol \grace{fas16 (sol} fas2)-> |
  sol2 sol,->\p^\markup{\italic "più tranquilo"} |
  sol2-> sol-> |
  sol2.-> sol4 |
  sol4 la8 sol \grace{fas16 (sol} fas2)-> |
  sol2\fermata\pp r4 |
}

notesI = \relative do'' {
  r4 \solo |
  sol8\fp (re) sol, re' sol, (re') sol re |
  sol8 (re) sol, re' sol, (re') sol re |
  fas8 (re) sol, re' sol, (re') fas re |
  sol8 (re) sol, re' sol, (re') sol re |
  mi8-> (re fas re) la'8-> (re, sol re) |
  mi8-> (re fas re) la'8-> (re, sol re) |
  fas8\cresc (re) fas8 (re) mi8 (re) mi8 (re) |
  re'4\f-.-> re,-. re-. |
  % S
  r4 |
  r2 r4 sol4-.\p |
  dos8-.-> sol-. mi-. re-. mi-. sol-. dos-. sol-. |
  la4-.-> fas-. fas-. la-. |
  si8-> fas re dos re fas si fas |
  sol4-.-> mi-. la8-> si, dos mi |
  fas4-.-> re-. sol8-> la, si re |
  mi8-> re mi sol re-> dos re fas |
  dos8->\cresc si dos mi si-> la si re |
  la8-> sol la dos sol-> fas sol si |
  fas8-> mi fas la mi-> re mi sol |
  % T
  fas2.->\f mi4-. |
  fas2.-> mi4-. |
  fas4-.-> fas4-.-> fas4-.-> mi4-.-> |
  fas2.-> re'8\p (re, |
  do'8 re, do' re,) la' (re, la' re,) |
  si'8 (re, si' re,) sol (re sol re) |
  fas8 (re fas re) mi (re mi re) |
  fas'2. re'8 (re,\piup |
  do'8 re, do' re,) la' (re, la' re,) |
  si'8 (re, si' re,) sol (re sol re) |
  fas8 (re fas re) mi (re mi re) |
  % U 
  fas2. mi4\pp (|
  fas2.->) mi4 (|
  fas2.->) mi4 (|
  fas4) mi (fas) mi4 (|
  fas4) mi (fas) mi4 (|
  fas4) s2. |
  s1 |

}

notesII = \relative do' {
  r4 \tutti |
  sol4\pizz\f r4 r2 |
  R1 * 6 |
  re''4-.->\arco\f re,-. re-. |
  % S
  r4 |
  si'4->\pizz\p r4 r2 |
  r4 mi, mi r |
  la4-> r4 r2 |
  r4 re, re r |
  sol4-> r r dos, |
  fas4-> r r si, |
  mi->\cresc r re r |
  dos4 r si r |
  la4 r sol r |
  fas4 r mi r |
  % T
  fas4->\f r r mi |
  fas4-> r r mi |
  fas4-> fas fas mi |
  fas4-> r4 r2 |
  do'4\p r la r |
  si4 r sol r |
  fas4 r mi r |
  re' r r re'\piup |
  do4 do la la |
  si4 si sol sol |
  fas fas mi mi |
  re'4 r4 r2 |
  re,4\pp r4 r2 |
  re4 r4 r2 |
  re4 r re r |
  re4 r re r |
  re4 s2. |
  s1 |
}

staves = {
  \twoStaves
  s4 |
  s1 * 7 |
  s2. |
  % S
  s4 |
  s1 * 27 |
  \oneStaff
  s1 * 4 |
  s2. |
  % Poco meno mosso
  % ...
  % one staff until the end
}

viola = <<\notes << \notesI \\ \notesII >> \marks >>

violaI = <<\notes \notesI \marks >>
violaII = <<\notes \notesII \marks >>


viola_conductor = {
  \new Staff \with {
    midiInstrument = #"viola"
    instrumentName = \viola_name_long
    shortInstrumentName = \viola_name_short
  }
  \viola
}

viola_part = \compressMMRests{
  \new GrandStaff \with {
    \consists "Keep_alive_together_engraver"
  }
  <<
    \new Staff \with {
      midiInstrument = #"viola"
      \override VerticalAxisGroup.remove-empty = ##t
      \override VerticalAxisGroup.remove-first = ##t
      \override VerticalAxisGroup.remove-layer = 1
    }
    << \violaI \staves >>
    \new Staff \with {
      midiInstrument = #"viola"
      \override VerticalAxisGroup.remove-empty = ##t
      \override VerticalAxisGroup.remove-first = ##t
      \override VerticalAxisGroup.remove-layer = 1
    }
    << \violaII \staves >>
    \new Staff \with {
      midiInstrument = #"viola"
      \override VerticalAxisGroup.remove-layer = 2
    }
    << \viola \staves >>
  >>
}

\score {
  \viola_part
  \layout {}
  \midi {\tempo 2 = 90}
}