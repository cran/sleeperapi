% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_matchups.R
\name{get_matchups}
\alias{get_matchups}
\title{Gather Matchup Data in a League for a Week}
\usage{
get_matchups(league_id, week)
}
\arguments{
\item{league_id}{League ID generated by Sleeper (numeric or character)}

\item{week}{Matchup week (numeric)}
}
\value{
Returns a data frame containing information about the matchups.
}
\description{
Given a league ID and week number, grab the matchup data, including player points, total points,
starting rosters, and more.
}
\examples{
\dontrun{get_matchups(688281863499907072, 2)}
\dontrun{get_matchups("688281863499907072", 1)}

}
\author{
Nick Bultman, \email{njbultman74@gmail.com}, September 2021
}
\keyword{league}
\keyword{matchups}
