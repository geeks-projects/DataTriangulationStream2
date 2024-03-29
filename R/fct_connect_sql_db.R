
dw <- config::get(file = "./inst/app/www/config.yml", "development_stream2")

connection <- pool::dbPool(
  drv = RMariaDB::MariaDB(),
  host     = dw$host,
  username = dw$user,
  password = dw$password,
  port     = dw$port,
  dbname   = dw$database,
  minSize = 3,
  maxSize = Inf,    # this could have been omitted since it's the default
  idleTimeout = 3600000  # 1 hour)
)



shiny::onStop(function() {
  pool::poolClose(connection)
})






