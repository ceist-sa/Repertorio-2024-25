\version "2.24.4"
% automatically converted by musicxml2ly from /Users/simaoleal/Downloads/clarinet1-basset-horn-original.xml
\pointAndClickOff

%% additional definitions required by the score:
\language "português"


\header {
  title = "Die Zauberflöte"
  composer = "Wolfgang Amadeus"
}

\layout {
    \context { \Score
        skipBars = ##t
        }
    }
%{PartPOneVoiceOne =  \relative fa {
    \repeat volta 2 {
        \clef "bass" \time 2/2 \key fa \major s1*6 \break s1*8 \bar "||"
        s1*20 \break s1*5 \break s1*5 \break s1*5 \break s1*6 \break
        s1*9 \break s1*3 \break s1*5 \break s1*4 \break s1*4 \break s1*7
        \break s1*6 \break s1*2 \bar "||"
        s1*4 \break s1*2 \bar "||"
        s1*12 \break s1*6 \break s1*7 \break s1*15 \break s1*9 \break
        s1*6 \break s1*6 \break s1*7 \break s1*7 \break s1*6 \break s1*5
        \break s1*5 \break s1*5 \break s1*6 \break s1*7 \break s1*7
        \break s1*4 \break s1*5 | % 227
        \time 4/4  s1*39 \break s1*5 \break s1*6 \break s1*6 \break s1*6
        \break s1*15 \break s1*6 \break s1*6 \break s1*6 \break s1*6
        \break s1*5 \break s1*5 \break s1*5 \break s1*2 \bar "||"
        s1*100 \break | % 445
        \time 2/4  s1*5 \break s2*7 \break s1*4 \break s1*5 \break s1*2
        \break s1. \break s1*3 \break s2*11 \break s2*5 | % 509
        \time 2/2  s1*4 \break s1*2 \bar "||"
        s1*4 \break s1*5 \break s1*8 \break s1*7 \break s1*5 \break s1*6
        | \barNumberCheck #550
        \time 6/8  s4*45 \break s1*12 \break s1*3 \break s4*15 \break
        s4*15 \break s4*15 | \barNumberCheck #600
        \time 2/2  \key re \major s1*7 \break s1*6 \break s1*13 \break
        s1*8 \break s1*3 \bar "||"
        s1 | % 638
        \time 4/4  s1*17 \break s1*30 \break | % 685
        r4 r8 fa8 sib8 sib8 sib8. re16 | % 686
        re16. mi,16 mi8 r8 sol8 sib8 sib8 do8. sol8 | % 687
        la8 la16 la16 \clef "treble" r8 do'8 fa4 la4 \break | % 688
        \clef "treble_8" re,,4. sib'16 ( sol16 ) mi4. sol16 ( fa16 ) | % 689
        fa4 s32*21 \bar "||"
        s1 \break s1*41 \break s1*2 \bar "||"
        s1 | % 735
        \time 2/2  s1*5 \break s1*12 \break s1*13 \break s1*7 \break
        s1*8 \bar "||"
        s1 \break s1*22 \break s1*8 \break s1*11 \break s1*18 \break
        s1*8 \break s1*9 \bar "||"
        s1 \break | % 858
        \key sol \major s1*7 \break s1*6 \break s1*7 \break s1*6 \break
        s1*6 \break s1*6 \break s1*6 \break s1*7 \break s1*7 \break s1*6
        \break s1*11 \break s1 }
    s1 \repeat volta 2 {
        s1*2 \break s1*5 \break s1*4 \break s1*5 \break s1*3 }
    s1 \break s1*6 | % 961
    \time 3/4  s4*21 \break s4*27 \break s1*6 \break s1*6 \break s1*6
    \break s4*27 \break }
%}
%{PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata = ##t Wo
    willst du kUh -- ner Fremd ling "hin?" was suchst du hier im Hei --
    lig -- "tonl?" Der Lieb und TuU -- gend\skip1 Ei -- gen -- \skip1
    "tum."
    }%}

