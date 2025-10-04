\version "2.24.4"

\include "globals.ily"

\language "português"

dynamics = {
  s2. \p |
  s8\< s16 s16 \!  s8\> s8\! s4 |
  s4\! s4\< s8 s16 s16\! |
  s4 s2\> |
  s2. \! |
  s2. \cresc |
  s2. \f |
  s4\> s4 s8\! s8 |
  % repeat bar
  s2. \p |
  s2. |
  s4\< s2\f \> |
  s8\! s8\p s2 |
  s4\< s4.\> s8\! |
  s4\cresc s4.\! s8 |
  s2 \mf s8 s8\> |
  s4 s2\! |
  % F
  s2. * 5 |
  s4 s8 s8\p s4 |
  s2. \cresc |
  s8 s8 s2 |
  % G
  s4\f s2\< |
  s2.\ff |
  s2. |
  s4 s2\> |
  s2. \pp |
  s2. \crescmolto |
  s2. \f |
  s4 s4\> s8\! s8|
}

notes = \relative do' {
  \set Staff.midiInstrument = #"viola"
  \clef alto
  s2. * 4 |
  re,2. |
  re4. mi8 fas [(si)] |
  la8-- si-- la4 sol |
  sol16 (mi fas8) fas4 ~ 8 r8 |
  %repeat bar
  si2. |
  r8 si8 \grace{las16 (si} las16) sols fas8 fas4 |
  si4 si2 |
  r8 si8 \grace{las16 (si} las16) sols fas8 fas4 |
  fas4 sol4. (fas8) |
  fas4 sol4. (fas8) |
  fas16 (la) la sol fas8 (mi) re dos |
  dos8 (re) re2 |
  %F
  R2. * 5 |
  r4 r8 s4. |
  s2. * 3 |
  %G
  s2. * 3 |
  do'4 (re do) |
  fa4 sol sol |
  sol8-- sol-- sol4 fas! |
  re4 re4 ~ 8 r8 |
}

notesI = \relative do' {
  si4 do2 |
  re8 (do16 si do8 re--) re4 |
  re4 (si) do |
  la8 si \grace{la16 (si} la16) sol fas8 fas4 |
  s2. * 4 |
  % repeat bar
  s2. * 8 |
  % F
  s2. * 5 |
  s4 s8 la'8 la sol |
  sol8 fas fas mi mi fas |
  fas8 sol sol la la si |
  % G
  si4 do2 |
  re8 do16 si do8 (re) re4 |
  si8 la16 sol la8 (si) la (sol) |
  la8 re, re4 re |
  s2. * 4 |
}

notesII = \relative do' {
  sol2 (fas4) |
  fa4 mi8 (re--) sol4 |
  si4 (mi,) la |
  re,8 sol \grace{fas16 (sol} fas16) mi re8 re4 |
  s2. * 4 |
  % repeat bar
  s2. * 8 |
  % F
  s2. * 5 |
  s4 s8 la'8 la sol |
  sol8 fas fas mi mi fas |
  fas8 sol sol la la si |
  % G
  si4 do2 |
  re8 do16 si do8 (re) re4 |
  si8 la16 sol la8 (si) la (sol) |
  la8 sol la4 la8 (si) |
  s2. * 4 |
}

staves = {
  \twoStaves
  s2. * 4 |
  \oneStaff
  s2. * 17 |
  \twoStaves
  s2. * 7 |
  \oneStaff
  s2. * 3 |
}

viola = << \partCombine << \notes \notesI>> <<\notes \notesII >> \marks \dynamics >>

violaI = <<\notes \notesI \marks \dynamics>>
violaII = <<\notes \notesII \marks \dynamics>>


viola_conductor = {
  \new Staff \with {
    instrumentName = \viola_name_long
    shortInstrumentName = \viola_name_short
    printPartCombineTexts = ##f
  }
  \viola
}

viola_sarabande = \score {
  \header { piece = "II. Sarabande" }
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

% \viola_sarabande