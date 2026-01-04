\version "2.24.4"
\language "portugues"

\include "../globals.ily"

notes = \relative {
    \compressEmptyMeasures
    \time 12/8
    \clef alto 
    \key sol \major
    mi'4.^\markup{\italic "col sordino"}_\markup{\dynamic "f" \italic "(ma dolce)"} ~8 re (dos) dos (si la) \grace{mi'8(} res4) mi8 |
    fas4. si,4. ~ 4 mi8 mi (re! mi) |
    mi4. ~ 8 res (mi) fas4 res8 si4 la'8 |
    \break
    sol (res mi) si4 la8 \startSinging sol4 r8 r4. | 
    R1. * 2 |
    <<
        \new CueVoice {
            \relative{
                \autoBeamOff
                fas'8^\markup{\tiny "Alto"} mi res si'4. ~8 [la] sol sol [fas] mi 
            }
        }
        \addlyrics{
            _ ni -- e in __ pro -- ge -- ni
        }
        \\
        {R1. |}
    >>
    
    res'2.^\markup { \huge \char ##x2309 } ~4. ~8 mi (fas) | 
    \break
    fas4. si,4. ~4 mi8 mi (sols fas) |
    mis (fas sols) dos,4. ~4 las8 dos (re mi) |
    re (las si) sol'4 fas8 \startSinging fas4 r8 r4. |
    \break
    las8 (si dos) mi, (fas sol) sol4 r8 r4. |
    fas,8 (sol la) fas8 (sol la) si4. ~8 las (si) |
    fas'4. r8 r mi8 re (mi fas) dos4. |
    re4 r8 r4. r2. |
    \break
    r4. \stopSinging r8 r la8 fas4 res'8 4 8 |
    si4 \startSinging mi8 r4. r2. |
    la4 fa8 \stopSinging sib (la sol) sol (la sib) sib4. ~ |
    8 la (sol) sol (fa mi) la4. ~8 re,8 (do) |
    \break
    si!4. mi4. ~8^\markup { \huge \char ##x2309 } re (fa) 4. |
    sols8 (la si) re, (mi fa) fa4 r8 r4. |
    mi,8 (fa sol) mi8 (fa sol) la4. ~8 sols (la) |
    mi'4. r8 r re do (re mi) si4. |
    \break
    do4 r8 r4. r2. |
    r4. \stopSinging r8 r8 mi8 dos4 las'8 4 8 |
    fas4 \startSinging si8 fas8 (mi res) res4 r8 r4. |
    mi2. res4. ~8 mi (fas) |
    \break
    fas4. si,4. ~8 do (re) mi4. ~ |
    4. ~8 fas,8 (mi) si'4. fas' ~ |
    4 mi8 fas4 si,8 mi4 r8 r4. |
    R1. |
    \break
    mi4. ~8^\markup { \huge \char ##x2309 } re (do) do (si la) \grace{mi'(} res4) mi8 |
    fas4. si,4. ~4 mi8 mi (re! mi) |
    mi4. ~8 res (mi) fas4 res8 si4 la'8 |
    sol (res mi) si4 la8 sol2. |
    \fine   
}

viola = \notes

viola_et_misericordia = \score {
    \header { piece = "6. Et misericordia" }
    \new Staff {
        \viola %vanilla
        % \transpose fa do' <<\viola \clef treble>> %violin
        % \transpose sib do' <<\viola \clef treble>> %clarinet
    }
}