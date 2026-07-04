\version "2.24.4"
\language "portugues"
\include "../../../styles/style_part.ily"
\include "../../../styles/ranges.ily"
\include "globals.ily"
\include "instrument_names.ily"

\paper {
  oddHeaderMarkup = \markup {
    \unless #on-first-page \fill-line {
      \fromproperty #'header:instrument
    }
  }
  evenHeaderMarkup = \markup {
    \unless #on-first-page \fill-line {
      \fromproperty #'header:instrument
    }
  }
}

clarinetII_overture = \score { 
    \header { piece = "Overture" }
    \new Staff
    \transpose do re << % actual clarinet transposition
        \new Voice = "clarinetII" {
            \compressEmptyMeasures
            \clef "treble" \time 2/2 \key mib \major | % 1
            << \transpose do lab \relative { % this transpose is just fixing a fuck up
            \tempo "Adagio"
            si2 -\sf r4 \fermata r8. si16 | % 2
            si2 r4 \fermata r8. re16 | % 3
            re2 r4 \fermata r4 | % 4
            R1 | % 5
            mi2. -\sfp r4 | % 6
            R1 | % 7
            re2. -\sfp r4 | % 8
            s1 * 8 \bar "||"
            \tempo "Allegro"
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
            \tempo "Adagio"
            r4 r8. re'16 re2 | % 98
            re2 r2 \fermata | % 99
            r4 r8. re16 re2 | \barNumberCheck #100
            re2 r2 \fermata | % 101
            r4 r8. re16 re2 | % 102
            \tempo "Allegro"
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
            \relative la' {
                s1 * 7 |
                R1 |
                r4 mib-. (mib-.) r |
                R1 |
                r4 re-. (re-.) r |
                R1 |
                r4 re2\sfp r4 |
                r4 mib!2\sfp r4 |
                r4 re\p r re |  
            }
            >>
        }
        \new CueVoice = "clarinetII_cue" \transpose do lab \relative la {
            s1*15 \bar "||"
            s1*19 | % 35
            \voiceOne
            re8 - "Viol. 1" r8 fas8 ( mi16 fas16 ) sol8 -. sol8 -. mi8 -. mi8 -. | % 36
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
    \transpose do re <<
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \clef "treble" \key mib \major
            \time 4/4
            \transpose do sib, \relative { %fixing a fuckup
            \tempo "Allegro"
            la1\p ~ | % 14
            la1 ~ | % 15 
            la1 -\fp | % 16
            la4 la2 la4 | % 17
            la1 ~ | % 18
            la1 -\fp | % 19
            la4 la2 la4 | \barNumberCheck #20
            la1 ~ | % 21
            la2 ~ la4 r4 | % 22
            R1*2 | % 24
            r4 sol'2 -\f la,4 ~ | % 25
            la4 la8. la16 la8 la8 la8 r8 | % 26
            sol'2 la2 | % 27
            R1 | % 28
            la,4 -\f la8. la16 la4 la4 | % 29
            la4 r4 r2 | \barNumberCheck #30
            R1 | % 31
            la2 -\fp r2 | % 32
            r4 la2 -\p la4 | % 33
            R1 | % 34
            la2 -\fp r2 | % 35
            r4 la2 -\p la4 | % 36
            la1 ~ | % 37
            la1 | % 38
            R1 | % 39
            r4 la2 -\sf la4 -\p | \barNumberCheck #40
            \voiceTwo 
            R1*11 | % 51
            \oneVoice
            la4 -\f la8. la16 la4 la8. la16 | % 52
            }

            \transpose do lab, \relative do'' { %fixing a fuckup
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
            sol,,1 \p  ~ |
            1 ~ |
            1 ~ |
            1 | 
            r4 sol'8 ( si8 ) si8 [( re8 )] re8 ( sol8 ) |
            sol4 r4 r2 |
            R1 |
            sol,2 ( la2 ) |
            sol4 sol8 ( si8 ) si8 [( re8 )] re8 ( sol8 ) |
            sol4 r4 r2 |
            R1 |
            sol,2 ( la2 ) |
            sol4 r4 r2 |
            \voiceTwo
            R1*14 |
            \voiceOne
            R1 |
            r4 \oneVoice mi'4. ( -\p do8 re8 [si8] ) |
            do1 ~ |
            do1 |
            si2 r4 si4 |
            si1 |
            do2. si4 |
            do4 do8 ( mi8 sol4 ) mi8 ( do8 ) |
            si1 |
            do4 fa8 ( re8 ) do4 si4 |
            do4 r4 r2 |
            r2 r4 re4\f ( |
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
            do!8 ) r8 r4 r4 si4 |
            si4 r4 si4 r4 |
            las4 r4 r4 \fermata r8 r8 \bar "||"
            }

            \tempo "Allegretto"
            \time 6/8
            \key sol \major
            R2. * 23 |
            R2.\fermata |
            R2. * 9  \bar "||"

            \tempo "Allegro"
            \time 2/2
            \key do \major
            R1 * 8 |
            r2 r4 re'4\f |
            sol,4 re' sol, re' |
            sol,,1\fp ~ |
            1 ~ |
            1\fp ~ |
            1 |
            sol4\f r4 r2 |
            R1 * 3 |
            sol'4\f 2 4 ~ |
            4 2 4 |
            2 r4\fermata r8 r8 |
            R1 * 8 |
            sol,1\p ~ |
            1 ~ |
            1 |
            do4 r4 r2 |
            R1 |
            R1 \fermata |
            R1 * 8 |
            sol1\p ~ |
            1 ~ |
            1 |
            do4 r4 r2 |
            R1 * 8 |
            r4 do'\p r sol |
            mi r r2 |
            r4 do' r sol |
            mi2\f sol |
            do4 8 8 sol4 8 8 |
            mi4 8 8 4 8 8 |
            mi4 8 8 4 8 8 |
            mi4 mi sol mi |
            do do'8 sol do sol do sol |
            do4 r do, do |
            do4 r4 r2 | 

            \bar "|."
            
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            \voiceTwo
            \time 4/4
            s1*36 | % 263
            \voiceOne
            \stemDown
            mib''2 - "Ob. I" re2 | % 264
            mib1 | % 265
            \stemNeutral
            s1*6 s1*6 | % 277
            s1*6 s1*6 s1*11 |
            \voiceOne
            \transpose do lab, \relative do'' {
            do4 - "Viol. I" do8. ( mi16 sol4 ) sol4 | % 301
            sol4 ( do4 si4 sib4 | % 302
            \voiceTwo
            sols4 la4 sol8 fa8 mi8 re8 ) | % 303
            sol,2. ( la8 si8 ) | % 304
            do4 s4*23 s1*6 s1*6 s1*6 s1*5 s1*5 s1*5 s1*3 \bar "||"
            }
        }
    >>
}

