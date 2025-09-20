\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative re, {
    \clef "bass"
    R2. * 3 |
    r4 r4 re4 \pizz |
    mi4 fas sol |
    la4 si la8 sol |
    fas8-> sol-> la4-> r4 |
    re4\> r re,\! |
    %repeat bar 
    re'2 \arco mi4 |
    fas4 ~ 8 r8 r4 |
    re4 dos2 | 
    fas4 ~ 8 r8 r4 |
    s2. * 4 |
    % F
    s2. * 7 |
    %G
    s2. * 8 |
    %repeat bar 
}

notesI = \relative {
    s2. * 8 |
    %repeat bar 
    s2. * 4 |
    si8 \solo (dos16 re) re8 (dos4.) |
    si16 (dos) dos re re8 (dos4 \clef "tenor" fas8) |
    fas16 (la) la sol fas8 (mi) re dos |
    dos8 (re) re2 |
    %F
    <<
        {
            r8 do!16 (re do8) la'4 (do,8) |
            do (si) si2 |
            r8 \clef "bass" la16 (si la8) fas'4 (la,8) |
            la8 (sol) sol fa re' fa, |
            fa8 (mi) mi re si' (re,) |
            re8 (do) do r8 r4 | 
        }
        \\
        {
            r8 la'16\pp (si la8) do4 (la8) |
            la (sol) sol2 |
            r8 \clef "bass" fas16 (sol fas8) la4 (fas8) |
            fas8 (mi) mi re fa! re |
            re8 (do) do si re (si) |
            si8 (la) la r8 r4 | 
        }
    >>
    r4 r r8 re8 |
    re8 re re re re re' |
    re4 mib2 |
    fa4 (mi!8 re) re4 |
    re2 dos4 |
    re8 si \grace{la16 (si} la16) sol fas8 fas4 |
    fa2 (mi4) |
    sol4. la8 si (mi) |
    re8-- mi-- re4 do |
    do16 (la si8) si4\> ~8\! r8 |
}

notesII = \relative {
    s2. * 8 |
    %repeat bar 
    s2. * 4 |
    re4 \tutti mi (las,) |
    re4 mi (las,) |
    re4 mi fas |
    si,2. |
    re2. \threeSoli \pp |
    re4. (res8) res (mi) |
    si2. |
    si4. sol8 ~ 4 |
    sol4. mi8 ~ 4 |
    mi8 ~ mi4 r8 r4 |
    r4 r r8 re'8 \tutti|
    re8 re re re re re |
    %G
    <sol, re'>4 <sol mib'>2 |
    <<{fa'4 (mi!8 [re])}\\{sol,2}>> sol'8-- (fas--) |
    mi2 la,4 |
    re8 sol \grace{fas16 (sol} fas16) mi re8 re4 |
    la4 (si do) |
    re4 mi re8 (do) |
    si8-- do-- re2 |
    <sol, re'>2\> ~ 8\! r8 |

}

dynamics = {
    s2. * 3 |
    s2 s4 \p |
    s2. |
    s2. \cresc |
    s2. \f |
    s2. |
    % repeat bar 
    s2. \p |
    s2. |
    s4 \< s2\f \> |
    s4 \p s2 |
    s4 \< s2\> |
    s2. \cresc |
    s4 \mf s4 s4\> |
    s2 s4\! |
    %F
    s2. * 3 |
    s2. \piupp |
    s2. * 3 |
    s2. \cresc |
    s4 \f s2 \< |
    s2. \ff |
    s2. |
    s4 s2 \> |
    s2. \pp |
    s2. \crescmolto |
    s2. \f |
    s2. |
}


staves = {
    \oneStaff
    s2. * 12
    \twoStaves
    s2. * 20
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
        << \cello \staves >>
    >>
}

cello_conductor = {
  \new GrandStaff \with {
    \consists "Keep_alive_together_engraver"
    midiInstrument = #"cello"
    instrumentName = \cello_name_long
    shortInstrumentName = \cello_name_short
  }
  \cello_staves
}

cello_sarabande = \score {
  \header { piece = "II. Sarabande" }
  \compressMMRests {
    \new GrandStaff \with {
      \consists "Keep_alive_together_engraver"
    }
    \cello_staves
  }
}

% \cello_sarabande