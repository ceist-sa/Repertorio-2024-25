\version "2.24.4"

\include "../../../ranges.ily"
\include "globals.ily"

\language "português"

notes = \relative sol, {
    \set Staff.midiInstrument = #"cello"
    \override NoteHead.color = #cello-range
    \clef bass
    sol4\pizz r r |
    R2. * 1 |
    sol4 r r |
    R2. * 1 |
    re4 r r |
    R2. * 1 |
    si'4 r r |
    R2. * 1 |
    % N
    do2\arco ~ (16 mib re do) |
    do16 (sib la sib) \tuplet 3/2 {la32 (sib do} sib16 ~ 4.) |
    sol2 ~ (16 sib)  la (sol) |
    sol16 (fa) mi (fa) do'-- (sib--) la-- sol-- la4 |
    sib2-> fas4
    sol4. fa16 sol la4 |
    re2 re,4 |
    % O, repeat bar
    sib'4\pizz r r |
    sib4 r r |
    sib4 r r |
    sib4 la sol |
    r4 fa r |
    mib r re ~|
    8 mib fa mib r4 |
    r2 re8 fa |
    mib8 sol r4 r |
    re8 sol fa4 r |
    mib2.->\arco |
    mib2 ~8 mib |
    re8-> sol-> fa2 |
    % P
    sib4~8 r8 r4 |
    do,4 \pizz r r |
    re4 r r |
    \once \stemUp
    re'4-> ~ (16 do) do (sib) sib (la) la (sol) |
    re2 sol4\espressivo |
    re'4-> ~ (16 do) do\< (sib) sib\! (la\>) \tuplet 3/2 {do16 (sib la\!)} |
    re,4 r r |
    R2. * 1 |
    re4\pizz r r |
    R2. * 2 |
    % Q
    s2. * 8 |
    % R
    do'2.\arco |
    sib!2. |
    fa2. |
    mib2. |
    do'2-> ~ (16 mib) re do |
    do16 (sib) la sib fa'-- (mib--) re-- do-- re4 |
    mib2-> si4 |
    do4. sib!16 do re4 |
    sol16 (sol) fa-- (mib--) re-- (do--) sib-- (la--) sol4 |
}

notesI = \relative {
    \set Staff.midiInstrument = #"cello"
    s2. * 39 |
    % Q
    sol,2\arco r4 |
    sol2 r4 |
    sol2 r4 |
    sol2 r4 |
    \once\override Hairpin.to-barline = ##f
    re'2.->\mf\> ~ |
    4\! r r |
    \once\override Hairpin.to-barline = ##f
    si2.\pp->\> ~ |
    4\! r r |
    % R
    s2. * 9 |
}

notesII = \relative {
    \set Staff.midiInstrument = #"cello"
    s2. * 39 |
    % Q
    sol,4\pizz r r |
    sol4 r r |
    sol4 r r |
    sol4 r8 sol'\< fa mib |
    re4\mf r r |
    r4 r8 re\> reb do |
    si4\pp r r |
    r4 r8 re! re do |
    % R
    s2. * 9 |
}

dynamics = {
    s2.\p |
    s2. * 2 |
    s4 s2 |
    s2. \mf |
    s2 s4 |
    s2. \p |
    s2. |
    % N
    s2 \cantab s16 s16\< s8 |
    s8\> s8\! s2 |
    s2.\cresc |
    s4 s4 s4\< |
    s4 \f\> s4 s4\! |
    s4. s4.\< |
    \once\override Hairpin.minimum-length = #8
    s2 \ffp \> s4 \pp |
    % repeat bar
    s2. \pp |
    s2. * 3 |
    s2. \cresc |
    s2 s4\p |
    s8 s8\< s8 s8\! s4 |
    s2 s4\p\< |
    s8 s8\! s4 s4 |
    s4\cresc s2 |
    s2. \ff |
    s2\< s4\! |
    s4 s2 \< |
    % P
    \once\override Hairpin.minimum-length = #7 
    s4\ffz\< s8\! s8 s4| 
    s2. \p |
    s2. |
    s2. |
    s2. |
    s2. |
    s4 s2 |
    s2. |
    s8 s8 s2 |
    s4 s8 s8 s4 |
    s2. |
    s2. |
    s2. * 3 |
    s2. |
    s2. |
    s2. |
    s2. |
    %R
    s2.\p |
    s2. |
    s2. \cresc |
    s2. |
    s2. \f |
    s4 s8 s16 s16\< s4 |
    s2\ff s4 |
    s2 \once\override Hairpin.minimum-length = #4 s4\< |
    s4\ffp\>  s4 s4 \pp |
}


staves = {
  \oneStaff
  s2. * 39 |
  % Q
  \twoStaves
  s2. * 8 |
  % R
   \oneStaff
}

double_bass_cello = <<\partCombine <<\notes \notesI>> <<\notes \notesII>> \marks \dynamics >>

double_bass_celloI = <<\notes \notesI \marks \dynamics >>
double_bass_celloII = <<\notes \notesII \marks \dynamics >>

double_bass_cello_staves = {
  <<
      \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \double_bass_celloI \staves >>
      \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
      }
      << \double_bass_celloII \staves >>
      \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-layer = 2
        printPartCombineTexts = ##f
      }
      \double_bass_cello
  >>
}

double_bass_cello_conductor = {
  \new GrandStaff \with {
    \consists Keep_alive_together_engraver
    instrumentName = \double_bass_cello_name_long
    shortInstrumentName = \double_bass_cello_name_short
  }
  \double_bass_cello_staves
}

double_bass_cello_air = \score {
  \header { piece = "IV. Air" }
  
    \new GrandStaff \with {
      \consists Keep_alive_together_engraver
      printPartCombineTexts = ##f
    }
    \double_bass_cello_staves
  
}

% \double_bass_cello_conductor