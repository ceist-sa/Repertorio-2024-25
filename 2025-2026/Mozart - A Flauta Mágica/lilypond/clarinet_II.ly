\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"


clarinetII_overture = \score {
    \header { piece = "Overture" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \clef "treble" \time 2/2 \key sol \major | % 1
            si2 -\sf r4 \fermata r8. si16 | % 2
            si2 r4 \fermata r8. re16 | % 3
            re2 r4 \fermata r4 | % 4
            R1 | % 5
            mi2. -\sfp r4 | % 6
            R1 | % 7
            re2. -\sfp r4 | % 8
            R1*5 | % 13
            r4 re2 -\sfp r4 | % 14
            r4 mi2 -\sfp r4 | % 15
            R1 \bar "||"
            R1*19 | % 35
            \voiceTwo
            R1*2 | % 37
            \oneVoice
            r4 fa4 ( -\p mi4 mib4 | % 38
            re4 mi4 re4 do4 ) | % 39
            si2 -\f sol2 | \barNumberCheck #40
            la1 | % 41
            sol4 r4 si2 | % 42
            la4. sol8 fas8 la8 sol8 fas8 | % 43
            sol4 mi'4 dos4 re4 | % 44
            si4 do4 las4 si4 | % 45
            sol4 la4 fas4 sol4 | % 46
            mi'2 ( fas2 ) | % 47
            sol4 mi2 re4 ~ | % 48
            re4 do4 dos4 si4 ~ | % 49
            si4 la2 sol4 | \barNumberCheck #50
            mi'2 re2 | % 51
            sol,1 ~ | % 52
            sol4 la4 -! mi'4 -! re4 -! | % 53
            dos4 r4 r2 | % 54
            fa1 ( | % 55
            mi4 ) r4 r2 | % 56
            fa1 ( | % 57
            mi4 ) r4 r2 | % 58
            R1*6 | % 64
            \voiceOne
            R1 | % 65
            \oneVoice
            dos8 -. -\p -\p dos8 -. dos8 -. dos8 -. dos8 -. dos8 -. re16 (
            dos16 si16 dos16 ) | % 66
            re4 r4 r2 | % 67
            dos8 -. dos8 -. dos8 -. dos8 -. dos8 -. dos8 -. re16 ( dos16 si16
            dos16 ) | % 68
            la1 ( -\f | % 69
            las8 ) r8 sol'2 ( -\sf fas8 ) r8 | \barNumberCheck #70
            r4 fa2 ( -\sf mi8 ) r8 | % 71
            r4 la,2 ( si8 ) r8 | % 72
            sol'4 r4 fas4 r4 | % 73
            mi4 r4 dos4 r4 | % 74
            R1 | % 75
            dos8 -. -\p dos8 -. dos8 -. dos8 -. dos8 -. dos8 -. re16 ( dos16
            si16 dos16 ) | % 76
            re4 r4 r2 | % 77
            dos8 -. dos8 -. dos8 -. dos8 -. dos8 -. dos8 -. re16 ( dos16 si16
            dos16 ) | % 78
            la1 ( -\f | % 79
            las8 ) r8 sol'2 ( -\sf fas8 ) r8 | \barNumberCheck #80
            r4 fa2 ( -\sf mi8 ) r8 | % 81
            r4 la,2 ( -\sf si8 ) r8 | % 82
            sol'4 r4 fas4 r4 | % 83
            mi4 r4 dos4 r4 | % 84
            R1*2 | % 86
            re4 ( -\p res4 mi4 dos4 ) | % 87
            re4 ( res4 mi4 dos4 ) | % 88
            re4 ( -\f res4 mi4 dos4 ) | % 89
            re4 ( res4 mi4 dos4 ) | \barNumberCheck #90
            fas2 mi2 | % 91
            re2 dos2 | % 92
            re4 r4 re,4 r4 | % 93
            re4 r4 re4 r4 | % 94
            re4 re'4 la4 fas4 | % 95
            re4 r4 re4 re4 | % 96
            re1 \fermata \bar "||"
            r4 r8. re'16 re2 | % 98
            re2 r2 \fermata | % 99
            r4 r8. re16 re2 | \barNumberCheck #100
            re2 r2 \fermata | % 101
            r4 r8. re16 re2 | % 102
            re2 r2 \fermata \bar "||"
            R1*9 | % 112
            \voiceTwo
            R1 | % 113
            R1*4 | % 117
            R1 -\f | % 118
            \oneVoice
            mi1 ~ | % 119
            mi2 dos2 | \barNumberCheck #120
            re1 ~ | % 121
            re2 si2 | % 122
            dos1 ~ | % 123
            dos2 las2 | % 124
            si1 ~ | % 125
            si4 r4 dos4 r4 | % 126
            si4 r4 las4 r4 | % 127
            R1 - "G.P." | % 128
            R1*12 | \barNumberCheck #140
            \voiceTwo
            R1 | % 141
            R1 | % 142
            \oneVoice
            r8 re8 ( -\p fas8 mi8 re8 fas8 la8 sol8 | % 143
            fas8 mi8 re8 do8 si8 la8 sol8 fas8 | % 144
            sol4 ) r4 r2 | % 145
            \voiceTwo
            R1*8 | % 153
            \oneVoice
            r8 mi'8 -. -\p re8 -. do8 -. si8 -. la8 -. sol8 -. fas8 -. | % 154
            sol1 -\f | % 155
            la1 | % 156
            sol4 r4 si2 | % 157
            la4. sol8 fas8 la8 sol8 fas8 | % 158
            sol4 mi'4 dos4 re4 | % 159
            si4 do4 las4 si4 | \barNumberCheck #160
            sol4 la4 fas4 sol4 | % 161
            mi'2 ( fas2 ) | % 162
            sol4 mi2 re4 ~ | % 163
            re4 do4 dos4 si4 ~ | % 164
            si4 la2 sol4 | % 165
            mi'2 re2 | % 166
            sol,1 ~ | % 167
            sol4 r4 r2 | % 168
            do1 ~ | % 169
            do4 r4 r2 | \barNumberCheck #170
            si1 ~ | % 171
            si4 r4 r2 | % 172
            mi2. re4 -! | % 173
            do4 -! fas4 -! mi4 -! mi4 -! | % 174
            re4 r4 r2 | % 175
            dos1 ( | % 176
            re4 ) r4 r2 | % 177
            dos1 ( | % 178
            re4 ) r4 r2 | % 179
            \voiceTwo
            R1*10 | % 189
            \oneVoice
            r4 re2 re4 | \barNumberCheck #190
            mi8 -! r8 si2 -\sf si4 | % 191
            do8 -! r8 mi2 ( -\sf re4 ) | % 192
            do4 r4 si4 r4 | % 193
            do4 r4 la4 r4 | % 194
            R1*4 | % 198
            r4 re2 re4 | % 199
            mi8 -! r8 si2 -\sf si4 | \barNumberCheck #200
            do8 -! r8 mi2 ( -\sf re4 ) | % 201
            do4 r4 si4 r4 | % 202
            do4 r4 la4 r4 | % 203
            si2 -\p do2 | % 204
            si2 do2 | % 205
            si2 do2 -\markup{ \italic {cresc.} } | % 206
            si2 do2 | % 207
            si2 -\f do2 | % 208
            si2 do2 | % 209
            re2 la2 | \barNumberCheck #210
            sol2 fas2 | % 211
            sol4 r4 r2 | % 212
            fa'2 res2 | % 213
            mi2 r4 mi4 | % 214
            re4 re4 re4 re4 | % 215
            re2 r2 | % 216
            fa2 res2 | % 217
            mi2 r4 mi4 | % 218
            re4 re4 re4 re4 | % 219
            sol2. -\p la16 ( -\sf sol16 fas16 sol16 ) | \barNumberCheck #220
            re2. -\p mi16 ( -\sf re16 dos16 re16 ) | % 221
            si2. -\p do16 ( -\sf si16 la16 si16 ) | % 222
            sol8 -\f re8 sol8 re8 sol8 re8 sol8 re8 | % 223
            sol8 la8 si8 la8 si8 la8 si8 la8 | % 224
            si8 re8 re8 re8 re8 re8 re8 re8 | % 225
            re4 r4 si4 si4 | % 226
            si2 r2 \fermata | % 227
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            s1*15 \bar "||"
            s1*19 | % 35
            \voiceOne
            re8 r8 fas8 ( mi16 fas16 ) sol8 -. sol8 -. mi8 -. mi8 -. | % 36
            la8 -. la8 -. fas8 ( mi16 fas16 ) sol8 -. sol8 -. mi8 -. mi8 -.
            s1*3 s1*5 s1*5 s1*6 s1*8 | % 64
            <re, fas>8\p -. - "Fag." <re fas>8 -. <re fas>8 -. <re fas>8 -.
            <re fas>8 -. <re fas>8 -. <mi sol>16( <re fas>16 <dos mi>16 <re
                fas>16 s1*3 s1*5 s1*4 s1*4 s1*7 s1*6 s1*3) \bar "||"
            s1*3 s1*3 \bar "||"
            s1*9 | % 112
            r2 fas'2 ~ - "Ob. I" | % 113
            fas4 mi8 -. re8 -. do8 si8 la8 -. sol8 | % 114
            la2 la'2 ~ | % 115
            la4 sol8 -. fas8 -. mi8 re8 -. dos8 -. si8 -. | % 116
            dos2 <fas las>2 | % 117
            <si, si'>4 r4 s2*5 s1*7 s1*13 | \barNumberCheck #140
            re8 -. - "Viol. I" re8 -. re8 -. re8 -. re8 -. re8 -. fa16 ( -\f
            mib16 re16 mib16 ) | % 141
            re8 -. re8 -. fa16 ( -\f mib16 re16 mib16 ) re8 -. -\p re8 -. fa16
            ( -\f mib16 re16 mib16 ) s1*8 | \barNumberCheck #150
            r4 dos'8 -. - "Fl. I" si8 -. la8 -. sols8 -. fas4 s1 | % 152
            r4 mi'8 -. - "Fl. I" re8 -. do8 -. si8 -. la4 s1*4 s1*5 s1*6
            s1*7 s1*12 | % 187
            si,4 - "Clar. I" r4 re2 ~ | % 188
            re8 ( fas8 la8 fas8 re8 la8 re8 do8 ) s1*9 s1*5 s1*6 s1*5 s1*3 | % 217
            R1 s1 s1*4 s1*4 \bar "|." | % 227
        }
    >>
}

