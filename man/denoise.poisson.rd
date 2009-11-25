\name{denoise.poisson}
\alias{denoise.poisson}
\title{denoise.poisson}
\description{
Main routine of the package. Estimates the deterministic discretised intensity of a one-dimensional Poisson process using the Haar-Fisz transformation and partial cycle spinning. Requires WaveThresh3. 
}
\usage{
denoise.poisson(y, meth.1 = hf.bt, cs.1 = 50, meth.2 = hf.cv, cs.2 = 50, hybrid = TRUE) 
}
\arguments{
\item{y}{The vector of Poisson counts, its length must be a power of 2.}
\item{meth.1}{Unquoted name of an S-Plus routine for denoising Gaussian contaminated vectors. Must take and return a vector of length \eqn{2^J} where J is an integer. The following routines supplied in this package can be used here: \code{\link{hf.u}}, \code{\link{hf.cv}}, \code{\link{hf.bt}}, \code{\link{hf.tiu}}. The user can define and plug in his or her own routines here. }
\item{cs.1}{The number of cycle spins to be performed with \code{meth.1}. Must be between 1 and N-1, where N is the length of \code{y}.} 
\item{meth.2}{Of the same type as \code{meth.1}.}
\item{cs.2}{The number of cycle spins to be performed with \code{meth.2}.}
\item{hybrid}{If set to TRUE, then the estimates are computed using both \code{meth.1} with \code{cs.1} cycle spins, and \code{meth.2} with \code{cs.2} cycle spins, and the final estimate is taken to be the average of these two. If set to \code{FALSE}, only \code{meth.1} with \code{cs.1} cycle spins is used to compute the final estimate.}
}
\value{
Returns:
\item{est}{The estimate of the intensity which underlies \code{y} (a vector of the same length as \code{y}).}
}
\author{Piotr Fryzlewicz}
\keyword{manip}