clarinetII_two_aria = \score {
    \header { piece = "No. 2 Aria" }
    \new Staff
    \transpose do re <<
        \key sol \major
        \new Voice = "clarinetII" \transpose do sib \relative la {
            \compressEmptyMeasures
            \time 2/4
            \voiceTwo
            \tempo "Andante"
            \partial 8 r8 |
            R2 |
            \oneVoice
            mi8 -! -\p la8 -! mi8 -! r8 |
            R2 |
            la8 -! mi8 -! dos8 -! r8 |
            R2 |
            mi8 -! la8 -! mi8 -! r8 |
            R2 |
            mi8 -! si'8 -! mi,8 -! r8 |
            R2 |
            la8 -! mi8 -! dos8 -! r8 |
            R2 |
            mi8 -! la8 -! mi8 -! mi8 ( |
            la8 ) r8 r8 mi8 ( |
            la8 ) r8 r4 |
            R2 |
            la,8 -! la8 -! la8 -! r8 |
            R2 |
            dos8 -! mi8 -! dos8 -! r8 |
            la2\cresc ~ |
            la8 la8 -! la8 -! r8 |
            mi'2 ~ -\f |
            mi8 mi8 -! la,8 -! r8 |
            r8 mi'8 ( -\p la8 ) r8 |
            r8 mi8 ( la8 ) r8 |
            la8. -\f dos16 dos16 si16 la16 mi16 |
            dos8 -! dos8 -! dos8 -! \bar "||"
            r8 \segno |
            R2 |
            mi8 -\p la8 -! mi8 -! r8 |
            R2 |
            la8 -! mi8 -! dos8 -! r8 |
            R2 |
            mi8 -! la8 -! mi8 -! r8 |
            R2 |
            mi8 -! si'8 -! mi,8 -! r8 |
            mi4 -\f si'4 |
            mi,8 si'8 -! mi,8 -! r8 |
            R2 |
            la8 -! -\p mi8 dos8 -! r8 |
            R2 |
            mi8 la8 -! mi8 \fermata mi8 ( |
            la8 ) r8 r8 mi8 ( |
            la8 ) r8 r4 |
            R2 |
            la,8 -! la8 la8 -! r8 |
            R2 |
            dos8 -! mi8 -! dos8 -! r8 |
            r8 mi8 ( la8 ) r8 |
            r8 mi8 ( la8 ) r8 |
            la8. -\f dos16 dos16 si16 la16 mi16 |
            \partial 4. dos8 -! dos8 -! dos8 \fermata -! -"Dal segno" -"(3 strophen)" \segno \bar "||"
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            \voiceOne
            \partial 8 dos'16 ( - "Viol. I" si16 ) |
            la8 la8 si16 ( la16 sols16 la16 )
        }
    >>
}

