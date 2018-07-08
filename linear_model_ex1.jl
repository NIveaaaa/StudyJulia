using Plots
using QuantEcon
using LaTeXStrings
ϕ_0, ϕ_1, ϕ_2 = 1.1, 0.8, -0.8

A = [1.0   0.0   0
     ϕ_0   ϕ_1   ϕ_2
     0.0   1.0   0.0]
C = zeros(3, 1)
G = [0.0 1.0 0.0]
μ_0 = ones(3)

lss = LSS(A, C, G; mu_0=μ_0)

x, y = simulate(lss, 50)
plot(squeeze(y, 1), color=:blue, linewidth=2, alpha=0.7)
plot!(xlabel="time", ylabel="year", legend=:none)
