DROP TABLE IF EXISTS for_message;

CREATE TABLE IF NOT EXISTS for_message (
        id 					BIGINT UNSIGNED AUTO_INCREMENT NOT NULL,
        message			 	VARCHAR(255),
        language	 		CHAR(2),
        author_id	 		BIGINT UNSIGNED,
        life_point	 		BIGINT UNSIGNED NOT NULL,
        read_point	 		BIGINT UNSIGNED NOT NULL,
        creation_date		DATETIME NOT NULL,
        update_date			DATETIME,
        PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
-- used by Client and Server

ALTER TABLE for_message ADD INDEX for_message_author_id_idx (author_id);
ALTER TABLE for_message ADD INDEX for_message_language_idx (language);

GRANT ALL PRIVILEGES ON for_message TO PUBLIC;
/*
INSERT INTO for_message (message, language, author_id, life_point, read_point, creation_date) VALUES ('', 'en', NULL, 100, 0, NOW());

*/