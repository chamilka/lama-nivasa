SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema child_db
-- -----------------------------------------------------

USE `child_db` ;

DROP TABLE IF EXISTS `child_transfer`;
-- -----------------------------------------------------
-- Table `child_db`.`child_transfer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `child_db`.`child_transfer` (
  `ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL DEFAULT '',
  `CHILD_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `FROM_LAMA_NIVASA_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL,
  `TO_LAMA_NIVASA_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `TRANSFER_DATE` DATETIME NULL DEFAULT NULL,
  `REASON` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `COMMENT` TEXT CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `STATUS` int(1) DEFAULT '0',
  `SORT_ORDER` INT(4) NULL DEFAULT NULL,
  `INSERT_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `UPDATE_USER_ID` CHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL,
  `INSERT_DATETIME` DATETIME NULL DEFAULT NULL,
  `UPDATE_DATETIME` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  INDEX `child_guardian_ibfk_10_idx` (`CHILD_ID` ASC),
  INDEX `fk_child_transfer_lama_nivasa1_idx` (`TO_LAMA_NIVASA_ID` ASC),
  INDEX `fk_child_transfer_lama_nivasa2_idx` (`FROM_LAMA_NIVASA_ID` ASC),
  CONSTRAINT `child_guardian_ibfk_10`
    FOREIGN KEY (`CHILD_ID`)
    REFERENCES `child_db`.`child` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_child_transfer_lama_nivasa1`
    FOREIGN KEY (`TO_LAMA_NIVASA_ID`)
    REFERENCES `child_db`.`lama_nivasa` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_child_transfer_lama_nivasa2`
    FOREIGN KEY (`FROM_LAMA_NIVASA_ID`)
    REFERENCES `child_db`.`lama_nivasa` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
