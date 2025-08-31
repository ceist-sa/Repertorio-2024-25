\version "2.24.4"
\language "portugues"
\include "../../styles.ily"
\include "../../ranges.ily"
\include "globals.ily"

cello = \relative do {
    \override NoteHead.color = #cello-range
    \clef bass
    R2. * 8 |
    % A
    fas2.\express_\markup{\dynamic p \italic dolce}\consord ( |
    mis) |
    fas\< ( ~ |
    2 sols4\!) |
    la2. ( |
    sols\>) |
    sol! ~|
    2.\! |
    sol |
    fas ~|
    4 mi2 (~|
    2 re4) |
    re2.\express \< ( |
    mi4 sol fas\! ) |
    \once \override Hairpin.to-barline = ##f
    sol2.\> ~|
    2\! r4 |
    % B
    sol2. ( |
    fas ) |
    sol\< (~|
    2 la4\! ) |
    sib2. ( |
    la ) |
    lab2.\> ~ |
    2.\! |
    lab |
    sol ~|
    4 fa2 (~|
    2 mib4) |
    mib2. \express\< ( |
    fa4 lab sol\! ) |
    lab2.\> (|
    sol4) fas!2->\! |
    % C
    re4-.\pp\spitze 4-. r8 8 |
    4-. 4-. 4-. |
    re4-. 4-. r8 8 |
    4-. 4-. 4-. |
    re-. mi-. fas-. |
    sol-. fas-. mi-. |
    fas-. mi-. fas-. |
    re2 re4-. |
    4-. 4-. r8 8 |
    4-. 4-. mi-. |
    fas-. fas-. r8 fas8 |
    fas4-. fas-. fas-. |
    fas-. fas-. r8 fas8 |
    fas4-. fas-. fas-. |
    fas-.\< fas-. r8 fas8\! |
    fas4\> mi-- re--\! |
    % D
    re4-._\markup{\italic più \dynamic pp} 4-. r8 8 |
    4-. 4-. 4-. |
    re4-. 4-. r8 8 |
    4-. 4-. 4-. |
    re-. mi-. fas-. |
    sol-. fas-. mi-. |
    fas-. mi-. fas-. |
    re2 re4-. |
    4-.\< 4-. r8 8 |
    4-. 4-.\! mi-. |
    fa-. mi-- r8 mi8\dim |
    mi4-. mib-- r8 mib8 |
    re4-.\p re r8 re8\< |
    mi4( sol fas)\! |
    \once \override Hairpin.to-barline = ##f
    sol2.\> ~|
    2\! r4 |
    % E
    sol,4\pizz\mp re' si' |
    si, sol' re' |
    la, sol' do |
    <re,, la'> fas' do' |
    sol, re' si' |
    si, sol' re' |
    la, sol' do |
    <re,, la'> fas' do' |
    sol,8\p re' res mi mis fas |
    sol4 re' re, |
    la sol' do |
    <re,, la'> fas' do' |
    sol,8 re' res mi mis fas |
    sol4 re' re, |
    res8 mi mis fas sol sols |
    <re! la'>4 <fas do'> re, |
    % F 
    si''4.\arco\p \cresc las8 si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f |
    fas\f |
    fa \dim ~ |
    2. ~|
    2. ~|
    2\pp ~ 8 r8 |
    % caesura
    fa,2.\mp |
    mi2. ~ |
    4 re2 ~ |
    2 r8. \caesura dos16 |
    dos2. \ppp\< (|
    res4 fas mis)\! |
    \once \override Hairpin.to-barline = ##f
    fas2.\> ~|
    2\! r4 | 
    % G
    fas2._\markup{\dynamic p \italic dolce} ( |
    mis) |
    fas\< ( ~|
    2 sols4\!) |
    la2. ( |
    \once \override Hairpin.to-barline = ##f
    sols\>) |
    sol! ~|
    2\! r4 |
    r8 re\pizz\p res mi mis fas |
    sol4 re' re, |
    la sol' do |
    <re,, la'> fas' do' |
    sol,8 re' res mi mis fas |
    sol4 re' re, |
    res8 mi mis fas sol sols |
    <re! la'>4 <fas do'> re, |
    si''4.\arco\p las8\cresc si4 |
    dos4. si8 dos4 |
    res4. dos8 res4 |
    mi2 (fas4) |
    sol2.\f |
    fas\f |
    mi2\> ~8\! r8 |
    % H 
    R2. |
    la,,4\pizz\f <mi' do'> q |
    <re, la'> <fas' do'> q |
    sol, <re' si'> q |
    la <fa' do'> q |
    si, sol' si |
    si, si' si, |
    mi, <si' sol'> q |
    mi,\f <si' sol'> q |
    la <mi' do'> q |
    <re la> <fas do'> q |
    sol, <re' si'> q |
    do <fas la> do\< |
    si <sol' si> si, |
    las <sol' dos> las, |
    la! <fas' res'> la,\! |
    r <sol mi' si'>\f q |
    r <si fas' res'> q |
    r <si sol' re'!> q |
    r <mis dos'> q |
    r <mi! do'!> q |
    r <res si'> q |
    r <mi do'> q |
    r <res si'> q |
    % I
    r <do, sol' mib' do'>_\markup{\italic più \dynamic f} q |
    r <re la' fas' la> q |
    r <re sib' fa'> q |
    r <re si'! sols'> q |
    r <sol mib' sib'> q |
    r <fas re' la' la> q |
    r <sol mib' sib'> q |
    r <fas re' la' la> q |
    % K
    r4 sol''8\ff 8 8 8 |
    sol4\> (fa)\! fa |
    fas\> (mib)\! mib |
    mib\> (re)\! re |
    r4 re8 8 8 8 |
    re4 (do) do |
    do (sib) sib |
    sib (la) la8 r8 |
    % L 
    re,,4:8\f sol: la: |
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
    r4 r\fermata r8. dos16_\markup{\right-align \italic meno \dynamic f} |
    re2. |
    mi!4 (sol fas!) |
    sol2.\> ~|
    4\! r4 r4 |
    R2. * 4 |
}

cello_conductor = \relative do, {
    \new Staff \with {
        instrumentName = "Violoncelo"
        shortInstrumentName = "Vlc."
        midiInstrument = #"cello"
    } 
    << \cello \marks >>
}

\bookpart {
    \paper {
        indent = 0.2\cm
        short-indent = 0.2\cm
        ragged-last-bottom = ##f
        ragged-bottom = ##f
    }
    \header {
        instrument = "Violoncelo"
        filename = "Sibelius - Valse Triste - VIOLONCELO"
    }
    \score {
        \new Staff 
            <<\cello \marks>>
    }
}