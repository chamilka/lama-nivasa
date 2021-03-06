DROP TABLE IF EXISTS `child_db`.`child_guardian` ;
CREATE TABLE child_guardian(
	ID CHAR(32) NOT NULL,
	NAME CHAR(128) NOT NULL,
	GUARDIAN_STATUS CHAR(128),
	ADDRESS CHAR(255),
	TELEPHONE CHAR(32),
	RELATIONSHIP CHAR(32),
	PATH_TO_HOME CHAR(255),
	CHILD_ID CHAR(32) NOT NULL,
	SORT_ORDER INT(4),
	INSERT_USER_ID CHAR(32),
 	UPDATE_USER_ID CHAR(32),
	INSERT_DATETIME DATETIME,
 	UPDATE_DATETIME DATETIME,
 	FOREIGN KEY (CHILD_ID) REFERENCES child(ID) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(ID)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
