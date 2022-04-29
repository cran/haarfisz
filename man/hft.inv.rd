\name{hft.inv}
\alias{hft.inv}
\title{hft.inv}
\description{
Performs the inverse Haar-Fisz transform. 
}
\usage{
hft.inv(data) 
}
\arguments{
\item{data}{Vector of length \eqn{2^J} where J is an integer} 
}
\value{The inverse Haar-Fisz transform of \code{data}
	(vector of the same length as \code{data}).  }

\examples{
#
# Make up test set (mimics sequence with half low intensity, followed by
#  half high intensity)
#
test.set <-  c(8,5,6,3, 30,40,20,35)
#
# Do forward HFT
#
test.hft <- hft(test.set)
test.hft
# [1] 16.38621 15.20951 15.65216 14.23795 21.20421 22.89452 19.27753 22.13791
#
# Do inverse HFT
#
test.back <- hft.inv(test.hft)
test.back
# [1]  8  5  6  3 30 40 20 35
#
# Same as original
#
}
\seealso{\code{\link{denoise.poisson}}, \code{\link{hft}}}
\author{Piotr Fryzlewicz}
\keyword{manip}
\references{

Fryzlewicz, P. and Nason, G.P. (2004) A Haar-Fisz algorithm for Poisson
        intensity estimation.
        \emph{Journal of Computational and Graphical Statistics},
        \bold{13}, 621-638. \doi{10.1198/106186004X2697}
}
