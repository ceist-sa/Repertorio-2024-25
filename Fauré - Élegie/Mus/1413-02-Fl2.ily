% \version "2.18.2"      % Fauré - Elégie - Flûte 2

\relative c''{
\clef treble

\override DynamicLineSpanner.staff-padding = #2.4




R1*9 








R1*8







\addStacc { g8\pp( g g g) g( g g f) }
ees r r4 r2
R1*3


R1*3


R1*4



R1*4



R1
d''2->\ff \override TextScript.outside-staff-priority = #1 d16->\sec r r8 r4
des4.-> f,8-> des'16->\sec r r8 r4
c4->\sempreff c16-> r r8 c4-> c16-> r r8
c8-> r r4 b8-> r r4
R1*5




R2
R1*2

e,,2\pp( ees)
R1*6





}
