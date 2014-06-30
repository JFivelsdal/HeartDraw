#Program:HeartDraw.R
#Author: Jonathan Fivelsdal
#Date: 6/30/2014


library(shape)

tHeart <- seq(-pi,pi,.001)

xH <- 16 * (sin(tHeart))^3

yH <- 13 * cos(tHeart) - 5 * cos(2* tHeart) - 2*cos(3*tHeart) - cos(4*tHeart)

heartFrame <- cbind(xH,yH)

plot(heartFrame,col = "red",axes = FALSE,xlab = "",ylab = "")

filledshape(heartFrame,col = shadepalette(n = 100, endcol = "red", inicol = "magenta", 
                                          interval = c(0.0, 1.0)))
