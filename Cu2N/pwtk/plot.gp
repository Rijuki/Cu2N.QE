set grid
set format y "%6.3f"
set xlabel "ecutwfc (Ry)"
set ylabel "Total energy (Ry)"
set key bottom

plot \
	 'ecut.4.dat' w linespoints lw 2 pt 6 ps 1.2, \
	 'ecut.8.dat' w linespoints lw 2 pt 6 ps 1.2, \
	 'ecut.12.dat' w linespoints lw 2 pt 6 ps 1.2,
pause -1