clarinetII_introduction = \score {
    \header { piece = "No. 1 Introduction" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \clef "treble" \key sol \major
            \time 4/4
            \voiceOne
            R1
            \voiceTwo
            R1*38 |
            \oneVoice
            do2 -\f sol'4. sol8 | \barNumberCheck #41
            mi4 sol4 mi4 do4 |
            do2. \fermata re8. re16 |
            si4 re8. re16 si4 re8. re16 |
            si4 r4 r4 si8. si16 |
            re4 sol8. sol16 re4 sol8. sol16 |
            re4 r4 r4 re4 -\p |
            si2 re2 |
            sol2 mi2 |
            do2 re2 |
            sol,4 r4 r2 |
            \voiceOne
            R1*3 |
            \oneVoice
            r4 sol8 ( si8 ) si8 ( re8 ) re8 ( sol8 ) |
            sol4 r4 r2 |
            R1 |
            sol,2 ( la2 ) |
            sol4 sol8 ( si8 ) si8 ( re8 ) re8 ( sol8 ) |
            sol4 r4 r2 |
            R1 |
            sol,2 ( la2 ) |
            sol4 r4 r2 |
            \voiceTwo
            R1*14 |
            \voiceOne
            R1 |
            r4 \oneVoice mi'4. ( -\p do8 re8 si8 ) |
            do1 ~ |
            do1 |
            si2 r4 si4 |
            si1 |
            do2. si4 |
            do4 do8 ( mi8 sol4 ) mi8 ( do8 ) |
            si1 |
            do4 fa8 ( re8 ) do4 si4 |
            do4 r4 r2 |
            r2 r4 re4 ( |
            do8 ) r8 r4 r2 |
            r2 r4 re4 ( |
            do8 ) r8 r4 r2 |
            r2 r4 re4 ( |
            do8 ) r8 si8 r8 r4 sol4 -\p |
            do4 do4 do4 do4 |
            do2. do4 |
            si2 r4 si4 |
            si2. si4 |
            do2 do2 |
            do2 si2 |
            do4 do8 ( mi8 sol4 ) mi8 ( do8 ) |
            si2. si4 |
            do2. fa8 ( re8 ) |
            do2 si2 |
            do4 r4 r2 |
            r2 r4 re4 ( -\f |
            do8 ) r8 r4 r2 |
            r2 r4 si4 ( |
            la8 ) r8 r4 r2 |
            r2 r4 si4 ~ |
            si8 r8 r4 r2 |
            r2 r4 fas4 ~ |
            fas8 r8 r4 r4 si4 ( |
            las8 ) r8 r4 r4 si4 ( |
            las8 ) r8 r4 r4 si4 ( |
            las8 ) r8 r4 r4 si4 ( |
            las8 ) r8 r4 r4 si4 ( |
            do8 ) r8 r4 r4 si4 |
            si4 r4 si4 r4 |
            las4 r4 r4 \fermata r8 r8 \bar "||"
            R1*99 \bar "|."
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            \voiceTwo
            \time 4/4 sol16 - "Viol. II" mi16 sol16
            mi16 sol16 mi16 sol16 mi16 sol16 mi16 sol16 mi16 sol16 mi16 sol16
            mi16 s1*35 | % 263
            \voiceOne
            sol'2 - "Ob. I" fas2 | % 264
            sol1 | % 265
            sol4 sol8. sol16 fas4 fas8. fas16 s1*5 s1*6 | % 277
            \voiceTwo
            do1 ( - "Clar. I" | % 278
            si4 ) r4 r2 s1*4 s1*6 s1*11 |
            \voiceOne
            do4 - "Viol. I" do8. ( mi16 sol4 ) sol4 | % 301
            sol4 ( do4 si4 sib4 | % 302
            \voiceTwo
            sols4 la4 sol8 fa8 mi8 re8 ) | % 303
            sol,2. ( la8 si8 ) | % 304
            do4 s4*23 s1*6 s1*6 s1*6 s1*5 s1*5 s1*5 s1*3 \bar "||"
            s1*99 \bar "|."
        }
    >>
}

