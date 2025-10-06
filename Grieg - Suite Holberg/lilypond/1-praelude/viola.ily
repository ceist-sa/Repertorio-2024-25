\version "2.24.4"

\include "../instrument_names.ily"
\include "../globals.ily"
\include "globals.ily"

\language "português"

dynamics = {
  s1\ffp |
  s1\<|
  s2\fp s2\fp |
  s1\fp |
  s1\cresc |
  s1 * 2 |
  % A
  s8\fp s8\> s4 s2 |
  s1\pp |
  s1 * 3 |
  s1\piup |
  s1 * 2 |
  s1\crescmolto |
  s1\f |
  s4\< s2 s4\fz|
  %repeat bar
  s1 * 4 |
  s1\f |
  s1 |
  s4 s2 s4\< |
  s1 |
  s1\f |
  s1 * 2 |
  % B
  s1 |
  s8 s8\p s4 s2 |
  s1 * 6 |
  s1 \pp |
  s1\crescmolto |
  s2\f s2\< |
  s1 \fz |
  % C
  s1 \ff |
  s1 * 2 |
  s4 s2 s4_\markup{\italic sempre \dynamic ff}
  s1 * 8 |
  s8 s8\> s4 s2 |
  s8\p s8\> s4 s2 |
  s1\pp |
  s1 * 3 |
  s1\piup |
  s1 * 2 |
  s1\crescmolto |
  % E
  s1\f |
  s4\< s2 s4\fz |
  s4 s4\piuf s2 |
  s4\< s2 s4\fz |
  s4 s4\ff s2 |
  s1 * 3 |
  s1\ffz |
}

notes = \relative do {
  \set Staff.midiInstrument = #"viola"
  \clef alto
  \rthm re \rthm re \rthm re \rthm mi |
  \rthm fas \rthm sol \rthm la \rthm si |
  \rthm do \rthm do \rthm re \rthm re |
  \rthm si \rthm si \rthm si \rthm dos-> |
  \rthm re-> \rthm re \rthm mi-> \rthm mi |
  \rthm re-> \rthm re \rthm re \rthm re-> |
  \rthm mi-> \rthm mi \rthm <mi la>->\nondiv \rthm <mi la> |
  % A
  \rthm <fas la> \rthm <fas la> \rthm <fas la> \rthm <fas la> |
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm fas \rthm fas \rthm fas \rthm fas |
  \rthm fas \rthm fas \rthm fas \rthm fas |
  \rthm mi \rthm mi \rthm mi \rthm mi |
  \rthm re \rthm re \rthm re \rthm re |
  \rthm dos \rthm dos \rthm dos \rthm dos |
  \rthm dos \rthm dos \rthm dos \rthm dos |
  \rthm re \rthm re \rthm re \rthm re |
  \rthm fas \rthm la \rthm re fas4-. |
  % repeat bar
  <<{do,!2->\div ~ 4} {la 2 ~ 4}>> r4 |
  r2 do16 (la) la (fas) r4 |
  sol16^"sul C"\fp fas sol si sol fas sol si sol fas sol si sol fas sol do |
  la^"sul G" sol la re si la si mi do si do fas re do re sol |
  <<{la,2->\div ~ 4} {fas 2 ~ 4}>> r4 |
  r2 la16 (fas) fas (res) r4 |
  mi16\fp res mi sol mi res mi sol mi res mi sol mi res mi la |
  fas mi fas si sol fas sol dos la^"sul G" sol la res si la si mi |
  la,8-> [la] la'-> [la] si-> [si] si,-> [si] |
  sols-> [sols] sols'-> [sols] la-> [la] la,-> [la] |
  mi4-> ~ 8 r8 mi'16-> (las,) las (mi) mi8-. 8-.-> |
  % B
  fas-.-> r8 r4 r2 |
  r8 si'\pizz la sol fas mi re do |
  si4 r4 r2 |
  r8 si do re mi fas sol la |
  si4 r4 r2 |
  R1 * 3 |
  s1 * 3 |
  s8 r8 r4  \tuplet 7/4 {fas16 (mi re do si la sol)} fas8-> r8 |
  sol8-> r8 s4 s2 |
  s1 * 2 |
  s2 s4 \rthm re' |
  \rthm mi-> \rthm mi \rthm fa-> \rthm fa |
  \rthm sol-> \rthm sol \rthm sol \rthm la-> |
  \rthm sol-> \rthm sol \rthm do-> \rthm do |
  \rthm si-> \rthm si \rthm si \rthm si |
  \rthm la-> \rthm la \rthm la \rthm la |
  \rthm sol-> \rthm sol \rthm fas-> \rthm fas |
  \rthm mi-> \rthm mi \rthm re-> \rthm re |
  \rthm do-> \rthm do \rthm re-> \rthm mi |
  la, 8-> 16 16 \rthm si \rthm do \rthm do |
  % D
  \rthm <si re> 16 \rthm <si re> \rthm <si re> \rthm <si re> |
  \rthm do \rthm do \rthm do \rthm do |
  \rthm do \rthm do \rthm do \rthm do |
  \rthm si \rthm si \rthm si \rthm si |
  \rthm si \rthm si \rthm si \rthm si |
  \rthm la \rthm la \rthm la \rthm la |
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm fas \rthm fas \rthm fas \rthm fas |
  \rthm fas \rthm fas \rthm fas \rthm fas |
  % E
  \rthm sol \rthm sol \rthm sol \rthm sol |
  \rthm si \rthm re \rthm sol si4-. |
  r4 \rthm sol, \rthm sol \rthm sol |
  \rthm si \rthm re \rthm sol si4-. |
  r4 s4 s2 |
  s1 * 4 |
}

