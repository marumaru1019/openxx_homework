DROP SCHEMA IF EXISTS sample;
CREATE SCHEMA sample;
USE sample;

---- drop ----
DROP TABLE IF EXISTS Kigyo;

---- create ----
create table Kigyo(
 kigyo_id         INT NOT NULL PRIMARY KEY,
 kigyo_name           VARCHAR(200) NOT NULL,
 kigyo_url      VARCHAR(200) NOT NULL,
 kigyo_volume       VARCHAR(200) NULL,
 kigyo_location VARCHAR(200) NULL
);