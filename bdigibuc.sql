-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 23, 2018 at 06:07 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdigibuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `recurso`
--

DROP TABLE IF EXISTS `recurso`;
CREATE TABLE IF NOT EXISTS `recurso` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_repSecundario` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `url` varchar(250) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `fecha_creacion` date NOT NULL,
  `publicado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rep_principal`
--

DROP TABLE IF EXISTS `rep_principal`;
CREATE TABLE IF NOT EXISTS `rep_principal` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `fecha_creacion` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rep_principal`
--

INSERT INTO `rep_principal` (`id`, `nombre`, `fecha_creacion`) VALUES
(1, 'Tecnologias', '2018-10-23'),
(2, 'Matematicas', '2018-10-23'),
(3, 'Sociales', '2018-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `rep_secundario`
--

DROP TABLE IF EXISTS `rep_secundario`;
CREATE TABLE IF NOT EXISTS `rep_secundario` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_repPrincipal` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `fecha_creacion` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rep_secundario`
--

INSERT INTO `rep_secundario` (`id`, `id_repPrincipal`, `nombre`, `fecha_creacion`) VALUES
(1, 1, 'Programacion', '2018-10-23'),
(2, 1, 'Inteligencia artificial', '2018-10-23'),
(3, 1, 'Proyectos de software', '2018-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `nombres` varchar(25) NOT NULL,
  `apellidoM` varchar(20) NOT NULL,
  `apellidoP` varchar(20) NOT NULL,
  `noCuenta` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `roll` int(2) NOT NULL,
  PRIMARY KEY (`noCuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
