
# Install and load the package if not already installed
# install.packages("Quandl")
# install.packages("NasdaqDataLink")

library(dplyr)
Sys.getenv("NASDAQ_API_KEY")
res <- httr::GET(
    url = paste0("https://data.nasdaq.com/api/v3/datatables/ETFG/FUND.json?ticker=SPY&api_key=", Sys.getenv("NASDAQ_API_KEY"))
)
json_data <- httr::content(res, as = "text", encoding = "UTF-8")
data <- jsonlite::fromJSON(json_data)
data %>% names()
x <- data$datatable$data
x
