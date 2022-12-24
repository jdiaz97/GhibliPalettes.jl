library(ghibli)

finaldf <- data.frame()
jndex <- 1
for (palette in ghibli_palettes){
  name <- names(ghibli_palettes)[jndex]
  jndex <- jndex + 1
  colors <- palette
  colors <- as.character(colors)
  print(colors)
  
  index <- 1
  df <- data.frame("name" = name)
  for (color in colors){
    colname <- paste0("color",index)
    df[colname] <- color
    index <- index +  1
  }
  finaldf <- rbind(finaldf,df)
}

finaldf