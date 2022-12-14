#' Display Avatar
#'
#' Given an avatar ID, grab the picture (full or thumbnail) concerning that particular avatar.
#' Note that this function downloads the image into your temporary directory to display 
#' it. Then, the function deletes the file before completing.
#'
#' @return Returns a picture displaying the avatar picture
#' @author Nick Bultman, \email{njbultman74@@gmail.com}, October 2021
#' @keywords avatar picture
#' @importFrom utils download.file
#' @export
#' @examples
#' \dontrun{get_avatar_picture("c751b27d9158c1dd41bd33dc7e4bcdde", type = "full")}
#'
#' @param avatar_id Avatar ID generated by Sleeper (character)
#' @param type String that is either "full" or "thumbnail"
#'
get_avatar_picture <- function(avatar_id, type = "full") {
  # Generate a name for the temporary file
  temp_fil <- paste0(tempfile(), ".png")
  # If the type is "full" then get full PNG file
  if(type == "full") {
    # Get picture from API
    utils::download.file(paste0("https://sleepercdn.com/avatars/", avatar_id), destfile = temp_fil, quiet = TRUE)
    # Show file
    file.show(temp_fil)
    # Remove the file from the temporary path
    invisible(file.remove(temp_fil))
  } # If the type is "thumbnail" then get full PNG file
  else if(type == "thumbnail") {
    # Get picture from API
    download.file(paste0("https://sleepercdn.com/avatars/thumbs/", avatar_id), destfile = temp_fil, quiet = TRUE)
    # Show file
    file.show(temp_fil)
    # Remove the file from the temporary path
    invisible(file.remove(temp_fil))
  }
  else {
    # If type specified is not valid, throw error message to user
    stop("Invalid value entered for type: can only be 'full' or 'thumbnail'")
  }
}
