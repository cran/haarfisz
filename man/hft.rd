\name{hft}
\alias{hft}
\title{hft}
\description{
Performs the (forward) Haar-Fisz transform. 
}
\usage{
hft(data)
}
\arguments{
\item{data}{A vector of Poisson counts, its length must be a power of 2} 
}
\value{The Haar-Fisz transform of \code{data}, which will be the same
	length as \code{data}. 
}
\details{The Haar-Fisz for Poisson works, roughly speaking, by taking
	the Haar wavelet transform of \code{data}. Then dividing the
	mother wavelet coefficients by the respective father coefficients,
	and replacing the results of the divisions back into the same
	coefficient locations, and then carrying out an inverse
	Haar wavelet transform. This produces a nearer-Gaussian variance
	stabilized version of the original (or a version of the underlying
	intensity which is close to an `intensity PLUS homogeneous
	Gaussian noise' signal, which is easier to denoise using `standard'
	methods.

	The inverse transform is \code{\link{hft.inv}}}
\seealso{
\code{\link{denoise.poisson}},
\code{\link{hft.inv}},
\code{\link{hf.bt}},
\code{\link{hf.cv}},
\code{\link{hf.u}},
\code{\link{hf.tiu}}
}
\examples{
#
# Generate Poisson data, half with one intensity, and half with a larger one
#
v <- c( rpois(64, lambda=1), rpois(64, lambda=10))
#
# Plot it to note that the variation is bigger in the second half
# (and the mean, but this is not important for this bit)
#
ts.plot(v)
#
# Now do the Haar-Fisz transform
#
vhft <- hft(v)
#
# Now plot this, and see that the variance of the second bit is now comparable
# to the first
#
ts.plot(vhft)
}
\author{Piotr Fryzlewicz}
\references{

Fryzlewicz, P. and Nason, G.P. (2004) A Haar-Fisz algorithm for Poisson
        intensity estimation.
        \emph{Journal of Computational and Graphical Statistics},
        \bold{13}, 621-638. \doi{10.1198/106186004X2697}
}

\keyword{manip}
