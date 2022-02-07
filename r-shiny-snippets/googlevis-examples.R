library(googleVis)

# simple line plot
Line <- gvisLineChart(df)
plot(Line)


# bar chart
Bar <- gvisBarChart(df)
plot(Bar)

# column chart
Column <- gvisColumnChart(df)
plot(Column)


# barras + linhas
Combo <- gvisComboChart(df, xvar="country",
                        yvar=c("val1", "val2"),
                        options=list(seriesType="bars",
                                     series='{1: {type:"line"}}'))
plot(Combo)


# bubble chart
Bubble <- gvisBubbleChart(Fruits, idvar="Fruit", 
                          xvar="Sales", yvar="Expenses",
                          colorvar="Year", sizevar="Profit",
                          options=list(
                            hAxis='{minValue:75, maxValue:125}'))
plot(Bubble)


# icones personalizados
M <- matrix(nrow=6,ncol=6)
M[col(M)==row(M)] <- 1:6
dat <- data.frame(X=1:6, M)
SC <- gvisScatterChart(dat, 
                       options=list(
                         title="Customizing points",
                         legend="right",
                         pointSize=30,
                         series="{
                              0: { pointShape: 'circle' },
                              1: { pointShape: 'triangle' },
                              2: { pointShape: 'square' },
                              3: { pointShape: 'diamond' },
                              4: { pointShape: 'star' },
                              5: { pointShape: 'polygon' }
                              }"))
plot(SC)


# pizza
Pie <- gvisPieChart(CityPopularity)
plot(Pie)

# medidor parecido com do acelerador do carro.
Gauge <-  gvisGauge(CityPopularity, 
                    options=list(min=0, max=800, greenFrom=500,
                                 greenTo=800, yellowFrom=300, yellowTo=500,
                                 redFrom=0, redTo=300, width=400, height=300))
plot(Gauge)


# mapa do mundo
Geo=gvisGeoChart(Exports, locationvar="Country", 
                 colorvar="Profit",
                 options=list(projection="kavrayskiy-vii"))
plot(Geo)



# mapa EUA
require(datasets)
states <- data.frame(state.name, state.x77)
GeoStates <- gvisGeoChart(states, "state.name", "Illiteracy",
                          options=list(region="US", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
plot(GeoStates)



# mapa NETHERLANDS
require(datasets)
states <- data.frame(state.name, state.x77)

states[1,]

GeoStates <- gvisGeoChart(states, "state.name", "Illiteracy",
                          options=list(region="NL", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
plot(GeoStates)



# mapa BRASIL
require(datasets)
states <- data.frame(state.name, state.x77)

states[1, "state.name"] <- "Rio de Janeiro"
states[2, "state.name"] <- "Sao Paulo"
states[3, "state.name"] <- "Ceará"
states[4, "state.name"] <- "Cabo Frio"

# original no dataset - não encontra no googleVis
# eu perderia MUITO tempo arrumando os dados.
# "Brazil - Itatiaia NP"
# "Brazil - Ceará"

GeoStates <- gvisGeoChart(states, "state.name", "Illiteracy",
                          options=list(region="BR", 
                                       displayMode="regions", 
                                       resolution="provinces",
                                       width=600, height=400))
plot(GeoStates)


# MAPA EUA, sem estados, por onde passou o furacão
# preciso de algo parecido. 
GeoMarker <- gvisGeoChart(Andrew, "LatLong",
                          sizevar='Speed_kt',
                          colorvar="Pressure_mb", 
                          options=list(region="US"))
plot(GeoMarker)



# proporção do mapa do mundo. arredondado vs flat.

G1a <- gvisGeoChart(Exports, locationvar='Country', colorvar='Profit') 
plot(G1a)

G1b <- gvisGeoChart(Exports, locationvar='Country', colorvar='Profit',
                    options=list(projection="kavrayskiy-vii")) 
plot(G1b)


## Plot only Europe
G2 <- gvisGeoChart(Exports, "Country", "Profit",
                   options=list(region="150"))

plot(G2)




## custom color scale
G4 <- gvisGeoChart(CityPopularity, locationvar='City', colorvar='Popularity',
                   options=list(region='US', height=350, 
                                displayMode='markers',
                                colorAxis="{values:[200,400,600,800],
                                   colors:[\'red', \'pink\', \'orange',\'green']}")
) 
plot(G4)


## Create lat:long values and plot a map of Oceania
## Set background colour to light-blue
## google vis gosta da coluna "latlong". Blz.

require(stats)
data(quakes)
head(quakes)
quakes$latlong<-paste(quakes$lat, quakes$long, sep=":")

G7 <- gvisGeoChart(quakes, "latlong", "depth", "mag",
                   options=list(displayMode="Markers", region="009",
                                colorAxis="{colors:['red', 'grey']}",
                                backgroundColor="lightblue"))

plot(G7)



# table
Table <- gvisTable(Stock, 
                   formats=list(Value="#,###"))
plot(Table)



# org chart
Org <- gvisOrgChart(Regions, 
                    options=list(width=600, height=250,
                                 size='large', allowCollapse=TRUE))
plot(Org)
