-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2018 a las 20:20:13
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jyeservi_funvid`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educadores`
--

CREATE TABLE `educadores` (
  `edu_id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `rut` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `fecha` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `localidad` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `correo` varchar(60) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `educadores`
--

INSERT INTO `educadores` (`edu_id`, `nombre`, `apellido`, `rut`, `telefono`, `fecha`, `direccion`, `localidad`, `provincia`, `correo`) VALUES
(1, 'casa', 'perez', ' 12.341.234-1', '+56 (4) 123-41-234', '0341-12-04', '12341234', '41234123', 'q41234431234', '234234'),
(2, 'beiker', 'guillen', ' 12.341.234-1', '+56 (9) 999-99-999', '9158-09-09', 'santiago, santiago', 'Cansas', 'Metropolitana de Santiago', 'beiker19998@gmail.com'),
(4, 'beiker', 'guillen', ' 26.207.028-k', '+56 (9) 300-76-667', '1998-06-26', 'Puerto Montt', 'Puerto Montt', 'Puerto Montt', 'b.guillen@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiares`
--

CREATE TABLE `familiares` (
  `id_f` int(11) NOT NULL,
  `nombre_f` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `apellido_f` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `rut_f` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `telefono_f` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `direccion_f` varchar(60) COLLATE utf16_unicode_ci NOT NULL,
  `localidad_f` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `provincia_f` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `parentesco_f` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `id_residente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `familiares`
--

INSERT INTO `familiares` (`id_f`, `nombre_f`, `apellido_f`, `rut_f`, `telefono_f`, `direccion_f`, `localidad_f`, `provincia_f`, `parentesco_f`, `id_residente`) VALUES
(1, 'Carlos', 'mariño', '16589787-k', '945014197', 'santiago, santiago', 'via antartica', 'Petorca', 'mama', 1),
(2, 'Marta', 'kent', '123123123', '1241234123', 'caracas', 'caracas', 'caracas', 'mama', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `psicologos`
--

CREATE TABLE `psicologos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `rut` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `fecha` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `direccion` varchar(60) COLLATE utf16_unicode_ci NOT NULL,
  `localidad` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `correo` varchar(60) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `psicologos`
--

INSERT INTO `psicologos` (`id`, `nombre`, `apellido`, `rut`, `telefono`, `fecha`, `direccion`, `localidad`, `provincia`, `correo`) VALUES
(1, 'qwer1234', 'qefqwe', ' 23.141.234-k', '+56 (1) 234-12-341', '1998-06-26', '12341234', '12341234123', '41234', '1234'),
(6, 'beiker', 'guillen', ' 26.207.028-k', '+56 (9) 300-76-676', '1998-06-26', 'jose', 'maria', 'vargas', 'b.guillen@jyeservicios.com'),
(7, 'jose', 'perez', ' 12.314.455-k', '+56 (9) 182-37-847', '8187-03-12', '123498', 'jose', '29834', 'jose@jyeser.com'),
(8, 'PEREZ', 'BONANTES', ' 12.312.312-3', '+56 (1) 234-12-344', '41234-03-12', 'JOSE', 'CASERIO', '123948', 'PUERTO@PUERTO.COM'),
(9, 'q', 'q', ' 11.111.111-1', '+56 (9) 080-98-324', '0834-02-19', '412934', '4121', '12', '12312');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residentes`
--

CREATE TABLE `residentes` (
  `id_residente` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `fecha` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `sexo` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `rut` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `nivel` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `profesion` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `localidad` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `residentes`
--

INSERT INTO `residentes` (`id_residente`, `nombre`, `apellido`, `fecha`, `sexo`, `rut`, `telefono`, `nivel`, `profesion`, `direccion`, `localidad`, `provincia`) VALUES
(1, 'jose', 'peres', '1998-06-18', 'Masculino', ' 16.589.987-k', '+56 (1) 893-51-___', 'UNIVERSITARIO', 'enfermero', 'sauces', 'via antartica', 'Petorca'),
(2, 'beiker', 'guillen', '0098-06-26', 'Masculino', ' 12.312.313-k', '+56 (9) 450-14-197', 'Bachiller', 'Tecnico Medio en Informatica', 'Pj 22 #2070', 'puerto montt', 'puerto montt'),
(7, 'hola', 'comida', '2001-05-26', 'Femenino', ' 12.312.312-3', '+56 (4) 123-41-234', 'universitario', 'enfermeria', 'puerto montt', 'puerto montt', 'puerto montt'),
(8, 'Jose', 'Carmenta', '1998-02-26', 'Masculino', ' 14.515.155-k', '+56 (9) 191-83-732', 'Universitarios', 'Enfermero', 'Casa', 'Provincia', 'Puerto montt');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `terapeutas`
--

CREATE TABLE `terapeutas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `rut` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `telefono` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `fecha` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `direccion` varchar(60) COLLATE utf16_unicode_ci NOT NULL,
  `localidad` varchar(60) COLLATE utf16_unicode_ci NOT NULL,
  `provincia` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `terapeutas`
--

INSERT INTO `terapeutas` (`id`, `nombre`, `apellido`, `rut`, `telefono`, `fecha`, `direccion`, `localidad`, `provincia`, `correo`) VALUES
(1, 'jose', 'perez', ' 12.312.312-3', '+56 (9) 123-12-312', '1899-09-09', 'caracas', 'caracas', 'caracaras', 'puerto montt'),
(3, 'jose', 'perez', ' 11.111.111-1', '+56 (9) 999-99-999', '41234-03-12', '12341234', '12341234', '12341', '1@1.com'),
(7, 'jose', 'qiwoeur', ' 12.837.498-2', '+56 (4) 891-72-389', '1924-07-31', '1238947', '49182374', '456', '1447');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `tipo_usuario` varchar(30) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `tipo_usuario`) VALUES
(2, 'Beiker Guillen', 'beiker', 'beiker1998', 'Admin'),
(3, 'Carlos', 'carlosb', '123', 'Educadores'),
(4, 'pedro escobar', 'pescobar', '123', 'Residentes'),
(5, 'casa', 'casa', '123', 'Administracion'),
(6, 'maria ', 'maria', '123', 'Psicologo'),
(8, 'caserio', 'FUNVID', '123', 'Reducados'),
(9, 'perez', 'perez', '123', 'Psicologo'),
(10, 'MARIA', 'jose.p', '123', 'Educadores');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `educadores`
--
ALTER TABLE `educadores`
  ADD PRIMARY KEY (`edu_id`);

--
-- Indices de la tabla `familiares`
--
ALTER TABLE `familiares`
  ADD PRIMARY KEY (`id_f`),
  ADD UNIQUE KEY `id_r` (`id_residente`);

--
-- Indices de la tabla `psicologos`
--
ALTER TABLE `psicologos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `residentes`
--
ALTER TABLE `residentes`
  ADD PRIMARY KEY (`id_residente`);

--
-- Indices de la tabla `terapeutas`
--
ALTER TABLE `terapeutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `educadores`
--
ALTER TABLE `educadores`
  MODIFY `edu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `familiares`
--
ALTER TABLE `familiares`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `psicologos`
--
ALTER TABLE `psicologos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `residentes`
--
ALTER TABLE `residentes`
  MODIFY `id_residente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `terapeutas`
--
ALTER TABLE `terapeutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `familiares`
--
ALTER TABLE `familiares`
  ADD CONSTRAINT `familiares_ibfk_1` FOREIGN KEY (`id_residente`) REFERENCES `residentes` (`id_residente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
