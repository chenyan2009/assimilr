% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamics_gp.R
\name{gp_ens0}
\alias{gp_ens0}
\title{Generate initial ensemble}
\usage{
gp_ens0(k, gp_data)
}
\arguments{
\item{k}{ensemble size}

\item{gp_data}{a list returned by gp_simulate}
}
\description{
Independent draws from the Gaussian model specified.
}
\examples{
gp_data <- gp_simulate(q=100)
xb <- gp_ens0(20, gp_data)
gp_plot(gp_data, xb,  'Background')
}