clarinetII_three_aria = \score {
    \header { piece = "No. 3 Aria" }
    \new Staff
    \transpose do re
        \new Voice = "clarinetII" {
            \compressEmptyMeasures
            \clef treble \time 2/4 \key mib \major 

            \transpose do lab, \relative la {
            \tempo "Larghetto"
            \partial 16 r16 |
            si'4 ^\markup{ \italic {ten.} } -\p r4 |
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
            R2 - "G.P." |
            R2 * 3 |
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
}

clarinetII_four_recitativo = \score {
    \header { piece = "No. 4 Recitativo ed Aria" }
    <<
        \new StaffGroup
        \new Staff = "main"
        <<
            \new Voice = "clarinetII" \relative la {
                \compressEmptyMeasures
                \tempo "Allegro maestoso"
                \time 4/4  R1 |
                do1 ~ -\p |
                do1 ~ -\markup{ \italic {cresc.} } |
                do1 |
                sol'1 -\f |
                mi1 |
                sol1 |
                mi1 |
                sol1 |
                mi4 mi4 mi4 mi4 |
                <<
                    \new Staff = "ossiaStaff" \with {
                        \remove "Time_signature_engraver"
                        alignAboveContext = "main"
                        \override StaffSymbol.staff-space = #(magstep -3)
                        }<<
                        \new CueVoice = "clarinetII_voice" \with { instrumentCueName = "Königin der Nacht" } \relative la' {
                            fa4 la8. do16 mi,4 r16 sol16 sib16 la16 |
                            fa4 r4 r2 |
                            R1 |
                            r8 re si do re re r4 |
                            sol8 sol r4 mi r |
                        }
                        \new Lyrics \with { alignBelowContext = "ossiaStaff" fontSize = #-3 } \lyricsto "clarinetII_voice" {
                            o "zitt " -- re "nicht," mein lie -- ber "sohn," du "bist" un -- schul
                            "dig," "wei " -- "se," "fromm " --
                        }
                    >>
                    {
                        mi4^"Recitativo" r4 r2 |
                        R1 |
                        do1 ~ -\f |
                        do4 -\p r4 r2 |
                    }
                >>
                \voiceOne
                R1 |
                \oneVoice
                sol'1 -\f |
                R1*3 |
                \time 3/4  r4 r4 \fermata \tempo Andante r4^"Aria" |
                
                R2.*8 |
                R2. |
                R2. |
                R2. |
                do,8. -\f do16 do4 r4 |
                mi2 -\f do8. mi16 |
                sol4 r4 r4 |
                R2.*21 |
                R2. |
                R2. |
                R2. |
                R2. \bar "||"
                \time 4/4  r2 sol,4 -\f r4 |
                do4 r4 do4 do4 |
                r2 sol4 sol4 |
                R1*6 |
                r2 do2 -\f |
                R1*2 |
                r8 sol'8 -\f sol8 sol8 sol4 r4 |
                R1*10 |
                r8 mi8 -\p mi8 mi8 mi8 mi8 mi8 mi8 |
                sol4 r4 r2 |
                r8 sol8 sol8 sol8 sol8 sol8 sol8 sol8 |
                do4 r4 r2 |
                R1*4 |
                sol1 ~ |
                sol1 |
                do,4 r4 r2 |
                R1 |
                r2 do2 -\mf |
                do'4 -\f do8. do16 sol4 sol8. sol16 |
                mi4 r4 do4 do4 |
                r2 sol4 sol4 |
                R1 |
                r8 sol'16 sol16 sol8 sol8 mi8 sol8 do8 sol8 |
                mi8 sol16 sol16 sol8 sol8 mi8 sol8 do8 sol8 |
                mi4 mi4 do4 r4 \fermata \bar "|."
            }
            \new CueVoice = "clarinetII_cue" \relative la {
                s1*15 |
                \voiceTwo
                sol4( -"VC. e B." si re sol) |
                s1*4 |
                \time 3/4
                s2.*9 |
                sol8 ( - "Fag." la8 sol8 fa8 mi8 re8 ) |
                mi8. ( fa16 ) sol4 r4 s1*3 s4*63 | % 243
                fa4 ( -. - "Fag." fa4 -. fa4 ) -. | % 244
                mi2. ~ | % 245
                mi2 ( re8 ) r8
            }
        >>
    >>
}

clarinetII_five_quintetto = \score {
    \header { piece = "No. 5 Quintetto" }
    \new Staff {
        \compressEmptyMeasures
        \key do \major
        \time 2/2
        \tempo "Andante"
        \relative la {
            do2\f r2 |
            r4 do'\p sol mi |
            do r4 r2 |
            R1 * 31 |
            <<
                \new CueVoice {
                    sol''4.^"Viol. I" fa8 mi4 fa |
                    sol4. fa8 mi4 sol ( |
                    la do si re ) |
                    re8 (do si la) sol4 
                }
                {
                    \voiceTwo
                    R1 
                    R1 
                    R1
                    r2 r4
                }
            >>
            \oneVoice
            sol,4 |
            4 4 4 4 |
            2 r2 |
            R1 * 4 |
            2 r2 |
            2 r2 |
            R1 * 3 |
            r4 r4 r4 re'4 \f |
            4 4 4 4 |
            4 4 4 r |
            R1 * 9 |
            mi,2\f 2 |
            4 4 4 4 |
            4 4 r2 |
            R1 * 5 |
            2\f 2 | 
            4 4 4 4 |
            4 4 r2 |
            R1 * 7 |
            sol1\p (|
            mi4) r4 r2 |
            R1 * 5 |
            do1 ~ |
            1 ~ |
            4 r4 r2 |
            R1 |
            do1 ~ |
            1 ~ |
            4 r4 r2 |
            R1 * 7 |
            r4 sol'4\p 4 4 | 
            4 r4 r2 |
            R1 * 2 |
            r4 do,8\f 8 4 4 |
            4 r4 r2 |
            R1 * 2 |
            do1\p ~ |
            1 ~ |
            1 ~ | 
            1 ~ |
            1 ~ |
            1 ~ |
            1 ~ |
            1 ~ |
            4 r4 r2 |
            R1 * 6 |
            do1\f |
            R1 * 3 |
            do1 \f  |
            R1 * 5 |
            mi1\p ~ |
            1 ~ |
            4 r4 r2 |
            R1 * 48 |
            <<
                \new CueVoice {
                    r4^"Viol. I"\mf sol'8-. fa-. mi-. re-. do-. sib-. |
                    la4\p r4 r2 |
                    r4\mf sol'8-. fa-. mi-. re-. do-. sib-. |
                }
                {
                    \voiceTwo
                    R1 
                    R1 
                    R1
                }
            >>
            \oneVoice
            mi,1\p |
            sol |
            do2 r2 |
            r4 sol-! \f 4-! 4-! |
            sol1\sfp ~ |
            1 |
            sol1\sfp ~ |
            1 |
            R1 |
            sol2.\sfp do,4 |
            r2 sol'4 r4 |
            do,4 r4 r2 |
            R1 |
            sol'2.\sfp do,4 |
            r2 sol'4 \p r4 |
            do,4 r4 r2 |
            R1 * 7 |
            re'1 \p ~ |
            1 |
            sol,4 r4 r2\fermata \bar "||" \break
        }


        \transpose do sib %this makes no sense, but ok
            \new Voice = "clarinetII" \relative la' {
                \tempo "Andante"
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
                |
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
        }
}

clarinetII_six_terzetto = \score {
    \header { piece = "No. 6 Terzetto" }
    \new Staff
    \transpose re la, << % transposition from horn in fa to clarinet in sib
        \new Voice = "clarinetII" \relative la {
            % written as it is on the horn part
            \compressEmptyMeasures
            \key do \major
            \time 4/4 
            \tempo "Allegro Molto"
            re1\f ~|
            4 r4 r2 |
            R1 |
            re1 \p ~ |
            1 ~ |
            1 ~ |
            1 ~ |
            1 |
            \break
            la'1 \fp |
            fas4 4\f 4 r |
            R1 * 6 |
            la,1\p ~ |
            1 ~ |
            1 |
            R1 |
            \break
            r4 la\f la r |
            R1 * 3 |
            la1\f ~|
            4 r4 r2 |
            r2 re4 re |
            r2 re4 re |
            \break 
            r2 re4 re |
            R1 * 19 |
            \voiceOne
            R1 |
            \break
            r4 \oneVoice la'4\p-! la-! r |
            R1 |
            r4 re,4\f -! re-! re-! |
            re-! r\fermata r r | 
            R1 * 7 | 
            \break
            r4 fas\p la r |
            R1 |
            r4 fas la r |
            R1 |
            r4 re-! re-! r |
            r mi-! mi-! r |
            r2 r4 fas, |
            la r r la |
            fas re'-! re-! r |
            r mi-! mi-! r |
            r fas-! fas-! fas-! |
            \fine
        }
        \new CueVoice = "clarinetII_cue" \relative la' {
            s1 * 47 |
            \voiceTwo
            s2 s4 la8._"Fag." (sol16) |
            fas4 fas fas8. [^(sol16) mi8. ^(fas16)] |
            sol4
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
            \tempo Larghetto
            R1 |
            si'1 ~ -\p |
            si1 ~ |
            si1 ~ |
            si2 ~ si4 r4 |
            R1 |
            r2 r8. sols,16 si8. mi16 |
            sols2 ~ sols8. ( fas16 ) mi8. ( fas16 ) |
            mi4 res8.\trill ( dos32 res32 ) mi4 r4 |
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
            sols8. ( fas16 ) mi8. ( fas16 ) mi4 res8.\trill ( dos32 res32 ) |
            mi4 r4 r2 |
            si'1 ~ |
            si1 ~ |
            si2 ~ si4 r4 \bar "||"
            \tempo Recitativo
            \time 4/4  R1*11  |
            \tempo Allegro
            R1*6 |
            \tempo "Allegro assai"
            R1*9 |
            R1 \fermata |
            R1 \fermata |
            R1*18 |
            \tempo Adagio
            R1*3 |
            \tempo Andante
            re,2 -\p si2 |
            do1 |
            si4 r4 r2 |
            R1*260 \tweak self-alignment-X #RIGHT ^\markup{\tiny "Estes 260 compassos incluem os compassos 228-350 que foram cortados"} \bar "||" |
            \voiceTwo
            \key re \major R1*44 \bar "||"
            \oneVoice

            % Corno di Bassetto in Fa/F
            \key la \major % this does not at all correspond to the corret key. A fuck up was made
            \time 2/2 
            \tempo "Larghetto"
            dos,4  -\f r4 mi4 r4 |
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
            \tempo Recitatvo
            R1 \fermata |
            R1 \fermata \bar "||" |
            \voiceTwo
            R1*16 |
            \voiceOne
            R1*2 |
            \voiceTwo
            R1*2 |
            \oneVoice
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
            \oneVoice
            re1 ( -\f |
            dos4 ) r4 r2 |
            \oneVoice
            la1 -\p |
            la1 |
            sols1 -\f |
            la2 r2 |
            R1 |
            \voiceTwo
            \tempo "Recitativo"
            R1*6  \bar "||"
            \break
            \tempo Presto
            \oneVoice
            \key mi \major % this does not at all correspond to the corret key. A fuck up was made
            sols2 -\f r2 |
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
            r4 la2 ( - "Cl.I" sol4 |
            fas4 mi4 re4 dos4 ) |
            \oneVoice
            re4 r4 r2 s1*5 s1*8 |
            r2 \tempo Adagio res4 ( - "Fl. I" -\p mi4 ) ~ |
            mi4 ( res4 ) mi4 r4 \fermata
        }
    >>
}

