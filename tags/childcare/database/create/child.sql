DROP TABLE IF EXISTS `child_db`.`child` ;
CREATE TABLE child(
	ID CHAR(32) NOT NULL,
	LAMA_NIVASA_ID CHAR(32) NOT NULL,
	DATE_OF_REGISTRATION DATETIME,
	CODE CHAR(32),
	FULL_NAME VARCHAR(255) NOT NULL,
	DATE_OF_BIRTH DATETIME,
	SEX_TYPE CHAR(32) NOT NULL,
	RACE CHAR(32),
	RELIGION CHAR(32),
	DISABLE CHAR(8),
	TYPE_OF_DISABILITY CHAR(128),
	SCHOOL CHAR(255),
	GRADE CHAR(32),
	CATEGORY CHAR(16),
	BIRTH_CERTIFICATE CHAR(16),
	PROFORMA CHAR(16),
	VACCINATION_CARD CHAR(16),
	PARENTS_AVAILABILITY CHAR(16),
	INTAKE_METHOD CHAR(255),
	HISTORY TEXT,
	COMMENT TEXT,
	SORT_ORDER INT(4),
	INSERT_USER_ID CHAR(32),
 	UPDATE_USER_ID CHAR(32),
	INSERT_DATETIME DATETIME,
 	UPDATE_DATETIME DATETIME,
 	FOREIGN KEY (LAMA_NIVASA_ID) REFERENCES lama_nivasa(ID) ON UPDATE CASCADE ON DELETE RESTRICT,
	PRIMARY KEY(ID)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;