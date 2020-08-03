set output "Cu2N_dos.pdf"
Efermi=14.493

set grid
set xlabel "Energy (eV)"
set ylabel "DOS"
set style fill solid 0.4

set title "Total electronic DOS\n( press <Enter> in the terminal for the next plot ... )"

plot [:][-3:3] \
     'Cu2N.dos' u ($1-Efermi):2     notit w filledcurve y1=0.0 lt 1, \
     'Cu2N.dos' u ($1-Efermi):2     title "majority spin" w l lt 1 lw 2, \
	 \
     'Cu2N.dos' u ($1-Efermi):(-$3) notit w filledcurve y1=0.0 lt 2, \
     'Cu2N.dos' u ($1-Efermi):(-$3) title "minority spin" w l lt 2 lw 2
pause -1

