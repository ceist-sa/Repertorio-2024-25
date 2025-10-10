\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

oboeSolo = \relative {
    \set Staff.midiInstrument = #"oboe"
    \override NoteHead.color = #oboe-range
    \clef treble
    do''4 ~ 32 do32 (re mi fa16 sol32 lab) mi4\startTrillSpan ~ 16\stopTrillSpan fa32( mi re fa mi sol64 fa) |
    fa4 ~ 32( mib! reb do sib lab sol fa) reb'8 sol ~ 32( lab sib lab sol fa mi fa) |
    sib,4 ~ 32( reb do sib lab sol sib lab) lab16 (sib32 lab sol16 lab32 fa) r32 do'32 (re mi fa16 lab32 sol) |
    lab4 ~ 32 (sol fa mib! reb do mib reb) reb8 sib' ~ 16 (lab32 sol lab sol lab sib) |
    \grace{reb,8 (} do8) lab' ~ 16 (sol32 fa sol fa sol lab) sib,4 ~ 32 (do reb! do sib lab sol lab) |
    sol8-\trill (fa16 mib) r32 sol32 (la si do mib re fa64 mib) fa4 ~ 32 (lab! sol fa mib re fa mib) |
    mib4 ~16 (fa32 sol fa mib re mib64 do reb8) lab'16 (fa) re (si) lab! (fa) |
    re8 do'16 (si) do4 ~ 32 (sib mib re sol fa lab! sol) sib,8. do16 |
    do4 r8 do8 ~ 16 (sib!32 lab sol16 lab32 fa) sib4 ~ |
    32 (lab sol fa mi fa sol lab) sib (do reb do sib lab sib sol) lab8-\trill (sol16 fa) r8 fa'8 ~ |
    16 (mib!32 reb do16 reb32 sib) mib4 ~ 32 (reb do sib la sib do reb mib fa solb fa mib reb mib do) |
    reb8 (do16 sib) r16 sib32 (do reb mib fa16 solb8) sib16 (lab) solb (fa mi fa) |
    sib,16 (do reb do) sib (lab sol lab32 fa) si8 fa'16 (mib) re16 (do si do) |
    fa,16 (sol lab sol) fa (mib re mib32 do) reb'4-\fermata ~ 32 (do re mi fa16 lab32 sol) |
    lab16 (sib32 lab sol16 lab32 sib) mi,8.-\trill fa16 fa32 (mib reb do sib lab sol lab64 fa) sib4 ~ |
    32 (lab reb do fa32 mi16 fa32) lab,8.-\trill (sol32 fa) fa2-\fermata |
}