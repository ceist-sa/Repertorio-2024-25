% \version "2.18.2"      % Fauré - Elégie - Violon 2
\include "../globals.ily"

second_violin_notes = \relative c''{
\set Staff.midiInstrument = #"violin"
\clef treble
\key c \minor
\override DynamicLineSpanner.staff-padding = #3.4

\set Timing.baseMoment = #(ly:make-moment 1/4) \set Staff.beatStructure = #'(2 2) 
\set Staff.beamExceptions = #'(( end . ( ((1 . 8) . (4 4)) ((1 . 32) . (8 8 8 8)) )))	


\addTenuto { ees,8\f( ees ees ees) ees(\> ees ees ees)\!
ees\pp( ees f f) g( c, c c) }
c2:8\simile c4:8 g:
c2:8 c:
c4:8 b: c2:8
c':\dolcissimo c:
g4:8 c: c2:8
ees,4:8 f: g: aes:
a: f: ees8--( f-- ees-- c--)
d4:8 ees: f8--( f-- f-- ees--)  \crescTextCresc %%\set crescendoText = \markup {\italic \fontsize #-1 {"cresc."}}
d2:8\<  f8--( ees-- ees-- aes,--)\! \crescHairpin
e'2:8\< e8--\mf\> f-- g-- aes--\!
aes4:8\p ees!: ees8-- ees-- ees-- des-- \crescTextCresc \set crescendoText = \markup {\italic \fontsize #-1 {"poco a poco cresc."}}
des4:8 des:\< des4.:8 c8
g4:8\! \crescHairpin g:\< g: c:\!
g8->\f g-. r4 g8-> g-. r4
g8-> g-. r4 r2
R1*2

<c ees>8\pp--(\divis q-- <c f>-- q--) <c g'>4:8 <c aes'>:
<c a'>: <f b>: <ees c'>2
R1 \set subdivideBeams = ##t \set baseMoment = #(ly:make-moment 1/8) \set beatStructure = #'(2 2 2 2)\tag #'partie \pageTurn		%------------
c32\pp( ees c ees des ees des ees c ees c ees c ees c ees) c( ees c ees des ees des ees c ees c ees c ees c ees)
c( ees c ees des ees des ees) c( ees c ees c ees c ees) des( ees des ees des ees des ees) des( ees des ees c ees c ees)
bes( ees bes ees ees f ees f) des( f des f) ces( d ces d) bes( des bes des g, des' g, des') g,( ees' g, ees' aes, ees' aes, ees')
\repeat unfold 2 {g,( ees' g, ees') g,( ees' g, ees')} \repeat unfold 2 {aes,( ees' aes, ees') aes,( ees' aes, ees')}
\repeat unfold 2 {g,( ees' g, ees') g,( ees' g, ees')} \repeat unfold 2 {aes,( ees' aes, ees') aes,( ees' aes, ees')}
\repeat unfold 2 {bes( d! bes d) bes( d bes d)} \repeat unfold 2 {bes( ees bes ees) bes( ees bes ees)}
c( ees c ees) bes( d bes d) bes( ees bes ees) bes( ees bes ees) c(ees c ees) bes( d bes d) bes( ees bes ees) g,( ees' g, ees')
ees\pp( c ees c ees des ees des) ees( c ees c ees c ees c) ees( des ees des ees des ees des) ees( des ees des ees c ees c)
ees( bes ees bes f' ees f ees) f( bes, f' bes,) fes'( ces fes ces) des( bes des bes des g, des' g,) ees'( g, ees' g, ees' aes, ees' aes,)
ees'8 g,32( ees' g, ees' ~ ees8) g,32( ees' g, ees' ~ ees8) aes,32( ees' aes, ees' ~ ees8) aes,32( ees' aes, ees')
f( aes, f' aes,) ees'( g, ees' g,) ees'( aes, ees' aes,) ees'( aes, ees' aes,) f'(\< aes, f' aes,) f'( aes, f' aes,)	f'( aes, f' aes,) f'( aes, f' aes,)\! 
f'8:64\f\< aes: <f c'>16->\! r16 r8 c8:64\f[\< fis:] <c a'>16->\! r r8-\tag #'partie \divis
<d d'>2:64->\ff-\tag #'score \divis \once \override TextScript.outside-staff-priority = #1 <d d'>16->\sec r r8 r4
<des des'>4.:64-> <f aes>8:64 <des des'>16->\sec r r8 r4
<c c'>4:64->\sempreff < c c'>16-> r r8 <c c'>4:64-> <c c'>16-> r r8
<c c'>-> r r4 <d b' g'>8 r\sourdOn r4
 c2:64\f c:
g4:64 aes: bes: c: \set subdivideBeams = ##f
c16:64[ d!: c: bes:] \repeat unfold 3 {c:[ d: c: bes:]}  \set subdivideBeams = ##t
c16 r r8 aes4:64 c2:64\>
aes:\!\p c:
g16 r r8 r4
g32\pp( e' \repeat unfold 6 {g, e'} g, e') aes,( ees' \repeat unfold 6 {aes, ees'} aes, ees')
g,32( e' \repeat unfold 6 {g, e'} g, e') aes,( ees' \repeat unfold 6 {aes, ees'} aes, ees')
e( g \repeat unfold 6 {e g} e g) ees!( aes \repeat unfold 6 {ees aes} ees aes)
b,( d \repeat unfold 6 {b d} b d) c( ees \repeat unfold 6 {c ees} c ees)
b( d \repeat unfold 6 {b d} b d) c( ees \repeat unfold 6 {c ees} c ees)
c( ees \repeat unfold 6 {c ees} c ees) r8 ees8:64\semprepp ees: c':  
d16( ees8 c) g( f16) d8( ees) ~ ees4 ~ 
ees1 ~
ees2 r
}