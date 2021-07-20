CREATE TABLE s1078804.s1078804_covid19_vaccination_us_daily
(
    id SERIAL,
	date date,
    location character varying(50),
	PRIMARY KEY (date,location),
    total_vaccinations bigint,
    total_distributed bigint,
    people_vaccinated bigint,
    people_fully_vaccinated_per_hundred float,
	total_vaccinations_per_hundred float,
	people_fully_vaccinated bigint,
	people_vaccinated_per_hundred float,
	distributed_per_hundred float,
	daily_vaccinations_raw integer,
	daily_vaccinations integer,
	daily_vaccinations_per_million integer,
    share_doses_used float
);

ALTER TABLE s1078804.s1078804_covid19_vaccination_us_daily OWNER to s1078804;

CREATE INDEX s1078804_covid19_vaccination_us_daily_idx ON s1078804.s1078804_covid19_vaccination_us_daily (location);

GRANT ALL PRIVILEGES ON s1078804.s1078804_covid19_vaccination_us_daily TO s1078806;