# GEO PLOTS EXAMPLES
# https://geocompr.robinlovelace.net/index.html


# marcadores no mapa mundi a noite. Lindo!

library(leaflet)
popup = c("Robin", "Jakub", "Jannes")
leaflet() %>%
  addProviderTiles("NASAGIBS.ViirsEarthAtNight2012") %>%
  addMarkers(lng = c(-3, 23, 11),
             lat = c(52, 53, 49), 
             popup = popup)


# ------------------------------------------------------
# chapter 2 - dependencies
install.packages("sf")
install.packages("terra")
install.packages("spData")
install.packages("spDataLarge", repos = "https://nowosad.r-universe.dev")


library(sf)            # classes and functions for vector data
library(terra)         # classes and functions for raster data
library(spData)        # load geographic data
library(spDataLarge)   # load larger geographic data


