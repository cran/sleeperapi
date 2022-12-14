#' Gather Roster Data for League
#'
#' Given a league ID, grab the data concerning each roster in that league. This includes information with the 
#' roster wins, losses, ties, fantasy points, and more.
#'
#' @return Returns a data frame containing information about the rosters in the league.
#' @author Nick Bultman, \email{njbultman74@@gmail.com}, September 2021
#' @keywords league users rosters
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @export
#' @examples
#' \dontrun{get_rosters(688281863499907072)}
#'
#' @param league_id League ID generated by Sleeper (numeric or character)
#'
get_rosters <- function(league_id) {
  # Execute query to API given league ID specified
  x <- jsonlite::fromJSON(httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/rosters")), as = "text"))
  # Check if returned object is NULL
  if(is.null(x)) {
    # If NULL, inform the user and return nothing
    message("League ID did not return any results. Did you enter the league ID correctly?")
  } else {
    # If not NULL, return the object (data frame)
    return(x)
  }
}