clarinetII_winds_chords = \score {
    \new Staff
    \transpose do sol, {
        \new Voice = "clarinetII" \relative la'' {
            \time 2/2
            \key do \major
            \tempo Adagio
            r4 r8. fa16 2 |
            2 r2 \fermata |
            r4 r8. fa16 2 |
            2 r2 \fermata |
            r4 r8. fa16 2 |
            2 r2 \fermata |
            \fine
        }
    }
}

clarinetII_nine_marcia = \score {
    \header { piece = "No. 9 Marcia" }
    \new Staff
    \transpose do sib {
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \time 2/2
            \key la \major % this does not at all correspond to the corret key. A fuck up was made
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
            \key la \major
            \time 3/4  mi2 ( -\p re4 |
            dos2 fas4 ) |
            si,4. ( dos8 ) re4 |
            dos2 r4 |
            mi2 r4 |
            sols2 r4 |
            la2 ( fas8 re8 ) |
            dos4 ( si4 ) re4 |
            re2. ~ |
            re2. ~ |
            re2. |
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
            re,2. |
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
            la2 ( fas8 re8 ) |
            dos2 ( si4 ) |
            la4 la'4 ( -. la4 ) -. |
            la4 ( sols4 fas4 |
            mis4 fas4 ) fas4 ( |
            mi2 re4 ) |
            dos4 dos4 ( -. dos4 ) -. |
            dos4 ( fas4 re4 ) |
            dos2 ( re4 ) |
            dos2 r4 \fermata \bar "|." |
        }
    }
}

