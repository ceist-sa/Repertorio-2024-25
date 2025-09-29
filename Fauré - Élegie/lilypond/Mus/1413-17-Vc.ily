% \version "2.18.2"      % Fauré - Elégie - Violoncelle

\relative c{
\clef bass


\override DynamicLineSpanner.staff-padding = #2.4



\addTenuto { c8\f( c c c) c(\> c c c)\!
c\pp( c d d) ees( f ees d) }
c2:8\simile c4:8 bes:
aes2:8 g4:8 ges:
f: g!: c2:8
c4_\markup {\dynamic pp \italic "sempre "}( d) ees8( f ees d)
c4( aes) ees2
a4( aes) g( ges)
f( g) c2
b4( c) ees8( d ees g)  \crescTextCresc
f4( fes) ees(\< c)\! \crescHairpin
bes(\< beses) aes2\!\mf\>
aes4\!\p( c) ees ees,8( f) \crescTextCresc \set crescendoText = \markup {\italic \fontsize #-1 {"poco a poco cresc."}}
ges4( f)\< e8( f g aes)
b4(\! \crescHairpin c8)\< cis d( ees) f( g)\!
g,8->\f g-. r4 g8-> g-. r4
g8-> g-. r4 r2
c4\pp( \stemUp d) \stemNeutral ees8( f ees d)
c4( aes) ees2
a4( aes) g( ges)
f( g!) aes8^\markup {\fontsize #-1 "en dehors"}( bes aes ees)
f4( g) aes8( bes aes ees)
aes\pizz\semprepp bes aes ees aes bes aes ees
aes bes aes ees bes' c bes a
g a bes aes g ees aes4
des8 ees des ees, c' des c ees,
des' ees des ees, c' des c ees,
f' g f bes, g' aes g bes,
a' aes g bes, a' aes g f
aes,(^\markup {"Arco" \fontsize #-1 "en dehors" } bes aes ees) bes'( c bes a)
g( a bes aes) g( ees) aes4
des8( ees des ees,) c'( des c ees,)
d'! des c( ees,) d'\< des c aes\!
f16->\f r r8 r4 d16-> r r8 r4
g'8:64->\ff aes:-> g:-> d:-> \once \override TextScript.outside-staff-priority = #1 g16->\sec r r8 r4
e8:64-> f:-> e:-> bes:-> e16->\sec r r8 r4
a,8:64->\sempreff a':-> aes16-> r r8 g,8:64-> g':-> fis16-> r r8
g,8-> r r4\sourdOn r2 % \textLengthOn \textLengthOff
c4\f d ees4. d8
c2. bes4
<< {\repeat unfold 4 {c16:64 d: c: bes:}} \\ {a2\divis g4 ges} >>
<< {c16( des c aes) des( ees des aes) ees'(\> f ees des) ees( f ees des)\!} \\ {f,4 des aes'2} >>
<< {c16( des c aes) des( ees des aes) ees'( f ees des) ees( f ees des)} \\ {f,4\p( des) aes'2} >>
<< {c16\divis des c g bes c bes f} \\ {ees4\pp( des)} >>	
c8 r r4 c'8\pizz r r4
c,8 r r4 c'8 r r4
c,1\arco ~
c ~ 
c ~
c2 ~ c8 r r4
R1
r4 << {<g' ees'>2\divis <g ees'>4 | <g ees'>2 s} 
	\\ {c,2\< c4\!\> | c2 d'2\rest\!} >>
}
