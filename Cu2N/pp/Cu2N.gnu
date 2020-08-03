set term png font ",18" enh size 1000,1000
set pm3d
set palette model HSV functions gray*0.75, 1, 0.9
set view 0,0

set xra[0:7.0297812181871]
set yra [0:7.0297812181871]
set zra [0:.04]
set xtics out nomirror
set ytics axis in offset -4.0,0 nomirror 
set label "r (a.u)" at 6.8,-2.2 center
set label "r (a.u)" at -1.7,5.0 rotate by 90 center
unset ztics
unset key
set colorbox


set out 'STM.0.037.png'
set title "STM image, sample bias: .037"
splot 'pwtk.0.037.dat' u 1:2:3 w pm3d