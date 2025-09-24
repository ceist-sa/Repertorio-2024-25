\version "2.18.2"      % Fauré: Elégie - mesures et tempi avec tonalité

{
\tempo "Molto adagio" 8 = 69
\time 4/4
\tag #'Ton {\key c \minor}
\tag #'TonClarinette {\key d \minor}
\tag #'SansTon {\key c \major}

s1*9
\mark #1 s1*8
\mark #2 s1*5
\mark #3 s1*3
\mark #4 s1*3
\tempo \markup {"poco rit."} s1
\mark #5 \tempo \markup {"a tempo"} s1
s1*3
\mark #6 s1
\tempo \markup {"poco più animato"} s1
s1*2
s2. \tempo \markup {\column {"poco" "rit."}} s4
\mark #7 \tempo \markup {"a tempo"} s1
s1*4
\time 2/4 s2
\mark #8 \time 4/4
s1*9
\bar "|."
}