clarinetII_twelve_quintetto = \score {
    \header { piece = "No. 12 Quintetto" }
    \new Staff
    \transpose do sol, << %transposition horn in F -> Clarinet Bb
        \new Voice = "clarinetII" \relative la {
            \compressEmptyMeasures
            \clef treble 
            \key sol \major
            \time 2/2 
            re2 \f r2 |
            R1 * 18 |
            \voiceTwo
            R1 |
            R1 |
            \oneVoice
            mi'2\fp mi2\fp |
            mi1\fp
            \break
            mi2\fp mi2\fp |
            mi4\f r4 r2 |
            R1 * 6 |
            mi1\f |
            la,4 r4 r2 |
            \break
            R1 * 3 |
            mi'1\p ~ |
            1 ~ |
            1 ~ |
            1 |
            la,4 r4 r2 |
            R1 |
            \break 
            la,1 \fp |
            la \fp |
            re4 r4 r2 |
            R1 * 32 |
            \voiceOne
            R1 |
            R1 |
            R1 |
            \break
            R1 * 3 |
            R1 |
            R1 |
            r4 r8 \oneVoice re8\f 4. 8 |
            re2 r2 |
            R1 |
            \break 
            la'2\p 4. 8 |
            re,2 r2 |
            R1 * 19 |
            \voiceOne
            R1 |
            R1 |
            \break
            R1 |
            \oneVoice
            re2\p 2 |
            re2 r4 re4 |
            la'2. 4 |
            la4 re r re,-! |
            re4-! r re-! r |
            \break
            re2\fp r2 |
            re'4 r la r |
            fas4 r4 r2 |
            R1 * 3 |
            la,1\p ~ |
            1 ~ |
            1 ~ |
            \break
            1 |
            re4 r r la\f |
            re2 ~ 4. 8 |
            4. 8 4. 8 |
            2 r2 |
            R1 * 4 |
            \break
            r2 r4 la4\f |
            re2 ~4. 8 |
            4. 8 4. 8 |
            2 r2 |
            R1 * 9 |
            \break
            \voiceOne
            R1 |
            R1 |
            \oneVoice
            r4 re2\cresc 4 |
            2\fp 2\fp |
            4 2\sf 4 |
            \break
            2\fp 2\fp |
            mi'1\ff |
            2 2 |
            re,1 ~|
            4 r4 r2 |
            R1 * 6 |
            \fine
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            s1 * 19 |

            si''4^"Viol. I" re dos mi |
            re fas8 mi re dos la sol |

            s1 * 56 |

            \voiceTwo
            r2_"Fag. I" la,2 ( |
            sol mi |
            re4) r4 r2 |

            s1 * 3 |

            r4_"Fag. I" r8 re8 mi4. fas8 |
            sol4. si8 la4. sol8 |
            fas4. s8 s2 |
            s1 * 23 |
            r4_"Fag. I" dos2 re4 |
            mi4 fas sol la |
            fas r4 r2 |

            s1 * 36 |

            r4_"Fag. I" r8 re8 si'4 r8 sol8 |
            fas4 r8 la8 sol4 r8 mi8 |
            re4  s2. | 
        }
    >>
}

