\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \override NoteHead.color = #flute-range
    \clef "treble" 
    R2.*8 |
    si8 (dos16 re16 ) dos8 (si4 dos8) |
    \grace { las16 (si16 } las16->) sols16 fas8-. fas8 r8 r4 | % 11
    si8 ( dos16 re16 ) re8 ( dos8 ) dos8 ( las8 ) | % 12
    \grace { las16 (si16 } las16->) sols16 fas8-. fas8-- r8 r4 | % 13
    R2.*10 | % 22
}

notesI = \relative la' {
    s2. * 22 |
    r4 r4 r8 re8 | % 24
    re8 mi8 mi8 fas8 fas8 sol8 |
    sol8 (la8 ) la4. (si8) | % 26
    si8 do16 re16 do8 ( si8 ) si4 | % 27
    sol8 la16 si16 la8 ( sol8 ) fas8 ( mi8 ) | % 28
    \grace { fas16 (sol16 } fas16) mi16 re8 ~ re4 ~ re8 r8 | % 29
    fa8 (sol16 la16 ) sol4. ( la8 ) |
    la8 (si16 do16) si8 do8 re8 ( sol8 ) | % 31
    sol,8 do8 si8 (la8) la8 (sol8) | % 32
    sol4 sol4 ~ sol8 r8 |
}

notesII = \relative la' {
    s2. * 22 |
    r4 r4 r8 re8 | % 24
    re8 dos8 dos8 do8 do8 fa8 | % 25
    fa4 sol4 (fas4 ) | % 26
    sol4 sol8 ( fas8 ) sol4 | % 27
    re2 dos4 | % 28
    re8 sol,8 la4 ~ la8 r8 | % 29
    R2. | 
    fa'4 sol4
    sol4 | % 31
    sol8 sol8 sol4 fas!4 | % 32
    re4 re4 ~ re8 r8 |
}



dynamics = {
  s2. * 8 |
  % repeat bar 
  s2. \p |
  s2. |
  s4 \< s8\f s8\> s8 s16 s16\!|
  \grace {s16\p s16 } s2.|
  s2. * 4|
  %F
  s2. * 7 |
  s2.\< |
  s4\f s2\< |
  s2. \ff |
  s2. |
  s4 s4 \> s8\! s8|
  s2. \pp |
  s2. \crescmolto |
  s2. \f |
  s4 s4\> s8\! s8|
}

flute = << \notes \partCombine \notesI \notesII \marks \dynamics>>
fluteI = << \notes \notesI \marks \dynamics >>
fluteII = << \notes \notesII \marks \dynamics >>

staves = {
    \oneStaff
    s2. * 24 |
    \twoStaves
}

flute_staves = {
    <<
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \fluteI \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \fluteII \staves >>
        \new Staff \with {
            printPartCombineTexts = ##f
            \consists Merge_rests_engraver
            \override VerticalAxisGroup.remove-layer = 2
        }
        << \flute \staves >>
    >>
}

flute_conductor = {
  \new Staff \with {  
    printPartCombineTexts = ##f
    instrumentName = \flute_name_long
    shortInstrumentName = \flute_name_short
    midiInstrument = #"flute"
  }
  \flute
}

flute_sarabande = \score {
  \header { piece = "II. Sarabande" }
  \compressMMRests{
    \new GrandStaff \with {
        \consists "Keep_alive_together_engraver"
    }
    \flute_staves
  }
}

% \flute_sarabande