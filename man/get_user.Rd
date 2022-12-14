% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_user.R
\name{get_user}
\alias{get_user}
\title{Gather User Data}
\usage{
get_user(user_id)
}
\arguments{
\item{user_id}{User ID generated by Sleeper (numeric or character)}
}
\value{
Returns a list containing information about the user.
}
\description{
Given a user ID, grab the data concerning that particular user. This includes username, user ID, display 
name, and more.
}
\examples{
\dontrun{get_user(688556535013502976)}

}
\author{
Nick Bultman, \email{njbultman74@gmail.com}, September 2021
}
\keyword{user}
\keyword{users}
