% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_sport_state.R
\name{get_sport_state}
\alias{get_sport_state}
\title{Gather Sport State}
\usage{
get_sport_state(sport)
}
\arguments{
\item{sport}{Sport that you would like to query (nfl, nba, lcs, etc.) (character)}
}
\value{
Returns a list containing information about the sport state.
}
\description{
Given a sport abbreviation (NFL, NBA, etc.), return information about the current sport state.
}
\examples{
\dontrun{get_sport_state("nfl")}

}
\author{
Nick Bultman, \email{njbultman74@gmail.com}, December 2021
}
\keyword{sport}
\keyword{state}
