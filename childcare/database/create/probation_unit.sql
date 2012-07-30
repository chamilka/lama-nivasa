DROP TABLE IF EXISTS `child_db`.`probation_unit` ;

CREATE TABLE probation_unit(
	ID CHAR(32) NOT NULL,
	NAME CHAR(32) NOT NULL,
	EMAIL CHAR(64),
	TELEPHONE CHAR(16),
	FAX CHAR(16),
	ADDRESS VARCHAR(255),
	COMMENT VARCHAR(255),
	SORT_ORDER INT(4),
	INSERT_USER_ID CHAR(32),
 	UPDATE_USER_ID CHAR(32),
	INSERT_DATETIME DATETIME,
 	UPDATE_DATETIME DATETIME,
	PRIMARY KEY(ID)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
