library(ggtext)
library(ggplot2)

ggplot(iris)+
  geom_point(aes(x=Sepal.Length, y=Petal.Length))+
  geom_smooth(mapping = aes(x=Sepal.Length, y=Petal.Length),
              formula = y~x, method = "loess")+
  facet_wrap(~Species)+
  theme(
    strip.text = element_textbox(
      size = 12,
      color = "white", fill = "red", box.colour = "black",
      halign = 0.5, linetype = 1, r=unit(5,"pt"), width = unit(1, "npc"),
      padding = margin(2,0,1,0), margin = margin(3,3,3,3)
    )
  )


mystrips <- strip_themed(
  #--- Horizontal strips
  background_x= 
)