% \version "2.18.2"      % Fauré - Elégie - Violoncelle Solo
\include "../globals.ily"

cello_solo_notes = \relative c{
\set Staff.midiInstrument = #"cello"
\clef bass
\key c \minor

\override DynamicLineSpanner.staff-padding = #2.4



R1
ees'4\f d c8( d) c( g)
bes4 aes g8( aes) g( ees)
g4_\markup {\italic "sempre " \dynamic f} f ees8(f) ees( c)
ees4 d c2 \once \override TextScript.padding = #1.5
ees'4(\pp-\tag #'partie ^\markup{\small 2 \raise #1.0 {\tiny a} \small Corda} d) c8( d c g)
bes4( aes) g8( aes g ees)
g4( f) ees8(f ees c)
ees4( d) c2
g'4\p g4.->\< g8( aes\! c\>)
<<b4 {s8 s8\!}>> \crescTextCresc b4.->\< c8( \clef tenor ees aes)\! \crescHairpin
g4.\< g8 bes\f( aes) g( f)
ees4.( c8\>) bes2
bes4\p bes4.->\< aes8( g f)\! \crescTextCresc \set crescendoText = \markup {\italic \fontsize #-1 {"molto cresc."}}
f'4\< f4. ees8( d c)\! \crescHairpin
fis4\ff\> g8 g,\! fis'4\> g8 g,\!
fis'4 g2.\>
ees4\ppp( d) c8( d c g) \clef bass
bes4( aes) g8(aes g ees)
g4( f) ees8( f ees c)
ees4( d) c2
ees4( d) c2
r2^\markup{\italic \small {"sempre molto adagio"}} aes8\pp( bes aes ees)
aes( bes aes ees) bes'( c bes a)
g( a bes aes) g( ees) aes4
des8( ees des ees,) c'( des c ees,)
des'( ees des ees,) c'( des c ees,)
f'(\semprepp g f bes,) g'( aes g bes,)
a'( aes g bes,) a'( aes g f) \clef tenor
r16_\markup{\italic \small "espressivo"} ees'8 des ees16 \tuplet 3/2{c16[( des ees)]} ees16( g,8) aes( g16) \tuplet 3/2{f[( c' f)]} 
f16\<( bes,8 c16) \tuplet 3/2 {des16[( c des)]} \tuplet 3/2 {d\!\>[( cis d)]} ees8.\!( bes16) des8 c
r16 a8( c16) \tuplet 3/2 {a16[( bes c]} \tuplet 3/2 {des16[ ees f])} \once \override TextScript.padding = #2.0 f16(_\markup{\italic \small "poco  a  poco  cresc."} d8 f16) \tuplet 3/2{d16[( ees f]} \tuplet 3/2{g16[ aes c,)]}
c16( a8 bes16) \tuplet 3/2{d16[( ees g]} \tuplet 3/2{aes!16[ c c,)]} c16\<( bes8 b!16) \tuplet 3/2{c16[( b c)]} \tuplet 3/2{e16[( f g\!)]}
aes16\f( bes) aes( aes,) \clef bass \tuplet 3/2{c16[( d c)]} \tuplet 3/2{aes16[( f c)]} ees16( f) ees( fis,) \tuplet 3/2{c'16[( d c)]} \tuplet 3/2{ees,16[( d c)]} 
g'4 r \tuplet 6/4{g''32\ff[( aes g) d( ees d)]} \tuplet 6/4{g,[( aes g) d( ees d)]} \tuplet 6/4{g,[( aes g) d'( ees d)]} \tuplet 6/4{g[( aes g) d'( ees d)]} 
g8 r r4 \tuplet 6/4{g32[( aes g) des( ees des)]} \tuplet 6/4{g,[( aes g) des( ees des)]} \tuplet 6/4{g,[( aes g) des'( ees des)]} \tuplet 6/4{g[( aes g) des'( ees des)]}
g8 r \tuplet 6/4{aes,,32[->( bes aes bes c d!)]} \tuplet 6/4{e[( f g aes bes c)]} r4 \tuplet 6/4{c,32[->( b c d ees d)]} \tuplet 6/4{f[( ees d c b c)]}
\tuplet 6/4{g[( aes g aes bes c]} \tuplet 6/4{d[ ees f g aes g)]} \tuplet 6/4{f[( ees d ees d c]} \tuplet 6/4{bes[ aes g aes bes c])} \tuplet 6/4{d[( ees f g a b)]} \clef tenor \tuplet 6/4{c[( d ees f g aes)]} \tuplet 6/4{g[( f ees) d( ees f)]} \tuplet 6/4{fis--[ g-- a-- b-- c-- d--]}
ees4\ff d c8 d c g
bes4 aes g8 aes g ees
g4 f ees8 f ees c
ees4( des) c2\> \clef bass
ees,4( des) c2\!
ees,4\p( des)
c1\pp(
c1) \clef tenor
r16 c''8\pp des c16 \tuplet 3/2{bes[(\< c16 des)]} des16( ees8) f16\!~ \tuplet 3/2{f16[\> g( aes)]} \tuplet 3/2{ees[( c aes)]\!} \clef bass
g16( aes8 g) f16( \tuplet 3/2{g16[ aes bes)]} b16( c8 d16)~ \tuplet 3/2{d16[ ees( c]} \tuplet 3/2{g16[ ees f)]}
g16(_\markup{\italic \small "sempre dim."} aes8 g) f16( \tuplet 3/2{g16[ aes bes)]} b16( c8 d16)~ \tuplet 3/2{d16[ ees( c]} \tuplet 3/2{g16[ aes bes)]}
b16\ppp( c8 d16)( \tuplet 3/2{d16[) ees( c]} \tuplet 3/2{g16[ aes bes)]} b16( c8 g) ees( d16)
b8( c) r4 b16( c8 g) ees( d16)
c1~
c2 r


}