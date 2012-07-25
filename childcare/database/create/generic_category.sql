DROP TABLE IF EXISTS `child_db`.`generic_category` ;

CREATE TABLE generic_category(
	ID CHAR(32) NOT NULL,
	CATEGORY VARCHAR(255) NOT NULL,
	SORT_ORDER INT(4),
	INSERT_USER_ID CHAR(32),
 	UPDATE_USER_ID CHAR(32),
	INSERT_DATETIME DATETIME,
 	UPDATE_DATETIME DATETIME,
	PRIMARY KEY(ID)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;