Ouverture =  \relative do'' {

    
    \clef "treble" \time 2/2 \key fa \major | % 1
    do2 -\f r4 \fermata r8. fa16 | % 2
    fa2 r4 r8. fa16 | % 3
    fa2 r4 \fermata r4 | R1 | % 5
    re2. \sfp r4 R1 \break | % 7
    do2.\sfp r4 R1*5 | % 13
    r4 do2\sfp r4 | % 14
    r4 re2\sfp r4 |
    R1 \bar "||" \tempo "Allegro" R1*19 \break | % 35
    
    <<
    \new CueVoice {
        \cueClef "treble"
            do8^"Viol." r8 mi8\trill ( re16 mi16 ) fa8 -. fa8 -. re8 -. re8 -. | % 36
    sol8 -. sol8 -. mi8\trill ( re16 mi16 ) fa8 -. fa8 -. re8 -. re8 -. | % 37
    }
    \\
    {
        R1 |R1 | \cueClefUnset
    }
    >>

    r4 mib4 ( -\p re4 reb4 | % 38
    do4 re4 do4 sib4 ) | % 39
    la2 -\f fa2 \break | 
    do'1 | % 41
    la4 r4 fa'2 ~ | % 42
    fa4 mi8 re8 do8 sib8 la8 sol8 | % 43
    la4 fa'4 re4 mi4 | % 44
    do4 re4 si4 do4 \break | % 45
    la4 sib4 sol4 la4 | % 46
    fa'2 ( sol2 ) | % 47
    la4 fa2 mi4 ~ | % 48
    mi4 re2 do4 ~ | % 49
    do4 sib2 la4 \break | 
    fa'2 mi2 | % 51
    si1 ~ -. | % 52
    si4 do4 -! fa4 -! mi4 -! | % 53
    re4 r4 r2 | % 54
    fas1 ( | % 55
    sol4 ) r4 r2 \break | % 56
    fas1 ( | % 57
    sol4 ) r4 r2| R1*6 | % 64

    <<
    \new CueVoice {
            <do,, mi>8 -. -"Fag." -\p <do mi>8 -. <do mi>8 -. <do mi>8 -. <do mi>8
    -. <do mi>8 -. <re fa>16 ( <do mi>16 <si re>16 <do mi>16 )
    \break | % 65
    }
    \\
    {
        \once \override Rest.staff-position = #2 
        r1| \cueClefUnset
    }
    >>

    re'8 -. -\p re8 -. re8 -. re8 -. re8 -. re8 -. mi16 ( re16 do16
    re16 ) | % 66
    mi4 r4 r2 | % 67
    re8 -. re8 -. re8 -. re8 -. re8 -. re8 -. mi16 ( re16 do16 re16
    ) \break | % 68
    mi2. -\f fa16 ( mi16 re16 mi16 ) | % 69
    fa8 -! -1 r8 sols2 ( -\sf la8 ) r8 | 
    r4 fas2 ( -\sf sol8 ) r8 | % 71
    r4 mi2 ( -\sf fa8 ) r8 | % 72
    la4 r4 sol4 r4 \break | % 73
    fa4 r4 re4 r4| R1 | % 75
    re8 -. -\p re8 -. re8 -. re8 -. re8 -. re8 -. mi16 ( re16 do16
    re16 ) | % 76
    mi4 r4 r2 \break | % 77
    re8 -. re8 -. re8 -. re8 -. re8 -. re8 -. mi16 ( re16 do16 re16
    ) | % 78
    mi2. -\f fa16 ( mi16 re16 mi16 ) | % 79
    fa8 -! r8 sols2 ( -\sf la8 ) r8 | 
    r4 fas2 ( -\sf sol8 ) r8 \break | % 81
    r4 mi2 ( -\sf fa8 ) r8 | % 82
    la4 r4 sol4 r4 | % 83
    fa4 r4 re4 r4 | R1*2 | % 86
    sol1 ~ -\p | % 87
    sol1 ~ -\cresc \break | % 88
    sol1 ~ -\f | % 89
    sol1 ~ | 
    sol2 fa2 | % 91
    mi2 re2 | % 92
    do4 r4 do4 r4 | % 93
    do4 r4 do4 r4 \break | % 94
    do4 do4 sol4 mi4 | % 95
    do4 r4 do'4 do4 | % 96
    do1 \fermata \bar "||" \tempo "Adagio"
    r4  r8. mi16 mi2 | % 98
    mi2 r2 \fermata | % 99
    r4 r8. mi16 mi2 \break | 
    mi2 r2 \fermata | % 101
    r4 r8. mi16 mi2 | % 102
    mi2 r2 \fermata \bar "||" \tempo "Allegro"
    R1*9 | % 112

    <<
    \new CueVoice {
            
        r2 ^"Ob." -\p  mi2 ~ | % 113
        mi4 re8 -. do8 -. sib8 -. la8 -. sol8 -. fa8 -. \break | % 114
        sol2 sol'2 ~ | % 115
        sol4 fa8 -. mi8 -. re8 -. do8 -. si8 -. la8 -. | % 116
        si2 <mi sols>2 | % 117
    }
    \\
    {
        R1*5| \cueClefUnset
    }
    >>

    r2 mi2 -\f | % 118
    fa1 ~ | % 119
    fa2 re2 \break |
    mi1 ~ | % 121
    mi2 do2 | % 122
    re1 ~ | % 123
    re2 si2 | % 124
    do1 ( | % 125
    fa4 ) r4 re4 r4 | % 126
    do4 r4 si4 r4 \break | % 127

    R1 ^"G.P."| R1*12 |

    <<
    \new CueVoice {
            
            do8 -. ^"Viol.I" -\p do8 -. do8 -. do8 -. do8 -. do8 -. mib16 ( -\f reb16
    do16 reb16 ) | % 141
    do8 -\p do8 -. mib16 ( -\f reb16 do16 reb16 ) do8 -. -\p do8 -.
    mib16 ( -\f reb16 do16 reb16 ) \break | % 142
    }
    \\
    {
        R1*2| \cueClefUnset
    }
    >>


    
    r8 mi8 ( -\p sol8 fa8 mi8 sol8 sib8 la8 | % 143
    sol8 fa8 mi8 re8 do8 sib8 la8 sol8 | % 144
    fa4 ) r4 r2 R1*5 |

    <<
    \new CueVoice {
            
        r4 ^"Fl.I"si'8 -. la8 -. sol8 -. fas8 -. mi4
    }
    \\
    {
        R1| \cueClefUnset
    }
    >>

    R1 |

    <<
    \new CueVoice {
            
        r4 ^"Fl.I"re'8 -. do8 -. sib8 -. la8 -. sol4 | % 153
    }
    \\
    {
        R1| \cueClefUnset
    }
    >>

    
    r8 fa8 -. -\p mi8 -. re8 -. do8 -. sib8 -. la8 -. sol8 -. | % 154
    fa1 -\f | % 155
    do'1 | % 156
    la4 r4 fa'2 ~ \break | % 157
    fa4 mi8 re8 do8 sib8 la8 sol8 | % 158
    la4 fa'4 re4 mi4 | % 159
    do4 re4 si4 do4 | 
    la4 sib4 sol4 la4 | % 161
    fa'2 ( sol2 ) | % 162
    la4 fa2 mi4 ~ \break | % 163
    mi4 re2 do4 ~ | % 164
    do4 sib2 la4 | % 165
    fa'2 mi2 | % 166
    si1 ~ | % 167
    si4 r4 r2 | % 168
    mi1 ~ | % 169
    mi4 r4 r2 \break | 
    mib1 ~ | % 171
    mib4 r4 r2 | % 172
    re2. do4 -! | % 173
    sib4 -! la'4 -! sol4 -! fa4 -! | % 174
    mi4 r4 r2 | % 175
    fa1 ( | % 176
    mi4 ) r4 r2 \break | % 177
    fa1 ( | % 178
    mi4 ) r4 r2 | % 179
    re1 ~ -\p | 
    re8 ( mib8 mi8 fa8 fas8 sol8 la8 sib8 ) | % 181
    do,1 ~ | % 182
    do8 ( dos8 re8 mi8 fa8 sol8 sols8 la8 ) \break | % 183
    sib,1 ~ | % 184
    sib8 ( si8 do8 mi8 sol8 ) sol,8 ( do8 sib8 ) | % 185
    la4 r4 do2 ~ | % 186
    do8 ( mi8 sol8 mi8 do8 sol8 do8 sib8 ) | % 187
    la4 r4 do2 ~ \break | % 188
    do8 ( mi8 sol8 mi8 do8 sol8 do8 sib8 ) | % 189
    la8 r8 la'2 ( -\f sol4 ) |
    fa8 -! r8 fa2 ( -\sf mi4 ) | % 191
    re8 -! r8 fa2 -\sf fa4 | % 192
    mi4 r4 fa4 r4 \break | % 193
    sol4 r4 mi4 r4 | % 194
    r2 do2 ~ -\p | % 195
    do8 ( mi8 sol8 mi8 do8 sol8 do8 sib8 ) | % 196
    la4 r4 do2 ~ | % 197
    do8 ( mi8 sol8 mi8 do8 sol8 do8 sib8 ) \break | % 198
    la8 r8 la'2 ( -\f sol4 ) | % 199
    fa8 -! r8 fa2 ( -\sf mi4 ) | 
    re8 -!  r8 fa2 -\sf fa4 | % 201
    mi4 r4 fa4 r4 | % 202
    sol4 r4 mi4 r4 | % 203
    do1 ~ -\p \break | % 204
    do1 ~ | % 205
    do1\cresc ~ | % 206
    do1 | % 207
    fa4 ( -\f fas4 sol4 mi4 ) | % 208
    fa4 ( fas4 sol4 mi4 ) | % 209
    fa2 sib,2 | 
    la2 sol2 \break | % 211
    fa4 r4 r2 | % 212
    mib'2 dos2 | % 213
    re2 r4 fa4 | % 214
    fa4 fa4 mi4 mi4 | % 215
    fa2 r2 | % 216
    mib2 dos2 | % 217
    re2 r4 fa4 \break | % 218
    fa4 fa4 mi4 mi4 | % 219
    fa2. -\p sol16 ( -\sf fa16 mi16 fa16 ) |
    do2. -\p re16 ( -\sf do16 si16 do16 ) | % 221
    la2. -\p sib16 ( -\sf la16 sol16 la16 ) \break | % 222
    fa8 -\f do8 fa8 do8 fa8 do8 fa8 do8 | % 223
    fa8 do'8 do8 do8 do8 do8 do8 do8 | % 224
    do8 mi8 fa8 mi8 fa8 mi8 fa8 mi8 | % 225
    fa4 r4 do4 do4 | % 226
    do2 r2 \fermata \bar "|." % 227

}




