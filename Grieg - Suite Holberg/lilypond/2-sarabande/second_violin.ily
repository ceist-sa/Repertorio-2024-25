\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative do'{
  \set Staff.midiInstrument = #"violin"
  \clef treble
  s2. * 4 |
  sol4 (la si) |
  do4 re re |
  re8-- re-- re4 dos |
  la4 la4 ~8 r8 |
  % repeat bar
  fas'2 sol4 |
  fas8 (re) dos8 r8 r4 |
  fas4 fas (mis) |
  fas8 (re) dos8 r8 r4 |
  R2. |
  fas4 sol4. (dos,8) |
  si16 (fas') fas mi re8 (dos) si las |
  las (si) si2 |
  % F
  R2. * 5 |
  r4 r8 s8 s4 |
  s2. * 2 |
  % G
  s2. * 4 |
  r4 sol4. (la8) |
  la8 (si16 do) si8 do re (sol) |
  sol,8-- do-- si (la) la (sol) |
  sol4 sol4 ~8 r8 |
}

notesI = \relative do''{
  sol8 la la2 |
  si8 (do16 re do8 si--) si4 |
  sol8 (la16 si la8 sol) fas (mi) |
  \grace{fas16 (sol} fas16) mi re8 re4 ~ 8 r8 |
  s2. * 12 |
  % F
  s2. * 5 |
  s4 s8 do'8 do si |
  si8 la la sol sol re' |
  re8 dos dos do do fa |
  % G
  fa4 sol (fas) |
  sol4 sol8 (fas) sol4 |
  mi2 dos4 |
  re8 sol, la4 ~ 8 r8 |
}

notesII = \relative do'{
  re4\div mi2 |
  sol4. (fas8--) sol4 |
  re4 (mi) do |
  re8 re re4 ~8 r8 |
  s2. * 12 |
  % F
  s2. * 5 |
  s4 s8 do8 do si |
  si8 la la sol sol re' |
  re8 dos dos do do fa |
  % G
  fa4 sol (fas) |
  sol4 sol8 (fas) sol4 |
  re2 dos4 |
  re8 re re4 ~ 8 r8 |
}


staves = {
  \twoStaves
  s2. * 4 |
  \oneStaff
  s2. * 12 |
  % F
  s2. * 5 |
  \twoStaves
  s2. * 7 |
  \oneStaff
}


dynamics = {
  s2.\p |
  s8\< s16 s16 \!  s8\> s8\! s4 |
  s4 s2\< |
  \grace{s16\> s16} s8 s8\! s2 |
  s2. |
  s2.\cresc |
  s2.\f |
  s4\> s4 s8\! s8 |
  % repeat bar
  s2. \p |
  s2. |
  s4\< s4\f\> s4 |
  s2. \p |
  s2. |
  s2.\cresc |
  s2\mf s8 s8\> |
  s4 s2\! |
  % F
  s2. * 5 |
  s4 s8 s8\p s4 |
  s2. \cresc |
  s4\< s2 |
  % G
  s4 \f \< s2 |
  s2. \ff |
  s2. |
  s4 s4\> s8\! s8 |
  s4 s2\p |
  s2. \crescmolto |
  s2. \f |
  s4 s4\> s8\! s8 |

}

second_violin = << \partCombine << \notes \notesI>> <<\notes \notesII >> \marks \dynamics >>
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

second_violin_sarabande = \score {
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

% \second_violin_sarabande