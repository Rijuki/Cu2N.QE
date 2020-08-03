set autoscale
unset log
unset label
set xtic auto
set ytic auto
set output "DOS.pdf"
set title "Density of States (DOS) of Cu2N"
set xlabel "Frequency (1/cm)"
set ylabel "VDOS (states/cm^-1)"

plot 'Cu2N.phdos' u 1:2 title 'phonon DOS of Cu2N' with lines

pause -1 "Hit any key to continue\n"