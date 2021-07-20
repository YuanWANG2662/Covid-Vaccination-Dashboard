CREATE VIEW s1078804_covid19_cases_us_last7days AS
SELECT *
FROM us_state_2018 AS a LEFT JOIN 
	(SELECT MAX(date)as date_latest,state,
	 		SUM(cases) AS cases_last7days,
	 		SUM(deaths) AS deaths_last7days	 
	 FROM s1078804.s1078804_covid19_confirmed_cases_us_daily
	 WHERE date <= (SELECT MAX(date) from s1078804.s1078804_covid19_confirmed_cases_us_daily)
	 AND date > (SELECT (MAX(date)-7) from s1078804.s1078804_covid19_confirmed_cases_us_daily)
	 GROUP BY state) AS b
ON a.name = b.state;

GRANT ALL PRIVILEGES ON s1078804.s1078804_covid19_cases_us_last7days TO s1078806;