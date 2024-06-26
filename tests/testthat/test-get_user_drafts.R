# Unit tests for get_user_drafts function

# Test 1: Invalid input type for sport parameter informs user
test_that("Invalid input type for sport parameter informs user", {
  expect_error(get_user_drafts(688556535013502976, 2, 2021), "sport parameter must be of type character")
})

# Test 2: Invalid input type for season parameter informs user
test_that("Invalid input type for season parameter informs user", {
  expect_error(get_user_drafts(688556535013502976, "nfl", "fail"), "season parameter must be of type numeric")
})

# Test 3: Valid inputs returns a data frame
test_that("Valid inputs returns a data frame", {
  expect_equal(class(get_user_drafts(688556535013502976, "nfl", 2021)), "data.frame")
})

