import os
import nasdaqdatalink
import pandas

# Set the API key. The R script uses NASDAQ_API_KEY, so we'll check for that first.
# The nasdaq-data-link package documentation suggests NASDAQ_DATA_LINK_API_KEY.
api_key = os.getenv("NASDAQ_API_KEY")

if api_key:
    nasdaqdatalink.ApiConfig.api_key = api_key
else:
    print("API key not found. Please set the NASDAQ_API_KEY environment variable.")
    exit()

try:
    # Fetch the datatable for ETFG/FUND with the ticker SPY
    # Note: If this returns an empty DataFrame, the 'ETFG/FUND' datatable might not contain GDX data,
    # or GDX might be under a different ticker in this specific datatable.
    # You may need to visit the Nasdaq Data Link website and search for GDX to find the correct datatable code.
    spy_data = nasdaqdatalink.get_table('ETFG/FUND', ticker='SPY')
    print("Successfully retrieved data for SPY:")
    print(spy_data)

except Exception as e:
    print(f"An error occurred: {e}")

