# Assignment3. Generating predicted values in R

# Example 1. 
Africa<-read.csv("C:/Africa.csv")

kwak <- lm(Year~Life.expectancy, data=Africa)
Africa$pred<-predict(kwak, Africa)
plot(Africa$Year, Africa$pred)
points(Africa$Year, Africa$pred, col="red", pch=13)

# Example 2.
kwak2 <- data.frame(Life.expectancy=seq(1,25,0.5))
kwak2$pred <- predict(kwak, kwak2)
plot(Africa$Year,kwak2$pred)
points(Africa$Year,kwak2$pred, col="green")
points(Africa$Year,kwak2$pred, col="green", pch=3)

#read dataset till 2013
xmart <- read.csv("C:/data combined2.csv")

library (ggplot2)
qplot(Continent,Life.expectancy,  data=xmart,)

ggplot(xmart, aes(x=Year==1990,y=Life.expectancy, fill=Continent )) +
  geom_bar(position="dodge", stat="identity")

ggplot(xmart, aes(x=Year, y=Life.expectancy,)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent, colour = Continent))

##Africa##

#read dataset till 2013
Africa <- read.csv("C:/Africa.csv")

#Africa Life Exp
ggplot(Africa, aes(x=Year, y=Life.expectancy,)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent=="Africa", colour = Continent))

#Africa PerCapital
ggplot(Africa, aes(x=Year, y=Per.capita.total.expenditure.on.health.US..,)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent=="Africa", colour = Continent))

#Africa Goverment
ggplot(Africa, aes(x=Year, y=Per.capita.government.expenditure.on.health.US..)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent=="Africa", colour = Continent))

#Africa Physicians
ggplot(Africa, aes(x=Year, y=Physicians.density)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent=="Africa", colour = Continent))

#Africa Nursing...
ggplot(Africa, aes(x=Year, y=Nursing.and.midwifery.personnel.density)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent=="Africa", colour = Continent))

#Africa personnel density
ggplot(Africa, aes(x=Year, y=Dentisty.personnel.density)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent=="Africa", colour = Continent))

#Africa Pharmaceutical
ggplot(Africa, aes(x=Year, y=Pharmaceutical.personnel.density)) +
  geom_freqpoly(position="dodge", stat="identity",aes(group = Continent=="Africa", colour = Continent))