NoIntroduction =  \relative do'' {

    \time 4/4 \tempo "Allegro"
    
    <<
    \new CueVoice {
            
        fa,16 -"Viol.II" re16 fa16 re16 fa16 re16 fa16 re16 fa16 re16 fa16
    re16 fa16 re16 fa16 re16 | % 263
    }
    \\
    {
         \once \override Rest.staff-position = #2 
        r1| \cueClefUnset
    }
    >>

    R1*35 

    <<
    \new CueVoice {
            
        fa'2 ^"Ob.I" mi2 | % 264
        fa1 | % 265
        fa4 fa8. fa16 mi4 mi8. mi16 \break | % 266
    }
    \\
    {
        R1*3| \cueClefUnset
    }
    >>
    
    sib2 -\f fa'4. fa8 | % 267
    re4 fa4 re4 sib4 | % 268
    do2. \fermata do8. do16 | % 269
    fa4 do8. do16 fa4 do8. do16 |
    fa4 r4 r4 fa8. fa16 \break | % 271
    sol4 la8. la16 sol4 la8. la16 | % 272
    sol4 r4 r4 do,4 -\p | % 273
    do2 mi2 | % 274
    fa1 ~ | % 275
    fa2 mi2 | % 276
    fa4 r4 r2 \break | % 277
    sib,1 ( | % 278
    la4 ) r4 r2 | % 279
    do1 ~ | 
    do4 la8 ( do8 ) do8 ( fa8 ) fa8 ( la8 ) | % 281
    la4 r4 r2 R1 \break | % 283
    la,2 ( sib2 ) | % 284
    la4 la8 ( do8 ) do8 ( fa8 ) fa8 ( la8 ) | % 285
    la4 r4 r2 R1 | % 287
    la,2 ( sib2 ) | % 288
    la4 r4 r2 \break R1*11 | 


    <<
    \new CueVoice {
            
        sib4  ^"Viol.I"sib8. ( re16 fa4 ) fa4 | % 301
        fa4 ( sib4 la4 lab4 | % 302
        fas4 sol4 fa8 mib8 re8 do8 ) | % 303
        fa,2. ( sol8 la8 ) \break | % 304
        sib4 s2. | % 305
    }
    \\
    {
        R1*4 | r4 fa'4.( re8 mib8 do8)| \cueClefUnset
    }
    >>



    re1 ~ | % 306
    re2. sol4 | % 307
    do,2 r4 fa4 | % 308
    fa1 ~ | % 309
    fa4 sol8 ( mib8 re4 ) do4 \break | 
    re4 sib8 ( re8 fa4 ) fa4 | % 311
    fa1 ~ | % 312
    fa8 ( sib8 sol8 mib8 ) re4 do4 | % 313
    sib4 r4 r2 | % 314
    r2 r4 mib4 ( -\f | % 315
    re8 ) r8 r4 r2 \break | % 316
    r2 r4 mib4 ( | % 317
    re8 ) r8 r4 r2 | % 318
    r2 r4 mib4 ( | % 319
    re8 ) r8 do8 -! r8 r4 do4 -\p | 
    re4 re4 re4 re4 | % 321
    re2. ( sol4 ) \break | % 322
    do,2 r4 fa4 | % 323
    fa2. fa4 | % 324
    fa2 sol2 | % 325
    do,2. ( re8 mib8 ) | % 326
    re4 sib8 ( re8 fa4 ) fa4 | % 327
    fa2. fa4 \break | % 328
    fa4 ( fas4 sol8 sib8 sol8 mib8 ) | % 329
    re2 do2 | 
    sib4 r4 r2 | % 331
    r2 r4 mib4 ( -\f | % 332
    re8 ) r8 r4 r2 \break | % 333
    r2 r4 do4 ( | % 334
    sib8 ) r8 r4 r2 | % 335
    r2 r4 mi4 ( | % 336
    re8 ) r8 r4 r2 | % 337
    r2 r4 si4 ( \break | % 338
    la8 ) r8 r4 r4 do4 ( | % 339
    si8 ) r8 r4 r4 do4 ( | 
    si8 ) r8 r4 r4 do4 ( | % 341
    si8 ) r8 r4 r4 do4 ( | % 342
    re8 ) r8 r4 r4 do4 ( \break | % 343
    dos8 ) r8 r4 r4 re4 | % 344
    re4 r4 res4 r4 | % 345
    mi4 r4 r4 r8 r8 \bar "||"
    R1*99 \bar "|."

}

