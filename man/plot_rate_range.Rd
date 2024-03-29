% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_data-triangulation.R
\name{plot_rate_range}
\alias{plot_rate_range}
\title{Determine the scale range of percentage y-axis}
\usage{
plot_rate_range(min_rate, max_rate)
}
\arguments{
\item{min_rate}{The mininum percentage in the vector}

\item{max_rate}{The maximum percentage in the vector}
}
\value{
A a vector of 2 percentages
}
\description{
Determine the percentage y-axis where if its beyond 100\% let the upper limit be
the maximum point in the data plus 50\% of that maximum point
}
\details{
formula used

if(max_rate  > 100){  max_rate + (max_rate/ 2) }

Same rule applies to other min_rate but towards the negative side
}
