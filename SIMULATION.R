#sampling from vectors
sample(x=letters,replace = TRUE,size=11)
sample(x=c(200,200.09),replace=TRUE,size=10)
n=100
z=rnorm(n,mean=0,sd=1)
mean(z)
var(z)
####fun with ecdf
x=seq(-3,3,n=100)
ecdf.fun=ecdf(x)
class(ecdf.fun)
ecdf.fun(0)
plot(x, ecdf.fun(x), lwd=2, col="red", type="l", ylab="CDF", main="ECDF")
lines(x,pnorm(x),lwd=2)
ks.test(rnorm(n), rt(n, df=1))
####playing with basic hist()###
hist.obj=hist(z,breaks=30,plot=FALSE) 
class(hist.obj)
plot(hist.obj,col="pink",freq=FALSE,main="Histogram")
lines(x,dnorm(x),lwd=2)
legend("topleft",legend=c("Histogram","Actual"),lwd=2,col="pink")
###Random numbers generated in R(in any language) are not “truly” random##
##The default algorithm in R is called the “Mersenne Twister”###
###they are what we call pseudorandom##
n=60
mu.drug=2
mu.nodrug=runif(n,0,1)
x.drug=100*rexp(n,1/mu.drug)
x.nodrug=100*rexp(n,1/mu.nodrug)
x.range=range(c(x.nodrug,x.drug))
breaks=seq(min(x.range),max(x.range),length=20)
hist(x.nodrug,breaks=breaks,probability=TRUE,xlim=x.range,col="lightgray",xlab="Percentage reduction in tumor size",main="Comparison of tumor reduction")
hist(x.drug,breaks=breaks,probability=TRUE,col="blue",add=TRUE)
lines(density(x.drug),lwd=2,col="black")
lines(density(x.nodrug),lwd=2,col="red")



