include("src/GhibliPalettes.jl")

using GhibliPalettes
using Plots

p = plot(title = "MarnieLight1", palette = :MarnieLight1)
for c in eachcol(rand(100, 7))
    scatter!(p, c)
end
display(p)