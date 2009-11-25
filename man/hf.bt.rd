\name{hf.bt}
\alias{hf.bt}
\title{hf.bt}
\description{
Denoises a Gaussian contaminated vector using a version of the wavelet-based ``greedy tree" algorithm by Baraniuk, see the reference in the thesis. 
}
\usage{
hf.bt(x, filter.number = 1, family = "DaubExPhase", min.level = 3, noise.level = NULL) 
}
\arguments{
\item{x}{The noisy vector, its length must be a power of 2.}
\item{filter.number}{The filter number of the analysing wavelet. Can be set to 1, 2, ..., 10 for \code{family == "DaubExPhase"}, or to 4, 5, ..., 10 for \code{family == "DaubLeAsymm"}.}
\item{family}{The family of wavelet bases from which the wavelet \code{filter.number} is chosen. Can be set to "DaubExPhase" or "DaubLeAsymm".}
\item{min.level}{The minimum level thresholded.}
\item{noise.level}{Standard deviation of the noise, can be set to a positive number or NULL; in the latter case it will be estimated using MAD.}
}
\value{
Returns: 
item{est}{Denoised version of \code{x}.}  
}
\author{Piotr Fryzlewicz}
\keyword{manip}

