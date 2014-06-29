DROP TABLE IF EXISTS ref_parameter;

CREATE TABLE IF NOT EXISTS ref_parameter (
        par_code 			CHAR(5),
        par_str	 			VARCHAR(16),
        par_int		 		INT UNSIGNED DEFAULT 0,
        creation_date		DATETIME,
        CONSTRAINT par_code_uq UNIQUE (par_code),
        PRIMARY KEY (par_code)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- used by Client and Server

GRANT ALL PRIVILEGES ON ref_parameter TO PUBLIC;

/*
INSERT INTO ref_parameter VALUES ('NBMSG', NULL, 20, NOW());


*/