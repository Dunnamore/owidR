skip_on_cran()
skip_if(!curl::has_internet())
skip_if(httr::http_error("ourworldindata.org"))

test_that("owid search gives object of class matrix and array", {
  search <- owid_search("gdp")
  expect_equal(class(search), c("matrix", "array"))
  expect_equal(class(search[1, 1]), "character")
})