clarinetII_two_aria = \score {
    \header { piece = "No. 2 Aria" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            
        }
    >>
}

clarinetII_three_aria = \score {
    \header { piece = "No. 3 Aria" }
    \new Staff
    \transpose do sib
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \clef treble \time 2/4 \partial 16 r16 |
            si4 ^\markup{ \italic {ten.} } -\p r4 |
            re4 ^\markup{ \italic {ten.} } r4 |
            R2 |
            r8 la8 ( -. la8 -. la8 ) -. |
            la4 r4 |
            r8 sol8 ( -. sol8 -. sol8 ) -. |
            R2*2 |
            fas'4 ~ -\fp fas8 r8 |
            R2*2 |
            r4 la,4 ( -\p |
            sol8 ) r8 r4 |
            R2 |
            r4 r8 sol'16. ( fas32 ) |
            fas8. ( mi32 re32 ) dos16 -! dos16 ( re16 mi16 ) |
            dos8 ( re8 ) r4 |
            R2 |
            r8 fas8 ( sol8 ) r8 |
            R2 |
            r8 fas4 ( sol8 ) |
            la8 r8 r4 |
            R2*2 |
            r4 r8 r16 -\p dos,16 ( |
            re8 ) r16 re16 ( mi8 ) r16 -\f mi16 ( |
            fas4 ) r4 |
            R2 |
            r8 re4. -\fp |
            R2*5 |
            r16 -\p fas16 r16 fas16 r16 fas16 r16 fas16 |
            R2 |
            r16 fas16 r16 fas16 r16 fas16 r16 fas16 |
            R2 |
            r16 fas16 r16 fas16 r16 fas16 r16 fas16 |
            r16 si16 r16 si16 r16 la16 r16 la16 |
            r16 la16 r16 la16 r16 sol16 r16 sol16 |
            r16 mi16 r16 mi16 r16 mi16 r16 mi16 |
            r16 fas16 r16 sol16 r16 la16 r16 la16 |
            R2*4 - "G.P." |
            si,4 ( -\markup{ \italic {cresc.} } -\p la4 ) |
            sol8 -! -\f re'8 r4 |
            R2*4 |
            r4 la4 ( -\p |
            sol8 ) r8 r4 |
            R2*3 |
            re'4 ( -\p do4 ) |
            si8. ( re16 ) re16 ( do16 si16 la16 ) |
            si8 -\f r16 sol'16 ( la8. ) fas16 ( |
            sol8 ) r8 r4 |
            fas4 ( -\p sol8 ) r8 \fermata \bar "|." |
        }
}

