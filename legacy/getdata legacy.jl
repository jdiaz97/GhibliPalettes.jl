using RCall # rcopy
using DataFrames # DataFrame

df::DataFrame = rcopy(R"source('1.R')")[:value]

using Colors, ColorSchemes

hexs::Vector{String} = []
name::String = ""
for palette in eachrow(df)
    hexs = [palette.color1, palette.color2, palette.color3, palette.color4, palette.color5, palette.color6, 
            palette.color7]
    name = palette.name
    loadcolorscheme(Symbol(name), parse.(Colorant,hexs), "Ghibli", name)
end

Dict("name" => df.name,
    "color1" => df.color1,
    "color2" => df.color2,
    "color3" => df.color3,
    "color4" => df.color4,
    "color5" => df.color5,
    "color6" => df.color6,
    "color7" => df.color7,
)


