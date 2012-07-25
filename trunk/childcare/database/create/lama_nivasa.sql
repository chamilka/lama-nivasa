DROP TABLE IF EXISTS `child_db`.`lama_nivasa` ;
CREATE TABLE lama_nivasa(
	ID CHAR(32) NOT NULL,
	NAME VARCHAR(255) NOT NULL,
	PROBATION_UNIT_ID CHAR(32) NOT NULL,
	DIVISIONAL_SECRETARIAT_ID CHAR(32) NOT NULL,
	ADDRESS CHAR(255),
	CATEGORY CHAR(32) NOT NULL,
	TELEPHONE CHAR(16),
	FAX CHAR(32),
	EMAIL CHAR(64),
	MIN_AGE INT(3),
	MAX_AGE INT(3),
	NUMBER_OF_CHILDREN INT(3),
	REGISTRATION_STATUS CHAR(16),
	REGISTRATION_NUMBER CHAR(32),
	REGISTRATION_DATE DATETIME,
	FUNDING_METHOD CHAR(64),
	DEPARTMENT_FUNDING CHAR(8),
	NUMBER_OF_OFFICERS INT(3),
	SORT_ORDER INT(4),
	INSERT_USER_ID CHAR(32),
 	UPDATE_USER_ID CHAR(32),
	INSERT_DATETIME DATETIME,
 	UPDATE_DATETIME DATETIME,
 	PRIMARY KEY(ID),
	FOREIGN KEY (PROBATION_UNIT_ID) REFERENCES probation_unit(id) ON DELETE CASCADE ON UPDATE CASCADE,
 	FOREIGN KEY (DIVISIONAL_SECRETARIAT_ID) REFERENCES divisional_secretariat(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
