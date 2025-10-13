% \version "2.18.2"      % Fauré - Elégie - Contrebasse
\include "../globals.ily"

double_bass_notes = \relative c{
\set Staff.midiInstrument = #"contrabass"
\clef bass
\key c \minor


\override DynamicLineSpanner.staff-padding = #2.4



c8\f r r4 r2
R1*4



c4_\markup {\dynamic pp \italic "sempre "}( d) ees8( f ees d)
c4( aes) ees'2
a,4( aes) g( ges)
f( g) c2
R1  \crescTextCresc
f4\pp( fes) ees(\< c)\! \crescHairpin
bes(\< beses) aes2\!\mf\>
aes4\!\p( c) ees r
R1
r8 b(\< c) cis d( ees) f( g)\!
g,8->\f g-. r4 g8-> g-. r4
g8-> g-. r4 r2
c4\pp( \stemUp d) \stemNeutral ees8( f ees d)
c4( aes) ees'2
a,4( aes) g( ges)
f8\pizz r g! r aes'\arco( bes aes ees)
r2 aes8( bes aes ees)
R1*3


R1*4



aes,8\pp\pizz r r4 r2
R1*2

r2 d8\arco\< des c aes\!
f16->\f r r8 r4 d'16-> r r8 r4
g16->\ff r aes-> r g-> r d-> r \once \override TextScript.outside-staff-priority = #1 g->\sec r r8 r4
e16-> r f-> r e-> r bes-> r e->\sec r r8 r4
a,16->\sempreff r a'-> r aes-> r r8 g,16-> r g'-> r fis-> r r8
g,8-> r r4 r2
c4\f d ees4. d8
c2. bes4
aes aes' g ges
f des aes2\>
f'4(\! des) aes2
R2
c8\pizz r r4 r2
R1
r2 c8\pp\pizz r r4
r2 c8 r r4
r2 c8 r r4
r2 c8 r r4
R1*2

c2\pp\arco r
}