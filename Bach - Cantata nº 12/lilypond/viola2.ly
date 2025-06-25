\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violaII = \relative {
    \set Staff.midiInstrument = #"viola"
    \override NoteHead.color = #viola-range
    \clef alto
    lab8(lab) fa(fa) sib(sib) sol(sol) |
    do(do) lab(lab) fa(fa) sib(sib) |
    sol(sol) do(do) do(do) lab(lab) |
    fa(fa) fa'(fa) do(do) sol'(sol) |
    do,(do) lab'(lab) fa(fa) re(re) |
    sib(sib) mib(mib) re(re) si(si) |
    sol(sol) do(do) lab(lab) fa(fa) |
    re'(re) fas,(fas) do'(do) sol(sol) |
    sol(sol) do(do) fa,(fa) re'(re) |
    do(do) mi(mi) do(do) fa(fa) |
    sib,(sib) sol'(sol) fa(fa) la(la) |
    fa(fa) sib(sib) sib(sib) sib,(sib) |
    sib(sib) reb(reb) si(si) re(re) |
    re(re) sol,(sol) sib4\fermata r8 mi8 |
    do8 reb16 (mi,) fa8 do fa4 r8 reb'8 | 
    sol,8 reb' lab16 (sib) do8 do2,\fermata | 
}

\bookpart {
    \header {
        instrument = "Viola II"
        filename = "Bach - Cantata nº 12 - VIOLA 2"
    }
    \score {
        \new Staff {
            <<\violaII \marks>>
        }
    }
}