% \version "2.18.2"      % Fauré - Elégie - Clarinette 2
\include "../globals.ily"

second_clarinet_notes = \relative c''{
\set Staff.midiInstrument = #"clarinet"
\transposition bes
\clef treble
\key d \minor

\override DynamicLineSpanner.staff-padding = #2.4




d,1\f\> ~ 
d2 ~ d8\!\p r r4
R1*7



 


R1*6





bes4->\f(\> a8)\! r bes4->\f(\> a8)\! r
bes4->\f(\> a8)\! r r2
R1
\addStacc { f'8\pp( f f f) f( f f f)
d( d d d) d( d d d) }
R1*2

R1*3


R1*3


r2 d8\p( c ~ c\> a
f4\!) r r2 
R1*3


r4 d''16->\f r r8 r4 d16-> r r8
e2->\ff \once \override TextScript.outside-staff-priority = #1 e16->\sec r r8 r4
ees4.-> g,8-> ees'16->\sec r r8 r4
a,8->\sempreff fis-> g16-> r r8 g-> e-> f16-> r r8
d'-> r r4 cis8-> r r4
R1*2

f,,4\f( g a bes)
R1*2

R2
R1*3


cis2\pp( d)
R1*5




}