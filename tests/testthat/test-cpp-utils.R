context("util.cpp unit tests")

# Test c++ function add_constant -----------------------------------------------
test_that("add_constant", {
  v1 <- c(1, 2, 3)
  v2 <- c(1.2, 4, 5.6)
  expect_equal(hesim:::C_test_add_constant_int(v1, 5.5),
               floor(v1 + 5.5))
  expect_equal(hesim:::C_test_add_constant_double(v2, 5.5),
               v2 + 5.5)
})

# Test c++ function pv ---------------------------------------------------------
test_that("pv", {
  expect_equal(hesim:::C_test_pv(1, 0, 0, 4),
               4)
  expect_equal(hesim:::C_test_pv(2, .03, 1, 4),
               2 * ((exp(-.03 * 1) - exp(-.03 * 4))/.03))
})