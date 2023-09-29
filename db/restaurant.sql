-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-09-2023 a las 19:01:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cedula` varchar(10) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `fechNacimiento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cedula`, `apellidos`, `nombres`, `telefono`, `direccion`, `genero`, `fechNacimiento`) VALUES
('12345', 'DED', 'DEDE', '6544', 'CALLE 123', 'Masculino', '2005-02-11'),
('98765', 'Guzman Sanchez', 'Juan Camilo', '123456789', 'calle falsa 123', 'Masculino', '1993-01-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platos`
--

CREATE TABLE `platos` (
  `idPlato` varchar(16) NOT NULL,
  `nombrePlato` varchar(100) NOT NULL,
  `precioPlato` int(11) NOT NULL,
  `tipoPlato` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `platos`
--

INSERT INTO `platos` (`idPlato`, `nombrePlato`, `precioPlato`, `tipoPlato`) VALUES
('PLA6514a89da0712', 'Pollo broaster', 15000, 'Normal'),
('PLA651597e09ac3f', 'Almuerzo mixto', 20000, 'A la Carta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosl`
--

CREATE TABLE `usuariosl` (
  `cedula` varchar(10) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `usuariosl`
--

INSERT INTO `usuariosl` (`cedula`, `apellidos`, `nombres`, `telefono`, `direccion`, `genero`, `password`) VALUES
('1085', 'Narvaes', 'faber', '6544', 'CALLE 123', 'Masculino', '$2y$10$L1njqBPs0hfxtfuoRCh/DuPAC3PGIhex6UB2XkUV50ce9W4Ju9uNG'),
('10853', 'Castro Alvarez', 'Juan', '12345', 'Calle Falsa 123', 'Masculino', '$2y$10$CR7LK2uvR/dPxZdfm1.6VuUKqDnzy4HbKLWWpMgE27LnoFCL6F0Qq'),
('13579', 'Narvaes Castro', 'Juan Carlos', '987', 'calle 2', 'Masculino', '$2y$10$roaZezrFbt01M1TYtQJxNeiQNIcTA0xDsGhylWCd7wdDewZA97yda'),
('198531049', 'Martinez', 'Juan Pedro', '12345', 'calle falsa 123', 'Masculino', '$2y$10$88sEu1iZ6.61G6Kd/PR2iuzSiWx6IgbIdZDm/2PQ./pgNqPkLUvv.'),
('987654321', 'zuares', 'Carlos', '135', 'manzana H casa 23', 'Masculino', '$2y$10$ysr7FJiqcCJaKXJJx5ZvMOrR/RBUJWYkTQLlpXilkPkewbi0xt0rG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idVenta` varchar(16) NOT NULL,
  `idPlato` varchar(20) NOT NULL,
  `cedCliente` varchar(10) NOT NULL,
  `cedUsuario` varchar(10) NOT NULL,
  `discapacidad` varchar(2) NOT NULL,
  `mayorEdad` varchar(2) NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipoPago` varchar(15) NOT NULL,
  `descuento` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `iva` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`idVenta`, `idPlato`, `cedCliente`, `cedUsuario`, `discapacidad`, `mayorEdad`, `fecha`, `cantidad`, `tipoPago`, `descuento`, `subtotal`, `iva`, `total`) VALUES
('VEN6514ec424e2a1', 'PLA6514a89da0712', '12345', '13579', 'NO', 'NO', '28-09-2023', 3, 'Transferencia', 0, 39600, 5400, 45000),
('VEN6514ed275cb33', 'PLA6514a89da0712', '12345', '13579', 'SI', 'SI', '28-09-2023', 2, 'Transferencia', 4500, 22440, 3060, 25500),
('VEN6515992e8d8eb', 'PLA651597e09ac3f', '12345', '13579', 'NO', 'SI', '28-09-2023', 2, 'Efectivo', 6000, 29920, 4080, 34000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cedula`) USING BTREE;

--
-- Indices de la tabla `platos`
--
ALTER TABLE `platos`
  ADD PRIMARY KEY (`idPlato`) USING BTREE;

--
-- Indices de la tabla `usuariosl`
--
ALTER TABLE `usuariosl`
  ADD PRIMARY KEY (`cedula`) USING BTREE;

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idVenta`) USING BTREE,
  ADD KEY `frk_Usuario` (`cedUsuario`) USING BTREE,
  ADD KEY `frk_Cliente` (`cedCliente`) USING BTREE,
  ADD KEY `frk_Plato` (`idPlato`) USING BTREE;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `frk_Cliente` FOREIGN KEY (`cedCliente`) REFERENCES `clientes` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `frk_Plato` FOREIGN KEY (`idPlato`) REFERENCES `platos` (`idPlato`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `frk_Usuario` FOREIGN KEY (`cedUsuario`) REFERENCES `usuariosl` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
