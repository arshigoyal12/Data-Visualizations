# Create a dataset with 20 rows and 7 columns
data <- data.frame(
  Ticker = c("AAPL", "AMZN", "GOOGL", "JPM", "WMT", "BAC", "PG", "NFLX", "CVS", "PFE", "GE", "MSFT", "VZ", "KO", "T", "CSCO", "TSLA", "UNH", "JNJ", "XOM"),
  Company_Name = c("Apple Inc.", "Amazon.com, Inc.", "Alphabet Inc.", "JPMorgan Chase & Co.", "Walmart Inc.", "Bank of America Corp.", "Procter & Gamble Co.", "Netflix Inc.", "CVS Health Corp.", "Pfizer Inc.", "General Electric Co.", "Microsoft Corp.", "Verizon Communications Inc.", "The Coca-Cola Co.", "AT&T Inc.", "Cisco Systems Inc.", "Tesla Inc.", "UnitedHealth Group Inc.", "Johnson & Johnson", "Exxon Mobil Corp."),
  Industry = c("Technology", "Consumer Discretionary", "Technology", "Financials", "Consumer Staples", "Financials", "Consumer Staples", "Communication Services", "Health Care", "Health Care", "Industrials", "Technology", "Communication Services", "Consumer Staples", "Communication Services", "Technology", "Consumer Discretionary", "Health Care", "Health Care", "Energy"),
  Market_Cap = c(2141.88, 1618.75, 1313.32, 475.61, 392.38, 324.62, 328.98, 238.70, 98.53, 220.38, 128.28, 1946.43, 237.13, 239.33, 212.90, 253.36, 812.63, 408.15, 446.23, 251.92),
  P_E_Ratio = c(29.24, 89.73, 35.87, 13.29, 21.80, 14.00, 24.18, 71.30, 9.87, 22.57, 0.00, 40.83, 11.56, 26.16, 8.56, 22.55, 682.28, 18.08, 24.63, 46.69),
  Dividend_Yield = c(0.60, 0.00, 0.00, 2.45, 1.54, 1.73, 2.40, 0.00, 2.72, 3.55, 0.30, 0.84, 4.63, 2.94, 8.16, 2.53, 0.00, 1.39, 2.54, 5.14),
  Beta = c(1.28, 1.18, 1.07, 1.38, 0.21, 1.55, 0.52, 0.90, 0.91, 0.65, 1.23, 0.78, 0.43, 0.41, 0.66, 1.17, 1.05, 0.79, 0.69, 1.05)
)
  
write.csv(data, "stock_market_data.csv", row.names = FALSE)
data