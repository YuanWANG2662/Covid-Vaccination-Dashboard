CREATE TABLE s1078804.s1078804_covid19_confirmed_cases_us_daily
(
id SERIAL,
date date,
state character varying(50),
PRIMARY KEY (date,state),
fips integer,
cases integer,
deaths integer
);

ALTER TABLE s1078804.s1078804_covid19_confirmed_cases_us_daily OWNER to s1078804;

CREATE INDEX s1078804_covid19_confirmed_cases_us_daily_idx ON s1078804.s1078804_covid19_confirmed_cases_us_daily (state);

GRANT ALL PRIVILEGES ON s1078804.s1078804_covid19_confirmed_cases_us_daily TO s1078806;