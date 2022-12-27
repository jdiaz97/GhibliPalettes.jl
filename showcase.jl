include("src/GhibliPalettes.jl")

using .GhibliPalettes
using Plots, ColorSchemes

colors = [GhibliPalettes.ghibli["MarnieDark1"], GhibliPalettes.ghibli["MarnieLight1"]]

using Plots

p = plot(title = "PonyoMedium", palette = ghibli["PonyoMedium"])
for c in eachcol(rand(100, 7))
    scatter!(p, c)
end
display(p)