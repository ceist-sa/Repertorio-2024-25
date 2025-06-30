\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

violinI = \relative do'' {
    \set Staff.midiInstrument = #"violin"
    \override NoteHead.color = #violin-range
    \clef treble
    
    % Bar 1
    do16( sib) lab( sib) do8 r8 sib16(lab) sol( lab) sib8 r |
    lab16( sol) fa( sol) lab8 r8 reb16( do) sib( do) reb8 r8 |
    sol,16( fa) mi( fa) sol8 r8 lab16( sol) lab( sib) do do( re! mi)|
    fa( mi) fa( sol) lab8 r8 sib16( lab) sol( lab) sib8 r8 |
   
    % Bar 5
    mib,16( reb) do( reb) mib8 r8 fa16( mib) re( mib) fa8 r8 |
    sib,16(lab) sol(lab) sib8 r8 lab16(sol) fa(sol) lab8 r8 |
    sol16(fa) mib(fa) sol8 r8 lab16(sol) fa(sol) lab8 r8 |
    la16(sol) fas(sol) la(si) do(re) mib(re) do(re) si8 r8 |

    % Bar 9
    r16 reb16(do sib) lab(sol) fa(mi) fa8 r8 lab16(sol) fa(lab) |
    sol8 do, do'4(do16) solb'16(fa mib) reb(do) sib(la) |
    sib8 r8 reb16(do) sib(reb) do8 fa, fa'4(|

    % Bar 12
    fa16) sib(lab solb) fa(mib) reb(do) reb(mib) reb(do) sib(lab) sol!(fa)|
    mi16 lab'(sol fa) mi(reb) do(sib) lab(sol) fa(sol) lab(sol) fa(mib)|
    re mib'(re do) si(lab!) sol(fa) sol4\fermata  r8 mi'8 |
    fa reb do sib lab4 r16 lab16(sol fa) |
    mi8 fa fa mi fa2 \fermata

    \bar".|"
}