% \version "2.18.2"      % Fauré - Elégie - Cor 1

\relative c''{
\clef treble

\override DynamicLineSpanner.staff-padding = #2.4




\once \override MultiMeasureRest.minimum-length = 30 R1*9 \tag #'partie \noBreak





 


R1*4 \tag #'partie \noBreak

<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c'
		{\clef tenor bes4^"Vc.Solo"  bes4. aes8( g f) \noBreak| f'4 f4. ees8( d c) \clef treble \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1*2 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1*2} >>		 \tag #'partie \noBreak
g4^>\f(\> fis8)\! d^>\noBeam g4^>\f(\> fis8)\! d^>\noBeam\f \tag #'partie \noBreak
g4^>(\> fis8\!) r r2	 \tag #'partie \break		%% \> sur score, pas sur partie
R1*5 \tag #'partie \noBreak


R1 \tag #'partie \noBreak
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{r16^"Cl.I"  ees8( des ees16 \tuplet 3/2 {c16[ des ees])} ees16( g,8 aes g16 \tuplet 3/2 {f16[ c' f])} \noBreak | f16( bes,8 c16 \tuplet 3/2 {des16[ c des]} \tuplet 3/2 {d[ cis d])} ees8.( bes16 des8 c) \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1*2 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1*2} >> \tag #'partie \noBreak
bes2\pp~ bes4 r \tag #'partie \noBreak
bes2\pp~ bes4 r \tag #'partie \noBreak
a2\pp( bes) \tag #'partie \noBreak
bes8( a bes4) r2 \tag #'partie \break
R1*3 \tag #'partie \noBreak


ees,8\p( d ees g) c2\< \tag #'partie \noBreak
g4\!\f ees'16-> r r8 g,4 e'16-> r r8 \tag #'partie \noBreak
d8->-\tag #'partie \ff ees-> d-> a-> \once \override TextScript.outside-staff-priority = #1 d16->-\tag #'partie \sec r r8 r4 \tag #'partie \noBreak
aes4.-> ees'8-> aes,16->-\tag #'partie \sec r r8 r4 \tag #'partie \break
g'4->-\tag #'partie \sempreff g16-> r r8 g4-> g16-> r r8 \tag #'partie \noBreak
g-> r r4 fis8-> r r4 \tag #'partie \noBreak
R1 \tag #'partie \noBreak
d,4\f ees f g ~  \tag #'partie \noBreak
g8 r r4 r2 \tag #'partie \noBreak
R1*2 \tag #'partie \noBreak

d4\pp( f \tag #'partie \noBreak
g4) r r2 \tag #'partie \noBreak
R1*8







}
