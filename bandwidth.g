# ds1052e-measurements
# gnuplot code for plotting the measurements.
#
# (c) Karl-Martin Skontorp <kms@skontorp.net> ~ http://22pf.org/
# Licensed under the GNU GPL 2.0 or later.

reset

set output 'bandwidth.png'
set terminal png size 584,438

set size 1.00, 0.95

set label 1 "Rigol DS1052E #DS1ED131605206 w/100MHz sw. modification"
set label 1 at screen 0.5,1.0 center offset character 0,-1
set label 2 "\
2011-08-21 \~ kms\@skontorp.net \~ http://22pf.org/" 
set label 2 at screen 0.5,1.0 center offset 0, -1.75
set label 2 font "Normal,7"

set xlabel "MHz"
set ylabel "dB"
set ytics 1
set mytics 10
set grid ytics
set grid xtics
set samples 175

plot "bandwidth-in-db.csv" notitle smooth csplines
