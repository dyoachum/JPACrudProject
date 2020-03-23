-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Dogdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Dogdb` ;

-- -----------------------------------------------------
-- Schema Dogdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Dogdb` DEFAULT CHARACTER SET utf8 ;
USE `Dogdb` ;

-- -----------------------------------------------------
-- Table `dog`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dog` ;

CREATE TABLE IF NOT EXISTS `dog` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `breed` VARCHAR(45) NOT NULL,
  `size` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS doguser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'doguser'@'localhost' IDENTIFIED BY 'doguser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'doguser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `dog`
-- -----------------------------------------------------
START TRANSACTION;
USE `Dogdb`;
INSERT INTO `dog` (`id`, `breed`, `size`, `description`) VALUES (1, 'pug', 'small', 'A short stumpy lump of a dog they will always act like it is never been fed but was definitely fed.  Known to eat entire bags of M&M’s .');
INSERT INTO `dog` (`id`, `breed`, `size`, `description`) VALUES (2, 'german_shepherd', 'large', 'Large loyal dog that will guard your home from sunup to sundown .  Will also shed its weight in fur every day.');
INSERT INTO `dog` (`id`, `breed`, `size`, `description`) VALUES (3, 'chihauhua', 'toy', 'Very small yappy dog that thinks it is 10 times its size and also scared of its own shadow.  Shakes uncontrollably even when it\'s not cold, Understands what its owner is saying ,still refuses to listen . ');
INSERT INTO `dog` (`id`, `breed`, `size`, `description`) VALUES (4, 'rottwiler', 'large', 'Giant teddy bear of a dog that looks way more intimidating then it actually is. So loyal to its owner that they have been known to drown trying to retrieve a toy in dangerous water ');
INSERT INTO `dog` (`id`, `breed`, `size`, `description`) VALUES (5, 'great_dane', 'XL', 'Giant goofy dog capable of eating off of countertops list all four feet on the ground . Used to be used to supposedly word off evil spirits from homes .');
INSERT INTO `dog` (`id`, `breed`, `size`, `description`) VALUES (6, 'labrador', 'medium', 'Loyal dog that loves to run jump and swim in any body of water. Great for bringing you beers from the fridge.');
INSERT INTO `dog` (`id`, `breed`, `size`, `description`) VALUES (7, 'beagle', 'small', 'Smaller hound dog that has a bark that sounds more like its getting hit by a car than barking.');

COMMIT;