clarinetII_four_recitativo = \score {
    \header { piece = "No. 2 Aria" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            
        }
    >>
}

clarinetII_five_quintetto = \score {
    \header { piece = "No. 5 Quintetto" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la' {
            \compressEmptyMeasures
            \key re \major
            \voiceTwo
            \time 2/2 R1*213 \bar "||"
            \oneVoice
            fas2 ( -\markup{ \italic {dolce} } -\p mi2 ) |
            re2 ( dos2 ) |
            si2 ( la4 ) re4 |
            dos4 ( re4 ) dos4 ( la8 ) r8 |
            fas'2 ( mi2 ) |
            re2 ( dos2 ) |
            si2 ( la4 ) re4 |
            dos4 ( re4 ) dos4 ( la8 ) r8 |
            dos2 ( re2 ) |
            mi8. ( re16 ) mi8. ( dos16 ) re4 -! r4 |
            re4. -\sf re8 -\p re2 |
            re4 -! dos4 -! re4 -! r4 |
            R1*4 |
            dos2 ( re2 ) |
            mi8. ( re16 ) mi8. ( dos16 ) re4 -! r4 |
            re4. -\sf re8 -\p re2 |
            re4 -! dos4 -! re4 -! r4 |
            R1*3 |
            r2 r4 r8 re8 -\f |
            re4. re8 re4 r8 re8 |
            re4. re8 re4 r8 re8 |
            re4. re8 re2 ~ |
            re4 dos4 re4 r8 re8 -\p |
            dos2 ( re4 ) r4 |
            r2 r4 r8 re8 |
            dos2 ( re4 ) r4 |
            R1 |
            fas,4 r4 fas4 r4 |
            fas4 r4 r2 \fermata \bar "|." |
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            \voiceOne
            re2 - "Viol." r8. re16 -! re8\trill ( dos16 re16 ) |
            fas4 -! re4 -! la4 -! fas4 -! |
            re4 -! r4 r2 s1*207 |
            r4 <re' sols>4 -! - "Ob." <dos la'>4 -! <re sols>4 -! |
            <dos la'>4 -! <re sols>4 -! <dos la'>4 -! <re sols>4 -! |
            <dos la'>4 -! r4 \fermata r2 \bar "|."
        }
    >>
}

