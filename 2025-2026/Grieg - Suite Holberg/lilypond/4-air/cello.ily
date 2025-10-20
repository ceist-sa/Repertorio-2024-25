\version "2.24.4"

\include "globals.ily"
\include "../hairpin.ily"

\language "português"

notes = \relative sol {
    \set Staff.midiInstrument = #"cello"
    \clef bass
    sol2. |
    sol2. |
    sol2. |
    sol2 fa8-- (mib--) |
    re2. ~ |
    2 reb8-- (do--) |
    si2. ~ |
    4. re!8 re (do) |
    % N
    do2 ~ (16 mib re do) |
    do16 (sib la sib) \tuplet 3/2 {la32 (sib do} sib16 ~ 4.) |
    sol'2 ~ (16 sib)  la (sol) |
    sol16 (fa) mi (fa) do'-- (sib--) la-- sol-- la4 |
    sib2-> s4
    s2. |
    re16 (re,) do (sib) la-- (sol--) fa-- (mi--) re4 |
    % O, repeat bar
    sib''2. |
    sib2. |
    sib2. |
    sib4 la sol ~ |
    4 fa2 |
    mib2 s4 |
    s2 re4 ~ |
    8 mib fa mib s4 |
    s4 re8 fa mib sol |
    re8 sol fa2 |
    s2. * 3 |
    % P
    s2. * 3 |
    \once \stemUp re4->\tutti ~ (16 do) do (sib) sib (la) la (sol) |
    re'2 sol,4 \espressivo |
    \once \stemUp re'4-> ~ (16 do) do\< (sib) sib\! (la\>) \tuplet 3/2 {do16 (sib la\!)} |
    re4 sib-> (la) |
    sol4-> (fas) mi ( |
    re8) sib'-> (la sol fas mi |
    re4 ~ 8 ) r8 r4 |
    R2. |
    % Q
    re''4 re2-- |
    \tuplet 3/2 {re32-> (do si} do16 ~8 ~4.) r8 |
    do4 do2-- |
    \tuplet 3/2 {do32-> (sib la} sib16 ~8 ~4.) r8 |
    r8 fa'4-- re8-- sib-- lab-- |
    lab32-> [(sol fas sol] \tuplet 3/2 {fas32 [sol lab} sol16] ~4.) r8 |
    r8 re'8( ~ re16 si) si (sol) sol (lab) lab (fa) |
    fa32-> [(mib re mib] \tuplet 3/2 {re32 [mib fa)} mib16] ~4. r8 |
    % R
    s2. * 4 |
    do'2-> ~ (16 mib) re do |
    do16 (sib) la sib fa'-- (mib--) re-- do-- re4 |
    mib2-> s4 |
    s2. * 2 |
}

