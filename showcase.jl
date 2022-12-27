include("src/GhibliPalettes.jl")

using .GhibliPalettes

using Plots

ghibli = GhibliPalettes.findcolorscheme("Ghibli")
graphs = palette.(ghibli)

using Plots, ColorSchemes
colors = [:MarnieDark1; ColorSchemes.autumn.colors]
heatmap(rand(10,10), c=palette(colors))

i = 1

