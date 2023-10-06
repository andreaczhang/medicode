test_that("One existing code returns correctly", {
  expect_equal(
    find_code(code = 'A000'),
    # expected output
    data.table(Code = 'A000',
               description_en = 'Cholera due to Vibrio cholerae 01, biovar cholerae')
  )
})


test_that("One non-existing code returns correctly", {
  # when there is an error message, use expect error
  expect_error(
    find_code(code = 'A002'),
    # expected output
    "Code is unavailable."
  )
})
