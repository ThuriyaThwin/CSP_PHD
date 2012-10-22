draw.eu <- function () {
	old.par <- par(no.readonly=T)
	par(xpd=T)

	bell <- function(mu, sigma) function (x) exp(-(x-mu)^2/2/sigma^2)/
		sigma/sqrt(2*pi)

	xs <- 0:100/20
	ysa <- sapply(xs, bell(0,2))
	ysb <- sapply(xs, bell(1,1))

	plot(xs, ysa, ylim=c(0,max(ysa, ysb)), type='l', col='green', lwd=2, ylab="p", xlab="EU")
	lines(xs, ysb, col='blue', lwd=2)

	segments(x0=2, y0=-0.01, y1=max(ysa, ysb), lty='dashed')
	text(x=c(1.5, 2.5), y=+0.01, labels=c(expression(VOI[1]<VOI[2]), expression(VOI[1]>VOI[2])), col=c('blue', 'green'), adj=0.5)

	legend(x='topright', lty=c('solid', 'solid'), col=c('green', 'blue'), legend=c(expression(EU[1]), expression(EU[2])))

	par(old.par)
}

draw.voi <- function () {
	old.par <- par(no.readonly=T)
	par(xpd=T)

    intrinsic <- function(x) log(x+1)
	cost <- function(x) -0.4*x
	xs <- 0:100/20
	ysi <- sapply(xs, intrinsic)
	ysc <- sapply(xs, cost)
	ysn <- ysi+ysc

	plot(xs, ysn, type='l', lty='solid', lwd='3', ylim=range(ysi, ysc, ysn), xlab='time', ylab='VOI')
	lines(xs, ysi, lty='dashed', lwd='2')
	lines(xs, ysc, lty='dotted', lwd='2')
	segments(x0=c(min(xs)-0.1, 1.5), y0=c(0, -0.1), x1=c(max(xs)+0.1, 1.5), y1=c(0, 0.4), lty=c('solid'), lwd=c(1))
	text(x=1.5, y=0.0, adj=c(-0.25, -0.25), labels='max')

	legend(x='bottomleft', lty=c('solid', 'dashed', 'dotted'), lwd=c(3,2,2), legend=c('net VOI', 'intrinsic VOI', 'time cost'))


	par(old.par)
}