clarinetII_six_terzetto = \score {
    \header { piece = "No. 6 Terzetto" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            
        }
    >>
}

clarinetII_seven_duetto = \score {
    \header { piece = "No. 7 Duetto" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \clef treble \key sol \major
            \time 6/8 \partial 4. r4 r8 |
            r4 r8 fas'4. ( -\p |
            sol8 ) r8 r8 r4 r8 |
            R2.*11 |
            \voiceTwo
            R2. |
            R2. |
            r4 \oneVoice r8 fas4. ( -\p |
            sol8 ) r8 r8 r4 r8 |
            R2.*12 |
            \voiceTwo
            R2. |
            R2. |
            r4 \oneVoice r8 re4. ( -\markup{ \italic {dolce} } |
            re8 ) r8 r8 r4 r8 |
            r4 re8 re4. ~ |
            re8 r8 r8 r4 r8 |
            r4 r8 r8 sol8 -! -\p fas8 -! |
            r8 mi8 -! re8 -! r8 do8 -! si8 -! |
            la8 -! r8 r8 r4 r8 |
            R2. |
            r16 si16 ( do16 re16 mi16 fas16 ) sol8 -! r8 fas8 -! |
            mi8 -! r8 re8 -! do8 -! r8 si8 -! |
            la8 -! r8 r8 fas'4. -\f |
            sol4. ~ -\p sol4 ( fas8 ) |
            re4 -\f r8 r4 r8 |
            R2. |
            sol4 -\f r8 r4 r8 |
            R2. |
            r4 mi16. ( do32 ) do8 ( si8 la8 ) |
            si8 -! si8 -! si8 -! si8 -! r8 r8 \fermata \bar "|." |
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            \time 6/8 \partial 4. s4 s8 |
            s2.*13 |
            \voiceOne
            sol'8 - "Viol. I" r8 r8 sol8 -\mf fas16 ( sol16 ) fas16 ( sol16
            ) | % 771
            la4 ( do16 la16 ) sol4 ( la16 fas16 ) | % 772
            sol4 s8 s8*81 | % 786
            sol8 - "Viol. I" r8 r8 sol8 -\mf fas16 ( sol16 ) fas16 ( sol16 )
            | % 787
            la4 ( do16 la16 ) sol4 ( la16 fas16 ) | % 788
            sol4 s8 s8*15 s4*15 s4*15 s4*15 | % 806
        }
    >>
}

