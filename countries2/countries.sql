CREATE TABLE `cities` (
  `ID` varchar(40) NOT NULL PRIMARY KEY,
  `country_code` varchar(3),
  `city_proper_pop` real,
  `metroarea_pop` real,
  `urbanarea_pop` real
);

CREATE TABLE countries (
  `code` varchar(3) NOT NULL PRIMARY KEY,
  `name` varchar(50),
  `continent` varchar(40),
  `region` varchar(50),
  `surface_area` real,
  `indep_year` int(4),
  `local_name` varchar(70),
  `gov_form` varchar(50),
  `capital` varchar(50),
  `cap_long` real,
  `cap_lat` real
);

CREATE TABLE languages (
  `lang_id` int(3) PRIMARY KEY,
  `code` varchar(3),
  `name` varchar(50),
  `percent` real,
  `official` boolean
);

CREATE TABLE economies (
  `econ_id` int(3),
  `code` varchar(3),
  `year` int(4),
  `income_group` varchar(30),
  `gdp_percapita` real,
  `gross_savings` real,
  `inflation_rate` real,
  `total_investment` real,
  `unemployment_rate` real,
  `exports` real,
  `imports` real
);

CREATE TABLE currencies (
  `curr_id` int(3) PRIMARY KEY,
  `code` varchar(3),
  `basic_unit` varchar(50),
  `curr_code` varchar(3),
  `frac_unit` varchar(50),
  `frac_perbasic` real
);

CREATE TABLE populations (
  `pop_id` int(3) PRIMARY KEY,
  `country_code` varchar(3),
  `year` int(4),
  `fertility_rate` real,
  `life_expectancy` real,
  `size` real
);


CREATE TABLE countries_plus (
  `name                  VARCHAR,
  `continent             VARCHAR,
  `code                  VARCHAR     PRIMARY KEY,
  `surface_area          REAL,
  `geosize_group         VARCHAR
);

CREATE TABLE economies2010 (
  `code                  VARCHAR     PRIMARY KEY,
  `year                  INTEGER,
  `income_group          VARCHAR,
  `gross_savings         REAL
);

CREATE TABLE economies2015 (
  `code                  VARCHAR     PRIMARY KEY,
  `year                  INTEGER,
  `income_group          VARCHAR,
  `gross_savings         REAL
);

-- Copy over data from CSVs
\copy cities FROM 'https://github.com/kim3-sudo/countries2/raw/master/cities.csv' DELIMITER ',' CSV HEADER;
\copy countries FROM 'https://github.com/kim3-sudo/countries2/raw/master/countries.csv' DELIMITER ',' CSV HEADER;
\copy languages FROM 'https://github.com/kim3-sudo/countries2/raw/master/languages.csv' DELIMITER ',' CSV HEADER;
\copy economies FROM 'https://github.com/kim3-sudo/countries2/raw/master/economies.csv' DELIMITER ',' CSV HEADER;
\copy economies2010 FROM 'https://github.com/kim3-sudo/countries2/raw/master/economies2010.csv' DELIMITER ',' CSV HEADER;
\copy economies2015 FROM 'https://github.com/kim3-sudo/countries2/raw/master/economies2015.csv' DELIMITER ',' CSV HEADER;
\copy currencies FROM 'https://github.com/kim3-sudo/countries2/raw/master/currencies.csv' DELIMITER ',' CSV HEADER;
\copy populations FROM 'https://github.com/kim3-sudo/countries2/raw/master/populations.csv' DELIMITER ',' CSV HEADER;
\copy countries_plus FROM 'https://github.com/kim3-sudo/countries2/raw/master/countries_plus.csv' DELIMITER ',' CSV HEADER;

/*
createdb countries
psql countries < data/countries/code/countries.sql
*/
