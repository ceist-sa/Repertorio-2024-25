\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violaI = \relative do'{
    \set Staff.midiInstrument = #"viola"
    \override NoteHead.color = #viola-range
    \clef alto

    % Bar 1
    fa8(fa) do(do) sol'(sol) mi(mi) |
    lab(lab) fa(fa) sib(sib) sol(sol) |
    sol(sol) mi(mi) do(do) fa(fa) |
    do(do) lab'(lab) mib(mib) sib'(sib) |
    mib,(mib) do'(do) sib(sib) fa(fa) |
    sib(sib) sol(sol) lab(lab) re,(re) |
    do(do) sol'(sol) fa(fa) fa(fa) |
    la(la) re,(re) sol(sol) fa(fa) |
    % Bar 9
    fa(fa) mi(mi) lab(lab) fa(fa) |
    sol(sol) sol(sol) fa(fa) la(la) |
    reb(reb) sib(sib) do(do) do(do) |
    sib(sib) reb(reb) sib(sib) sib(sib) |
    sib(sib) sib(sib) fa(fa) fa(fa) |
    sol(sol) sol(sol) sol4\fermata r8 sol8 |
    fa sol lab16(sib) do8 do,4 r8 sib8 |
    sib8 lab16 (sib) do8 sib lab2\fermata |
}


\bookpart {
    \header {
        instrument = "Viola I"
        filename = "Bach - Cantata nº 12 - VIOLA 1"
    }
    \score {
        \new Staff {
            <<\violaI \marks>>
        }
    }
}