notesI = \relative {
    \set Staff.midiInstrument = #"cello"
    s2. * 12 |
    s2 re'8. (do16) |
    do16 (si) si sib sib (la) la8 \tuplet 3/2 {re32 (dos si} dos8 re16) |
    s2. |
    % O
    s2. * 5 |
    s2 fa4\solo ~ ( |
    16 mib) mib (do) do (mib) mib (fa) s4 |
    s2 fa16 (do) do (sol') sol (re) re (fa) s2 |
    s2. |
    sib,4.-> re8 do la |
    sib8 [do re do] sib la |
    sib8-> [sib->] do (re) mib4 |
    % P
    re4\ffz ~8 r8 r4
    R2. * 2 |
    s2. * 8 |
    s2. * 8 |
    % R
    <<
        {
            r8 la \twoSoli \p la la la la |
            r8 sib sib sib sib sib |
            r8 re re re re re |
            r8 mib mib mib mib mib |
        }
        {
            r8 re, mib re dos re |
            r8 re mib re dos re |
            r8 sol lab sol fas sol |
            r8 sol lab sol fas sol |
        }
    >>
    s2. * 2 |
    s2 sol'8. (fa16-.) |
    fa16 (mi) mi mib mib (re) re8 \tuplet 3/2 {sol32 (fas mi} fas8 sol16) |
    sol2. |

}

notesII = \relative {
    \set Staff.midiInstrument = #"cello"
    s2. * 12 |
    s2 fas4 |
    sol4. fa!16 sol la4 |
    s2. |
    % O
    s2. * 5 |
    s2 re,4 \tutti ~ |
    8 mib fa mib s4 |
    s2 re8 fa |
    mib8 sol s2 |
    s2. |
    mib2.-> |
    mib2 ~ 8 mib |
    re8-> sol-> fa2 |
    % P
    \after 4 \> sib,2\ffz ~ 8\! r8 |
    do2 \dim ~ 8 r8 |
    re2\p (sol,4) |
    s2. * 8 |
    s2. * 8 |
    % R
    do2. \p \tutti |
    sib2. |
    fa'2. |
    mib2. |
    s2. * 2 |
    s2 si'4 |
    do4. sib16 do re4 |
    sol16 (sol,) fa-- (mib--) re-- (do--) sib-- (la--) sol4 |
}

dynamics = {
    s2.\p |
    s2. * 2 |
    s4 s2\< |
    s2. \mf |
    s2 s4\> |
    s2. \p |
    s2. |
    % N
    s2 \cantab s16 s16\< s8 |
    s8\> s8\! s2 |
    s2.\cresc |
    s2 s4\< |
    s4 \f\> \after 8 \! s4 s4 |
    s2 s32 s32 \< s8 s16 \! |
    s4\ffp\> s4 s4\pp |
    % repeat bar
    s2. \pp |
    s2. * 3 |
    s2. \cresc |
    s2 s4\p |
    s4\< s4 s4\p |
    s2\< s4\p\< |
    s4 s2\p \cresc |
    s4\< s2 |
    s2. \ff |
    s2\< s4\! |
    s4 s2 \< |
    % P
    s2 \! s4 |
    s2. * 2 |
    s2. \p |
    s2. |
    s4 s16 s16 s8 s16 s16 s8 |
    s4 s2 \cresc |
    s2. |
    s8 s8\dim s2 |
    s4 s8\! s8 s4 |
    s2. |
    \hairpinWithRightAlignedText \markup{\italic \tiny "molto"}
    \once\override Hairpin.minimum-length = #10
    s2.\< \f \cantab |
    s8\! s8\> s4.\! s8 |
    \hairpinWithRightAlignedText \markup{\italic \tiny "molto"}
    \once\override Hairpin.minimum-length = #10
    s2.\< |
    s8\! s8\> s4.\! s8 |
    s8 s4\ff s8 s8 s8 |
    s8 s16 s16\> s4.\! s8 |
    s8 s8\cresc s8 s8 s8\< s8\> |
    s2.\! |
    s2. * 2 |
    s2. \cresc |
    s2. |
    s2. \f |
    s4 s8 s16 s16\< s4 |
    s2\ff s4 |
    s2 s4\< |
    s4\ffp\>  s4 s4 \pp |
}


staves = {
    \oneStaff
    s2. * 12 |
    \twoStaves
    s2. * 3 |
    % repeat bar
    \oneStaff
    s2. * 5 |
    \twoStaves
    s2. * 11 |
    % 3 after P
    \oneStaff
    s2. * 16 |
    % R
    \twoStaves
    s2. * 4 |
    \oneStaff
    s2. * 2 |
    \twoStaves
    s2. * 3 |
}

cello = <<\notes \marks \dynamics >>

% It really should be something like
% cello = <<\notes << <<\notesI \dynamicsI>> \\ <<\notesII \dynamicsII>> >> \marks \dynamics >>
% however, since \notesI and \notesII have polyphony, lilypond was
% getting a little annoyed at nested polyphony.
% this simpliication should not be a problem.

celloI = <<\notes \notesI \marks \dynamics >>
celloII = <<\notes \notesII \marks \dynamics >>

cello_staves = {
    <<
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \celloI \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-empty = ##t
        \override VerticalAxisGroup.remove-first = ##t
        \override VerticalAxisGroup.remove-layer = 1
        }
        << \celloII \staves >>
        \new Staff \with {
        \consists Merge_rests_engraver
        \override VerticalAxisGroup.remove-layer = 2
        }
        \cello
    >>
}

cello_conductor = {
  \new GrandStaff \with {
    \consists "Keep_alive_together_engraver"
    instrumentName = \cello_name_long
    shortInstrumentName = \cello_name_short
    printPartCombineTexts = ##f
  }
  \cello_staves
}

cello_air = \score {
  \header { piece = "IV. Air" }
  
    \new GrandStaff \with {
      \consists "Keep_alive_together_engraver"
    }
    \cello_staves
  
}

% \cello_air