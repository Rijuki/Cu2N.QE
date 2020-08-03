# set Fermi energy to correct value
Efermi=14.493

set grid
set xzeroaxis lt -1
set xlabel "Energy (eV)"
set ylabel "DOS"
set style fill solid 0.4
set yzeroaxis lt -1

set title "Total DOS\n( press <Enter> in the terminal for the next plot ... )"

plot [:][-3:3] \
     'Cu2N.dos' u ($1-Efermi):2     notit w filledcurve y1=0.0 lt 1, \
     'Cu2N.dos' u ($1-Efermi):2     title "majority spin" w l lt 1 lw 2, \
     \
     'Cu2N.dos' u ($1-Efermi):(-$3) notit w filledcurve y1=0.0 lt 2, \
     'Cu2N.dos' u ($1-Efermi):(-$3) title "minority spin" w l lt 2 lw 2
pause -1

set title "Orbital projected DOS - PDOS"

set style fill solid 0.2
set ylabel "PDOS"

plot [:][-3:3] \

     'Cu2N.pdos.pdos_atm#1(Cu)_wfc#1(s)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#1(s)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#1(s)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#1(s)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 'Cu2N.pdos.pdos_atm#5(N)_wfc#1(s)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 
	 'Cu2N.pdos.pdos_atm#1(Cu)_wfc#2(d)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 2, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#2(d)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 2, \ 
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#2(d)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 2, \ 
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#2(d)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 2, \ 
	 'Cu2N.pdos.pdos_atm#5(N)_wfc#2(d)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 2, \ 
	 
	 'Cu2N.pdos.pdos_atm#1(Cu)_wfc#3(p)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#3(p)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#3(p)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#3(p)' u ($1-Efermi):2  notit w filledcurve y1=0.0 lt 1, \
	 
	 
	 
     'Cu2N.pdos.pdos_atm#1(Cu)_wfc#1(s)' u ($1-Efermi):2  title "majority spin: s-states" w l lt 1 lw 2, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#1(s)' u ($1-Efermi):2  title "majority spin: s-states" w l lt 1 lw 2, \
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#1(s)' u ($1-Efermi):2  title "majority spin: s-states" w l lt 1 lw 2, \
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#1(s)' u ($1-Efermi):2  title "majority spin: s-states" w l lt 1 lw 2, \
	 'Cu2N.pdos.pdos_atm#5(N)_wfc#1(s)' u ($1-Efermi):2  title "majority spin: s-states" w l lt 1 lw 2, \
	 
     'Cu2N.pdos.pdos_atm#1(Cu)_wfc#2(d)' u ($1-Efermi):2  title "majority spin: d-states" w l lt 2 lw 2, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#2(d)' u ($1-Efermi):2  title "majority spin: d-states" w l lt 2 lw 2, \
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#2(d)' u ($1-Efermi):2  title "majority spin: d-states" w l lt 2 lw 2, \
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#2(d)' u ($1-Efermi):2  title "majority spin: d-states" w l lt 2 lw 2, \
	 'Cu2N.pdos.pdos_atm#5(N)_wfc#2(d)' u ($1-Efermi):2  title "majority spin: d-states" w l lt 2 lw 2, \
	 
	 'Cu2N.pdos.pdos_atm#1(Cu)_wfc#3(p)' u ($1-Efermi):2  title "majority spin: p-states" w l lt 2 lw 2, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#3(p)' u ($1-Efermi):2  title "majority spin: p-states" w l lt 2 lw 2, \
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#3(p)' u ($1-Efermi):2  title "majority spin: p-states" w l lt 2 lw 2, \
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#3(p)' u ($1-Efermi):2  title "majority spin: p-states" w l lt 2 lw 2, \
     \
	 
	 'Cu2N.pdos.pdos_atm#1(Cu)_wfc#1(s)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 7, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#1(s)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 7, \
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#1(s)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 7, \
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#1(s)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 7, \
	 'Cu2N.pdos.pdos_atm#5(N)_wfc#1(s)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 7, \
	
	 'Cu2N.pdos.pdos_atm#1(Cu)_wfc#2(d)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 4, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#2(d)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 4, \ 
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#2(d)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 4, \ 
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#2(d)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 4, \ 
	 'Cu2N.pdos.pdos_atm#5(N)_wfc#2(d)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 4, \ 
	 
	 'Cu2N.pdos.pdos_atm#1(Cu)_wfc#3(p)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 3, \
	 'Cu2N.pdos.pdos_atm#2(Cu)_wfc#3(p)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 3, \
	 'Cu2N.pdos.pdos_atm#3(Cu)_wfc#3(p)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 3, \
	 'Cu2N.pdos.pdos_atm#4(Cu)_wfc#3(p)' u ($1-Efermi):(-$3)  notit w filledcurve y1=0.0 lt 3, \
pause -1

