% \version "2.18.2"      % Fauré - Elégie - Alto
\include "../globals.ily"

viola_notes = \relative c'{
\set Staff.midiInstrument = #"viola"
\clef alto
\key c \minor
\override DynamicLineSpanner.staff-padding = #2.4
\tag #'partie \override Score.NonMusicalPaperColumn.padding = #1.2
\set Timing.baseMoment = #(ly:make-moment 1/4) \set Staff.beatStructure = #'(2 2) 
\set Staff.beamExceptions = #'(( end . ( ((1 . 8) . (4 4)) ((1 . 32) . (8 8 8 8)) )))	


\addTenuto { g8\f( g g g) g(\> g g g)\!
g\pp( g g g) g( g g g) }
g4:8\simile aes: bes: c:
ees,: f: g: aes:
aes: f: << {g8--(\divis aes-- g-- ees--)} {ees--( f-- ees-- ees--)} >>
R1*3


r2 g8--\pp( aes-- g-- ees--)
g4:8 aes: c8--( b-- c-- c--)  \crescTextCresc
b2:8\<  b8--( c-- aes-- aes--)\! \crescHairpin
e2:8\< e8--\mf\> f-- g-- aes--\!
aes2:8\p bes8 r r4 \crescTextCresc \set crescendoText = \markup {\italic \fontsize #-1 {"poco a poco cresc."}}
\addTenuto {e,8\pp( e f\< fis) g( f e f)
g( gis\! \crescHairpin a\< ais) b( c d ees)\! } 
g,8->\f g-. r4 g8-> g-. r4
g8-> g-. r4 r2
R1*3


r2 c\pp
a8--( a-- f-- f--) ees2 ~
ees1 ~
ees2 ~ ees4.( f8)
f4.( fes8) ees2
r2 ees ~ 
ees8 r r4 <ees ees'>2\divis
R1*2

ees2 ~ ees4.( f8)
f4.( fes8) ees2 \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/8) \set beatStructure = #'(2 2 2 2)
\repeat unfold 2 {g32( ees g ees ~ ees8)} \repeat unfold 2 {aes32( ees aes ees ~ ees8)}
aes32( f' aes, f') g,( ees' g, ees') aes,( ees' aes, ees') aes,( ees' aes, ees') aes,(\< f' aes, f') aes,( f' aes, f') aes,( f' aes, f') aes,( f' aes, f')\! \set subdivideBeams = ##f
aes,8:64\f\< c: <aes f'>16->\! r16 r8 a8:64\f[\< c:] <a fis'>16->\! r r8
g'8:64->\ff aes!:-> g:-> d:-> \once \override TextScript.outside-staff-priority = #1 g16->\sec r r8 r4
g8:64-> aes:-> g:-> des:-> g16->\sec r r8 r4
g8:64->\sempreff e:-> f16-> r r8 f8:64-> d:-> ees16-> r r8
<g, d'>8-> r r4 <g f'>8 r\sourdOn r4
g16:64\f[ aes: g: f:] \repeat unfold 3 {g:[ aes: g: f:]}
\repeat unfold 4 {ees:[ f: ees: d:]}		
ees4:64 f: g: aes:
aes: f: aes2:64\>
aes16\! r r8 f4:64 aes2:64
<< {c16:64\divis[ des: c: g:] bes:[ c: bes: f:]} \\ { g4:64\pp f:} >>		
<< g16 \\ e >> r16 c'8_\markup {\dynamic mf\italic "un poco marcato"}( bes des) r des( c bes)
r c( bes des) r des( c bes)
r c( bes des) r des( c aes)
r f( aes! g) r aes( fis g)
r f!( aes g) r aes( fis g)
r aes(\> fis g)\! r2
R1
r4 <c, g'>2\< <c g'>4\!\>
<c g'>2 r\!
}