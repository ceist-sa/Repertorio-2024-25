\version "2.24.4"
\language "portugues"

consord = ^"con sordino"
spitze = ^"Spitze"
express = ^\markup{\italic "express."}
pizz = ^\markup{\center-align "pizz."}
arco = ^\markup{\center-align "arco"}

marks = {
    \set Score.caesuraType =
    #'((breath . spacer)
       (scripts . (outsidecomma)))
    \set Score.caesuraTypeTransform =
        #(at-bar-line-substitute-caesura-type
        '((scripts . (fermata))))
    \key mi \minor
    \time 3/4
    \tempo "Lento"
    s2. * 8 |
    % A
    \barNumberCheck 9
    \mark \default
    s2. * 16 |
    % B
    \barNumberCheck 25
    \mark \default
    s2. * 15 |
    \tempo "rall."
    s2. |
    % C
    \barNumberCheck 41
    \mark \default
    \tempo "a tempo"
    s2. * 14 |
    s2 \tempo "poco rall." s4 |
    s2. |
    % D
    \barNumberCheck 57
    \mark \default
    \tempo "a tempo"
    s2. * 16 |
    % E
    \barNumberCheck 73
    \mark \default
    s2. * 16 |
    % F
    \barNumberCheck 89
    \mark \default
    s2. * 10 |
    \caesura
    s2.* 3 |
    \tempo "rit." 
    s2. |
    \tempo "Lento" 
    s2. * 4 |
    % G
    \caesura
    \tempo "a tempo" 
    \barNumberCheck 107
    \mark \default
    s2. * 23 |
    % H
    \barNumberCheck 130
    \tempo "Poco risoluto"
    \mark \default
    s2. * 24 |
    % I / J
    \barNumberCheck 154
    \mark \default
    s2. * 8 |
    % K
    \barNumberCheck 162
    \tempo "Più risoluto e mosso"
    \mark \default
    s2. * 8 |
    % L
    \barNumberCheck 170
    \tempo "Stretto"
    \mark \default
    s2. * 16 |
    % M
    \barNumberCheck 186
    \mark \default
    s2. * 9 |
    \tempo "Lento assai"
    s2. * 8 |
    \fine
}

\header {
    title = "Valse Triste" 
    subtitle = \markup{"from the incidental music for" \italic "Kuolema" ", Op. 44"}
    composer = "Jean Sibelius"
    tagline = "CEIST"
}

