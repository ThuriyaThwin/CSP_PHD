twoprobs <- function () {
  plot(function(x) 1*x*exp(-(x-2)^2/10), xlim=c(0,10), ylim=c(0,5), xlab='time',ylab='Prob'); par(new=TRUE); plot(function(x) x*exp(-(x-5)^2), xlim=c(0,10), ylim=c(0,5), axes=FALSE, ylab=NA)
}
