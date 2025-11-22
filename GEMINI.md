# Project Overview

This project appears to be an R script for fetching and analyzing financial data from the Nasdaq Data Link API. The primary script, `simple_api.r`, demonstrates how to retrieve data for a specific ticker (e.g., SPY) using the `httr` package for making HTTP requests and `jsonlite` for parsing the JSON response.

## Key Technologies

*   **Language:** R
*   **Packages:**
    *   `httr`: For making HTTP requests to the Nasdaq API.
    *   `jsonlite`: For parsing JSON data.
    *   `dplyr`: For data manipulation.

## Building and Running

There are no explicit build steps. To run this project, you will need to have R installed with the required packages.

**1. Install R:**

If you don't have R installed, download it from the [Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/).

**2. Install Packages:**

Open an R console and run the following commands to install the necessary packages:

```r
install.packages("httr")
install.packages("jsonlite")
install.packages("dplyr")
```

**3. Set API Key:**

The script appears to use an API key from Nasdaq. You should set this as an environment variable for security.

In your R session, you can set it like this:

```r
Sys.setenv(NASDAQ_API_KEY = "YOUR_API_KEY")
```

**4. Run the Script:**

You can execute the script from your R console:

```r
source("simple_api.r")
```

## Development Conventions

*   **API Key Management:** The script references `Sys.getenv("NASDAQ_API_KEY")`, which is a good practice for managing sensitive data like API keys. Avoid hardcoding API keys directly in the script.
*   **Dependencies:** The required packages are listed at the top of the script, although not in a formal dependency management file. For more complex projects, consider using a tool like `renv` to manage dependencies.

## Project Updates

### 2025-11-22

The `nasdaq_data_link.r` script was modified to use direct `httr` and `jsonlite` calls for fetching data instead of the `NasdaqDataLink` package. This change was necessary because the `NasdaqDataLink` package was encountering firewall issues (Incapsula blocking requests), while direct `httr` calls were successful. The `nasdaq-data-link` Python package has been successfully set up and tested for retrieving data using the `nasdaq_data_link.py` script. The R executable path used for testing was `C:/Program Files/R/R-4.4.2/bin/x64/R.exe`. The Python executable path used for testing was `G:\My Drive\Investing\NASDAQ\.venv\Scripts\python.exe`.