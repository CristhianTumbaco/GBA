-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.5.4-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para articulados
CREATE DATABASE IF NOT EXISTS `articulados` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `articulados`;

-- Volcando estructura para tabla articulados.bitacora
CREATE TABLE IF NOT EXISTS `bitacora` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `id_asignacion` int(10) DEFAULT NULL,
  `dia` varchar(50) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `id_bus` int(10) DEFAULT NULL,
  `id_conductor` int(10) DEFAULT NULL,
  `razon` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.buses
CREATE TABLE IF NOT EXISTS `buses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `atm` varchar(50) DEFAULT NULL,
  `itor` varchar(50) DEFAULT NULL,
  `original` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `estado` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.bus_conductor1
CREATE TABLE IF NOT EXISTS `bus_conductor1` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `anio` year(4) DEFAULT NULL,
  `mes` varchar(50) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `horario` varchar(50) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL,
  `id_bus` int(10) DEFAULT NULL,
  `hora_ini` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `hora_ini1` time DEFAULT NULL,
  `hora_fin1` time DEFAULT NULL,
  `hora_ini2` time DEFAULT NULL,
  `hora_fin2` time DEFAULT NULL,
  `lun1` varchar(50) DEFAULT NULL,
  `mar1` varchar(50) DEFAULT NULL,
  `mie1` varchar(50) DEFAULT NULL,
  `jue1` varchar(50) DEFAULT NULL,
  `vie1` varchar(50) DEFAULT NULL,
  `sab1` varchar(50) DEFAULT NULL,
  `dom1` varchar(50) DEFAULT NULL,
  `lun2` varchar(50) DEFAULT NULL,
  `mar2` varchar(50) DEFAULT NULL,
  `mie2` varchar(50) DEFAULT NULL,
  `jue2` varchar(50) DEFAULT NULL,
  `vie2` varchar(50) DEFAULT NULL,
  `sab2` varchar(50) DEFAULT NULL,
  `dom2` varchar(50) DEFAULT NULL,
  `lun3` varchar(50) DEFAULT NULL,
  `mar3` varchar(50) DEFAULT NULL,
  `mie3` varchar(50) DEFAULT NULL,
  `jue3` varchar(50) DEFAULT NULL,
  `vie3` varchar(50) DEFAULT NULL,
  `sab3` varchar(50) DEFAULT NULL,
  `dom3` varchar(50) DEFAULT NULL,
  `lun4` varchar(50) DEFAULT NULL,
  `mar4` varchar(50) DEFAULT NULL,
  `mie4` varchar(50) DEFAULT NULL,
  `jue4` varchar(50) DEFAULT NULL,
  `vie4` varchar(50) DEFAULT NULL,
  `sab4` varchar(50) DEFAULT NULL,
  `dom4` varchar(50) DEFAULT NULL,
  `lun5` varchar(50) DEFAULT NULL,
  `mar5` varchar(50) DEFAULT NULL,
  `mie5` varchar(50) DEFAULT NULL,
  `jue5` varchar(50) DEFAULT NULL,
  `vie5` varchar(50) DEFAULT NULL,
  `sab5` varchar(50) DEFAULT NULL,
  `dom5` varchar(50) DEFAULT NULL,
  `dato` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.conductores
CREATE TABLE IF NOT EXISTS `conductores` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cod_conductor` varchar(50) DEFAULT NULL,
  `tipo` int(1) DEFAULT 0,
  `id_conductor` int(1) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.cuentas
CREATE TABLE IF NOT EXISTS `cuentas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(15) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `acceso` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cod_snitch` varchar(15) DEFAULT NULL,
  `cedula` varchar(15) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.horario
CREATE TABLE IF NOT EXISTS `horario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_bus` varchar(50) DEFAULT NULL,
  `horario_ini` time DEFAULT NULL,
  `horario_fin` time DEFAULT NULL,
  `intervalo` time DEFAULT NULL,
  `tipo_dia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1430 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.horario_log
CREATE TABLE IF NOT EXISTS `horario_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `id_bus` varchar(50) DEFAULT NULL,
  `horario_ini` time DEFAULT NULL,
  `horario_fin` time DEFAULT NULL,
  `intervalo` time DEFAULT NULL,
  `tipo_dia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.log_diario
CREATE TABLE IF NOT EXISTS `log_diario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_asignacion` int(10) NOT NULL DEFAULT 0,
  `dia` varchar(50) DEFAULT NULL,
  `uniforme` int(1) DEFAULT NULL,
  `credencial` int(1) DEFAULT NULL,
  `licencia` int(1) DEFAULT NULL,
  `alcohol` int(1) DEFAULT NULL,
  `drogas` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.marcas
CREATE TABLE IF NOT EXISTS `marcas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.parametros
CREATE TABLE IF NOT EXISTS `parametros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parametro1` varchar(100) DEFAULT NULL,
  `parametro2` varchar(100) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `tipo2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla articulados.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(15) DEFAULT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
