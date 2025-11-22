# This script demonstrates how to fetch financial data from the Nasdaq Data Link API
# using the httr and jsonlite packages.

# Load required packages
library(httr)
library(jsonlite)
library(dplyr)

# Get API key from environment variable
api_key <- Sys.getenv("NASDAQ_API_KEY")

# Check if API key is set
if (api_key == "") {
    stop("NASDAQ_API_KEY environment variable not set. Please set it to your Nasdaq API key.")
}

# Construct the API URL
ticker <- "SPY"
api_url <- paste0(
    "https://data.nasdaq.com/api/v3/datatables/ETFG/FUND.json?ticker=",
    ticker,
    "&api_key=",
    api_key
)

# Fetch data from the API
cat("Fetching data for", ticker, "ticker...\n")
res <- httr::GET(url = api_url)

# Check if the request was successful
if (httr::status_code(res) == 200) {
    # Parse the JSON response
    json_data <- httr::content(res, as = "text", encoding = "UTF-8")
    data <- jsonlite::fromJSON(json_data)

    # Extract the data table
    spy_data <- data$datatable$data

    # Display the fetched data
    cat("Data fetched successfully:\n")
    print(spy_data)

    # The 'spy_data' object is a data frame that you can now use for analysis.
    # For example, to see the column names:
    cat("\nColumn names:\n")
    print(names(spy_data))
} else {
    # Print an error message if the request failed
    cat("Error fetching data. Status code:", httr::status_code(res), "\n")
    #cat("Response content:\n")
    #print(httr::content(res, as = "text", encoding = "UTF-8"))
}
