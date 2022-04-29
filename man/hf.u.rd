\name{hf.u}
\alias{hf.u}
\title{hf.u}
\description{
Denoises a Gaussian contaminated vector using wavelet thresholding with the universal threshold. 
Note: this function does not actually do any Haar-Fisz transform, it is
a homogeneous variance Gaussian denoising function, which is used by
the \pkg{haarfisz} package.
}
\usage{
hf.u(x, filter.number = 10, family = "DaubLeAsymm", min.level = 3, type = "hard")}
\arguments{
\item{x}{The noisy vector, its length must be a power of 2.}
\item{filter.number}{The filter number of the analysing wavelet. Can be set to 1, 2, \dots, 10 for \code{family == "DaubExPhase"}, or to 4, 5, \dots, 10 for \code{family == "DaubLeAsymm"}.}
\item{family}{The family of wavelet bases from which the wavelet \code{filter.number} is chosen. Can be set to "DaubExPhase" or "DaubLeAsymm".}
\item{min.level}{The minimum level thresholded.}
\item{type}{Type of thresholding, can be set to hard or soft}
}
\value{
Denoised version of \code{x}.
}
\author{Piotr Fryzlewicz}
\keyword{manip}
\details{Uses \code{\link[wavethresh]{threshold}},
        \code{\link[wavethresh]{wd}} and
        \code{\link[wavethresh]{AvBasis}}}
\seealso{\code{\link[wavethresh]{threshold}},
        \code{\link[wavethresh]{wd}},
        \code{\link[wavethresh]{AvBasis}}}
\references{

Fryzlewicz, P. and Nason, G.P. (2004) A Haar-Fisz algorithm for Poisson
        intensity estimation.
        \emph{Journal of Computational and Graphical Statistics},
        \bold{13}, 621-638. \doi{10.1198/106186004X2697}
}
\examples{
#
# Generate simple sinusoidal test signal
#
test.sig <- sin(seq(from=0, to=6*pi, length=128))
#
# Invent simulated noisy signal
#
test.dat <- test.sig + rnorm(128, sd=0.2)
#
# Denoise using hf.bt
#
test.est <- hf.u(test.dat)
#
# Now plot the results: the truth, the noisy signal, the estimate
#
ts.plot(test.dat)
lines(test.est, col=2)
lines(test.sig, col=3, lty=2)
}
