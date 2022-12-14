% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_league_drafts.R
\name{get_league_drafts}
\alias{get_league_drafts}
\title{Gather League Draft Information}
\usage{
get_league_drafts(league_id)
}
\arguments{
\item{league_id}{League ID generated by Sleeper (numeric or character)}
}
\value{
Returns a data frame containing draft information for that league.
}
\description{
Given a league ID, gather draft information for that league.
}
\examples{
\dontrun{get_league_drafts(688281863499907072)}

}
\author{
Nick Bultman, \email{njbultman74@gmail.com}, December 2021
}
\keyword{draft}
\keyword{league}
