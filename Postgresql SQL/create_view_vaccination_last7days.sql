CREATE VIEW s1078804_covid19_vaccination_us_last7days AS
SELECT *
FROM us_state_2018 AS a LEFT JOIN 
	(SELECT MAX(date)as date_latest,location,
	 		SUM(total_vaccinations) AS total_vaccinations_last7days,
	 		SUM(total_distributed) AS total_distributed_last7days,
	 		SUM(people_vaccinated) AS people_vaccinated_last7days,
	 		SUM(people_fully_vaccinated_per_hundred) AS people_fully_vaccinated_per_hundred_last7days,
	 		SUM(total_vaccinations_per_hundred) AS total_vaccinations_per_hundred_last7days,
	 		SUM(people_fully_vaccinated) AS people_fully_vaccinated_last7days,
	 		SUM(people_vaccinated_per_hundred) AS people_vaccinated_per_hundred_last7days,
	 		SUM(distributed_per_hundred) AS distributed_per_hundred_last7days,
	 		SUM(daily_vaccinations_raw) AS daily_vaccinations_raw_last7days,
	 		SUM(daily_vaccinations) AS daily_vaccinations_last7days,
	 		SUM(daily_vaccinations_per_million) AS daily_vaccinations_per_million_last7days,
	 		SUM(share_doses_used) AS share_doses_used_last7days	 
	 FROM s1078804.s1078804_covid19_vaccination_us_daily
	 WHERE date <= (SELECT MAX(date) from s1078804.s1078804_covid19_vaccination_us_daily)
	 AND date > (SELECT (MAX(date)-7) from s1078804.s1078804_covid19_vaccination_us_daily)
	 GROUP BY location) AS b
ON a.name = b.location;

GRANT ALL PRIVILEGES ON s1078804.s1078804_covid19_vaccination_us_last7days TO s1078806;