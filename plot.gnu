set terminal qt font "Helvetica"

set key off

set samples 100000, 100000

set xrange [-100:100]
set yrange [-100:100]


a(x) = sqrt(400 - (1.2*x)**2) + 50
b(x) = -sqrt(400 - (1.2*x)**2) + 50
c(x) = -(x/10)**12 - 8
d(x) = ((x>10 && x < 20) ||  (x < -10 && x > -20)) ? (x/8)**3 + 20 : 1/0
e(x) = -sqrt(20 - (x/1.2)**2) + 43
f(x) = -31.3

set arrow from -10,32.68 to -10,-8 nohead
set arrow from 10,32.68 to 10,-8 nohead

set object circle at first -8,54 radius char 0.5 fillcolor rgb 'black' fillstyle solid noborder
set object circle at first 8,54 radius char 0.5 fillcolor rgb 'black' fillstyle solid noborder

plot a(x) lt -1, b(x) lt -1, [-13:13] c(x) lt -1, d(x) lt -1, e(x) lt -1, f(x) lt -1
