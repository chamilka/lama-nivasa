DROP TABLE IF EXISTS `child_db`.`monthly_data`;
create table monthly_data(
	ID CHAR(32)NOT NULL,
	YEAR INT,
	MONTH CHAR(32),
	LAMA_NIVASA_ID CHAR(32) NOT NULL,
	NUM_OF_MALE_CHILDREN INT,
	NUM_OF_FEMALE_CHILDREN INT,
	NUM_OF_OFFICERS INT,
	NUM_OF_VACANT_OFFICERS INT,
	NUM_OF_FEMALE_REUNIFICATION INT,
	NUM_OF_MALE_REUNIFICATION INT,
	NUM_OF_FEMALE_TRANSFERS INT,
	NUM_OF_MALE_TRANSFERS INT,
	NUM_OF_PROFORMA_FEMALE INT,
	NUM_OF_PROFORMA_MALE INT,
	NUM_OF_FEMALE_NO_GUARDIANS INT,
	NUM_OF_MALE_NO_GUARDIANS INT,
	NUM_OF_FEMALE_TERMINATES INT,
	NUM_OF_MALE_TERMINATES INT,
	NUM_OF_FEMALE_HAVING_SPECIAL_REQUIREMENTS INT,
	MUN_OF_MALE_HAVING_SPECIAL_REQUIREMENTS INT,
	NUM_OF_MEETINGS_UPTO_NOW INT,
	NUM_OF_INTAKES INT,
	INTAKE_FROM_COURT INT,
	INTAKE_FROM_DEPARTMENT INT,
	INTAKE_FROM_PARENTS INT,
	INTAKE_FROM_ORGANIZATIONS INT,
	INTAKE_FROM_OTHER INT,
	NUM_TO_ADOPTION INT,
	NUM_TO_PARENT INT,
	NUM_TO_MARRAGE INT,
	NUM_TO_EMPLOYEMENT INT,
	NUM_TO_VOCATIONAL INT,
	NUM_TO_SELF_EMPLOYEMENT INT,
	NUM_TO_OTHER INT,
	PROBATION_OFFICER_VISITED_DATE DATETIME,
	COUNSELLOR_VISITED_DATE DATETIME,
	DEPARTMENT_COMMISSIONER_VISITED_DATE DATETIME,
	DEPARTMENT_PROBATION_OFFICER_VISITED_DATE DATETIME,
	DEPARTMENT_OF_CHILD_DEVELOPMENT_OFFICER_VISITED_DATE DATETIME,
	THE_LAST_MEETING_HELD_ON DATETIME,
	PLACEMENT_COMMITTEE DATETIME,
	SORT_ORDER INT(4),
	INSERT_USER_ID CHAR(32),
 	UPDATE_USER_ID CHAR(32),
	INSERT_DATETIME DATETIME,
 	UPDATE_DATETIME DATETIME,
	PRIMARY KEY(ID),
	FOREIGN KEY (LAMA_NIVASA_ID) REFERENCES lama_nivasa(id) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;