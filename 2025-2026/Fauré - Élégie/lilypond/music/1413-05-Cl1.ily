% \version "2.18.2"      % Fauré - Elégie - Clarinette 1
\include "../globals.ily"

first_clarinet_notes = \relative c''{
\clef treble
\key d \minor

\override DynamicLineSpanner.staff-padding = #3.0




d,1\f\> ~ 
d2 ~ d8\!\p r r4
R1*7



 
R1*2
<< \tag #'partie << {\set fontSize = #-4 \transpose c c \relative c''
		{d2^"Hb.I" ~ d8( ees f ges | ces[ bes aes]) \unset fontSize}} 
		 \\ {\override MultiMeasureRest.staff-position = #-6 R1 | r4 r8 \override MultiMeasureRest.staff-position = #0 } >>
	 \tag #'score {R1 | r4 r8} >>		
		bes\p( bes' a aes g
fis) r r4 r2
R1
d'4->(-\tag #'partie \f-\tag #'partie \> cis8)\! r d4->(-\tag #'partie \f-\tag #'partie \> cis8)\! r
d4->(-\tag #'partie \f-\tag #'partie \> cis8)\! r r2 \tag #'partie \break
\addStacc { d8\pp( d d d) \repeat unfold 5 {d( d d d)}}


R1*2

R1
r16 f8\dolcespr( ees f16 \tuplet 3/2 {d16-.[ ees-. f-.]} f16 a,8 bes a16 \tuplet 3/2 {g16-.[ d'-. g-.])}
g16\<( c,8 d16\! \addStacc { \tuplet 3/2 {ees16[\> d ees]} \tuplet 3/2 {e[ dis e])\!} } f8.( c16 ees8 d) \tag #'partie \break
r16 b8( d16 \addStacc { \tuplet 3/2 {b16[\< c d]} \tuplet 3/2 {ees[ f g])\!} } g8\p r r4
d16\pp b8( d16 \addStacc { \tuplet 3/2 {b16[\< c d]} \tuplet 3/2 {ees[ f g])\!} } g8\p r r4
R1
r2 f,8\p( e f4)\> ~
f4\! r r2 
R1
a,2(\( bes4) ~ bes8 d
g f4.\) r2
r4 g'16->\f r r8 r4 gis16-> r r8
a8->-\tag #'partie \ff bes!-> a-> e-> \once \override TextScript.outside-staff-priority = #1 a16->-\tag #'partie \sec r r8 r4
a8-> bes-> a-> ees-> a16->-\tag #'partie \sec r r8 r4
a8->-\tag #'partie \sempreff fis-> g16-> r r8 g-> e-> f16-> r r8
e-> r r4 a8-> r r4
R1*2

f,4\f( g a \stemUp bes \stemNeutral
bes,2) ~ bes4\> ~ bes8\! r
R1
R2
R1*3


e2\pp( f)
R1*5




}