% \version "2.18.2"      % Fauré - Elégie - Basson 2

\relative c{
\clef bass

\override DynamicLineSpanner.staff-padding = #2.4




c,2\f\> ~ c8\! r r4
R1*8




 


R1*8







R1*5




R1*3


R1*4



R1*4



r4 aes''16->\f r r8 r4 a16-> r r8
g8->\ff aes!-> g-> d-> \once \override TextScript.outside-staff-priority = #1 g16->\sec r r8 r4
e8-> f-> e-> bes-> e16->\sec r r8 r4
a,8->\sempreff a'-> aes16-> r r8 g,-> g'-> fis16-> r r8
g,-> r r4 g8-> r r4
R1*5




R2
R1*9








}