NothirdAria= \relative do''{

    \time 2/4 \tempo "Larghetto" s16*7 r16  | % 446
    do4^"ten." -\p r4 | % 447
    fa4^"ten." r4 R2 | % 449
    r8 sib,8[ ( -. sib8 -. sib8] ) -. |
    sib4 r4 | % 451
    r8 la8[ ( -. la8 -. la8] ) -. R1 | % 454
    sib'4 ~ -\fp sib8 r8 \break R1 | % 457
    r4 sib,4 ( | % 458
    la8 ) r8 r4 R2 |
    r4 r8 la'16. ( sol32 ) | % 461
    sol8. ( fa32 mi32 ) re16 -! re16 ( mi16 fa16 ) \break | % 462
    res8 ( mi8 ) r4 R2 | % 464
    r8 sol8 ( la8 ) r8 R2 | % 466
    r8 sol4 ( si8 ) | % 467
    do8 r8 r4 R1 \break | 
    r4 r8 r16 -\p re,16 ( | % 471
    mi8 ) r16 mi16 ( fa8 ) r16 -\f fa16 ( | % 472
    sol4 ) r4 R2 | % 474
    r8 mi4. -\fp R2*5 \break |
    r16 sol16 -\p r16 sol16 r16 sol16 r16 sol16 R2 | % 482
    r16 sol16 r16 sol16 r16 sol16 r16 sol16 R2 \break | % 484
    r16 sol16 r16 sol16 r16 sol16 r16 sol16 | % 485
    r16 do16 r16 do16 r16 sib16 r16 sib16 | % 486
    r16 sib16 r16 sib16 r16 la16 r16 la16 \break | % 487
    r16 si16 r16 si16 r16 si16 r16 si16 | % 488
    r16 do16 r16 si16 r16 sib16 r16 sib16 | % 489
    R2^"G.P." R2*3 \break | % 493
    fa4 ( -\p mi4\cresc ) | % 494
    fa16. ( -\f mib32 ) mib8 -! r4 R1*2 | % 499
    r4 sib4 ( -\p |
    la8 ) r8 r4 R1. \break | % 504
    la'4 ( -\p sol4 ) | % 505
    fa8. ( la16 ) la16 ( sol16\cresc fa16 mi16 ) | % 506
    fa8 -\f r16 la16 ( sib8. ) sol16 ( | % 507
    fa16 ) -\p la16 ( do8 ) ~ do16 ( re16 sol,16 mi16 ) | % 508
    sol4 ( fa8 ) r8 \fermata \bar "|." % 509

}

