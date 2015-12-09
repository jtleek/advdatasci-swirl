y = rnorm(500,mean=rep(c(0,0.05),each=250))
mu1 = 0
mu2 = 3
alpha=0.75
m = length(y)

for(i in 1:10){
  # estep
  z = (alpha*dnorm(y,mean=mu1))/(alpha*dnorm(y,mean=mu1) + (1-alpha)*dnorm(y,mean=mu2))
  # mstep
  alpha = mean(z)
  mu1 = sum(y*z)/sum(z)
  mu2 = sum(y*(1-z))/(m-sum(z))
}

plot(density(y))
lines(rep(mu1,100),seq(0,1000,length=100),lwd=3,col="red")
lines(rep(mu2,100),seq(0,1000,length=100),lwd=3,col="blue")
text(-3,0.05,paste0("alpha=",round(alpha,2)))

legend(-3,0.2,lwd=rep(3,2),col=c('red','blue'),legend=c("mu1","mu2"))