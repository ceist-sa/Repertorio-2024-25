\version "2.24.4"
\language "portugues"

\include "../globals.ily"

notes = \relative {
    \compressEmptyMeasures
    \time 3/8
    \clef alto 
    \key re \major
    fas8\f la re | 
    sol, re' r |
    dos re re |
    la mi' r8 |
    fas, la re |
    re, re' r |
    mi si mi |
    \break
    mi, mi' r |
    la mi la |
    dos, re sol |
    si la la, |
    la16 re re la la fas |
    \startSinging fas8 r r |
    R4. |
    \pageBreak
    <<
        \new CueVoice {
            \stemUp
            \relative {re''8^\markup{\tiny "Viol. I"} sol dos, | re16 ^(si) dos8^. r8 |}
        }
        \\
        {R4. | R4. |}
    >>
    \stopSinging la'8\f mi la |
    dos, re sol |
    si la la, |
    la16 re re la la fas |
    \startSinging fas8\p la re |
    \break
    sol,-. re'-. r |
    re-. la-. dos-. |
    fas-. la-.  re,-. |
    dos mi la |
    re,-. la'-. r |
    sols-. la-. mi-. |
    mi-. re-. si-. |
    \break
    la mi' la |
    dos,-. la'-. r |
    res, fas fas |
    mi-. si'-. r |
    sols, si re |
    si' la re, |
    la  dos si |
    \break
    dos16 la la mi mi re |
    re re' re la la sol |
    sol8 r r |
    r16 mi' dos mi mi dos |
    dos8 r r |
    R4. * 7 |
    \break 
    <<
        \new CueVoice {
            \relative{
                mi''8^\markup{\tiny "Sopr. II"} fas16 [mi] re \noBeam dos |
                fas16 mi re dos si las |
                si16 sols las4 |
            }
        }
        \addlyrics{
            \override LyricText.font-size = #'-1.0
            De -- o _ sa -- lu -- ta _ _ _ _ _ -- ri _ me
        }
        \\
       { R4. | R4. | R4. | }
    >>
    
    re8\f [fas \stopSinging si] |
    res, si' r |
    dos sols dos |
    \break
    re dos r |
    las, dos fas |
    fas si mi, |
    si  fas fas |
    fas16  si si fas fas re |
    \startSinging re8 r r |
    \break
    R4. *  7 |
    <<
        \new CueVoice {
            \relative{
                \clef treble
                dos''16^\markup{\tiny "Sopr. II"} mi re dos si la |
                re8 dos16 si la8 ~ |
                16 si16\noBeam sol8\trill [^(fa16 mi )]|
            }
        }
        \addlyrics{
            \override LyricText.font-size = #'-1.0
            ta _ _ _ _ _ _ _ _ _ -- ri me __
        }
        \\
       { R4. | R4. | R4. | }
    >>
    r16 dos'\p dos la la mi |
    fas8 la re |
    \break
    re,8 re' r |
    mi si mi |
    mi, mi' r |
    la mi la |
    mi-. re-. r16 re' |
    re, mi fas sol la8 |
    \break 
    re, r r |
    R4. * 2 |
    fas,8\f la re |
    sol, re' r |
    dos-. re-. re-. |
    la-. mi'-. r |
    fas, la re |
    \break  
    re, re' r |
    mi si mi |
    mi, mi' r |
    la mi la |
    dos, re sol |
    si la la, |
    la4. |
    \fine
}

viola_et_exsultavit = \notes

% \score {
%     \header { piece = "2. Et exsultavit spiritus meus" }
%     \new Staff {
%         %\viola %vanilla
%         % \transpose fa do' <<\viola \clef treble>> %violin
%         \transpose sib do' <<\viola \clef treble>> %clarinet
%     }
% }