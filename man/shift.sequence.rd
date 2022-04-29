\name{shift.sequence}
\alias{shift.sequence}
\title{shift.sequence}
\usage{
shift.sequence(v, places, dir="right")
}
\arguments{
\item{v}{Vector to shift}
\item{places}{The number of places to shift}
\item{dir}{Whether the shift should be right or left}
}
\description{
One of my functions to resolve issues for a similar function that seems to have been forgotten in haarfisz.
}
\details{
This function takes a sequence input and shifts it to the left or right by the specified number of places. This is a circular shift. For example, when shifting
to the right, any numbers that drop off are appended circularly to the front,
etc.
}
\value{
a shifted output sequence.
}
\author{Piotr Fryzlewicz}
\keyword{manip}
\references{

Fryzlewicz, P. and Nason, G.P. (2004) A Haar-Fisz algorithm for Poisson
        intensity estimation.
        \emph{Journal of Computational and Graphical Statistics},
        \bold{13}, 621-638. \doi{10.1198/106186004X2697}
}
\examples{
#
# Shift 1:10 one place to the right
#
shift.sequence(1:10,1, dir="right")
#  [1] 10  1  2  3  4  5  6  7  8  9

#
# Shift 1:10 twos place to the right
#
shift.sequence(1:10,2, dir="right")
#  [1]  9 10  1  2  3  4  5  6  7  8

#
# Shift 1:10 one place to the left
#
shift.sequence(1:10,1, dir="left")
# [1]  2  3  4  5  6  7  8  9 10  1
}
