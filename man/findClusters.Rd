% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/densityClust.R
\name{findClusters}
\alias{findClusters}
\alias{findClusters.densityCluster}
\title{Detect clusters in a densityCluster obejct}
\usage{
findClusters(x, ...)

\method{findClusters}{densityCluster}(x, rho, delta, plot = FALSE, ...)
}
\arguments{
\item{x}{A densityCluster object as produced by \code{\link{densityClust}}}

\item{...}{Additional parameters passed on to \code{\link{findClusters.densityCluster}}}

\item{rho}{The threshold for local density when detecting cluster peaks}

\item{delta}{The threshold for minimum distance to higher density when detecting cluster peaks}

\item{plot}{Logical. Should a decision plot be shown after cluster detection}
}
\value{
A densityCluster object with clusters assigned to all observations
}
\description{
This function uses the supplied rho and delta thresholds to detect cluster
peaks and assign the rest of the observations to one of these clusters.
Furthermore core/halo status is calculated. If either rho or delta threshold
is missing the user is presented with a decision plot where they are able to
click on the plot area to set the treshold. If either rho or delta is set,
this takes presedence over the value found by clicking.
}
\examples{
irisDist <- dist(iris[,1:4])
irisClust <- densityClust(irisDist, gaussian=TRUE)
plot(irisClust) # Inspect clustering attributes to define thresholds

irisClust <- findClusters(irisClust, rho=2, delta=2)
plotMDS(irisClust)
split(iris[,5], irisClust$clusters)

}
\references{
Rodriguez, A., & Laio, A. (2014). Clustering by fast search and find of density peaks. Science, 344(6191), 1492-1496. doi:10.1126/science.1242072
}
\seealso{
\code{\link{findClusters}}
}