notesI = \relative do {
  s1 * 37 |
  \rthm fas'-. \rthm fas-. \rthm fas-. \rthm fas-. |
  \rthm fas-. \rthm fas-. \rthm fas-. \rthm fas-. |
  \rthm sol \rthm sol \rthm sol \rthm sol |
  fas8 s8 s4 s2 |
  %C
  s4 \rthm si,-> \rthm do-> \rthm re-> |
  \rthm mi-> \rthm fas-> \rthm mi-> \rthm re-> |
  \rthm do-> \rthm do \rthm la-> \rthm la |
  \rthm si-> \rthm si \rthm si s4 |
  s1 * 22 |
  s4 sol'4->\div la-> fas-> |
  sol-> si-> do-> fa,-> |
  sol-> fas'!-> sol-> sol-> |
  re2-> do-> |
  si1\fermata |
}

notesII = \relative do {
  s1 * 37 |
  \rthm si'-. \rthm si-. \rthm si-. \rthm si-. |
  \rthm si-. \rthm si-. \rthm si-. \rthm si-. |
  \rthm la \rthm la \rthm la \rthm la |
  la8 s8 s4 s2 |
  %C
  s4 \rthm <sol sol'>-> \rthm <sol la'>-> \rthm <sol si'>-> |
  \rthm <sol do'>-> \rthm <sol re'>-> \rthm <sol do'>-> \rthm <sol si'>-> |
  \rthm <sol la'>-> \rthm <sol la'> \rthm <sol fas'>-> \rthm <sol fas'> |
  \rthm <sol sol'>-> \rthm <sol sol'> \rthm <sol sol'> s4 |
  s1 * 22 |
  s4 sol4-> la-> fas-> |
  sol-> si-> do-> fa,-> |
  sol-> fas'!-> sol-> sol-> |
  re2-> do-> |
  si1\fermata |
}

staves = {
  \oneStaff
  s1 * 41 |
  s4 \twoStaves s4 s2 |
  s1 * 2 |
  s4 s2 \oneStaff s4 |
  s1 * 22 |
  s4 \twoStaves s4 s2 |
  s1 * 4 |
}

viola = <<\notes \partCombine \notesI \notesII \marks \dynamics>>

violaI = <<\notes \notesI \marks \dynamics>>
violaII = <<\notes \notesII \marks \dynamics>>


viola_conductor = {
  \new Staff \with {
    instrumentName = \viola_name_long
    shortInstrumentName = \viola_name_short
  }
  \viola
}

viola_praelude = \score {
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
      << \violaI \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \violaII \staves >>
      \new Staff \with {
        \override VerticalAxisGroup.remove-layer = 2
      }
      << \viola >>
    >>
  }
}

% \viola_praelude