NofifthQuintetto= \relative do''{

    \time 2/2 \tempo "Allegro"
    <<
    \new CueVoice {
            
    do2 ^"Viol"  r8. do16 -! do8 ( sib16 do16 ) | 
    mi4 -! do4 -! sol4 -! mi4 -! | % 511
    do4 -! r4 r2 |
    }
    \\
    {
        R1*3| \cueClefUnset
    }
    >>
    
    R1 *207 \break | % 513
    
    <<
    \new CueVoice {    
      r4^"Ob." <do' fas>4 <sib sol'>4 <do fas>4 -! | % 514
    <sib sol'>4 -! <do fas>4 <sib sol'>4 -! <do fas>4 -! | % 515
    <sib sol'>4 r4 r2 \bar "||"
    }
    \\
    {
        R1*2 | R1 -\fermata \bar "||" \cueClefUnset
    }
    >>

    \time 2/2  \tempo "Andante"

    sol'1 -\p -"dolce" | % 517
    mi1 | % 518
    do2 ~ do4. re16 mi16 \break | % 519
    fa8. ( sol16 ) mi8. ( fa16 ) re4 ( sol,8 ) r8 |

    sol'1 | % 521
    mi1 | % 522
    do2 ~ do4. re16 mi16 | % 523
    fa8. ( sol16 ) mi8. ( fa16 ) re4 ( sol,8 ) r8 \break | % 524
    re'2 ( mi2 ) | % 525
    fa8. ( mi16 ) fa8. ( sol16 ) mi4 -! r4 | % 526
    la4. -\sf la8 -\p la8 ( sol8 fa8 mi8 ) | % 527
    re4 -! re4 -!  do4 -! r4 R1*4 \break | % 532
    re2 ( -\p mi2 ) | % 533
    fa8. ( mi16 ) fa8. ( sol16 ) mi4 -! r4 | % 534
    la4. -\sf la8 -\p la8 ( sol8 fa8 mi8 ) | % 535
    re4 -! re4 -! do4 -! r4 R1*3 \break | % 539
    r2 r4 r8 do8 -\f |
    la'4. la8 sol4 r8 do,8 | % 541
    la'4. la8 sol4 r8 do,8 | % 542
    la'4. la8 la8 ( sol8 fa8 mi8 ) | % 543
    re4 re4 do4 r8 do8 -\p \break | % 544
    re8 ( sol8 fas8 fa8 ) mi4 r4 | % 545
    r2 r4 r8 do8 | % 546
    re8 ( sol8 fas8 fa8 ) mi4 r4 | R1 | % 548
    do4 r4 do4 r4 | % 549
    do4 r4 r2 \fermata \bar "|."
}

NoseventhDuetto= \relative do''{

    \time 6/8 \tempo "Andantino" r4 r8 s4. | % 551
    r4 r8 do'4. ( -\p | % 552
    la8 ) r8 r8 r4 r8 R4*33 | % 564

    <<
    \new CueVoice {    
        fa8^"Viol.I."  -! r8 r8 fa8 -\mf mi16 ( fa16 ) mi16 ( la16 ) \break | % 565
        sol4 ( sib16 sol16 ) fa4 ( sol16 mi16 ) | % 566
        fa4 s8 s4. | % 567
    }
    \\
    {
        R2.*2| r4 r8 \once \override Slur.direction = #UP do'4.( -\p \cueClefUnset la8)
    }
    >>

     r8 r8 r4 r8 R1*9 |

    <<
    \new CueVoice {    
        fa8^"Viol.I."  -! r8 r8 fa8 -\mf mi16 ( fa16 ) mi16 ( fa16 ) \break | % 581
        sol4 ( sib16 sol16 ) fa4 ( sol16 mi16 ) | % 582
        fa4 s8 s4. | % 583
    }
    \\
    {
        R2.*2| r4 r8 \once \override Slur.direction = #UP do8.(-"dolce" fa16 la fa \cueClefUnset mi8)
    }
    >>


     r8 r8 r4 r8 | % 584
    r4 do8 do8. ( fa16 la16 fa16 \break | % 585
    mi8 ) r8 r8 r4 r8 | % 586
    r4 r8 r8 la8 -! -\p sol8 -! | % 587
    r8 fa8 -! mi8 -! r8 re8 -! do8 -! | % 588
    sib8 -! r8 r8 r4 r8 R2. \break |

    r16 do16 ( re16 mi16 fa16 sol16 ) la8[ -! r8 sol8] -! | % 591
    fa8[ -! r8 mi8] -! re8[ -! r8 do8] -! | % 592

    sib8 -! r8 r8 sol'4. -\f | % 593
    la4. -\p sol4. | % 594
    fa4 -\f r8 r4 r8 \break R2. | % 596
    do'4 -\f r8 r4 r8 R2. | % 598
    r4 sib16. ( -\p sol32 ) sol8 ( fa8 mi8 ) | % 599
    fa8 -! fa8 -! fa8 -! fa8 -! r8 r8 \fermata \bar "|."
}

