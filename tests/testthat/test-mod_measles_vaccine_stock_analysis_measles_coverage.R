test_that("Data from database has constant column names", {
  shiny::testServer(mod_measles_vaccine_stock_analysis_measles_coverage_server,
             args = list(picker_year_var = reactive("2022"),
                         picker_month_var = reactive(months_vector_util()),
                         picker_state_var = reactive(national_util()),
                         picker_lga_var = reactive("State level data")), {

                           expect_equal(chart_data() %>% names(),
                                        # dplyr::tbl(connection, "measles_stock_analysis")%>%head(1) %>% collect() %>% names(),
                                        c( "Months","Year", "State", "LGA","doses_given", "Doses Wastage Rate",
                                           "Doses Available (Opening Balance+Received)", "Vaccine - Doses Opened (used)"))

                         })

})
