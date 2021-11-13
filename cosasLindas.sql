-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-11-2021 a las 15:56:11
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cosasLindas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `nro_cons` int(11) NOT NULL,
  `nom_cons` varchar(20) NOT NULL,
  `apellido_cons` varchar(20) NOT NULL,
  `email_cons` varchar(50) NOT NULL,
  `art_chosen_cons` varchar(15) DEFAULT NULL,
  `text_cons` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`nro_cons`, `nom_cons`, `apellido_cons`, `email_cons`, `art_chosen_cons`, `text_cons`) VALUES
(1, 'Carlos', 'Vazquez', 'carlosvazqueznosetto@gmail.com', 'muñecas', 'Consulta sobre muñecas.'),
(2, 'Felipe', 'Vazquez', 'Felipepro@gmail.com', 'almohadones', 'Hola, quiero saber qué precio tienen los almohadones. Gracias!'),
(3, 'Camilo', 'Vazquez', 'cami17@gmail.com', 'otro', 'Hola, quería saber donde consigo fieltro. '),
(4, 'Romanella', 'Michel', 'romanella@gmail.com', 'muñecas', 'Hola , te envio esta consulta de prueba. '),
(26, 'Carlos', 'Vazquez', 'carlosvazqueznosetto@gmail.com', 'muñecas', 'Hola, esta página está quedando muy chula. ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`nro_cons`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `nro_cons` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
