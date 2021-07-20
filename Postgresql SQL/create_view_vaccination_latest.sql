CREATE VIEW s1078804_covid19_vaccination_us_latest AS
SELECT * 
FROM s1078804.us_state_2018 LEFT JOIN s1078804.s1078804_covid19_vaccination_us_daily
ON name = location
WHERE date = (SELECT MAX(date) FROM s1078804.s1078804_covid19_vaccination_us_daily);

GRANT ALL PRIVILEGES ON s1078804.s1078804_covid19_vaccination_us_latest TO s1078806;