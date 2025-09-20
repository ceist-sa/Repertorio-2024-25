\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative sol {
    \transposition do
    \clef bass
    sol4\pizz r r |
    R2. * 1 |
    sol4 r r |
    R2. * 1 |
    re4 r r |
    R2. * 1 |
    si4 r r |
    R2. * 1 |
    % N
    do2\arco ~ (16 mib re do) |
    do16 (sib la sib) \tuplet 3/2 {la32 (sib do} sib16 ~ 4.) |
    sol'2 ~ (16 sib)  la (sol) |
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
    mib r re |
    r8 mib fa mib r4 |
    r4 r re8 fa |
    mib8 sol r4 r |
    re8 sol fa4 r |
    mib2.->\arco |
    mib2 ~8 mib |
    re8-> sol-> fa2 |
    % P 
    sib,4~8 r8 r4 |
    do4 \pizz r r |
    re4 r r |
    \once \stemUp re4-> ~ (16 do) do (sib) sib (la) la (sol) |
    re'4 r r |
    \once \stemUp re4-> ~ (16 do) do (sib) sib (la) \tuplet 3/2 {do16 (sib la)} |
    re4 r r |
    R2. * 1 |
    re4\pizz r r |
    R2. * 2 |
    % Q
    s2. * 8 |
    % R
    do2. |
    sib!2. |
    fa'2. |
    mib2. |
    do'2-> ~ (16 mib) re do |
    do16 (sib) la sib fa'-- (mib--) re-- do-- re4 |
    mib2-> si4 |
    do4. sib!16 do re4 |
    sol16 (sol,) fa-- (mib--) re-- (do--) sib-- (la--) sol4 | 
}

notesI = \relative {
    s2. * 39 |
    % Q
    sol2 r4 |
    sol2 r4 |
    sol2 r4 |
    sol2 r4 |
    re2.->\mf\> ~ |
    4\! r r |
    si2.\pp->\> ~ |
    4\! r r |
    % R
    s2. * 9 |
}

notesII = \relative {
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
    s4 \f\> \after 8 \! s4 s4 |
    s2 s32 s32 \< s8 s16 \! |
    s8 \ffp s8 \>  s8 s8 s4 \pp |
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
    s4\!\ffz\< s8\! s8 s4| %FIXME my \ffz is not really a new dynamic because the spacing rules are not respected
    s2. \p |
    s2. |
    s2. |
    s2. |
    s4 s16 s16\< s8 s16\> s16 s16\! s16 |
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
    s2\ff\> s4\! |
    s2 s4\< |
    s8\! \ffp s8 \>  s8 s8 s4 \pp |
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

double_bass = <<\notes \marks \dynamics >>

double_bassI = <<\notes \notesI \marks \dynamics >>
double_bassII = <<\notes \notesII \marks \dynamics >>

double_bass_staves = {
    <<
        \new Staff \with {
        midiInstrument = #"contrabass"
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \double_bassI \staves >>
        \new Staff \with {
        midiInstrument = #"contrabass"
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \double_bassII \staves >>
        \new Staff \with {
        midiInstrument = #"contrabass"
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-layer = 2
        }
        << \double_bass \staves >>
    >>
}

double_bass_conductor = {
  \new GrandStaff \with {
    \consists "Keep_alive_together_engraver"
    midiInstrument = #"contrabass"
    instrumentName = \double_bass_name_long
    shortInstrumentName = \double_bass_name_short
  }
  \double_bass_staves
}

double_bass_air = \score {
  \header { piece = "IV. Air" }
  \compressMMRests{
    \new GrandStaff \with {
      \consists "Keep_alive_together_engraver"
    }
    \double_bass_staves
  }
}

% \double_bass_air