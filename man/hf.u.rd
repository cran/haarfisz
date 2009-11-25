\name{hf.u}
\alias{hf.u}
\title{hf.u}
\description{
Denoises a Gaussian contaminated vector using wavelet thresholding with the universal threshold. Requires WaveThresh3. Also see help to \code{wd}, \code{threshold},and \code{link{wr}} in WaveThresh. 
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
Returns: 
\item{est}{Denoised version of \code{x}.}  
}
\author{Piotr Fryzlewicz}
\keyword{manip}

