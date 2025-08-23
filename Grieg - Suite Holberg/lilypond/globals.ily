\version "2.24.4"

ffp = _\markup { \dynamic ffp }
ffz = _\markup { \dynamic ffz }
piup = _\markup{\center-align \italic più \dynamic p}
piupp = _\markup{\center-align \italic più \dynamic pp}
piuf = _\markup{\center-align \italic più \dynamic f}
pcantab = _\markup{\center-align \dynamic p \italic cantab.}
cantab = _\markup{\center-align \italic cantab.}

solo = ^\markup{\smallCaps Solo}
threeSoli = ^\markup{\smallCaps "3 Soli"}
twoSoli = ^\markup{\smallCaps "2 Soli"}
tutti = ^\markup{\smallCaps Tutti}
twoCelliSoli = ^\markup{\smallCaps "2 Celli Soli"}

pizz = ^\markup{\center-align "pizz."}
arco = ^\markup{\center-align "arco"}
spicc = ^\markup{\center-align "spicc."}
div = ^\markup{\center-align "div."}
nondiv = ^\markup{\center-align "non div."}
crescmolto = _\markup{\italic "cresc. molto"}

oneStaff = \set Staff.keepAliveInterfaces = #'()
twoStaves = \unset Staff.keepAliveInterfaces