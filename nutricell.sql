-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2017 a las 03:24:52
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `nutricell`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla`
--

CREATE TABLE IF NOT EXISTS `planilla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nacimiento` date NOT NULL,
  `profesion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ocupacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nacionalidad` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cedulared` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `nombrered` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `apellidored` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `clave` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `planilla`
--

INSERT INTO `planilla` (`id`, `cedula`, `nombre`, `apellido`, `nacimiento`, `profesion`, `ocupacion`, `nacionalidad`, `direccion`, `ciudad`, `estado`, `pais`, `cedulared`, `nombrered`, `apellidored`, `clave`) VALUES
(1, '19507188', 'joseph', 'muentes', '2017-11-15', 'programador', 'dd', 'v', 'dfsdf', '', '', '', '', '', '', ''),
(2, '', '', '', '2017-11-24', '', '', 'V', '', '', '', '', '19507188', 'joseph', 'muentes', ''),
(3, '444', 'sdfsd', 'fsdfdf', '2017-11-08', 'sdfs', 'sdfs', 'E', 'sdfsd', 'sdfs', 'sdf', 'sdf', '19507188', 'joseph', 'muentes', ''),
(4, '111', 'nahomy', 'muentes', '2222-03-27', 'ddd', 'sdd', 'V', 'km 13 los haticos', 'caracas', 'sector los haticos ', 'venezuela', '19507188', 'joseph', 'muentes', NULL),
(5, '111', 'nahomy', 'mm', '2017-11-14', 's', 'ddd', 'E', 'd', 'dd', 'dd', 'dd', '19507188', 'joseph', 'muentes', NULL),
(6, '22', 'nahomy', 'mue', '2017-11-08', 'dd', 'dd', 'E', 'dd', 'dd', 'dd', 'dd', '19507188', 'joseph', 'muentes', NULL),
(7, '19929', 'jonas', 'muentes', '2017-11-15', 'ppp', 'ddd', 'V', 'adsfdsa', 'asd', 'asdf', 'sadf', '19507188', 'joseph', 'muentes', NULL),
(8, '19929', 'jonas', 'muentes', '2017-11-15', 'ppp', 'ddd', 'V', 'adsfdsa', 'asd', 'asdf', 'sadf', '19507188', 'joseph', 'muentes', NULL),
(9, '21312', 'sdfs', 'sdfds', '2017-11-08', 'asdfsa', 'sdfs', 'V', 'sadfsdf', 'dfssdf', 'sdfsd', 'sdfsd', '19507188', 'joseph', 'muentes', NULL),
(10, '12332', 'sdfs', 'sdf', '2017-11-09', 'sdf', 'sdf', 'V', 'sdf', 'dasd', 'sdf', 'sdfsd', '19507188', 'joseph', 'muentes', NULL),
(11, '12332', 'sdfs', 'sdf', '2017-11-09', 'sdf', 'sdf', 'V', 'sdf', 'dasd', 'sdf', 'sdfsd', '19507188', 'joseph', 'muentes', NULL),
(12, '12332', 'sdfs', 'sdf', '2017-11-09', 'sdf', 'sdf', 'V', 'sdf', 'dasd', 'sdf', 'sdfsd', '19507188', 'joseph', 'muentes', NULL),
(13, '222', 'sadf', 'sdf', '2017-11-17', 'sdf', 'sdf', 'V', 'asdfds', 'sadf', 'sdf', 'sdf', '19507188', 'joseph', 'muentes', NULL),
(14, '222', 'sadf', 'sdf', '2017-11-17', 'sdf', 'sdf', 'V', 'asdfds', 'sadf', 'sdf', 'sdf', '19507188', 'joseph', 'muentes', NULL),
(15, '333', 'jjj', 'jj', '2017-11-16', 'jh', 'gkk', 'V', 'kjjhj', 'kkk', 'kkk', 'bb', '19507188', 'joseph', 'muentes', NULL),
(16, '34', 'sdfs', 'sdf', '2017-11-17', 'sdf', 'sdf', 'V', 'ssdf', 'fdsdf', 'sdf', 'sdf', '19507188', 'joseph', 'muentes', NULL),
(17, '122', 'ste', 'dd', '1988-05-06', '333', '333', 'V', 'ddd', 'ddd', 'ddd', 'dff', '19507188', 'joseph', 'muentes', NULL),
(18, '32432', 'sdfgdsf', 'dfgdf', '2017-11-17', 'sdfsdf', 'sdfsdf', 'V', 'sdfsd', 'sdfs', 'sdf', 'sdfsdf', '19507188', 'joseph', 'muentes', NULL),
(19, '32432', 'sdfsdf', 'dfgdf', '2017-11-17', 'sdfsdf', 'sdfsdf', 'V', 'sdfsd', 'sdfs', 'sdf', 'sdfsdf', '19507188', 'joseph', 'muentes', NULL),
(20, '32432', 'kjjj', 'dfgdf', '2017-11-17', 'sdfsdf', 'sdfsdf', 'V', 'sdfsd', 'sdfs', 'sdf', 'sdfsdf', '19507188', 'joseph', 'muentes', NULL),
(21, '1999', 'joseph', 'muentes', '2017-11-09', 'dfd', 'dsfd', 'V', 'dffd', 'sddf', 'dffd', 'dfdf', '19507188', 'joseph', 'muentes', NULL),
(22, '111', 'sfsdf', 'sdfd', '2017-11-03', 'sfdsd', 'sdfds', 'E', 'sdf', 'sdfs', 'sdfsdf', 'sdfsdf', '19507188', 'joseph', 'muentes', NULL),
(23, '222', 'sdfsf', 'sdf', '2017-11-10', 'asdf', 'sdfsd', 'V', 'sdf', 'asdf', 'sdfsd', 'sd', '19507188', 'joseph', 'muentes', NULL),
(24, '13242', 'sdfs', 'sdf', '2017-11-02', 'dsaf', 'sdf', 'V', 'sdfsdf', 'sdf', 'sdfsdf', 'sdf', '19507188', 'joseph', 'muentes', NULL),
(25, '123000', 'nahomyverd', 'asdsa', '2017-11-02', 'sdfs', 'sdfsf', 'V', 'sdfsf', 'asdf', 'sdf', 'sdfdsf', '19507188', 'joseph', 'muentes', NULL),
(26, '233', 'planillanueva', 'nueva', '2017-11-09', 'sdf', 'dasfsd', 'V', 'sdfsdf', 'sdf', 'sdf', 'sdf', '19507188', 'joseph', 'muentes', NULL),
(27, '342', 'sdfsf', 'sdf', '2017-11-08', 'sdf', 'sdfsd', 'E', 'sdf', 'asdf', 'sdfs', 'sdf', '19507188', 'joseph', 'muentes', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
