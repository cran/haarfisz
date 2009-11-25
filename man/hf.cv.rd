\name{hf.cv}
\alias{hf.cv}
\title{hf.cv}
\description{
Denoises a Gaussian contaminated vector using wavelet thresholding with a threshold chosen by ``leave-half-out" cross-validation. Requires WaveThresh3. Also see help to wd, threshold and wr in WaveThresh.
}
\usage{
hf.cv(x, filter.number = 1, family = "DaubExPhase", min.level = 3, type = "hard") 
}
\arguments{
\item{x}{The noisy vector, its length must be a power of 2.}
\item{filter.number}{The filter number of the analysing wavelet. Can be set to 1, 2, \dots, 10 for \code{family == "DaubExPhase"}, or to 4, 5, \dots, 10 for \code{family == "DaubLeAsymm"}.}
\item{family}{The family of wavelet bases from which the wavelet \code{filter.number} is chosen. Can be set to "DaubExPhase" or "DaubLeAsymm".}
\item{min.level}{The minimum level thresholded.}
\item{type}{Type of thresholding, can be set to "hard" or "soft".}  
}
\value{
Returns:
\item{est}{Denoised version of \code{x}} 
}
\author{Piotr Fryzlewicz}
\keyword{manip}