UpperFinale= \relative do''{
    \time 4/4  
    s1*85 | % 687

    \clef "bass"  \key re \major | % 685 %60 
    r4^"Priester" r8-"Wo willst du kühner"fa,,8  sib8 sib8 sib8. re16 | % 686
    re16.-"Fremdling hin?" mi,32 mi8 r8 sol8-"was suchst du hier im" sib8 sib8 do8. sol16| % 687
    la8-"Hei-lig-tum? -Der Lieb' und" la16 la16 \clef "treble_8" r8 do8^"Tamino" fa4 la4 \break | % 688
    \clef "treble_8" re,4.-"Tu -   gend" sib'16 ( sol16 ) mi4.-"Ei  -"  sol16-"gen"  ( fa16 )|fa4-"tum."  s4 s4 s4 % 689

}


NoeightFinale= \relative do''{

    \time 2/2  \key re \major \tempo"Larghetto"
     <<
    \new CueVoice {    
        re,4. -"Fag."  re8 re4. re8 | % 601
    }
    \\
    {
        \once \override Rest.staff-position = #2 
        r1 \cueClefUnset 
    }
    >>   
    
    
    la''1 ~ -\p | % 602
    la1 ~ | % 603
    la1 ~ | % 604
    la2 ~ la4 r4 R1 | % 606
    r2 r8. la,16 re8. fas16 \break | % 607
    la2 ~ la8. ( sol16 ) fas8. ( sol16 ) | % 608
    fas4 mi8.\trill ( re32 mi32 ) re4 r4 | % 609
    la'1 ~ | 
    la1 ~ | % 611
    la1 ~ | % 612
    la2 ~ la4 r4 \break R1*2 | % 615
    r2 la2^"ten." | % 616
    r2 la2^"ten."  | % 617
    r2 la2^"ten." |  R1*6 | % 624
    r2 la2^"ten."  | % 625
    r2 la2^"ten."  \break | % 626
    r2 la2^"ten."  R1*4 | % 631
    r2 r8. la,16 la8. la16 | % 632
    la4 ( re8. fas16 ) la2 ~ | % 633
    la8. ( sol16 ) fas8. ( sol16 ) fas4 mi8.\trill ( re32 mi32 ) \break | % 634
    re4 r4 r2 | % 635
    la'1 ~ | % 636
    la1 ~ | % 637
    la2 ~ la4 r4 \bar "||"

    \time 4/4  R1*11 ^"Recitativo" \tempo "Allegro" R1*6  \break |
     \tempo "Allegro assai" R1*29 | % 664
    %R1 \fermata R1 \fermata  R1*18 \break | % 685
    \tempo "Adagio" R1  | % 687

    R1*2 |

    la4 ( -\p do4 fa,4 la4 ) \break | % 688
    re,2 mi2 | % 689
    fa4 r4 r2 | R1*260\bar "||"

    
    %-------Corno di Basseto-------%

    \time 4/4 \key do \major 
    
    <<
    \new CueVoice {    
        re8 ^"Cl." \tempo "Allegro maestroso" re16 re16 re8 sol8 re4 si8 sol8 | % 692
        re'8 re16 re16 re8 sol8 re4 r4|
    }
    \\
    {
       R1*2 \cueClefUnset 
    }
    >>


    R1*37 |

    <<
    \new CueVoice {    
        r2 r4.. sol16 ^"Ob.I" \ottava 1 |
        fas'4 sol8. sol16 fas4 sol8. sol16 \break | % 732
        mi4 la,4 si4 r8. sol'16 | % 733
        fas4 sol8.  sol16 fas4 sol8. sol16  | % 734
        mi4 re4 sol,4 r4 \fermata  \ottava 0
    }
    \\
    {
       R1*5 \cueClefUnset 
    }
    >>

    \bar "||"   


    \time 2/2  \key sol \major si,,4 -\f r4 re4 r4 | % 694
    sol2 r2 R1*3 | % 698
    r4 re4 ( -. -\p re4 -. re4 ) -. |
    R1*9 | % 708
    r4 la'8 ( -\p sol16 fas16 mi8 fas8 sol8 mi8 ) | % 709
    fas4 r4 r2 | 
    r4 la8 ( sol16 fas16 mi8 fas8 sol8 mi8 ) | % 711
    re4 r4 r2 R1*11 | % 723
    re1 ( -\p | % 724
    mi1 | % 725
    fas1 ) | % 726
    sol1 ( | % 727
    fas4 ) r4 r2 R1 | % 729
    r2 r4 sol8. ( -\p mi'16 ) | 
    mi4. ( re16 do16 ) si8 -. si8 ( do8 re8 ) | % 731
    re8 ( do8 ) do4 r2 R1*5 | % 737
    r2 \fermata r2 | % 738
    r2 \fermata r4 r4 \bar "||"
    \time 2/2 \tempo"Allegro" R1*18  | % 757

    <<
    \new CueVoice {    
        r4 ^"Ob.I"  sol'2. ~ | % 758
        sol4 fas4 mi4 re4 | % 759
        do4 s2. |
    }
    \\
    {
       R1*2| r4 re2 re4 \cueClefUnset 
    }
    >>
     
    fa4 re4 r2 | % 761
    mi2 -\f re8 do8 si8 la8 | % 762
    mi4 -\p r4 r2 | % 763
    mi'2 -\f re8 do8 si8 la8 | % 764
    mi4 -\p r4 r2 R1*4 | % 769
    mi'1 ~ -\p | 
    mi1 ~ | % 771
    mi4 r4 r2 R1*6 | % 778
    do1 ( -\fp | % 779
    si4 ) r4 r2 R1*18 | % 798
    r4 re2 ( -\p do4 | % 799
    si4 la4 sol4 fas4 | 
    sol4 ) r4 r2 R1*2 | % 803
    fas'1 ( -\f | % 804
    sol4 ) r4 r2 | % 805
    si,1 -\p | % 806
    la1 | % 807
    re1 -\f | % 808
    sol,2 r2 |
    R1 | R1*4 ^"Recit."| % 811

    \tempo "Adagio"
    <<
    \new CueVoice {    
        r2 ^"Fl.I"   \ottava 1 dos'4(  re4)( | re4) dos4 re\ottava 0 r4\fermata|
    }
    \\
    {
       R1*2\cueClefUnset 
    }
    >>

    \bar "||"
    \clef "treble" \time 2/2 \key re \major \tempo "Presto" re,2 r2 R1 | % 818
    re2 r2 R1 | 
    r2 la'2 | % 821
    sol4 fas4 mi4 re4 | % 822
    dos4 r4 la'2 | % 823
    sol4 fas4 mi4 re4 | % 824
    dos4 r4 la'2 | % 825
    sol4 fas4 mi4 re4 | % 826
    dos4 fas4 mi4 fas4 | % 827
    mi4 fas4 mi4 fas4 | % 828
    mi2 r2 R1 |
    dos1 ~ | % 831
    dos1 | % 832
    re2 r2 R1 | % 834
    la1 ~ | % 835
    la1 | % 836
    si4 la4 si4 la4 | % 837
    si4 la4 si4 la4 | % 838
    si2 r2 | % 839
    dos1 | 
    re2 fas2 | % 841
    mi1 | % 842
    re2 r2 | % 843
    mi2. mi4 | % 844
    mi4 mi4 mi4 mi4 | % 845
    mi4 mi4 mi4 mi4 | % 846
    mi2 fas2 | % 847
    mi1 | % 848
    re2 r2 | % 849
    mi2. mi4 | 
    mi4 mi4 mi4 mi4 | % 851
    mi4 mi4 mi4 mi4 | % 852
    mi2 fas2 | % 853
    mi1 | % 854
    fas,4 la4 re4 fas4 | % 855
    la1 ~ | % 856
    la2 fas4 fas4 | % 857
    mi2 mi2 | % 858
    fas,4 la4 re4 fas4 | % 859
    la1 ~ |
    la2 fas4 fas4 | % 861
    mi1 | % 862
    fas1 | % 863
    mi1 | % 864
    fas1 | % 865
    mi1 | % 866
    re1 | % 867
    si1 | % 868
    mi,1 | % 869
    la1 |
    re,2 r2 | % 871
    fas'2. mis4 | % 872
    fas4 mis4 fas4 mis4 | % 873
    fas4 mis4 fas4 mis4 | % 874
    fas4 re4 mi4 dos4 | % 875
    re2 r2 | % 876
    fas2. mis4 | % 877
    fas4 mis4 fas4 mis4 | % 878
    fas4 mis4 fas4 mis4 | % 879
    fas4 re4 mi4 dos4 |
    re4 la8 la8 la4 la4 | % 881
    la4 re4 la4 re4 | % 882
    la4 fas8 fas8 fas4 fas4 | % 883
    fas4 la4 fas4 la4 | % 884
    fas2 r2 \bar "|." % 885

}




