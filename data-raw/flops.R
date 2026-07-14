# training chatGPT took the equivalent of 1 billion FLOPS for 100 million years
# how long does that actually take on:
# El Capitan - the current fastest computer in the world at 1.8 billion GFLOPS
# a current fast-ish typical computer at 2 TFLOPS
library(units)
flops_quoted <- set_units(10^9, 1 / s)
flops_quoted
time_needed <- set_units(100, Myr)
set_units(time_needed, s) # 60*60*24*365*100*10^6
flops_needed <- flops_quoted * time_needed
flops_fastest_possible <- set_units(1.8 * 10^18, 1 / s)
flops_laptop_possible <- set_units(2 * 10^12, 1 / s)
time_fastest_possible <- flops_needed / flops_fastest_possible
time_laptop_possible <- flops_needed / flops_laptop_possible

# El Capitan - the current fastest computer in the world at 1.8 billion GFLOPS
set_units(time_fastest_possible, days) # ~3 weeks

# a current fast-ish typical computer at 2 TFLOPS
set_units(time_laptop_possible, yr) # 50000 years
# JASMIN has 53,000 CPU cores, so ~ 1 year

# there is a big difference - a factor a trillion!
flops_fastest_possible / time_fastest_possible
