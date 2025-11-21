use crypto;

SELECT 
    ticker,
    SUM(volume) AS total_volume
FROM crypto_data
GROUP BY ticker
ORDER BY total_volume DESC
LIMIT 5;

SELECT ticker, COUNT(*) AS total_rows
FROM crypto_data
GROUP BY ticker
ORDER BY total_rows DESC
LIMIT 5;

WITH returns AS (
    SELECT
        ticker,
        ((close - LAG(close) OVER (PARTITION BY ticker ORDER BY date)) /
          LAG(close) OVER (PARTITION BY ticker ORDER BY date)) AS ret
    FROM crypto_data
)

SELECT
    ticker,
    STD(ret) AS volatility
FROM returns
GROUP BY ticker
ORDER BY volatility DESC
LIMIT 5;

WITH day_change AS (
    SELECT
        ticker,
        date,
        close,
        LAG(close) OVER (PARTITION BY ticker ORDER BY date) AS prev_close
    FROM crypto_data
)
SELECT
    ticker,
    date,
    ((close - prev_close) / prev_close) * 100 AS pct_change_24h
FROM day_change
WHERE prev_close IS NOT NULL
ORDER BY pct_change_24h DESC
LIMIT 1;

WITH day_change AS (
    SELECT
        ticker,
        date,
        close,
        LAG(close) OVER (PARTITION BY ticker ORDER BY date) AS prev_close
    FROM crypto_data
)
SELECT
    ticker,
    date,
    ((close - prev_close) / prev_close) * 100 AS pct_change_24h
FROM day_change
WHERE prev_close IS NOT NULL
ORDER BY pct_change_24h DESC
LIMIT 1;

SELECT
    ticker,
    SUM(volume) AS total_volume
FROM crypto_data
GROUP BY ticker
ORDER BY ticker;

WITH daily_returns AS (
    SELECT
        ticker,
        date,
        close,
        (close - LAG(close) OVER (PARTITION BY ticker ORDER BY date)) /
        LAG(close) OVER (PARTITION BY ticker ORDER BY date) AS daily_return
    FROM crypto_data
)
SELECT
    ticker,
    date,
    daily_return,
    STD(daily_return) OVER (
        PARTITION BY ticker
        ORDER BY date
        ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
    ) AS rolling_volatility_30d
FROM daily_returns
WHERE daily_return IS NOT NULL
ORDER BY ticker, date;