NonineMarshchderPriester= \relative do''{

 \key sol \major 
    \repeat volta 2 {
        si2-"sotto voce" ( re2 ) | % 886
        sol,2 r4 sol4 ( | % 887
        la4 si4 do4 mi4 ) | % 888
        re4. ( do8 ) si2 | % 889
        la2 re4. ( fas8 ) | 
        sol,4. ( si8 ) mi4. ( dos8 ) | % 891
        re8. ( dos16 ) si8. ( mi16 ) re4 -. dos4 -. | % 892
        dos2 ( re4 ) r4 }| % 893
    \repeat volta 2 {
        la2 la4 ( si4 ) | % 894
        re4. ( do8 ) do4 ( si4 ) | % 895
        mi4 ( re4 do4 si4 ) | % 896
        si2 ( do4 ) la4 ( | % 897
        re4 do4 si4 la4 ) | % 898
        sol4 ( do2 si4 ) | % 899
        \acciaccatura { si8 ( } la4. ) la8 la4. sol8 |
        sol8 ( fas8 mi8 re8 mi8 fas8 sol8 la8 ) | % 901
        si2 ( re2 ) | % 902
        sol,2 re'2 | % 903
        mi4 ( fas4 sol4 mi4 ) | % 904
        re4. ( do8 si4 sol4 ) | % 905
        mi'2 do4. ( la8 ) | % 906
        fas2 re'2 ~ | % 907
        re8. ( fas,16 sol8. la16 ) si8 -. r8 la8 -. r8 | % 908
        sol4 r4 mi'2 ~ | % 909
        mi8. ( sols,16 la8. do16 ) si4 ( la8. si16 ) | 
        do4 r4 sol'2\sfp ~ | % 911
        sol8. ( si,16 do8. mi16 ) si8 r8 si16 ( la16 sol16 la16 ) | % 912
        la2 ( sol4 ) r4 } \bar "|."

}


