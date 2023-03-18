SET DATESTYLE = "European, European";

DROP TABLE IF EXISTS SPOTS;
CREATE TABLE SPOTS (
    name        VARCHAR(64) NOT NULL,
    type        VARCHAR(64) NOT NULL,
    sector      VARCHAR(64),
    updated_at  DATE NOT NULL DEFAULT CURRENT_DATE,
    PRIMARY KEY (name, type, updated_at)
);

DROP TABLE IF EXISTS RESERVATIONS CASCADE;
CREATE TABLE RESERVATIONS (
    id          INTEGER     PRIMARY KEY,
    spot_type   VARCHAR(64) NOT NULL,
    spot_name   VARCHAR(64) NOT NULL,
    status      INTEGER     NOT NULL,
    deleted     BOOLEAN,
    first_name  VARCHAR(64) NOT NULL,
    last_name   VARCHAR(64) NOT NULL,
    email       VARCHAR(128) NOT NULL,
    start_date  DATE        NOT NULL,
    end_date    DATE        NOT NULL
);

DROP TABLE IF EXISTS SPOTS_RESERVATIONS;
CREATE TABLE SPOTS_RESERVATIONS (
    res_id              INTEGER REFERENCES RESERVATIONS(id),
    spots_name          VARCHAR(64) NOT NULL,
    spots_type          VARCHAR(64) NOT NULL,
    spots_updated_at    DATE NOT NULL,
    CONSTRAINT res_spots_pkey PRIMARY KEY (res_id, spots_name, spots_type, spots_updated_at)
);

INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('sole', 'cabina', '1',           '10/10/2021');
INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('sole', 'ombrellone', 'gamma',   '16/10/2021');
INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('sole', 'cabina', '3',           '14/10/2021');
INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('sole', 'ombrellone', 'delta',   '24/10/2021');
INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('luna', 'cabina', '5',           '25/10/2021');
INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('luna', 'ombrellone', 'beta',    '16/10/2021');
INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('luna', 'gazebo', '4',           '15/10/2021');
INSERT INTO SPOTS (name, type, sector, updated_at) VALUES ('luna', 'gazebo', 'alpha',       '10/11/2021');
