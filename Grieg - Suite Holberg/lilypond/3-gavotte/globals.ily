\version "2.24.4"

\include "../globals.ily"
\include "../instrument_names.ily"

\language "português"

marks = {
    \set Score.fineText = \markup{\bold \upright "Fine."}
    \set Score.dalSegnoTextFormatter =
         #(lambda (context repeat-count markups)
           #{ \markup{\bold \upright "Gavotte da capo al Fine."} #})
    \repeat segno 2 {
    \tempo "Allegretto."
    \time 2/2 
    \key sol \major
    \partial 2 s2 |
    s1 * 8 |
    \partial 2 s2 \bar "||"
    % H 
    \mark \markup {\bold "H"}
    \partial 2 s2 |
    s1 * 14 |
    \partial 2 s2 \bar "||"
    %I 
    \mark \markup {\bold "I"}
    \partial 2 s2 |
    s1 * 3 |
    s1 * 8 |
    % K 
    \mark \markup {\bold "K"}
    s1 * 2 |
    \override TextSpanner.bound-details.left.text = "ritardando"
    \override TextSpanner.to-barline = ##t
    \textSpannerDown
    s2 s4\startTextSpan s4 |
    s1 * 2 |
    \partial 2 s4 \stopTextSpan s4 \volta 2 \fine \break
    \volta 1
    \key do \major
    \tempo "Poco più mosso."
    \mark \markup{\bold \left-align "MUSETTE."}
    \partial 2 s2 | 
    s1 * 7 |
    \partial 2 s2 | 
    \mark \markup {\bold "L"}
    % L
    \repeat volta 2 {
    \partial 2 s2 | 
    s1 * 11 |
    \mark \markup {\bold "M"}
    s1 * 8 |
    \partial 2 s2 |}
    } 
}