clarinetII_fourteen_aria = \score {
    \header { piece = "No. 14 Aria" }
    \new Staff
    \transpose do sol, << %transposition horn in F -> Clarinet Bb
        \new Voice = "clarinetII" \relative la' {
            \compressEmptyMeasures
            \clef treble 
            \key re \minor
            \time 4/4
            \tempo "Allgero assai"
            \voiceOne
            R1 |
            \oneVoice
            mi\sfp
            R1 |
            r2 do\f |
            r re' |
            r mi, |
            \break
            R1 * 3 |
            r2 r4 sol4\f |
            sol2 r |
            R1 * 4 |
            r4 do,2_\markup {\dynamic mfp} do4 |
            do4 r r2 |
            \break
            R1 * 23 |
            \voiceTwo
            R1 |
            R1 |
            R1 |
            R1 |
            \oneVoice
            do'1\f ~ |
            \break 
            4 8. 16 sol4 8. 16 |
            mi4 r r sol (|
            do) r r sol (|
            do) r4 r2 |
            r4 mi re sol, |
            mi r4 r2 |
            do1 \f |
            R1 |
            do |
            R1 |
            do |
            R1 |
            do |
            \break
            R1 * 3 |
            re'\f |
            R1 |
            re |
            R1 * 2 |
            r4 mi,2\sf 4 |
            R1 * 12 |
            \break
            \voiceTwo
            R1 |
            R1 |
            r4 \oneVoice mi4\f mi r |
            r mi mi r |
            r mi mi r |
            R1 |
            r4 re'2 4 |
            \break
            2 r2\fermata |
            R1 |
            r2 do,2\f |
            r2 do' |
            re4 do re do |
            re r4 r2 |
            \break
            r4 r8. re16 4 r8. do,16 |
            do2 r 2 |
            R1 |
            r2 mi2 |
            R1 |
            mi4 r mi r |
            mi2 r2 |
            \fine
        }
        \new CueVoice = "clarinetII_cue" \relative la {
            \voiceTwo
            la'16_"Viol. II" 16 16 16 4:16 2:16 |

            s1 * 39 |

            r2^"Fl. I 8va" sol'8-! r si-! r |
            sol4-! r4 sol8-! r la-! r |
            sol4-! r4 do8-!^"Viol. I " 8 8 8 |
            re8-! 8 8 8 mib8-! 8 8 8|

            s1 * 37 |

            \voiceOne
            sib1 ~ |
            2. (la4) |
            sols4 s2. |
        }
    >>
}

