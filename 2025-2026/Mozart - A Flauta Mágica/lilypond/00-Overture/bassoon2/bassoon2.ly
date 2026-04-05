\version "2.24.4"
% automatically converted by musicxml2ly from 2025-2026/Mozart - A Flauta Mágica/lilypond/00-Overture/bassoon2/bassoon2.xml
\pointAndClickOff

%% additional definitions required by the score:
\language "português"

sfp = #(make-dynamic-script
            (markup #:dynamic "sfp"))

\header {
    encodingsoftware =  "Soundslice MusicXML exporter"
    encodingdate =  "2026-04-04"
    }

\layout {
    \context { \Score
        skipBars = ##t
        }
    }
PartPOneVoiceOne =  \relative mib {
    \clef "bass" \time 2/2 \key mib \major | % 1
    mib2 -\sf r4 \fermata r8. do'16 | % 2
    do2 r4 \fermata r8. sol,16 | % 3
    sol'2 r4 \fermata r4 | % 4
    lab,4.. ( -\p do16 ) mib4.. ( do16 ) | % 5
    lab1\sfp \break | % 6
    sib4.. ( -\p reb16 ) sol4.. ( reb16 ) | % 7
    sib1\sfp | % 8
    do'4 -\p r8. do16 ( sib4 ) r8. sib16 ( | % 9
    lab2 ) r4 sib4 ( | \barNumberCheck #10
    do4 ) r8. do16 ( sib4 ) r8. sib16 ( \break | % 11
    la2 ) r4 sib4 | % 12
    do2 ( dob2 ) | % 13
    sib4 sib,2 sib'4 ( -\sf | % 14
    la4 ) la,2 la'4 ( | % 15
    sib4 ) r4 sib,4 r4 \bar "||"
    \tempo "Allegro"
    mib4 r4 r2 \break | % 18
    R1*8 | % 25
    <<
        \new CueVoice {
            \cueClef "treble"
            r4 lab''!2^"Viol. I" ( sol4 ) | % 26
            fa4. ( mib8 re8 do8 sib8 lab8 ) | % 27
        }
        \\
        {
            R1 * 2 \cueClefUnset
        }
    >>
    
    mib,8 -. -\p mib8 -. mib8 -. mib8 -. mib8 -. mib8 -. fa16
    ( -\sf mib16 re16 mib16 ) | % 28
    sib'8 -. -\p sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( -\sf sib16
    la16 sib16 ) \break | % 29
    sol8 -. -\p sol8 -. do8 -. do8 -. fa,8 -. fa8 -. sib8 -. -\f sib8 -.
    | \barNumberCheck #30
    sol8 -. -\p sol8 -. do8 -. do8 -. fa,8 -. fa8 -. sib8 -. -\f sib8 -.
    | % 31
    mib,8 -. -\p mib8 -. fa8 -. fa8 -. re8 -. re8 -. sol8 -. sol8 -. | % 32
    mib8 -! r8 sib'2\sfp ( la4 ) \break | % 33
    sib,8 -. -\p sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( -\sf sib16
    la16 sib16 ) | % 34
    fa'8 -. -\p fa8 -. fa8 -. fa8 -. fa8 -. fa8 -. sol16 ( -\sf fa16 mi16
    fa16 ) | % 35
    re8 -. -\p re8 -. sol8 -. sol8 -. do,8 -. do8 -. fa8 -. -\f fa8 -. | % 36
    re8 -. -\p re8 -. sol8 -. sol8 -. do,8 -. do8 -. fa8 -. -\f fa8 -. | % 37
    sib1 ~
    \break | % 38
    sib1 | % 39
    sol2 r2  | % 40
    sib1 | \barNumberCheck #41
    mib1 \break | % 42
    sib1 | % 43
    sol4 mib'2 sib4 | % 44
    do,4 r4 r2 \break | % 45
    lab4 r4 sib'4 mib | % 46
    mib,2 sib' | % 47
    sib4 mib2 sib4 | % 48
    R1 | % 49
    r2 sib4 sib | \barNumberCheck #50
    fa'2 -\sf fa-\sf | % 51
    fa1 ~ | % 52
    4 sib,4 sol' sol | % 53
    fa4 r4 r2 \break | % 54
    fa,1 | % 55
    fa4 r4 r2 | % 56
    fa1 | % 57
    fa4 r4 r2 R1*6 \pageBreak | % 64
    sib8 -. -\p sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( sib16 la16
    sib16 ) | % 65
    do1 | % 66
    sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( sib16 la16
    sib16 ) | % 67
    do1 \break | % 68
    sib8 -. -\f sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( sib16 la16
    sib16 ) | % 69
    la8 -! r8 do2 ( -\sf sib8 ) r8 | \barNumberCheck #70
    sol8 -! r8 sib2 ( -\sf la8 ) r8 | % 71
    fa8 -! r8 lab2 ( -\sf sol8 ) r8 \break | % 72
    mib4 r4 sib'4 r4 | % 73
    mib,4 r4 fa4 r4 | % 74
    sib8 -. -\p sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( sib16 la16
    sib16 ) | % 75
    do1 \break | % 76
    sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( sib16 la16
    sib16 ) | % 77
    do1 | % 78
    sib8 -. -\f sib8 -. sib8 -. sib8 -. sib8 -. sib8 -. do16 ( sib16 la16
    sib16 ) | % 79
    la8 -! r8 do2 ( -\sf sib8 ) r8 \break | \barNumberCheck #80
    sol8 -! r8 sib2 ( -\sf la8 ) r8 | % 81
    fa8 -! r8 lab2 ( -\sf sol8 ) r8 | % 82
    mib'4 r4 sib4 r4 | % 83
    mib,4 r4 fa4 r4 | % 84
    re'8 ( -\p fa8 re8 fa8 mib8 fa8 mib8 fa8 ) \break | % 85
    re8 ( fa8 re8 fa8 mib8 fa8 mib8 fa8 ) | % 86
    re8 ( fa8 re8 fa8 mib8 fa8 mib8 fa8 ) | % 87
    re8 ( fa8 re8 fa8 mib8 fa8 mib8 fa8 ) | % 88
    re8 ( -\f fa8 re8 fa8 mib8 fa8 mib8 fa8 ) \break | % 89
    re8 ( fa8 re8 fa8 mib8 fa8 mib8 fa8 ) | \barNumberCheck #90
    re8 re8 re8 re8 mib8 mib8 mib8 mib8 | % 91
    fa8 fa8 fa8 fa8 fa,8 fa8 fa8 fa8 | % 92
    sib4 r4 sib4 r4 \break | % 93
    sib4 r4 sib4 r4 | % 94
    sib4 sib4 fa4 re4 | % 95
    sib4 sib'4 sib,4 sib4 | % 96
    sib1 \fermata \bar "||"
    \tempo "Adagio"
    r4 r8. sib16 sib2 | % 98
    sib2 r2 \fermata | % 99
    r4 r8. sib16 sib2 \break | \barNumberCheck #100
    sib2 r2 \fermata | % 101
    r4 r8. sib16 sib2 | % 102
    sib2 r2 \fermata \bar "||"
    \tempo "Allegro"
    R1*4 | % 107
    <<
        \new CueVoice {
            \cueClef "tenor"
            lab''!2^"Vc." ( sol4 fas4 ) | % 108
            sol4 ( fa!4 mib! re!4 ) \break | % 109
        }
        \\
        {
            R1 * 2 \cueClefUnset
        }
    >>
    do,8 -. -\p do8 -. do8 -. do8 -. do8 -. do8 -. re16 ( do16 si16 do16
    ) | \barNumberCheck #110
    sol'8 -. sol8 -. sol8 -. sol8 -. sol8 -. sol8 -. lab16 ( sol16 fas16
    sol16 ) | % 111
    mib4 r4 do'2 ~ | % 112
    do4 si8 -. lab!8 -. sol8 -. fa8 -. mib8 -. re8 -. \break | % 113
    do4 do4 ( mib4 lab4 ) | % 114
    r4 re,4 ( fa4 sib4 ) | % 115
    r4 mib,4 ( sol4 do4 ) | % 116
    r4 fas,4 ( la4 re4 ) | % 117
    sol,8 -. -\f sol8 -. sol8 -. sol8 -. sol8 -. sol8 -. la16 ( sol16
    fas16 sol16 ) \break | % 118
    mib'4 do2 la4 | % 119
    fa8 -. fa8 -. fa8 -. fa8 -. fa8 -. fa8 -. sol16 ( fa16 mi16 fa16 ) |
    \barNumberCheck #120
    re'4 sib2 sol4 | % 121
    mib8 -. mib8 -. mib8 -. mib8 -. mib8 -. mib8 -. fa16 ( mib16 re16
    mib16 ) }

\paper {
    % top-margin = 2\cm
    % bottom-margin = 2\cm
    left-margin = 2\cm
    right-margin = 2\cm
    #(set-paper-size '(cons (* 254 mm) (* 330 mm)))
    oddHeaderMarkup = ##f
    evenHeaderMarkup = ##f 
    oddFooterMarkup = \markup{ \fill-line {\null \fromproperty #'page:page-number-string \null}}
    evenFooterMarkup = \oddFooterMarkup
    indent = 1\cm
    short-indent = 0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% The score definition

\header{
        instrument = "Fagotto II"
        title = "DIE ZAUBERFLÖTE"
        composer = "Wolfgang Amadeus Mozart"
    }

\score {
    \header{
        piece = "Overture"
    }
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 120 }
    }