clarinetII_eight_finale = \score {
    \header { piece = "No. 8 Finale" }
    \new Staff
    \transpose do sib <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \time 2/2  \key mi \major
            R1 |
            si'1 ~ -\p |
            si1 ~ |
            si1 ~ |
            si2 ~ si4 r4 |
            R1 |
            r2 r8. sols,16 si8. mi16 |
            sols2 ~ sols8. ( fas16 ) mi8. ( fas16 ) |
            mi4 res8. ( dos32 res32 ) mi4 r4 |
            si'1 ~ |
            si1 ~ |
            si1 ~ |
            si2 ~ si4 r4 |
            R1*2 |
            r2 si,2 ^\markup{ \italic {ten.} } |
            r2 si2 ^\markup{ \italic {ten.} } |
            r2 si2 ^\markup{ \italic {ten.} } |
            R1*6 |
            r2 si2 ^\markup{ \italic {ten.} } |
            r2 si2 ^\markup{ \italic {ten.} } |
            r2 si2 ^\markup{ \italic {ten.} } |
            R1*4 |
            r2 r8. sols16 sols8. sols16 |
            sols4 si8. mi16 sols2 ~ |
            sols8. ( fas16 ) mi8. ( fas16 ) mi4 res8. ( dos32 res32 ) |
            mi4 r4 r2 |
            si'1 ~ |
            si1 ~ |
            si2 ~ si4 r4 \bar "||"
            \time 4/4  R1*11 - "Recitativo" |
            R1*6 ^"Allegro" |
            R1*9 ^"Allegro assai" |
            R1 \fermata |
            R1 \fermata |
            R1*18 |
            R1*3 ^"Adagio" |
            re,2 -\p ^"Andante" si2 |
            do1 |
            si4 r4 r2 |
            R1*260 \bar "||" |
            \voiceTwo
            \key re \major R1*44 \bar "||"
            \oneVoice

            % Corno di Bassetto in Fa/F
            \key mi \major % Does it make sense to change the key when changing the transposition?
            \time 2/2  dos,4 ^ "Larghetto" -\f r4 mi4 r4 |
            la2 r2 |
            R1*3 |
            r4 dos,4 ( -. dos4 -. dos4 ) -. |
            R1*9 |
            r4 sols'8 ( -\p fas16 mi16 res8 mi8 fas8 res8 ) |
            mi4 r4 r2 |
            r4 sols8 ( fas16 mi16 res8 mi8 fas8 res8 ) |
            mi4 r4 r2 |
            \voiceTwo
            R1*11 |
            \oneVoice
            sols,1 ( -\p |
            la1 |
            si1 ) |
            res1 ( -\mf |
            mi4 ) r4 r2 |
            R1 |
            r2 r4 la4 -\p |
            la4. ( sol16 fas16 ) mi8 -! mi8 ( fas8 sol8 ) |
            sol8 ( fas8 ) fas4 -! r2 |
            R1*5 |
            R1 \fermata ^"Recitativo" |
            R1 \fermata \bar "||" |
            \voiceTwo
            R1*16 |
            \voiceOne
            R1*2 |
            \voiceTwo
            R1*2 |
            r4 mi'2 -\f mi4 |
            sol4 mi4 r2 |
            fas2 -\f mi8 ( re8 dos8 si8 ) |
            \oneVoice
            fas4 -\p r4 r2 |
            fas'2 -\f mi8 ( re8 dos8 si8 ) |
            fas4 -\p r4 r2 |
            R1*4 |
            fas1 ~ -\p |
            fas1 ~ |
            fas4 r4 r2 |
            R1*6 |
            si1 ( -\fp |
            la4 ) r4 r2 |
            \voiceTwo
            R1*23 |
            re1 ( -\f |
            dos4 ) r4 r2 |
            \oneVoice
            la1 -\p |
            la1 |
            sols1 -\f |
            la2 r2 |
            R1 |
            \voiceTwo
            R1*6 - "Recitativo" \bar "||"
            \key la \major sols2 -\f r2 |
            \oneVoice
            R1 |
            sols2 r2 |
            R1 |
            r2 si'2 |
            la4 sols4 fas4 mi4 |
            res4 r4 si'2 |
            la4 sols4 fas4 mi4 |
            res4 r4 si'2 |
            la4 sols4 fas4 mi4 |
            res4 mi4 res4 mi4 |
            res4 mi4 res4 mi4 |
            res2 r2 |
            R1 |
            la1 ~ |
            la1 |
            sols2 r2 |
            R1 |
            sols1 ~ |
            sols1 |
            la4 sols4 la4 sols4 |
            la4 sols4 la4 sols4 |
            la2 r2 |
            la1 |
            sols2 mi'2 ~ |
            mi2 res2 |
            mi2 r2 |
            dos2. dos4 |
            res4 dos4 res4 dos4 |
            res4 dos4 res4 dos4 |
            si2 mi2 ~ |
            mi2 res2 |
            mi2 r2 |
            dos2. dos4 |
            res4 dos4 res4 dos4 |
            res4 dos4 res4 dos4 |
            si2 mi2 ~ |
            mi2 res2 |
            sols,4 si4 mi4 sols4 |
            si1 ~ |
            si2 sols4 mi4 |
            mi2 res2 |
            sols,4 si4 mi4 sols4 |
            si1 ~ |
            si2 sols4 mi4 |
            mi2 res2 |
            mi1 ~ |
            mi2 res2 |
            mi1 ~ |
            mi2 res2 |
            mi1 |
            dos1 |
            fas,1 |
            si1 |
            mi,2 r2 |
            sols'2. fass4 |
            sols4 fass4 sols4 fass4 |
            sols4 fass4 sols4 fass4 |
            sols4 sols,4 la4 fas4 |
            sols2 r2 |
            sols'2. fass4 |
            sols4 fass4 sols4 fass4 |
            sols4 fass4 sols4 fass4 |
            sols4 sols,4 la4 fas4 |
            sols4 sols8 sols8 sols4 sols4 |
            sols4 si4 sols4 si4 |
            sols4 mi8 mi8 mi4 mi4 |
            mi4 sols4 mi4 sols4 |
            mi2 r2 \fermata \bar "|." |
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            \time 2/2  \key mi \major
            \voiceTwo
            mi4. - "Fag." mi8 mi4. mi8 s1*6 s1*6
            s1*13 s1*8 s1*4 \bar "||"
            \time 4/4  s1*17 s1*30 s1*3 s1*2
            s1*260 \bar "||" |
            \voiceOne
            \key re \major mi'8 - "Cl." mi16 mi16 mi8 la8 mi4 dos8 la8 |
            mi'8 mi16 mi16 mi8 la8 mi4 r4 s1*38 |
            sols4 - "Ob. I" la8. la16 sols4 la8. la16 |
            fas4 si,4 dos4 r8 la'16 s16 |
            sols4 la8. la16 sols4 la8. la16 |
            fas4 mi4 la,4 r4 \fermata \bar "||"
            \time 2/2  s1*5 s1*9 |
            \voiceTwo

            % Corno di Bassetto in Fa/F
            r4 re,4 ( - "Fag." dos4 la4 ) \oneVoice s1*2 s1*11 |
            \voiceOne
            r4 la'4 ( - "Fl. I" si4 dos4 ) |
            si8 -! r8 sols8 -! r8 la8 -! r8 fas8 -! r8 s1*7 s1*9 \bar "||"
            la8 - "Viol. I" mi'8 -. mi8 -. mi8 -. mi8 -. mi8 -.
            \appoggiatura { fas16 ( } mi8 ) ( re8 ) s1*15 |
            \voiceTwo
            r2 res,2 - "Fag. II" |
            mi4 fas4 sols4 la4 |
            \voiceOne
            sols4 si'2. ~ - "Ob. I" |
            si4 ( la4 sols4 fas4 ) s1*2 s1*8 s1*29 |
            r4 la2 ( - "Cor. di B.I" sol4 |
            fas4 mi4 re4 dos4 ) |
            re4 r4 r2 s1*5 s1*8 |
            r2 res4 ( - "Fl. I" -\p mi4 ) ~ |
            mi4 ( res4 ) mi4 r4 \fermata
        }
    >>
}

