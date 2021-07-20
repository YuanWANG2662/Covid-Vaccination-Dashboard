CREATE VIEW s1078804_covid19_cases_us_latest AS
SELECT * 
FROM s1078804.us_state_2018 LEFT JOIN s1078804.s1078804_covid19_confirmed_cases_us_daily
ON name = state
WHERE date = (SELECT MAX(date) FROM s1078804.s1078804_covid19_confirmed_cases_us_daily);

GRANT ALL PRIVILEGES ON s1078804.s1078804_covid19_cases_us_latest TO s1078806;

