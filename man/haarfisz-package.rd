\name{haarfisz-package}
\alias{haarfisz-package}
\alias{haarfisz}
\docType{package}
\title{A Haar-Fisz Algorithm for Poisson Intensity Estimation.
}
\description{Package to denoise Poisson distributed sequence where
	underlying intensity is not constant. Uses the multiscale
	variance-stabilization method called the Haar-Fisz transform.
	Contains functions to carry out the foward and inverse
	Haar-Fisz transform and denoising on near-Gaussian sequences.
	Can also carry out cycle-spinning.
}
\details{
\tabular{ll}{
Package: \tab haarfisz \cr
Type: \tab Package\cr
Version: \tab 1.5.2\cr
Date: \tab 2022-04-27\cr
License: \tab GPL (>=2)\cr
}
}
\author{Piotr Fryzlewicz>
}
\references{

Fryzlewicz, P. (2003) Wavelet Techniques for Time Series and Poisson
	Data. \emph{PhD Thesis}, University of Bristol, Bristol, UK
	\url{https://www.ma.imperial.ac.uk/~gnason/Research/MAPZFthesis.ps.gz}

Fryzlewicz, P. and Nason, G.P. (2004) A Haar-Fisz algorithm for Poisson
	intensity estimation.
	\emph{Journal of Computational and Graphical Statistics},
	\bold{13}, 621-638. \doi{10.1198/106186004X2697} 

Nason, G.P. (2008) \emph{Wavelet Methods in Statistics with R.}
	Springer: New York (Section 6.4)
	\doi{10.1007/978-0-387-75961-6}
}

\keyword{math}
\seealso{\code{\link{denoise.poisson}}, \code{\link{hft}}, \code{\link{hft.inv}}
}
\examples{
#
#
# Main Poisson denoising function is denoise.poisson
#
# Forward Haar-Fisz transform is hft
#
# Inverse Haar-Fisz transform is hft.inv
}
