DROP TABLE IF EXISTS `child_db`.`probationunit_policestation` ;

CREATE TABLE probationunit_policestation(
	PROBATION_UNIT_ID CHAR(32) NOT NULL,
	POLICE_STATION_ID CHAR(32) NOT NULL,
	FOREIGN KEY (PROBATION_UNIT_ID) REFERENCES probation_unit(ID) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (POLICE_STATION_ID) REFERENCES police_station(ID) ON DELETE CASCADE ON UPDATE CASCADE,	
	PRIMARY KEY(PROBATION_UNIT_ID, POLICE_STATION_ID)
)ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;