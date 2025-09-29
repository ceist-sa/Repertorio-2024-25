% \version "2.18.2"      % Fauré - Elégie - Hautbois 1

\relative c''{
\clef treble

\override DynamicLineSpanner.staff-padding = #3.0



 
g2\f\> ~ g8\! r r4
R1*8




 
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c
		{\clef bass g'4^"Vc.Solo"  g4. g8( aes c) | b4 b4. c8( e a) \clef treble \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1*2 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1*2} >>		
e2\p(\< ~ e8\!\mf\> f g aes\!
des\p c bes aes) r2
R1*2

fis'4->\f(\> g8)\! r fis4->\f(\> g8)\! r
fis4->\f(\> g8)\! r r2 \tag #'partie \break
R1*5


R1
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{r16^"Cl.I"  ees8( des ees16 \tuplet 3/2 {c16[ des ees])} ees16( g,8 aes g16 \tuplet 3/2 {f16[ c' f])} | f16( bes,8 c16 \tuplet 3/2 {des16[ c des]} \tuplet 3/2 {d[ cis d])} ees8.( bes16 des8 c) \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1*2 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1*2} >>		 \tag #'partie \break
r2 f16\pp( d?8\dolce f16 \addStacc { \tuplet 3/2 {d16[\> ees f]} \tuplet 3/2 {g[ aes c,])\!}
c8 } r r4 f16\p(\> d8 f16 \addStacc { \tuplet 3/2 {d16[ ees g]} \tuplet 3/2 {aes[ c c,])\!} }
c8  r r4 \override DynamicLineSpanner.staff-padding = #5.0 c16\pp(\< a8 c16\! \addStacc { \tuplet 3/2 {a16[\> bes d])} \tuplet 3/2 {ees[( g g,])\!} } \tag #'partie \break
r2 \override DynamicLineSpanner.staff-padding = #3.0 g16\p( e8 f16 \addStacc { \tuplet 3/2 {g16[\> aes a]} \tuplet 3/2 {bes[ c des])\!} }
ees2\> ~ ees8\! r r4 
R1*3

 \tag #'partie \break
r4 f16->\f r r8 r4 fis16-> r r8
g8->-\tag #'partie \ff aes!-> g-> d-> \once \override TextScript.outside-staff-priority = #1 g16->-\tag #'partie \sec r r8 r4
g8-> aes-> g-> des-> g16->-\tag #'partie \sec r r8 r4
g8->-\tag #'partie \sempreff e-> f16-> r r8 f-> d-> ees!16-> r r8
d-> r r4 g8-> r r4
R1*5

R2 \tag #'partie \break
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{r16^"Fl.I"  c'8( des c16 \tuplet 3/2 {bes16-.[ c-. des-.]} des16 ees8 f16~ \tuplet 3/2 {f16[ g-. aes-.]} \tuplet 3/2 {ees16-.[ c-. aes-.])} \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1} >>		
r16\pp c,8^\markup {\italic "dolce"} ( des c16 \tuplet 3/2 {bes16-.[ c-. des-.]} des16 ees8 f16~ \tuplet 3/2 {f16[ g-. aes-.]} \tuplet 3/2 {ees16-.[ c-. aes-.]}
bes8) r r4 r2
R1*6





}
