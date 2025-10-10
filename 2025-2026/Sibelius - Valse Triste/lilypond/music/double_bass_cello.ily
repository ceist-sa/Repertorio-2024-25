\version "2.24.4"
\language "portugues"
\include "../../../../styles/ranges.ily"
\include "../globals.ily"

double_bass_cello = \relative do {
    \set Staff.midiInstrument = #"cello"
    \override NoteHead.color = #cello-range
    \clef bass
    sols2.\pizz\p |
    2. |
    2. |
    2. |
    2.\pp |
    2. |
    2.\p |
    2. |
    % A
    2. |
    dos |
    si |
    mi, |
    la |
    si |
    dos |
    dos |
    dos, |
    res |
    mi |
    mi |
    re! |
    re |
    sol |
    sol |
    % B
    la |
    re |
    do! |
    fa, |
    sib |
    do, |
    re |
    re |
    re |
    mi! |
    fa |
    fa |
    mib |
    mib |
    \after 2 \! lab\< |
    la!2\> re,4\! |
    % C
    sol2.\pp |
    re |
    la'! |
    re, |
    sol |
    re |
    la' |
    re, |
    sol |
    sol |
    fas |
    re' |
    dos |
    fas, |
    si |
    la |
    % D
    sol_\markup{\right-align \italic "più" \dynamic pp} |
    re |
    la' |
    re, |
    sol |
    re |
    la' |
    re, |
    \once \override Hairpin.to-barline = ##f
    sol\< |
    sol |
    sols\! |
    la\dim |
    re, \p |
    re |
    sol |
    sol |
    % E
    sol \mp |
    si |
    la |
    re, |
    sol |
    si |
    la |
    re, |
    sol\p |
    si |
    la |
    re, |
    sol |
    si |
    la |
    re, |
    % F
    sol\p |
    mi\cresc |
    fas |
    sol2 la4 |
    si2.\f |
    si\f |
    \once \set decrescendoText = \markup { \italic { dim. molto } }
    \once \set decrescendoSpanner = #'text
    si \> |
    si |
    si |
    si \pp |
    si \mp |
    dos, |
    re |
    re \caesura |
    dos\ppp |
    dos |
    fas! |
    fas |
    % G
    sols |
    dos |
    si |
    mi, |
    la |
    si |
    dos |
    dos |
    re\p|
    si |
    la |
    re, |
    sol |
    si |
    la |
    re, |
    sol\p \cresc |
    mi |
    fas |
    sol2 la4 |
    si2.\f |
    si\f |
    \after 2 \! mi,\> |
    % H
    R2. |
    la4-.\arco\mf r r |
    re,-. r r |
    sol-. r r |
    la-. r r |
    si-. r r |
    si-. r r |
    mi,-. r r |
    mi-.\f r r |
    la-. r r |
    re,-. r r |
    sol-. r r |
    do r r |
    \once \override Hairpin.to-barline = ##f
    si\< r r |
    las r r |
    la!-\! r r |
    sol\f r r |
    si r r |
    si r r |
    si r r |
    si r r |
    si r r |
    si r r |
    si r r |
    % I
    do,_\markup{\right-align \italic più \dynamic f} r r |
    re r r |
    re r r |
    re r r |
    re r r |
    re r r |
    re r r |
    re r r |
    % K
    sol2\ff r4 |
    fa2 r4 |
    mib2 r4 |
    re2 r4 |
    re2 r4 |
    do2 r4 |
    sib'2 r4 |
    la2 r4 |
    % L
    re,4:8\f sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    % M
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol: |
    re4:8 sol: la: |
    sib: la: sol-. |
    r4 r\fermata r |
    re2.\pizz\mf |
    re |
    sol |
    sol |
    R2. * 4 |
}

double_bass_cello_conductor = \relative do, {
    \new Staff \with {
        instrumentName = "Contrabaixo (vlc.)"
        shortInstrumentName = "Cb."
    }
    << \double_bass_cello \marks >>
}

double_bass_cello_part = \score {
    \new Staff
        <<\double_bass_cello \marks>>
}