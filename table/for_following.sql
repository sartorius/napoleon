DROP TABLE IF EXISTS for_following;

-- This table is used to saved the follower author bind reference
CREATE TABLE IF NOT EXISTS for_following (
		id					BIGINT UNSIGNED AUTO_INCREMENT NOT NULL,
        author_id	 		BIGINT UNSIGNED NOT NULL,
        follower_id			BIGINT UNSIGNED NOT NULL,
        following_rate		BIGINT UNSIGNED DEFAULT 0,
        PRIMARY KEY (id)
)ENGINE=InnoDB;
-- used by Client and Server


ALTER TABLE for_following ADD INDEX for_following_author_idx (author_id);
ALTER TABLE for_following ADD INDEX for_following_follower_idx (follower_id);

GRANT ALL PRIVILEGES ON for_following TO PUBLIC;
/*


*/