NotenArie = \relative do''{
    \time 3/4  \tempo "Adagio" sol2 ( -\p fas4 | 
    sol2 la4 ) | % 921
    re,4. ( mi8 fas4 ) | % 922
    sol2 r4 | % 923
    sol2 r4 | % 924
    la2 r4 | % 925
    si2 ( do8 la8 ) | % 926
    sol4 ( fas4 ) fas4 | % 927
    fas2. ~ | % 928
    fas2. ~ | % 929
    fas2. | 
    sol4 ( -. sol4 -. sol4 ) -. | % 931
    sol2. | % 932
    sol4 ( -. sol4 -. sol4 ) -. | % 933
    sol2. ~ | % 934
    sol4 fas4 ( -. fas4 ) -. | % 935
    la2. | % 936
    sol2. | % 937
    fas2 ( mi4 ) | % 938
    mi4 ( fas4 ) r4 | % 939
    fas4 ( -. fas4 -. fas4 ) -. |
    fas2 ( sol8 mi8 | % 941
    re2 dos4 ) | % 942
    re4 fas4 ( -. fas4 ) -. | % 943
    fas2. ~ | % 944
    fas4 ( sol4 ) sol4 | % 945
    mi2. | % 946
    re4 la'4 ( -. la4 ) -. | % 947
    la4 ( si4 do4 ) | % 948
    re2. ~ | % 949
    re2. ~ | 
    re4 ( do4 ) r4 | % 951
    fas,2. | % 952
    r4 sol4 ( re4 ) | % 953
    r4 sib4 ( sol4 ) | % 954
    dos4 ( re4 ) re4 | % 955
    re4 ( sol4 si4 ) | % 956
    si8 ( la8 ) la2 | % 957
    re,4 ( la'4 do4 ) | % 958
    do4 ( si4 ) r4 | % 959
    re2. ( | 
    do2. ) | % 961
    si2 ( la4 ) | % 962
    la4 ( si4 ) r4 | % 963
    si4 ( -. si4 -. si4 ) -. | % 964
    si2 ( do8 la8 ) | % 965
    sol2 ( fas4 ) | % 966
    sol4 sol4 ( -. sol4 ) -. | % 967
    sol2. ~ | % 968
    sol2 la4 | % 969
    sol2 ( fas4 ) |
    sol4 ( -. sol4 -. sol4 ) -. | % 971
    sol2 ( la4 ) | % 972
    re,4. ( mi8 fas4 ) | % 973
    sol2 r4 \bar "|."
}


% The score definition
\score {
  <<
    \new Staff {
        \set Staff.instrumentName = "Clarinetto I"

        \mark \markup \center-align { \bold "Ouverture" }  % movement title
        \Ouverture
        %\pageBreak
         \break
        \mark \markup \center-align { \bold "No.1 Introduction" }
        \set Score.currentBarNumber = #1
        \NoIntroduction
        %\pageBreak
         \break
        \mark \markup \center-align { \bold "No.3 Aria" }
        \set Score.currentBarNumber = #0
        \NothirdAria
        %\pageBreak
         \break
        \mark \markup \center-align { \bold "No.5 Quintetto" }
        \set Score.currentBarNumber = #1
        \NofifthQuintetto
        %\pageBreak
         \break
        \mark \markup \center-align { \bold "No.7 Duetto" }
        \set Score.currentBarNumber = #0
        \NoseventhDuetto
        \pageBreak
         
         
    }
    
  >>
    \layout {}

}

\score {
   \new StaffGroup <<
    % Upper staff (cue or extra voice)
    \new Staff \with {
      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -2)
    } {
      \UpperFinale
    }

    % Main staff
    \new Staff {
      \set Staff.instrumentName = "Clarinetto I"
      \mark \markup \center-align { \bold "No.8 Finale" }
      \NoeightFinale
      \pageBreak
    }
  >>
  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
    }
  }
}


\score {
  <<
    \new Staff {
        \set Staff.instrumentName = "Clarinetto I"

        \mark \markup \center-align { \bold "No.9 Marcia" }  % movement title
        \set Score.currentBarNumber = #1
        \NonineMarshchderPriester
        %\pageBreak
         \break
        \mark \markup \center-align { \bold "No.10 Aria con coro" }  % movement title
        \set Score.currentBarNumber = #1
        \NotenArie
        
    }
    
  >>
    \layout {}

}

