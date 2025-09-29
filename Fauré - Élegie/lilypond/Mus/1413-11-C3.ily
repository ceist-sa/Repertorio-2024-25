% \version "2.18.2"      % Fauré - Elégie - Cor 3

\relative c''{
\clef treble

\override DynamicLineSpanner.staff-padding = #2.4




\once \override MultiMeasureRest.minimum-length = 30 R1*9





 


R1*6


<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{<bes, g'>4(^"Cors I-II" <a fis'>8)\noBeam d  <bes g'>4( <a fis'>8)\noBeam d | <bes g'>4( <a fis'>8) \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-9 R1 r4 r8 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1 r4 r8} >>		
 \addStacc { d8\mf(\> d d d d\!
d\pp) } r r4 r2 \tag #'partie \break
R1*4



R1*3


R1*4
 \tag #'partie \break
R1*3
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{ees,8(^"Cor I" d ees g) \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 r2 r4 r8 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {r2 r4 r8} >>		
  g,\<
c4\!\f g16-> r r8 cis4 g16-> r r8
d'8->-\tag #'partie \ff ees-> d-> a-> \once \override TextScript.outside-staff-priority = #1 d16->-\tag #'partie \sec r r8 r4
aes4.-> c8-> aes16->-\tag #'partie \sec r r8 r4
d8->-\tag #'partie \sempreff b!-> c16-> r r8 c8-> a-> bes16-> r r8
c-> r r4 c8-> r r4
R1*5




R2
R1*9








}
