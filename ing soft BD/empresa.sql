-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-11-2017 a las 19:32:17
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_campana`
--

CREATE TABLE IF NOT EXISTS `cat_campana` (
  `Id_Campana` int(8) NOT NULL,
  `Campana` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_campana`
--

INSERT INTO `cat_campana` (`Id_Campana`, `Campana`) VALUES
(101, 'Infinitum'),
(102, 'Lomas'),
(103, '050'),
(104, 'MCC'),
(105, 'Chat'),
(201, 'Masivo'),
(202, 'Padrino'),
(203, 'Welcome'),
(204, 'Pospago'),
(301, 'Amigo'),
(302, 'Alo'),
(401, 'Man'),
(402, 'VW'),
(501, 'Invex'),
(502, 'InvexPI'),
(601, 'Nominas'),
(701, 'AyV'),
(801, 'Enfermeria'),
(901, 'Desarrollo'),
(902, 'BD'),
(903, 'Telco'),
(904, 'Soporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_departamento`
--

CREATE TABLE IF NOT EXISTS `cat_departamento` (
  `Id_Departamento` int(8) NOT NULL,
  `Departamento` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_departamento`
--

INSERT INTO `cat_departamento` (`Id_Departamento`, `Departamento`) VALUES
(100, 'SoporteTecnico'),
(200, 'Portabilidad'),
(300, 'Amigo'),
(400, 'VW'),
(500, 'Invex'),
(600, 'Nominas'),
(700, 'AyV'),
(800, 'Enfermeria'),
(900, 'Sistemas'),
(1000, 'RH'),
(1100, 'Comunicacion'),
(1200, 'Marketing');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_divisor`
--

CREATE TABLE IF NOT EXISTS `cat_divisor` (
  `Id_Divisor` tinyint(3) unsigned NOT NULL,
  `Divisor` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_divisor`
--

INSERT INTO `cat_divisor` (`Id_Divisor`, `Divisor`) VALUES
(1, 'Infinitum'),
(2, 'SIL'),
(3, '050'),
(4, 'Casos'),
(5, 'Chat');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_estatus`
--

CREATE TABLE IF NOT EXISTS `cat_estatus` (
  `Id_Estatus` tinyint(3) unsigned NOT NULL,
  `Estatus` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cat_estatus`
--

INSERT INTO `cat_estatus` (`Id_Estatus`, `Estatus`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intervalosconexion`
--

CREATE TABLE IF NOT EXISTS `intervalosconexion` (
  `FechaRegistro` date NOT NULL,
  `Identificador` int(8) NOT NULL,
  `Intervalo` int(5) NOT NULL,
  `Divisor` tinyint(3) unsigned NOT NULL,
  `Recibidas` int(8) NOT NULL,
  `Contestadas` int(8) NOT NULL,
  `Abandonadas` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `intervalosconexion`
--

INSERT INTO `intervalosconexion` (`FechaRegistro`, `Identificador`, `Intervalo`, `Divisor`, `Recibidas`, `Contestadas`, `Abandonadas`) VALUES
('2017-11-27', 3001, 700, 1, 8, 7, 1),
('2017-11-27', 3001, 700, 2, 2, 2, 0),
('2017-11-27', 3001, 730, 1, 4, 4, 0),
('2017-11-27', 3001, 800, 1, 0, 0, 0),
('2017-11-27', 3001, 830, 1, 3, 3, 0),
('2017-11-27', 3001, 900, 1, 2, 1, 1),
('2017-11-27', 3001, 900, 2, 0, 0, 0),
('2017-11-27', 3001, 900, 3, 1, 1, 0),
('2017-11-27', 3001, 930, 1, 1, 1, 0),
('2017-11-27', 3001, 1000, 1, 7, 6, 1),
('2017-11-27', 3001, 1000, 4, 0, 0, 0),
('2017-11-27', 3001, 1030, 1, 2, 2, 0),
('2017-11-27', 3001, 1100, 1, 10, 8, 2),
('2017-11-27', 3001, 1130, 1, 4, 3, 1),
('2017-11-27', 3001, 1200, 1, 9, 9, 0),
('2017-11-27', 3001, 1300, 2, 10, 10, 0),
('2017-11-27', 3001, 1330, 4, 0, 0, 0),
('2017-11-27', 3019, 900, 1, 12, 10, 2),
('2017-11-27', 3019, 900, 3, 0, 0, 0),
('2017-11-27', 3019, 930, 1, 2, 2, 0),
('2017-11-27', 3019, 1000, 1, 8, 7, 1),
('2017-11-27', 3019, 1000, 2, 4, 4, 0),
('2017-11-27', 3019, 1030, 1, 3, 3, 0),
('2017-11-27', 3019, 1100, 1, 9, 8, 1),
('2017-11-27', 3019, 1100, 2, 4, 4, 0),
('2017-11-27', 3019, 1130, 2, 2, 2, 0),
('2017-11-27', 3019, 1200, 1, 3, 2, 1),
('2017-11-27', 3019, 1200, 2, 10, 9, 1),
('2017-11-27', 3019, 1230, 1, 7, 7, 0),
('2017-11-27', 3019, 1230, 2, 4, 4, 0),
('2017-11-27', 3019, 1300, 1, 10, 10, 0),
('2017-11-27', 3019, 1330, 2, 4, 4, 0),
('2017-11-27', 3019, 1400, 1, 5, 5, 0),
('2017-11-27', 3019, 1400, 1, 10, 10, 0),
('2017-11-27', 3019, 1430, 1, 4, 4, 0),
('2017-11-27', 3019, 1430, 2, 0, 0, 0),
('2017-11-27', 3019, 1500, 1, 9, 9, 0),
('2017-11-26', 3001, 900, 1, 10, 10, 0),
('2017-11-26', 3001, 900, 2, 3, 3, 0),
('2017-11-26', 3001, 930, 1, 4, 4, 0),
('2017-11-26', 3001, 930, 3, 12, 10, 2),
('2017-11-26', 3001, 1000, 1, 8, 7, 1),
('2017-11-26', 3001, 1100, 1, 5, 4, 1),
('2017-11-26', 3001, 1100, 3, 0, 0, 0),
('2017-11-26', 3001, 1130, 1, 9, 9, 0),
('2017-11-26', 3001, 1200, 1, 7, 6, 1),
('2017-11-26', 3001, 1230, 1, 9, 9, 0),
('2017-11-26', 3001, 1300, 1, 8, 7, 1),
('2017-11-26', 3001, 1300, 2, 1, 1, 0),
('2017-11-26', 3024, 1500, 1, 9, 9, 0),
('2017-11-26', 3024, 1500, 2, 5, 4, 1),
('2017-11-26', 3024, 1530, 1, 12, 10, 2),
('2017-11-26', 3024, 1600, 2, 2, 0, 2),
('2017-11-26', 3024, 1630, 2, 3, 2, 1),
('2017-11-26', 3024, 1700, 1, 2, 2, 0),
('2017-11-26', 3024, 1730, 5, 7, 7, 0),
('2017-11-26', 3024, 1800, 1, 0, 0, 0),
('2017-11-26', 3024, 1800, 2, 1, 1, 0),
('2017-11-26', 3024, 1830, 5, 3, 2, 1),
('2017-11-26', 3024, 1900, 1, 4, 4, 0),
('2017-11-26', 3024, 1930, 1, 9, 9, 0),
('2017-11-26', 3024, 1930, 3, 9, 8, 1),
('2017-11-26', 3024, 2000, 1, 10, 9, 1),
('2017-11-26', 3024, 2030, 1, 8, 8, 0),
('2017-11-26', 3024, 2100, 1, 19, 10, 9),
('2017-11-26', 3024, 2100, 2, 8, 6, 2),
('2017-11-26', 3024, 2100, 3, 5, 5, 0),
('2017-11-26', 3024, 2130, 2, 8, 4, 4),
('2017-11-26', 3024, 2200, 2, 7, 7, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_empleado`
--

CREATE TABLE IF NOT EXISTS `tabla_empleado` (
  `Id_Empleado` int(8) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido1` varchar(30) NOT NULL,
  `Apellido2` varchar(30) NOT NULL,
  `Id_Departamento` int(8) DEFAULT NULL,
  `Id_Campana` int(8) DEFAULT NULL,
  `Id_Estatus` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tabla_empleado`
--

INSERT INTO `tabla_empleado` (`Id_Empleado`, `Nombre`, `Apellido1`, `Apellido2`, `Id_Departamento`, `Id_Campana`, `Id_Estatus`) VALUES
(3000, 'Pedro', 'Vázquez', 'Torres', 200, 201, 1),
(3001, 'Guillermina', 'Serafin', 'Guzmán', 100, 101, 1),
(3002, 'Karla', 'Saucedo', 'Lira', 300, 302, 1),
(3003, 'Rubén', 'Cerda', 'Torres', 100, 101, 2),
(3004, 'Luis Alfredo', 'Martínez', 'Aguilar', 200, 202, 1),
(3005, 'Karen', 'González', 'Meza', 900, 901, 1),
(3006, 'Luisa', 'Pérez', 'Pérez', 900, 902, 2),
(3007, 'Luis Alberto', 'Domínguez', 'Suárez', 900, 901, 1),
(3008, 'Hugo', 'Castillo', 'Saucedo', 900, 903, 1),
(3009, 'Petronilo', 'Díaz', 'Gómez', 900, 904, 1),
(3010, 'Erik', 'Islas', 'Berumen', 900, 903, 2),
(3011, 'Adam', 'Smith', 'Thomson', 900, 902, 1),
(3012, 'Guadalupe', 'Landeros', 'Cisneros', 800, 801, 1),
(3013, 'Sofia', 'Corpus', 'Camacho', 800, 801, 2),
(3014, 'Víctor Guillermo', 'Flores', 'Rico', 700, 701, 1),
(3015, 'Leticia', 'Avila', 'Gaitan', 800, 801, 2),
(3016, 'Ana Paula', 'Torrecillas', 'Mundo', 700, 701, 1),
(3017, 'Sigifredo', 'Luna', 'Reyna', 600, 601, 2),
(3018, 'Luis Angel', 'García', 'García', 500, 501, 1),
(3019, 'América', 'Silos', 'Camacho', 100, 103, 1),
(3020, 'Anastacia', 'Silos', 'Méndez', 100, 102, 1),
(3021, 'Erika', 'Luna', 'Díaz', 100, 101, 1),
(3022, 'Guillermo', 'Suárez', 'Moreno', 200, 202, 1),
(3023, 'Dorian', 'Martínez', 'Corpus', 300, 302, 1),
(3024, 'Hilda', 'Carmona', 'Pérez', 100, 104, 1),
(3025, 'Zoila', 'Barrera', 'Ordaz', 200, 201, 1),
(3026, 'Carmelo', 'Moreno', 'Sánchez', 100, 101, 2),
(3027, 'Jaime', 'Perales', 'Fernández', 400, 401, 1),
(3028, 'Carmina', 'Burana', 'Opera', 300, 301, 1),
(3029, 'Gustavo', 'Aguilar', 'Martínez', 200, 201, 1),
(3030, 'Mayra', 'Duarte', 'Herrera', 200, 203, 1),
(3031, 'Josefina', 'Ortiz', 'Salas', 200, 203, 2),
(3032, 'Sofia', 'Gil', 'Durán', 300, 301, 1),
(3033, 'Hortencia', 'Luces', 'Mares', 400, 401, 1),
(3034, 'Carmelo', 'Ochoa', 'Vázquez', 100, 103, 2),
(3035, 'José', 'Pinal', 'Lara', 200, 201, 1),
(3036, 'Luis Alfredo', 'Mata', 'Mares', 200, 202, 1),
(3037, 'Américo', 'Cardona', 'Jules', 300, 301, 1),
(3038, 'Armando', 'Castillo', 'Cazares', 200, 201, 1),
(3039, 'Olivia', 'Durán', 'Encinas', 100, 101, 1),
(3040, 'Claudia', 'Lara', 'Mendoza', 200, 203, 1),
(3041, 'Luz', 'Ibarra', 'Ríos', 200, 202, 1),
(3042, 'Luz', 'Hinojosa', 'Calderón', 300, 301, 1),
(3043, 'Camila', 'Cabello', 'Grass', 100, 105, 1),
(3044, 'Héctor', 'Milán', 'Cruz', 200, 202, 1),
(3045, 'Jesús', 'North', 'Simpson', 700, 701, 2),
(3046, 'Gilberto', 'Gómez', 'Hernández', 100, 101, 1),
(3047, 'Cristina', 'Ordaz', 'Salinas', 300, 302, 1),
(3048, 'Norberto', 'Rivera', 'Peña', 300, 301, 1),
(3049, 'Gus', 'Fox', 'Quintero', 500, 501, 1),
(3050, 'Luz María', 'Meade', 'Nieto', 500, 502, 1),
(3051, 'Ignacio', 'Perales', 'Feregrino', 300, 302, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_campana`
--
ALTER TABLE `cat_campana`
  ADD PRIMARY KEY (`Id_Campana`);

--
-- Indices de la tabla `cat_departamento`
--
ALTER TABLE `cat_departamento`
  ADD PRIMARY KEY (`Id_Departamento`);

--
-- Indices de la tabla `cat_divisor`
--
ALTER TABLE `cat_divisor`
  ADD PRIMARY KEY (`Id_Divisor`);

--
-- Indices de la tabla `cat_estatus`
--
ALTER TABLE `cat_estatus`
  ADD PRIMARY KEY (`Id_Estatus`);

--
-- Indices de la tabla `intervalosconexion`
--
ALTER TABLE `intervalosconexion`
  ADD KEY `Divisor` (`Divisor`), ADD KEY `Identificador` (`Identificador`);

--
-- Indices de la tabla `tabla_empleado`
--
ALTER TABLE `tabla_empleado`
  ADD PRIMARY KEY (`Id_Empleado`), ADD KEY `Id_Departamento` (`Id_Departamento`), ADD KEY `Id_Campana` (`Id_Campana`), ADD KEY `Id_Estatus` (`Id_Estatus`), ADD KEY `Nombre` (`Nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_divisor`
--
ALTER TABLE `cat_divisor`
  MODIFY `Id_Divisor` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `cat_estatus`
--
ALTER TABLE `cat_estatus`
  MODIFY `Id_Estatus` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `intervalosconexion`
--
ALTER TABLE `intervalosconexion`
ADD CONSTRAINT `intervalosconexion_ibfk_1` FOREIGN KEY (`Divisor`) REFERENCES `cat_divisor` (`Id_Divisor`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `intervalosconexion_ibfk_2` FOREIGN KEY (`Identificador`) REFERENCES `tabla_empleado` (`Id_Empleado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tabla_empleado`
--
ALTER TABLE `tabla_empleado`
ADD CONSTRAINT `tabla_empleado_ibfk_1` FOREIGN KEY (`Id_Campana`) REFERENCES `cat_campana` (`Id_Campana`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tabla_empleado_ibfk_2` FOREIGN KEY (`Id_Departamento`) REFERENCES `cat_departamento` (`Id_Departamento`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tabla_empleado_ibfk_3` FOREIGN KEY (`Id_Estatus`) REFERENCES `cat_estatus` (`Id_Estatus`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
