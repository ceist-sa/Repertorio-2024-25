\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes =  \relative la' {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef "treble"
    R2. * 8 |
    fas2 sol4 |
    fas8 ( re8 ) dos8 r8 r4 | % 11
    fas'4 -> fas4 ( mis4 ) | % 12
    fas8 ( re8 ) dos8 r8 r4 | % 13
    R2.*10 | % 22
}

notesI = \relative la' {
    s2. * 22 |
    r4 r4 r8 fas8 | % 24
    fas8 sol8 sol8 la8 la8 si8 | % 25
    si4 do2 | % 26
    re8 do16 si16 do8 ( re8 ) re4 | % 27
    si8 la16 sol16 la8 ( si8 ) la8 ( sol8 ) | % 28
    la8 re,8 fas4 ~ fas4 | % 29
    do'4\pp (re4 do4) |
    sol4. la8 si8
    mi8 | % 31
    re8 mi8 -- re4 do4 | % 32
    do16 ( la16 si8 ) si4 ~ si8 r8
}

notesII = \relative la {
    s2. * 22 |
    r4 r4 r8 re8 | % 24
    re8 mi8 mi8 fas8 fas8 sol8 | % 25
    sol8 (la8 ) la4. ( si8 ) | % 26
    si8 do16 re16 do8 ( si8 ) si4 | % 27 %compiler throws a warning here, but it seems fine
    sol8 la16 si16 la8 (sol8) fas8 ( mi8 ) | % 28 %compiler throws a warning here, but it seems fine
    \grace { fas16 (sol16 } fas16) mi16 re8 re4 ~ re8 r8 | % 29
    R2. |
    la'8\pp (si16 do16 ) si8 do8 re8 ( sol8 ) | % 31
    sol,8 do8 si8 ( la8 ) la8 ( sol8 ) | % 32
    sol4 sol4 ~ sol8 r8
}

dynamics = {
  s2. * 8 |
  % repeat bar
  s2. \p |
  s2. |
  s4 \< s8\f s8\> s8 s16 s16\!|
  s2.\p |
  s2. * 4 |
  %F
  s2. * 7 |
  s2.\< |
  s4\f s2\< |
  s2. \ff |
  s2. |
  s4 s4 \> s8\! s8|
  s2. |
  s2. \crescmolto |
  s2. \f |
  s4 s4\> s8\! s8|
}

oboe = << \partCombine << \notes \notesI >> << \notes \notesII >> \marks \dynamics >>
oboeI = << \notes \notesI \marks \dynamics >>
oboeII = << \notes \notesII \marks \dynamics >>

staves = {
    \oneStaff
    s2. * 24 |
    \twoStaves
}

oboe_staves = {
    <<
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \oboeI \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \oboeII \staves >>
        \new Staff \with {
            printPartCombineTexts = ##f
            \consists Merge_rests_engraver
            \override VerticalAxisGroup.remove-layer = 2
        }
        << \oboe \staves >>
    >>
}


oboe_conductor = {
  \new GrandStaff \with {
    \consists "Keep_alive_together_engraver"
    instrumentName = \oboe_name_long
    shortInstrumentName = \oboe_name_short
    soloText = "Ob. I"
    soloIIText = "Ob. II"
  }
  \oboe_staves
}

oboeI_sarabande = \score {
  \header { piece = "II. Sarabande" }
  \compressMMRests{
    \new Staff
    \oboeI
  }
}

oboeII_sarabande = \score {
  \header { piece = "II. Sarabande" }
  \compressMMRests{
    \new Staff
    \oboeII
  }
}

% \score {
%   <<
%   \new Staff {\oboeI}
%   \new Staff {\oboeII}
%   \oboe_conductor
%   >>
% }
