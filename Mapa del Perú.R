#INSTALAR LIBRERIAS
#install.packages("sf")
#install.packages("raster")
#install.packages("ggspatial")
#install.packages("ggplot2")
#install.packages("tidyverse")

## ACTIVAR LIBRERIAS
library(sf)
library(raster)
library(ggspatial)
library(tidyverse)
library(ggplot2)

## CARGAR INFORMACION

PERU <- getData("GADM", country= "PER", level =1) %>%
  st_as_sf()

###ELABORACIÓN DE MAPA

PERU%>%
  ggplot()+
  ggtitle("MAPA DEL PERÚ",subtitle = "Realizado por Ing° Alarcón Morales Gerardo André")+
  theme(plot.title = element_text(hjust = 0.5))+
  theme(plot.subtitle = element_text(hjust = 0.5))+
  geom_sf(fill = "antiquewhite1", color = "black")+
  annotation_scale()+
  annotation_north_arrow(location = "tr")+
  xlab("Longitud") + ylab("Latitud")

