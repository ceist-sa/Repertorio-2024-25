\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violinII = \relative {
    \set Staff.midiInstrument = #"violin"
    \override NoteHead.color = #violin-range
    \clef treble
    lab'16 (sol) fa (sol) lab8 r sol16 (fa) mi (fa) sol8 r |
    do16 (sib) lab (sib) do8 r sib16 (lab) sol (lab) sib8 r |
    mi,16 (re) do (re) mi8 r fa16 (mi) fa (sol) lab (sol) lab (sib) |
    do16 (sib) lab (sib) do8 r sol16 (lab) sib (do) reb8 r |
    do16 (sib) lab (sib) do8 r lab16 (sol) fa (sol) lab8 r |
    sol16 (fa) mib (fa) sol8 r fa16 (mib) re (mib) fa8 r |
    mib16 (re) do (re) mib8 r fa16 (mib) reb (mib) fa8 r |
    do'16 (re!) mib (re) re re, (mib do) do (fa) mib (fa) re8 r |
    r r16 reb' do (sib) lab (sol) fa8 r fa16 (mi) re! (fa) |
    do8 r r do fa8. solb'16 fa (mib) reb (do) |
    sib8 r sib16 (la) sol (sib) fa8 r r fa |
    sib8. sib'16 lab (solb) fa (mib) reb (do) sib (do) reb (do) sib (lab) |
    sol do (sib lab) sol (fa) mi (sol) lab (sib!) lab (sol) fa (mib) re (do) |
    si sol' (fa mib) re (do) si (la) sib4\fermata r8 do |
    do' sib lab sol fa4 r16 do' (sib lab) |
    sol8 lab16 (fa) do8 do do2\fermata |
}