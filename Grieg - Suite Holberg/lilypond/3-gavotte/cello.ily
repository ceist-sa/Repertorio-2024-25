\version "2.24.4"

\include "globals.ily"

\language "português"

notes = \relative sol {
    \clef bass 
    r2 |
    R1 * 3 |
    r2 sol4.->\f (fas8-.) |
    mi4.-> (re8-.) do4.-> (si8-.) |
    la2->\fz si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % H
    r2 |
    sol4->\p (fas8) r8 r2 |
    sol4-> (fas8) r8 r4 re'\< \pizz |
    r4 re\! r re |
    r4 re r re |
    r4\> la r re, |
    re''8\pp do si la sol4 r4 |
    R1 * 3 |
    r2 sol4.->\f (fas8-.) |
    mi4.-> (re8-.) do4.-> (si8-.) |
    la2->\fz si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % I %FIXME for some reason, it isn't compressing the 3 rests here
    % but it works if you use \compressEmptyMeasures if really needed
    r2 |
    R1 * 3 |
    r2 << 
        {
            mi'2->\div\f | 
            re8-> do si4-. mi8-> fas sol4-> |
            re2-> sol->\f |
            fas8-> re fas4-. mi8-> do mi4-.|
        } 
         
        {
            sol,2-> |
            8-> 8 4-. 8-> 8 4-. |
            2-> 2-> |
            8-> 8 4-. 8-> 8 4-. |
        } 
        >>
    si8 do re4-. r4 sol\pizz\pp |
    r4 sol, r sol' |
    r4 sol, r sol' |
    r4 sol, r si |
    % K
    r4 re sol->\f \arco fas-> |
    fas4->\< mi-> mi-> do-> |
    la2->\ff si4 mi |
    la,4 re sol, do |
    re4 re' sol,-- re-- |
    sol,-- r4 |
    % Musette
    <do, sol'>2\pp\div ~ |
    2 \repeat unfold 6 {<do sol'> 2 ~ 2} 
    <do sol'> 2 ~ |
    4 ~ 8 r8 | 
    %repeat bar, L
    \clef tenor
    re''2\pcantab ( ~ |
    8 mi) mi (fa) fa2( ~ |
    8 sol) fa (sol) mi4 fa8 (sol) |
    \grace {fa16 ^(sol} fa8 mi) re4 r4  \clef bass <<
        {
            sib,4 |
            la4 sol r fa |
            re'4 re r do4 |
            fa fa, 
        }
        {
            sib'4 \div \pizz \cresc|
            la4 sol r fa |
            re'4 re r do4 |
            fa fa, 
        }
    >>
    re'4\f\arco re |
    re4 re do do |
    do4 do si! si |
    la4 la sol sol |
    fa4 fa mi mi\< |
    la4 la sol sol |
    do->\ff do,-> <do, sol'>2\pp\div ~ |
    2 \repeat unfold 6 {<do sol'> 2 ~ 2} 
    <do sol'> 2 ~ |
    4 ~ 8 r8 | 

}


cello = << \notes \marks >>


cello_conductor = {
  \new Staff \with {
    midiInstrument = #"cello"
    instrumentName = \cello_name_long
    shortInstrumentName = \cello_name_short
  }
  \cello
}

cello_part = \compressMMRests{
  \new Staff \with {
    midiInstrument = #"cello"
  }
  \cello
}

% \score {
%   \cello_part
%   \layout {}
%   \midi {\tempo 2 = 90}
% }