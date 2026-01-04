\version "2.24.4"
\language "portugues"

\include "../globals.ily"

notes = \relative {
    \compressEmptyMeasures
    \time 3/4
    \clef alto 
    \key re \major
    re''8 la r4 r |
    la8 fas r4 r |
    fas8 re r re la' la |
    la8 la, r la' mi dos |
    la8 re fas16 sol fas mi re mi fas8 |
    \break 
    sols8 si mi,16 fas mi re dos re mi8 |
    fas8 la fas re fas la |
    si4 r8 si,8 re si |
    mi4 r8 si'8 sols mi |
    \break 
    mi4 r8 mi8 dos la |
    la4 r4 r |
    r8 mi'8 mi fas si, mi |
    mi8 mi, la dos dos la |
    mi8 la dos mi mi dos |
    \break
    la8 dos mi la mi mi |
    mi8 dos mi la mi mi |
    mi8 dos mi la la dos |
    re8 la r8 la, re  fas |
    si, re sol si si si, |
    \break 
    mi dos fas la la fas |
    si si, mi si' si mi, |
    dos' mi, la dos dos la |
    re4 r8 re, fas la |
    la4 r8 fas8 fas la |
    \break
    re8 la r4 r |
    la8 fas r4 r |
    r8 fas8 la re re la |
    re,16 mi fas sol la8 re, la la' |
    fas16 sol fas mi re mi fas sol la8 la |
    \break
    la8 fas re re la' sol |
    fas4 \startSinging r4 r |
    R2. |
    << 
        { R2. } \\
        \new CueVoice {
            \autoBeamOff
            \stemDown
            la8.^\markup{\tiny  "Sopr. I"} sol16 fas4 r4
        } 
        \addlyrics{
            \override LyricText.font-size = #'-1.0
            gni -- fi -- cat
            }
    >> |
    re'8 la r4 r | 
    la8 fas r4 r |
    fas8 re r4 r |
    \break 
    r4 r r8 mi8 |
    re16 dos re mi fas sol fas mi re mi fas8 |
    sols8 si la16 fas mi re dos re mi8 |
    fas8 la fas re fas la |
    si4 r8 si,8 re si |
    \break 
    mi4 r8 si'8 sols mi |
    mi4 r8 mi8 dos la |
    la4 r r |
    r8 mi' mi fas si, mi |
    mi4 r r |
    R2. |
    \pageBreak
    r8 mi la dos dos la |
    mi8 la dos mi mi dos |
    la4 r r |
    << 
        \new CueVoice {
            \autoBeamOff
            \stemDown
            do8.^\markup{\tiny  "Sopr. I"}  16 4 r8 mi8 | mi8. 16 4 * 1/2
        } 
        \addlyrics{
            \override LyricText.font-size = #'-1.0
            gni -- fi -- cat ma -- gni -- fi -- cat
            }
        \\
        { R2. | r4 r8 }
    >> 
    la,,8 dos mi |
    dos4 r8 fas8 fas las |
    \break 
    fas4 r8 si, re fas |
    si4 r8 sols dos, mis |
    la4 r8 mi la re |
    la4 r8 mi la dos |
    fas,4 r8 fas la re |
    re4 r8 fas, la re |
    \break
    re4 r8 re, la' la |
    la8 la, r la' mi dos |
    la8 re r4 r |
    R2. * 2 |
    <<
        \new CueVoice {
            \stemUp
            r8^\markup{\tiny "Fl. I"} \ottava 1 sol'16 la si do re8 re16 do si la |
            si8 sol r4 \ottava 0 r |
        } 
        \\
        {R2. | R2. }
    >>
    \break
    r8 sol,16 fas mi8 mi mi si |
    si8 sol16 la si do si la sol la si8 |
    dos!8 mi re16 si' la sol fas sol la8 |
    si8 re si sol si re |
    \break
    mi,4 r8 mi sol mi |
    la4 r8 mi dos la |
    la'4 r8 la fas re |
    re4 r r |
    r8 la' la si mi, la |
    la4 \stopSinging r r |
    \break
    r8 dos, mi la la dos |
    re8 la r la, re fas |
    si,8 re sol si si si, |
    mi8 dos fas la la fas |
    si8 si, mi si' si mi, |
    \break 
    dos'8 mi, la dos dos la |
    re4 r8 re, fas la |
    la4 r8 fas fas la |
    re8 la r4 r |
    la8 fas r4 r |
    r8 fas la re re la |
    \break
    re,16 mi fas sol la8 re, la la' |
    fas16 sol fas mi re mi fas sol la8 la |
    la8 fas re re la' sol |
    fas4 r4 r \fermata |
    \fine
}

viola = \notes

viola_magnificat = \score {
    \header { piece = "1. Magnificat" }
    \new Staff {
        \viola %vanilla
        %\transpose fa do' <<\viola \clef treble>> %violin
        %\transpose sib do' <<\viola \clef treble>> %clarinet
    }
}