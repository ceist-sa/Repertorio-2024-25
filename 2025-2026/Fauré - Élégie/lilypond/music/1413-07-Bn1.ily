% \version "2.18.2"      % Fauré - Elégie - Basson 1
\include "../globals.ily"

bassoon_notes = \relative c{
\set Staff.midiInstrument = #"bassoon"
\clef bass
\key c \minor

\override DynamicLineSpanner.staff-padding = #2.4




c2\f\> ~ c8\! r r4
R1*8




 
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c
		{g'4^"Vc.Solo"  g4. g8( aes c) | b4 b4. c8( e a) \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1*2 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1*2} >>		
\once \override Hairpin.minimum-length = #6 e2\p(\< ~ e8\!\mf\> f g aes\!
des\p c bes aes) aes( g ges f
e) r r4 r2
R1*3


R1*5


R1
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{\clef treble r16^"Cl.I"  ees8( des ees16 \tuplet 3/2 {c16[ des ees])} ees16( g,8 aes g16 \tuplet 3/2 {f16[ c' f])} | f16( bes,8 c16 \tuplet 3/2 {des16[ c des]} \tuplet 3/2 {d[ cis d])} ees8.( bes16 des8 c) \clef bass \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1*2 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1*2} >>
g2\pp( aes4) r
g2\pp( aes4) r
aes2\pp( g4) r
R1
R1*4



r4 c16->\f r r8 r4 c16-> r r8
d2->-\tag #'partie \ff \once \override TextScript.outside-staff-priority = #1 d16->-\tag #'partie \sec r r8 r4
e,8-> f-> e-> bes-> e16->-\tag #'partie \sec r r8 r4
a,8->-\tag #'partie \sempreff a'-> aes16-> r r8 g,-> g'-> fis16-> r r8
c'-> r r4 b8-> r r4
\tag #'partie {\break}
R1*5




R2
R1*9








}