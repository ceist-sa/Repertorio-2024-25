% \version "2.18.2"      % Fauré - Elégie - Violon 1
\include "../globals.ily"

first_violin_notes = \relative c''{
\set Staff.midiInstrument = #"violin"
\clef treble
\key c \minor
\override DynamicLineSpanner.staff-padding = #3.4

\set Timing.baseMoment = #(ly:make-moment 1/4) \set Staff.beatStructure = #'(2 2) 
\set Staff.beamExceptions = #'(( end . ( ((1 . 8) . (4 4)) ((1 . 32) . (8 8 8 8)) )))	


\addTenuto { g8\f( g g g) g(\> g g g)\!
g\pp( g g g) g( g g f) }
ees2:8\simile ees:
c8 r8 r4 r2
R1
<< {g''2:8\divis g4.:8 (f8) | ees2:8 ees: |
			c: c: | c4:8 (b:) c2:8}
  {g2:8\dolcissimo g4.:8 (f8) | ees2:8 ees: |
			c: c: | c4:8 (b:) c2:8} >>
g'2:8 g4:8 (aes:)  \crescTextCresc \set crescendoText = \markup {\italic \fontsize #-1 {"poco cresc."}}
aes2:8\<  \addTenuto { aes8( aes aes ees)\! \crescHairpin
des2:8\< des:\mf\>
ees:\!\p ees:  \crescTextCresc \set crescendoText = \markup {\italic \fontsize #-1 {"poco a poco cresc."}}
e8\pp( e f\< fis) g( g e f)
g( gis\! \crescHairpin a\< ais) b( c d ees)\! } 
g,,8->\f g-. r4 g8-> g-. r4
g8-> g-. r4 r2
<< {g''2( ~ g4. f8) | ees1 |
				ees4( f g aes) | a( b c ~ c8) r }
		 {g,2\pp( ~ g4. f8) | ees1 |
				ees4( f g aes) | a( b c ~ c8) r } >>
\addTenuto { c,8\pp( c b b) } c2
R1
r2 ees4.\pp( f8)
f4.( fes8) ees2
r2 ees ~
ees8 r r4 r2
\override DynamicLineSpanner.staff-padding = #5.0 c'16\p(\< a8\dolce c16)\! \tuplet 3/2 {a16[(\> bes d])} \tuplet 3/2 {e--[(f-- c--])\!} c8 r r4
\override DynamicLineSpanner.staff-padding = #3.4 g16(\< e8 f16)\! \tuplet 3/2 {a16[(\( bes d])} \tuplet 3/2 {ees-.[( g-. g,-.])\)} g16\pp( e!8 f16) g8( des)
 \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/8) \set beatStructure = #'(2 2 2 2) c32\pp( ees c ees des ees des ees) c( ees c ees c ees c ees) des( ees des ees des ees des ees) des( ees des ees c ees c ees)
bes( ees bes ees ees f ees f) bes,( f' bes, f') ces( fes ces fes) bes,( des bes des g, des' g, des') g,( ees' g, ees' aes, ees' aes, ees')
R1*2

c8:64\f\< f: <c aes'>16->\! r16 r8 fis8:64\f[\< a:] c16->\! r r8
g'8:64->\ff aes!:-> g:-> d:-> \once \override TextScript.outside-staff-priority = #1 g16->\sec r r8 r4
g8:64-> aes:-> g:-> des:-> g16->\sec r r8 r4
g8:64->\sempreff e:-> f16-> r r8 f8:64-> d:-> ees!16-> r r8
<d, d'>-> r r4 <d b' g'>8 r r4 \set subdivideBeams = ##f
\once \override TextScript.outside-staff-priority = 0
g16:64_\sourdOn\f[ aes: g: f:] \repeat unfold 3 {g:[ aes: g: f:]}
\repeat unfold 4 {ees:[ f: ees: d:]}
c16 r r8 r4 r2
c16:64[ des: c: aes:] des:[ ees: des: aes:] ees':[\> f: ees: des:] ees:[ f: ees: des]\!
c16:64\p[ des: c: aes:] des:[ ees: des: aes:] ees':[ f: ees: des:] ees:[ f: ees: des]
c16 r r8 r4
<< {e2(\divis ees) | e( ees)}
		 {g,2\pp( aes) | g( aes)} >>
R1*2

<< {d2( ees) ~ | ees ees8:64 g: c: ees: | g1 ~ | g ~ | g2 r}
 {b,,2( c) ~ | c g8:64\semprepp g: c: ees: | g1 ~ | g ~ | g2 r} >>



}