clarinetII_fifteen_aria = \score {
    \header { piece = "No. 15 Aria" }
    \new Staff
    \transpose do sol, << %transposition horn in F -> Clarinet Bb
        \new Voice = "clarinetII" \relative la' {
            \compressEmptyMeasures
            \time 2/4
            \voiceTwo
            \tempo "Larghetto"
            \partial 16 r16 |
            R2 |
            \partial 4. {\oneVoice fas8-!\f [si-!] r8}  \bar "||"
            \partial 8 r8^\segno |
            R2 * 7 |
            \voiceTwo
            R2 |
            \oneVoice
            fas,2\p ~ |
            2 ~ |
            \break
            2 ~ |
            2 ~ |
            2 | 
            R2 * 7 |
            \voiceTwo
            R2 |
            R2 |
            \break 
            \oneVoice
            r8 si'16 si dos dos fas, fas |
            si,8 r8 r4 |
            R2 |
            fas'4 (si,8)_"Dal segno"^\segno \bar "||"
        }
        \new CueVoice = "clarinetII_cue" \relative la' {
            \voiceOne
            \partial 16 fas'16 - "Viol. I"|
            fa8. (res16) dos8. (mi16) |    
            s2 |
            s2 * 7 |
            \oneVoice
            r16^"Fl. I" fas'8 [(res32 si)]
            las16 [(dos8) si32 (sols)] |

            s2 * 12 |

            \voiceOne
            r8^"Viol. I" si, r si |
            r dos r mi |
        }
    >>
}

