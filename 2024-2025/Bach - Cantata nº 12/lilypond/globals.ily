\version "2.24.4"
\language "portugues"

marks = {
    \key do \minor
    \time 4/4
    \tempo "Adagio assai"
    % insert global marks here
    s1*16 \bar "|."
}

\header {
    title = "Kantate Nr. 12" 
    subtitle = \markup{\small \normal-text "am Sonntag Jubilate"}
    subsubtitle = "Weinen, Klagen, Sorgen, Zagen"
    composer = \markup{\vspace #1 "Joh. Seb. Bach (BWV 12)"}
    tagline = "CEIST"
    piece = \markup{\bold \large "Nº 1 Sinfonie"}
}