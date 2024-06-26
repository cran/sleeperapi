#' Gather User Data
#'
#' Given a user ID, grab the data concerning that particular user. This includes username, user ID, display 
#' name, and more.
#'
#' @return Returns a list containing information about the user.
#' @author Nick Bultman, \email{njbultman74@@gmail.com}, September 2021
#' @keywords user users
#' @importFrom httr GET content
#' @importFrom jsonlite fromJSON
#' @export
#' @examples
#' \dontrun{get_user(688556535013502976)}
#'
#' @param user_id User ID generated by Sleeper (numeric or character)
#'
get_user <- function(user_id) {
  # Execute query to API given user ID specified
  x <- jsonlite::fromJSON(httr::content(httr::GET(paste0("https://api.sleeper.app/v1/user/", user_id)), as = "text"))
  # Check if returned object is NULL
  if(is.null(x)) {
    # If NULL, inform user and return nothing
    message("No data returned - are you sure the user ID was specified correctly?")
  } else {
    # If not NULL, return object (list)
    return(x)
  }
}
