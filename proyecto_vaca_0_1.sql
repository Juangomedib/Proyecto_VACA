-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema proyecto_vaca_0_1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proyecto_vaca_0_1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proyecto_vaca_0_1` DEFAULT CHARACTER SET utf8mb4 ;
USE `proyecto_vaca_0_1` ;

-- -----------------------------------------------------
-- Table `proyecto_vaca_0_1`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_vaca_0_1`.`departamento` (
  `nombre` VARCHAR(40) NULL DEFAULT NULL,
  `id_departamento` INT(11) NOT NULL,
  `ini_temp_alta` DATE NULL DEFAULT NULL,
  `fin_temp_alta` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_departamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_vaca_0_1`.`empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_vaca_0_1`.`empleados` (
  `id_empleado` INT(11) NOT NULL,
  `id_departamento` INT(11) NULL DEFAULT NULL,
  `dias_vacaciones` INT(11) NULL DEFAULT NULL,
  `fecha_ingreso` DATE NULL DEFAULT NULL,
  `puntos` INT(11) NULL DEFAULT NULL,
  `nombre` VARCHAR(25) NULL DEFAULT NULL,
  `apellido` VARCHAR(25) NULL DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
    FOREIGN KEY (`id_departamento`)
    REFERENCES `proyecto_vaca_0_1`.`departamento` (`id_departamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `proyecto_vaca_0_1`.`vacaciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proyecto_vaca_0_1`.`vacaciones` (
  `id_vacacion` INT(11) NOT NULL,
  `id_empleado` INT(11) NULL DEFAULT NULL,
  `fecha_ini` DATE NULL DEFAULT NULL,
  `fecha_fin` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_vacacion`),
    FOREIGN KEY (`id_empleado`)
    REFERENCES `proyecto_vaca_0_1`.`empleados` (`id_empleado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
