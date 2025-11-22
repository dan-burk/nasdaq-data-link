# NASDAQ Data Link Investing Data

This project's goal is to get investing data from the NASDAQ Data Link via their API. It includes scripts in both R and Python to fetch and analyze financial data.

## Overview

The project demonstrates how to connect to the Nasdaq Data Link API and retrieve data for specific tickers. It currently supports fetching ETF data and provides examples for both R and Python.

## Technologies

### R
*   `httr`: For making HTTP requests to the Nasdaq API.
*   `jsonlite`: For parsing JSON data.
*   `dplyr`: For data manipulation.

### Python
*   `nasdaq-data-link`: The official Python package for the Nasdaq Data Link API.
*   `pandas`: For data manipulation.

## Getting Started

### 1. API Key

You will need a Nasdaq Data Link API key. You can get one for free by creating an account on the [Nasdaq Data Link website](https://data.nasdaq.com/).

Once you have your key, set it as an environment variable named `NASDAQ_API_KEY`.

**For R:**
```r
Sys.setenv(NASDAQ_API_KEY = "YOUR_API_KEY")
```

**For Python (in your shell):**
```bash
export NASDAQ_API_KEY="YOUR_API_KEY"
```

### 2. Dependencies

**For R:**
Open an R console and run:
```r
install.packages(c("httr", "jsonlite", "dplyr"))
```

**For Python:**
A `requirements.txt` file is provided. To install the dependencies, run:
```bash
pip install -r requirements.txt
```

## How to Run

### R
The `simple_api.r` script demonstrates a direct API call for SPY data. You can run it from your R console:
```r
source("simple_api.r")
```

### Python
The `nasdaq_data_link.py` script uses the `nasdaq-data-link` package to fetch SPY data. To run it:
```bash
python nasdaq_data_link.py
```