clarinetII_nine_marcia = \score {
    \header { piece = "No. 9 Marcia" }
    \new Staff
    \transpose do sib {
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \time 2/2
            \key mi \major
            \repeat volta 2 {
                la2 ( sols2 ) |
                la2 r4 mi4 ( |
                fas4 sols4 la4 dos4 ) |
                si4 ( sols4 ) la2 |
                sols1 ~ |
                sols4 ( fas4 ) la2 |
                sols4 ( dos4 ) si4 -! la4 -! |
                la2 ( sols4 ) r4 |
            }
            \repeat volta 2 {
                sols2 sols4 ( la4 ) |
                si2. ( la4 ) |
                res4 ( dos4 si4 las4 ) |
                las2 ( si4 ) sols4 ( |
                dos4 si4 la4 sols4 ) |
                la4 ( sols8. la16 si4 la4 ) |
                la2 fas2 |
                mi2 r2 |
                la2 ( sols2 ) |
                la2 dos2 |
                res4 ( mi4 fas4 dos4 ) |
                si4 ( sols4 la2 ) |
                la2 fas4. ( res8 ) |
                mi2 r2 |
                r2 la8 -! r8 sols8 -! r8 |
                la4 r4 r2 |
                r2 la4 ( sols4 ) |
                la4 r4 r2 |
                r2 la8 -! r8 la16 ( sols16 fas16 sols16 ) |
                sols2 ( la4 ) r4 \fermata
            }
        }
    }
}

