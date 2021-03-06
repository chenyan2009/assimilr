% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/diagnostics.R
\name{pit_sweq}
\alias{pit_sweq}
\title{Compute PIT (probability integral transform) for sweq}
\usage{
pit_sweq(sweq_run, model_run, fig = FALSE,
  train = sweq_run$params["thres.rain"], loc = seq(1, sweq_run$ndim, by =
  10), times = sweq_run$freq * seq(0, sweq_run$duration/sweq_run$freq, by =
  3))
}
\arguments{
\item{sweq_run}{is the true model run returned by sweq_simulate}

\item{model_run}{is the assimilation run returned by da_cycle}

\item{train}{the threshold of rain observations}

\item{loc}{the locations at which to compute the PIT (better not too close to avoid correlations)}

\item{times}{at which to compute the PIT (like for loc, thin out to avoid correlated values)}

\item{fig=T/F}{to plot the results or not}
}
\description{
Compute PIT (probability integral transform) for sweq
}
\examples{
set.seed(1)
sweq_run <- sweq_simulate(5*60, 60, 300)
k <- 20
ens0 <- sweq_ens0(k, sweq_run, klag=1000)
l <- 5
block_run <- da_cycle(ens0, sweq_run, block_LEnKPF, l=l, block_size=l/2, 
                      taper=sweq_GC(sweq_run$ndim, l, 0.9), ndim=sweq_run$ndim,
                      get_partition = sweq_partition,
                      manifold_proj = sweq_proj)
pit_df <- pit_sweq(sweq_run, block_run, fig=TRUE, train=train)
pit_df \%>\% pit_sweq_plot()                  
}
