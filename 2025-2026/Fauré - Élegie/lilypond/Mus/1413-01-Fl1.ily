% \version "2.18.2"      % Fauré - Elégie - Flûte 1
\include "../globals.ily"

notes = \relative c''{
\clef treble


\override DynamicLineSpanner.staff-padding = #2.4



R1*4
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c
		{\clef bass e4^"Vc.Solo" d c2 \clef treble \unset fontSize}} \\ {\override MultiMeasureRest.staff-position = #-6 R1
		 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1} >>		
g'2\semprepp ~ g4.( f8
ees1) 
ees4\semprepp( f g aes,
a b c ~ c8) r \tag #'partie \break
R1*6



<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c'
		{\clef tenor fis4^"Vc.Solo" g8 g, fis'4 g8 g, | fis4 g2. \clef treble \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1*2 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1*2} >>		
\addStacc { g'8\pp( g g g) g( g g f)
ees( ees ees ees) } ees ees ees ees
ees r r4 r2
R1
a,4\p( b c ~ c8) r  \tag #'partie \break
R1*3


R1*4


 \tag #'partie \break
R1*4
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{r4^"Hautbois" <c f>16 r r8 r4 <c fis>16 r r8 \unset fontSize}} \\ {\override MultiMeasureRest.staff-position = #-6 R1
		 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1} >>		  \tag #'partie \break
g''8->-\tag #'partie \ff aes!-> g-> d-> \once \override TextScript.outside-staff-priority = #1 g16->-\tag #'partie \sec r r8 r4
g8-> aes-> g-> des-> g16->-\tag #'partie \sec r r8 r4
g8->-\tag #'partie \sempreff e-> f16-> r r8 f-> d-> ees!16-> r r8 \tag #'partie \break
d-> r r4 g8-> r r4
R1*5

<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c
		{\clef bass e,4(^"Vc.Solo" des) \clef treble \unset fontSize}} \\ {\override MultiMeasureRest.staff-position = #-8 R2
		 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R2} >>		
r16\pp c,8\dolcissimo( des c16 \tuplet 3/2 {bes16-.[ c-. des-.]} des16 ees8 f16~ \tuplet 3/2 {f16[ g-. aes-.]} \tuplet 3/2 {ees16-.[ c-. aes-.]}
bes8) r r4 r2
g,2\pp( aes)
R1*6





}


fluteI = \score { 
	\new Staff {
		\reperes \silencesMulti <<
			\keepWithTag #'Ton {\marks}
			\keepWithTag #'partie { \notes }
		>>
	}
}

fluteI_conductor = {
	\new Staff \with {
		instrumentName = \first_flute_name_long
		shortInstrumentName = \first_flute_name_short
	}
	\notes
}