clarinetII_ten_aria_con_coro = \score {
    \header { piece = "No. 10 Aria con coro" }
    \new Staff
    \transpose do sib {
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \key mi \major
            \time 3/4  mi2 ( -\p res4 |
            dos2 fas4 ) |
            si,4. ( dos8 ) res4 |
            dos2 r4 |
            mi2 r4 |
            sols2 r4 |
            la2 ( fas8 res8 ) |
            dos4 ( si4 ) res4 |
            res2. ~ |
            res2. ~ |
            res2. |
            dos4 ( -. dos4 -. dos4 ) -. |
            dos2. |
            res4 ( -. res4 -. res4 ) -. |
            res2. ~ |
            res4 mi4 ( -. mi4 ) -. |
            mi2. |
            fas2. |
            mi2 ( res4 ) |
            res4 ( mi4 ) r4 |
            mi4 ( -. mi4 -. mi4 ) -. |
            mi2 dos8 ( la8 ) |
            sols2 ( fas4 ) |
            mi'4 mi4 ( -. mi4 ) -. |
            mi2. ~ |
            mi2. ~ |
            mi2 ( res4 ) |
            mi4 sols4 ( -. sols4 ) -. |
            sols4 ( las4 si4 ) |
            dos2. ~ |
            dos2. ~ |
            dos4 ( si4 ) r4 |
            res,2. |
            r4 la'4 ( mi4 ) |
            r4 do4 ( la4 ) |
            la4 ( sols4 ) si4 |
            dos4 ( mi4 la4 ) |
            la2. |
            sols2. |
            la2. |
            dos2. ( |
            si2. ) |
            la2 ( sols4 ) |
            sols4 ( la4 ) r4 |
            la4 ( -. la4 -. la4 ) -. |
            la2 ( fas8 res8 ) |
            dos2 ( si4 ) |
            la4 la'4 ( -. la4 ) -. |
            la4 ( sols4 fas4 |
            mis4 fas4 ) fas4 ( |
            mi2 res4 ) |
            dos4 dos4 ( -. dos4 ) -. |
            dos4 ( fas4 res4 ) |
            dos2 ( res4 ) |
            dos2 r4 \fermata \bar "|." |
        }
    }
}

\bookpart {
    \header {
        filename = "CLARINET II - Mozart - Flauta Mágica"
        instrument = \clarinet_II_name_long
    }
    \clarinetII_overture
    \clarinetII_introduction
    \clarinetII_two_aria
    \clarinetII_three_aria
    \clarinetII_four_recitativo
    \clarinetII_five_quintetto
    \clarinetII_six_terzetto
    \clarinetII_seven_duetto
    \clarinetII_eight_finale
    \clarinetII_nine_marcia
    \clarinetII_ten_aria_con_coro
}