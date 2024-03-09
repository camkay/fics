# test output
test_that("fics returns the correct items", {
  expect_equal(fics("Canada")[1],
               "1. The real truth about Canada is being kept from the public.")
  expect_equal(fics("Canada")[17],
               "17. An impartial, independent investigation of Canada would show once and for all that we've been lied to on a massive scale.")
})

# test argument checks
test_that("fics return the correct warnings/errors", {
  expect_error(fics(), "a topic for the conspiracy theories should be provided")
  expect_error(fics(c("canada", "britain")), "topic should be of length 1")
  expect_error(fics(TRUE), "topic should be of type character")
})


