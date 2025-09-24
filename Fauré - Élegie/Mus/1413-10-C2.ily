% \version "2.18.2"      % Fauré - Elégie - Cor 2

\relative c''{
\clef treble

\override DynamicLineSpanner.staff-padding = #2.4




R1*9





 


R1*6





bes,4^>\f(\> a8)\! d^>\noBeam bes4^>\f(\> a8)\! d^>\noBeam\f
bes4^>(\> a8)\! r r2			%% \> sur score, pas sur partie
R1*5




R1*3


R1*2

r2 f'2\pp
g8( f ~ f4) r2
R1*3


r2 ees!2\p\<
g4\!\f c16-> r r8 g4 cis16-> r r8
d,8->\ff ees-> d-> a-> \once \override TextScript.outside-staff-priority = #1 d16->\sec r r8 r4
f4.-> c'8-> f,16->\sec r r8 r4
g4->\sempreff g16-> r r8 g4-> g16-> r r8
a-> r r4 a8-> r r4
R1*5




R2
R1*9








}