clarinetII_twenty_one_finale = \score {
    \header { piece = "No. 21 Finale" }
    \new Staff
    \transpose do sol, << %transposition horn in F -> Clarinet Bb
        \new Voice = "clarinetII" \relative la' {
            \set Score.barNumberVisibility = #all-bar-numbers-visible
            \set Score.currentBarNumber = #413
            \compressEmptyMeasures
            \time 6/8
            \tempo "Allegro"
            \key sol \major
            \voiceTwo
            \partial 4 r8 r8  |
            R2. |
            R2. * 2 |
            \oneVoice
            r8 r8 la8\p [(re)] r8 r8 |
            \break
            r8 r8 la8 [(re)] r8 r8 |
            R2. * 4 |
            mi2. (|
            la,4.) ~ 8 r8 r |
            r4 r8 la4 8 |
            fas8 8 8 8 r r |
            \break
            R2. * 4 |
            r8 r8 la8\p [(re)] r8 r8 |
            r8 r8 la8 [(re)] r8 r8 |
            la2. ~ |
            2. ~ |
            4. r4 r8 |
            R2. * 4 |
            \break 
            r8 la\f la la r r |
            R2. * 11 |
            \voiceTwo
            R2. |
            R2. |
            \oneVoice
            mi'2.\p ~ |
            mi |
            la,8 r r r4 r8 |
            R2. * 7 |
            R2. \fermata |
            \voiceOne
            R2. |
            R2. |
            r4 r8 \oneVoice la4.\f ~ |
            \break 
            8 re, re re r r |
            R2. * 26 |
            \voiceTwo
            R2. |
            R2. |
            \break
            R2. |
            \oneVoice
            la'2.\p ~ |
            2. ~ |
            8 r8 r8 r4 r8 |
            R2. * 7 |
            \break
            r8 la8-! 8-! 4-! r8 |
            R2. |
            r8 la8-! 8-! 4-! r8 |
            R2. * 2 |
            la2.\cresc ~ |
            8\f fas fas fas r r |
            R2. * 3 |
            \break
            r8 fas8\p fas fas4 r8 |
            R2. * 5 |
            la2.\p  ~ |
            2. ~ |
            2. ~ |
            2. |
            \break 
            R2. * 3 |
            R2. \fermata |
            R2. \fermata |
            R2. \fermata |
            r4 r8\fermata r \tempo Andante r r |
            R2. * 7 |
            \voiceOne
            R2. |
            R2. \bar "||"
            \break
            \time 2/2 
            \tempo Allegretto
            \oneVoice
            re,4 4\cresc 4 4 |
            2\f r2 |
            R1 * 8 |
            fas2 (la) |
            re4 r4 r2 |
            R1 * 4 |
            r4 re,4\f 4 4 |
            4 r4 r2 |
            r4 re4 4 4 |
            4 r4 r2 |  
            r4 re4 4 4 |
            4 r4 r2 |
            \break
            r4 re4 4 4 |
            4 r4 r2 | 
            R1 * 9 \bar "||"
            \tempo Allgero
            R1 * 27 |
            \voiceOne
            R1 |
            \break
            R1 |
            R1 |
            R1 |
            R1 |
            \oneVoice
            r2 re4\p r4 |
            re r r2 |
            \break
            r2 re4 r4 |
            re4 r4 r2 |
            r2 re4 r4 |
            re4 r4 r2 |
            R1 |
            la1\f\fermata \bar "||"
            \break
            R1 * 24 |
            \voiceOne
            R1 |
            R1 |
            \oneVoice
            re1\p ~ |
            1 ~ |
            4 r4 r2 |
            \break
            R1 * 4 |
            r4 la'\f re re |
            la la la la |
            la r4 r2 |
            R1 * 15 |
            \break 
            \voiceOne
            \tempo "ritardando"
            R1 |
            R1 |
            R1 |
            R1 |
            R1 |
            R1 |
            \break
            R1 |
            R1 |
            \oneVoice
            \tempo "in tempo"
            la,1\fp ~ |
            la |
            la\fp ~ |
            la |
            \break
            la1\fp ~ |
            la |
            la\fp ~ |
            la |
            R1 * 2 |
            r4 la4\f la la |
            \break
            la1\f ~ |
            4 r4 r2\fermata |
            R1 * 5 |
            r2 la'2_\markup{\dynamic mfp} (|
            \break
            re4) r4  la2_\markup{\dynamic mfp} (|
            re4) r4 la2_\markup{\dynamic mfp} |
            fas8\p fas la la fas fa la la |
            fas1 \mf |
            R1 * 6 |
            \break
            la1\p (|
            re4) r4 r2 |
            r2 la2_\markup{\dynamic mfp} (|
            re4) r4  la2_\markup{\dynamic mfp} (|
            re4) r4 la2_\markup{\dynamic mfp} |
            re8 re la la re re la la |
            \break
            fas1 \f |
            R1 * 3 |
            re1 \p ~ |
            1 ~ |
            1 ~ |
            1 ~ |
            1 \cresc |
            \break
            mi'4\f mi la, la |
            re,1 \p ~ |
            1 ~ |
            1 ~ |
            1 ~ |
            1 \cresc |
            mi'4\f mi la, la |
            \break
            re,4 r4 r2 |
            R1 |
            re1\f |
            re'4 8 8 la4 8 8 |
            fas4 r4 r2 |
            R1 * 3 |
            \break
            r4 fas\f r la |
            r re r la |
            r re r la |
            fas4 fas'8 8 8 8 8 8 |
            4 re,8 re fas fas la la |
            \break
            re, re re re fas fas la la |
            re, re re re fas fas la la |
            re, fas re fas re fas re fas |
            re4 fas la fas |
            \break
            re r re r |
            \partial 2 re2\fermata
            \fine
        }
        \new CueVoice = "clarinetII_cue" \relative la' {
            \oneVoice
            \partial 4  re8-!^"Viol. I" re-! |
            re8 (la) r r fas'-! fas-!

            s2. * 37 |

            si8^"Viol. I 8va" re-! si-! fas'16 (mi re dos si8) |
            re16 (dos si la sols8) res16 mi fa fas sol sols |

            s2. * 11 |

            la,4\p_"Vc. e B. 8va" r8 la4 r8 |
            la8\f 8\p 8 8\f 8\p 8 |
            8\f 8\p 8  s4. |

            s2. * 27 |

            la'8^"Viol. I" (dos,) la'-! la8 (dos,) la'-! |
            la8 (dos,) la'-! r8 la-! la-! |
            la8 (dos,) la'-! la8 (dos,) la'-! |

            s2. * 44 |

            fas,4._"Fag. I" (mib |
            re dos)

            s1 * 60 |

            \voiceTwo
            sol'8_"Fag. I" si-. la-. sol-. fas-. mi-. re-. do-. |
            \oneVoice
            si4 si si si |
            do4.\trill re8 mi2 |
            re4 4 4 4 |
            sol,4 r4 r2 |

            s1 * 32 |

            r4 la'2_"Fag. I" (sol8 fas) |
            mi2 (fas4 sol) |

            s1 * 25 |

            \voiceTwo
            r2_"Fag. I" dos,4-. (dos-.) |
            si2 r2 |
            r2 la'4-. (la-.) |
            sols2 r2 |
            r2 dos2 ( |
            re si) |
            dos4 dos (re8 dos si dos) |
            re2 si |


            % fa8. (res16) dos8. (mi16) |    
            % s2 |
            % s2 * 7 |
            % \oneVoice
            % r16^"Fl. I" fas'8 [(res32 si)]
            % las16 [(dos8) si32 (sols)] |

            % s2 * 12 |

            % \voiceOne
            % r8^"Viol. I" si, r si |
            % r dos r mi |
        }
    >>
}

\bookpart {
    \header {
        filename = "CLARINET II - Mozart - A Flauta Mágica"
        instrument = \clarinet_II_name_long
    }
    % \clarinetII_overture
    % \pageBreak
    %\clarinetII_introduction
    %\pageBreak
    %\clarinetII_two_aria
    % \pageBreak
    %\clarinetII_three_aria
    % \pageBreak
    % \clarinetII_four_recitativo
    % \pageBreak
    %\clarinetII_five_quintetto
    % \pageBreak
    %\clarinetII_six_terzetto
    % \pageBreak
    %\clarinetII_seven_duetto
    % \pageBreak
    %\clarinetII_eight_finale
    % \pageBreak
    % \clarinetII_winds_chords
    % \clarinetII_nine_marcia
    % \pageBreak
    %\clarinetII_ten_aria_con_coro
    % \clarinetII_twelve_quintetto
    %\clarinetII_fourteen_aria
    %\clarinetII_fifteen_aria
    \clarinetII_twenty_one_finale
}