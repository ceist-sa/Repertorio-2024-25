\version "2.24.4"

ffp = _\markup { \dynamic ffp }
ffz = _\markup { \dynamic ffz }
piup = _\markup{\center-align \italic più \dynamic p}
piuf = _\markup{\center-align \italic più \dynamic f}
tutti = ^\markup{\smallCaps Tutti}
twoCelliSoli = ^\markup{\smallCaps "2 Celli Soli"}
pizz = ^\markup{\center-align "pizz."}
arco = ^\markup{\center-align "arco"}
div = ^\markup{\center-align "div."}
nondiv = ^\markup{\center-align "non div."}
crescmolto = _\markup{\italic "cresc. molto"}

oneStaff = \set Staff.keepAliveInterfaces = #'()
twoStaves = \unset Staff.keepAliveInterfaces