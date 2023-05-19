test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("When n=2000, the result is finite", {
  expect_lt(log_summed_exps(seq(1, 2000)), Inf)
})
