\version "2.24.4"

\include "../globals.ily"
\include "../instrument_names.ily"

\language "português"

marks = {
    \compressEmptyMeasures
    \set Score.fineText = \markup{\bold \upright "Fine."}
    \set Score.dalSegnoTextFormatter =
         #(lambda (context repeat-count markups)
           #{ \markup{\bold \upright \column{"Rigaudon da capo al Fine," "ma senza Ripetizione."}} #})
    \time 2/2
    \key sol \major
    \repeat segno 2 {
      \tempo "Allegro con brio."
      \repeat volta 2 {
        \partial 4 s4 |
        s1 * 7 |
        \partial 2. s2. |
      }
      % S
      \mark #18
      \repeat volta 2 {
        \partial 4 s4 |
        s1 * 10 |
        % T
        \mark \default
        s1 * 11 |
        %U
        \mark \default
        s1 * 8 |
        s1_\markup{\italic "ritardando"} |
        s1 |
        \partial 2. \tempo "a tempo" s2. |
      }
      \volta 2 \fine
      \volta 1
      \set Score.caesuraType = #'((scripts . (fermata)))
      \caesura
      \tempo "Poco meno mosso."
      \key sol \minor
      \partial 4 s4 |
        s1 * 7 |
      \partial 2. s2. |
      \repeat volta 2 {
        \partial 4 s4 |
        s1 * 8 |
        % V
        \mark \default
        s1 * 17 |
        s1^\markup{\italic "ritard. e dim."} |
        \partial 2. s2. |
      }
    }
}