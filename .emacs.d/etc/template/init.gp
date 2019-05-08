# Grid
set grid

# Border
set border 3
set xtics nomirror
set ytics nomirror

# Key position
set key left top

# Log Scale
unset logscale

# Range
set xr[-100:100]
set yr[-100:100]

# Label
set xl ""
set yl ""

# Line Style
set style l 1 lt 1 lc rgb "#dd2222" lw 4 pt 7 ps 1.0
set style l 2 lt 1 lc rgb "#2222dd" lw 4 pt 7 ps 1.0

# Output
set term pdf
set out ".pdf"

# Plot
# f(x) = a * x + b
# fit f(x) ".dat" via a, b

plot ".dat" notitle w p ls 1, \
     f(x) t "" w l ls 2