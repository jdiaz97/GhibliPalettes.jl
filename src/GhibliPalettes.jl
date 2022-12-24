module GhibliPalettes

using Colors, ColorSchemes

export ghibli_palettes
export ColorSchemes

ghibli_palettes::Dict{String, Vector{String}} = Dict("name" => ["MarnieLight1", "MarnieMedium1", "MarnieDark1", "MarnieLight2", "MarnieMedium2", "MarnieDark2", "PonyoLight", "PonyoMedium", "PonyoDark", "LaputaLight", "LaputaMedium", "LaputaDark", "MononokeLight", "MononokeMedium", "MononokeDark", "SpiritedLight", "SpiritedMedium", "SpiritedDark", "YesterdayLight", "YesterdayMedium", "YesterdayDark", "KikiLight", "KikiMedium", "KikiDark", "TotoroLight", "TotoroMedium", "TotoroDark"],
    "color1" => ["#95918EFF", "#28231DFF", "#15110EFF", "#8E938DFF", "#1D271CFF", "#0E130DFF", "#A6A0A0FF", "#4C413FFF", "#262020FF", "#898D90FF", "#14191FFF", "#090D10FF", "#838A90FF", "#06141FFF", "#030A10FF", "#8F9297FF", "#1F262EFF", "#0F1217FF", "#768185FF", "#061A21FF", "#030E12FF", "#8E8C8FFF", "#1C1A1FFF", "#0E0C0FFF", "#85898AFF", "#0A1215FF", "#05090AFF"],
    "color2" => ["#AF9699FF", "#5E2D30FF", "#2F1619FF", "#94A39CFF", "#274637FF", "#14231CFF", "#ADB7C0FF", "#5A6F80FF", "#2D3740FF", "#8D93A1FF", "#1D2645FF", "#0D1321FF", "#BA968AFF", "#742C14FF", "#3A160AFF", "#9A9C97FF", "#353831FF", "#1A1C17FF", "#7E8C97FF", "#132E41FF", "#0B1924FF", "#9A9AA2FF", "#333544FF", "#1A1A22FF", "#959492FF", "#2D2A25FF", "#151412FF"],
    "color3" => ["#80C7C9FF", "#008E90FF", "#004749FF", "#97B8AFFF", "#2C715FFF", "#17382FFF", "#94C5CCFF", "#278B9AFF", "#14454CFF", "#9F99B5FF", "#403369FF", "#1F1935FF", "#9FA7BEFF", "#3D4F7DFF", "#1F273EFF", "#C19A9BFF", "#833437FF", "#411A1BFF", "#88988DFF", "#26432FFF", "#15251AFF", "#D98594FF", "#B50A2AFF", "#590514FF", "#AC9D96FF", "#583B2BFF", "#2C1D16FF"],
    "color4" => ["#8EBBD2FF", "#1C77A3FF", "#0E3B52FF", "#A2D1BDFF", "#44A57CFF", "#22513DFF", "#F4ADB3FF", "#E75B64FF", "#742D33FF", "#AFACC9FF", "#5C5992FF", "#2F2C49FF", "#B3B8B1FF", "#657060FF", "#333831FF", "#C7C0C8FF", "#8F8093FF", "#474048FF", "#9DAFC3FF", "#4D6D93FF", "#2A3C50FF", "#86C2DAFF", "#0E84B4FF", "#06425AFF", "#A8A6A9FF", "#534C53FF", "#282629FF"],
    "color5" => ["#E3D1C3FF", "#C5A387FF", "#635143FF", "#C0CDBCFF", "#819A7AFF", "#404D3CFF", "#EEBCB1FF", "#DE7862FF", "#6E3C31FF", "#D7CADEFF", "#AE93BEFF", "#574A5EFF", "#E7A79BFF", "#CD4F38FF", "#67271BFF", "#B4DCF5FF", "#67B9E9FF", "#345C75FF", "#B1D5BBFF", "#6FB382FF", "#3E6248FF", "#D0C1AAFF", "#9E8356FF", "#50412AFF", "#A1B1C8FF", "#446590FF", "#213148FF"],
    "color6" => ["#B3DDEBFF", "#67B8D6FF", "#335D6BFF", "#ACD2A3FF", "#58A449FF", "#2C5223FF", "#ECD89DFF", "#D8AF39FF", "#6C581DFF", "#DAEDF3FF", "#B4DAE5FF", "#5A6D73FF", "#F2C695FF", "#E48C2AFF", "#724615FF", "#E1D7CBFF", "#C3AF97FF", "#61574BFF", "#ECE28BFF", "#DCCA2CFF", "#796F18FF", "#C0DDE1FF", "#7EBAC2FF", "#405D61FF", "#D6C0A9FF", "#AD8152FF", "#564029FF"],
    "color7" => ["#F3E8CCFF", "#E9D097FF", "#73684CFF", "#E6E58BFF", "#CEC917FF", "#66650BFF", "#F4E3D3FF", "#E8C4A2FF", "#746353FF", "#F7EABDFF", "#F0D77BFF", "#776A3DFF", "#F5EDC9FF", "#EAD890FF", "#756D49FF", "#DBEBF8FF", "#B7D9F2FF", "#5B6B78FF", "#C3DAEAFF", "#92BBD9FF", "#506777FF", "#E9DBD0FF", "#D1B79EFF", "#695B50FF", "#DCD3C4FF", "#BBA78CFF", "#5C5344FF"],
)

n::Int64 = length(ghibli_palettes["name"])
for i in 1:n
    palette::Dict{String, Vector{String}} = ghibli_palettes
    hexs::Vector{String} = [palette["color1"][i], palette["color2"][i], palette["color3"][i], palette["color4"][i], 
            palette["color5"][i], palette["color6"][i], palette["color7"][i]]
    name::String = palette["name"][i]
    loadcolorscheme(Symbol(name), parse.(Colorant,hexs), "Ghibli", name)
end

# cgrad(:MarnieDark2, categorical = true)

end # module GhibliPalettes

