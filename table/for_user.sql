DROP TABLE IF EXISTS for_user;

CREATE TABLE IF NOT EXISTS for_user (
        id 					BIGINT UNSIGNED AUTO_INCREMENT NOT NULL,
        for_login	 		VARCHAR(255),
        for_email	 		VARCHAR(255),
        base_login	 		VARCHAR(255),
        language	 		CHAR(2),
        influence			BIGINT UNSIGNED DEFAULT 7,
        creation_date		DATETIME NOT NULL,
        update_date			DATETIME,
        CONSTRAINT for_login_uq UNIQUE (for_login),
        PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- used by Client and Server

GRANT ALL PRIVILEGES ON for_user TO PUBLIC;

/*
INSERT INTO for_user (for_login, for_email, base_login, language, influence, creation_date)
	VALUES ('blu', 'ratinahirana@gmail.com', 'blu', 'en', 7, NOW());
INSERT INTO for_user (for_login, for_email, base_login, language, influence, creation_date)
	VALUES ('regis', 'regis.bile@gmail.com', 'blu', 'en', 7, NOW());
*/