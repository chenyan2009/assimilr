% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamics_gp.R
\name{gp_as_df}
\alias{gp_as_df}
\title{Transform the state matrix into a data frame}
\usage{
gp_as_df(state, method = NULL)
}
\arguments{
\item{state}{can be both a vector (one sample) or an ensemble qxk}
}
\description{
Transform the state matrix into a data frame
}
\examples{
gp_data <- gp_simulate(q=100)
xb <- gp_ens0(20, gp_data)
(xb_df <- gp_as_df(xb))
(xtrue_df <- gp_as_df(gp_data$x))
}
