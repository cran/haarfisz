\name{hft}
\alias{hft}
\title{hft}
\description{
Performs the Haar-Fisz transform. 
}
\usage{
hft(data)
}
\arguments{
\item{data}{The vector of Poisson counts, its length must be a power of 2} 
}
\value{
Returns:
\item{hfy}{The Haar-Fisz transform of code{data} (vector of the same length as \code{data}).} 
}
\details{The inverse transform is \code{\link{hft.inv}}}
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
\dontrun{ts.plot(v)}
#
# Now do the Haar-Fisz transform
#
vhft <- hft(v)
#
# Now plot this, and see that the variance of the second bit is now comparable
# to the first
#
\dontrun{ts.plot(vhft)}
}
\author{Piotr Fryzlewicz}
\keyword{manip}

