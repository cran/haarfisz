\name{hf.tiu}
\alias{hf.tiu}
\title{hf.tiu}
\description{
Denoises a Gaussian contaminated vector using translation-invariant hard wavelet thresholding with the universal threshold. Requires WaveThresh3. Also see help to \code{wd}, \code{threshold}, \code{convert} and \code{AvBasis} in WaveThresh. 
}
\usage{
hf.tiu(x, filter.number = 1, family = "DaubExPhase", min.level = 3, noise.level = 1) 
}
\arguments{
\item{x}{The noisy vector, its length must be a power of 2.}
\item{filter.number}{The filter number of the analysing wavelet. Can be set to 1, 2, \dots, 10 for \code{family == "DaubExPhase"}, or to 4, 5, \dots, 10 for \code{family == "DaubLeAsymm"}.}
\item{family}{The family of wavelet bases from which the wavelet \code{filter.number} is chosen. Can be set to "DaubExPhase" or "DaubLeAsymm".}
\item{min.level}{The minimum level thresholded.}
\item{noise.level}{Standard deviation of the noise, can be set to a positive number or to an estimate (a function of x).}
}
\value{
Returns: 
\item{est}{Denoised version of \code{x}.}  
}
\author{Piotr Fryzlewicz}
\keyword{manip}

