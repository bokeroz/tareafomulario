-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 05, 2014 at 04:43 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prueba`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
`id` int(11) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `artist`, `title`) VALUES
(1, 'The  Military  Wives', 'In  My  Dreams'),
(2, 'Adele', '21'),
(3, 'Bruce  Springsteen', 'Wrecking Ball (Deluxe)'),
(4, 'Lana  Del  Rey', 'Born  To  Die'),
(5, 'Gotye', 'Making  Mirrors');

-- --------------------------------------------------------

--
-- Table structure for table `catalogo`
--

CREATE TABLE IF NOT EXISTS `catalogo` (
`id` int(5) NOT NULL,
  `id_c` int(5) NOT NULL,
  `nombre_c` varchar(30) NOT NULL,
  `tipo` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogo`
--

INSERT INTO `catalogo` (`id`, `id_c`, `nombre_c`, `tipo`) VALUES
(1, 1, 'carro', 0),
(2, 2, 'camioneta', 0),
(3, 3, 'carrito', 0),
(4, 4, 'carrito', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cte`
--

CREATE TABLE IF NOT EXISTS `cte` (
`id_c` int(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `puesto` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cte`
--

INSERT INTO `cte` (`id_c`, `nombre`, `puesto`) VALUES
(1, 'Eduardo', 'SPMR'),
(2, 'Daniela', 'ADMIN'),
(3, 'GIL', 'SPMR');

-- --------------------------------------------------------

--
-- Table structure for table `fuerzaventamen`
--

CREATE TABLE IF NOT EXISTS `fuerzaventamen` (
`id` int(8) NOT NULL,
  `nomina` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `ap_paterno` varchar(50) NOT NULL,
  `ap_materno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `fecha_nacim` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fuerzaventamen`
--

INSERT INTO `fuerzaventamen` (`id`, `nomina`, `division`, `ap_paterno`, `ap_materno`, `nombres`, `fecha_nacim`) VALUES
(1, 'ED154585', 'SPMR', 'Marquez', 'Cardona', 'Eduardo', '03-01-1990'),
(2, 'MAU457815', 'SOP', 'Contreras', 'Veraz', 'Mauricio', '15-08-1992'),
(3, 'MAU457815', 'SOP', 'Contreras', 'Veraz', 'Mauricio', '15-08-1992');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `edad` varchar(80) NOT NULL,
  `estado` varchar(80) NOT NULL,
  `fecha` varchar(80) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `user` varchar(20) NOT NULL,
  `correo` varchar(80) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `edad`, `estado`, `fecha`, `pass`, `user`, `correo`) VALUES
(1, 'eduardo', '', '', '', '', '', ''),
(2, 'maria', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', ''),
(4, '', '', '', '', '', '', ''),
(5, '', '', '', '', '', '', ''),
(6, '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', ''),
(8, '', '', '', '', '', '', ''),
(9, '', '', '', '', '', '', ''),
(10, '', '', '', '', '', '', ''),
(11, '', '', '', '', '', '', ''),
(12, 'juan', '', '', '', '', '', ''),
(13, 'ads', '65', 'soltero', '30', 'lkjadsklj', '', ''),
(14, 'werwer', '12', 'soltero', '26', 'adasdaklj', '', ''),
(15, 'erter', 'ertret', 'ertert', 'ertertre', 'ertretre', 'ertert', 'erterter@2.com'),
(16, 'eduardo marquez', '24', 'soltero', 'asd', 'oijajdasjd', 'adojasodisa', 'aoidj@ads.com'),
(17, 'asdas', '34', 'root', '2014-11-14', 'sdfdsfdseduardo', '2343', 'sdfds@sdf.com'),
(18, 'mauuu', '20', 'soltero', '2014-11-14', 'oijasdjoaisdj', 'jidajfoidasjf', 'asd@sdf.com'),
(19, 'cesar', '19', 'soltero', '2014-11-15', 'klajdsklasjd', 'kljasdkljasd', 'asd@sdf.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogo`
--
ALTER TABLE `catalogo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cte`
--
ALTER TABLE `cte`
 ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `fuerzaventamen`
--
ALTER TABLE `fuerzaventamen`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalogo`
--
ALTER TABLE `catalogo`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cte`
--
ALTER TABLE `cte`
MODIFY `id_c` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fuerzaventamen`
--
ALTER TABLE `fuerzaventamen`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
