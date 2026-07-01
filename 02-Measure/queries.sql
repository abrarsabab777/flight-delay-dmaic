- ============================================================
-- Flight Delay DMAIC Project — SQL Queries
-- Dataset: BTS On-Time Performance 2023 | 6,847,899 flights
-- Database: flight_delays.db
-- ============================================================

-- Query 1: Baseline On-Time Rate
-- Result: total_flights=6,759,956 | on_time_flights=5,403,726 | on_time_rate_pct=79.94%
-- DPMO: 200,600 | Sigma Level: ~2.3
SELECT 
    COUNT(*) AS total_flights,
    SUM(CASE WHEN ARR_DELAY <= 15 THEN 1 ELSE 0 END) AS on_time_flights,
    ROUND(100.0 * SUM(CASE WHEN ARR_DELAY <= 15 THEN 1 ELSE 0 END) / COUNT(*), 2) AS on_time_rate_pct
FROM flights
WHERE CANCELLED = 0;

-- Query 2: Avg Delay by Cause (delayed flights only, ARR_DELAY > 15)
-- Result: carrier=25.84 | weather=3.73 | nas=12.72 | security=0.15 | late_aircraft=28.47
SELECT
    ROUND(AVG(CARRIER_DELAY), 2) AS avg_carrier_delay,
    ROUND(AVG(WEATHER_DELAY), 2) AS avg_weather_delay,
    ROUND(AVG(NAS_DELAY), 2) AS avg_nas_delay,
    ROUND(AVG(SECURITY_DELAY), 2) AS avg_security_delay,
    ROUND(AVG(LATE_AIRCRAFT_DELAY), 2) AS avg_late_aircraft_delay
FROM flights
WHERE CANCELLED = 0 AND ARR_DELAY > 15;

-- Query 3: Airline On-Time Rate Ranking (worst to best)
-- Result: B6=69.2% | F9=69.24% | NK=71.52% | G4=74.68% | HA=77.24% | AA=77.44%
--         WN=78.91% | UA=79.84% | AS=81.01% | MQ=82.35% | OH=83.78% | DL=84.01%
--         OO=84.05% | 9E=86.34% | YX=87.2%
SELECT
    OP_UNIQUE_CARRIER,
    COUNT(*) AS total_flights,
    ROUND(100.0 * SUM(CASE WHEN ARR_DELAY <= 15 THEN 1 ELSE 0 END) / COUNT(*), 2) AS on_time_rate_pct
FROM flights
WHERE CANCELLED = 0
GROUP BY OP_UNIQUE_CARRIER
ORDER BY on_time_rate_pct ASC;

-- Query 4: Monthly On-Time Rate Trend
-- Result: Jan=78.39 | Feb=81.63 | Mar=76.84 | Apr=77.65 | May=82.37 | Jun=73.43
--         Jul=71.93 | Aug=78.79 | Sep=81.76 | Oct=84.93 | Nov=86.94 | Dec=84.75
SELECT
    MONTH,
    COUNT(*) AS total_flights,
    ROUND(100.0 * SUM(CASE WHEN ARR_DELAY <= 15 THEN 1 ELSE 0 END) / COUNT(*), 2) AS on_time_rate_pct
FROM flights
WHERE CANCELLED = 0
GROUP BY MONTH
ORDER BY MONTH ASC;

-- Query 5: Worst Airports by On-Time Rate (min 10,000 flights, top 20)
-- Result: FLL=69.37% | MCO=71.97% | SJU=73.2% | MIA=73.32% | LAS=73.9%
--         DEN=74.96% | BWI=75.18% | MDW=75.93% | PBI=76.23% | DFW=76.51%
--         JFK=77.2% | EWR=77.57% | CLT=77.79% | BOS=77.81% | IAH=77.86%
--         ORD=78.5% | AVL=78.95% | HPN=79.59% | PHL=79.65% | BDL=79.69%
SELECT
    ORIGIN,
    COUNT(*) AS total_flights,
    ROUND(100.0 * SUM(CASE WHEN ARR_DELAY <= 15 THEN 1 ELSE 0 END) / COUNT(*), 2) AS on_time_rate_pct
FROM flights
WHERE CANCELLED = 0
GROUP BY ORIGIN
HAVING COUNT(*) > 10000
ORDER BY on_time_rate_pct ASC
LIMIT 20;