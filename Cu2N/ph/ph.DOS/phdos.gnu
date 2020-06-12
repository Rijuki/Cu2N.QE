set autoscale
unset log
unset label
set xtic auto
set ytic auto
set title "Density of States (DOS) of Cu2N"
set xlabel "Frequency (1/cm)"
set ylabel "phonon DOS"
plot 'Cu2N.phdos' u 1:2 title 'phonon DOS of Cu2N' with lines

pause -1 "Hit any key to continue\n"