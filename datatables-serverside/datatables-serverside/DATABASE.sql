-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 04-12-2021 a las 17:40:23
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `e_serverside`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genero` enum('Hombre','Mujer') COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `creado` datetime NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Activo | 0=Inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `genero`, `pais`, `creado`, `estado`) VALUES
(1, 'Lucia', 'Figueroa', 'lucia@miweb.com', 'Mujer', 'Argentina', '2021-12-04 13:28:05', 1),
(2, 'Carlos', 'Mogollon', 'carlos@miweb.com', 'Hombre', 'Argentina', '2021-12-04 17:33:33', 1),
(3, 'Melina', 'Carbajal', 'melina@miweb.com', 'Mujer', 'Ecuador', '2021-12-04 17:33:33', 1),
(4, 'Karina', 'Villaran', 'karina@miweb.com', 'Mujer', 'Chile', '2021-12-04 17:34:46', 1),
(5, 'Julian', 'Lee', 'julian@miweb.com', 'Hombre', 'Ecuador', '2021-12-04 17:34:46', 1),
(6, 'Miguel', 'Cotrado', 'miguel@miweb.com', 'Hombre', 'Bolivia', '2021-12-04 17:34:46', 1),
(7, 'Sujey', 'Cardenas', 'sujey@miweb.com', 'Mujer', 'Uruguay', '2021-12-04 17:34:46', 1),
(8, 'Hector', 'Santander', 'hector@miweb.com', 'Hombre', 'Colombia', '2021-12-04 17:34:46', 1),
(9, 'Valeria', 'Chumpitaz', 'valeria@miweb.com', 'Mujer', 'Chile', '2021-12-04 17:34:46', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
