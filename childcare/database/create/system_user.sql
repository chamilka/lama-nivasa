DROP TABLE IF EXISTS `child_db`.`system_user` ;

CREATE TABLE system_user(
	ID CHAR(32) NOT NULL,
	USERNAME CHAR(32) NOT NULL UNIQUE,
	USER_PASSWORD CHAR(32) NOT NULL,
	USER_ROLE CHAR(32) NOT NULL,
	NAME CHAR(128) NOT NULL,
	POST CHAR(64),
	EMAIL CHAR(64),
	TELEPHONE CHAR(16),
	MOBILE CHAR(16),
	ADDRESS_TEMPORARY VARCHAR(255),
	ADDRESS VARCHAR(255),
	SEX CHAR(8),
	REFERENCE_ID CHAR(32),
	SORT_ORDER INT(4),
	INSERT_USER_ID CHAR(32),
 	UPDATE_USER_ID CHAR(32),
	INSERT_DATETIME DATETIME,
 	UPDATE_DATETIME DATETIME,
	PRIMARY KEY(ID)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
