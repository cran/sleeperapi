# Unit tests for get_loser_playoff_bracket function

# Test 1: Invalid league ID returns a message informing user
test_that("Invalid league ID prints a message informing user", {
  expect_message(get_loser_playoff_bracket(-777), "League ID did not return any results. Did you enter the league ID correctly?")
})

# Test 2: Valid league ID returns a data frame
test_that("Valid league ID returns a data frame", {
  expect_equal(class(get_loser_playoff_bracket(688281863499907072)), "data.frame")
})
