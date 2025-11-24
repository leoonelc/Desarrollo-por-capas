-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2025 a las 04:51:50
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mecanica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(150) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombres`, `apellidos`, `telefono`, `correo_electronico`, `fecha_creacion`) VALUES
(4, 'JHOE ', 'ALVAREZ', '0980029658', 'cadenaleonel9@gmail.com', '2025-11-24 02:45:02'),
(5, 'Carlos', 'Ramírez López', '0998765432', 'carlos.ramirez@example.com', '2025-11-24 02:52:40'),
(6, 'María', 'Gómez Andrade', '0987654321', 'maria.gomez@example.com', '2025-11-24 02:52:40'),
(7, 'Luis', 'Cedeño Castillo', '0971122334', 'luis.cedeno@example.com', '2025-11-24 02:52:40'),
(12, 'Carlos', 'ALVAREZ', '0980029658', 'ksj@hans.com', '2025-11-24 03:06:09'),
(14, 'JHOE ', 'CADENA', '0987654432', 'cadcnel9@gmail.com', '2025-11-24 03:30:26'),
(15, 'Carlos', 'Mendoza Ruiz', '0998876541', 'carlos.mendoza4@example.com', '2025-11-24 03:38:23'),
(16, 'Lucia', 'Santos Pena', '0982223344', 'lucia.santos5@example.com', '2025-11-24 03:38:23'),
(17, 'Pedro', 'Calderon Silva', '0971112244', 'pedro.calderon6@example.com', '2025-11-24 03:38:23'),
(18, 'Marta', 'Jimenez Rios', '0994433221', 'marta.jimenez7@example.com', '2025-11-24 03:38:23'),
(19, 'Esteban', 'Torres Aguirre', '0987654332', 'esteban.torres8@example.com', '2025-11-24 03:38:23'),
(20, 'Viviana', 'Morales Guaman', '0980003344', 'viviana.morales9@example.com', '2025-11-24 03:38:23'),
(21, 'Jose', 'Ramirez Lara', '0991112233', 'jose.ramirez10@example.com', '2025-11-24 03:38:23'),
(22, 'Daniela', 'Castro Lopez', '0975566778', 'daniela.castro11@example.com', '2025-11-24 03:38:23'),
(23, 'Paul', 'Guerrero Paredes', '0982345567', 'paul.guerrero12@example.com', '2025-11-24 03:38:23'),
(24, 'Sandra', 'Vera Molina', '0998765432', 'sandra.vera13@example.com', '2025-11-24 03:38:23'),
(25, 'Santiago', 'Pico Andrade', '0983456678', 'santiago.pico14@example.com', '2025-11-24 03:38:23'),
(26, 'Carla', 'Garcia Flores', '0995544332', 'carla.garcia15@example.com', '2025-11-24 03:38:23'),
(27, 'Lorena', 'Zambrano Ortiz', '0987654432', 'lorena.zambrano16@example.com', '2025-11-24 03:38:23'),
(28, 'Felipe', 'Montenegro Ruiz', '0978899001', 'felipe.montenegro17@example.com', '2025-11-24 03:38:23'),
(29, 'Mario', 'Cedeno Anchundia', '0983221100', 'mario.cedeno18@example.com', '2025-11-24 03:38:23'),
(30, 'Eva', 'Navarrete Leon', '0993214567', 'eva.navarrete19@example.com', '2025-11-24 03:38:23'),
(31, 'Adrian', 'Viteri Simbana', '0972223456', 'adrian.viteri20@example.com', '2025-11-24 03:38:23'),
(32, 'Tatiana', 'Lopez Herrera', '0993332211', 'tatiana.lopez21@example.com', '2025-11-24 03:38:23'),
(33, 'Fabian', 'Calle Ponce', '0987765432', 'fabian.calle22@example.com', '2025-11-24 03:38:23'),
(34, 'Glenda', 'Romero Rios', '0992221100', 'glenda.romero23@example.com', '2025-11-24 03:38:23'),
(35, 'Ricardo', 'Burgos Armijos', '0981199332', 'ricardo.burgos24@example.com', '2025-11-24 03:38:23'),
(36, 'Pablo', 'Tobar Cando', '0978877665', 'pablo.tobar25@example.com', '2025-11-24 03:38:23'),
(37, 'Kevin', 'Orozco Bravo', '0984433211', 'kevin.orozco26@example.com', '2025-11-24 03:38:23'),
(38, 'Johana', 'Espinoza Poma', '0996677889', 'johana.espinoza27@example.com', '2025-11-24 03:38:23'),
(39, 'Milton', 'Cando Rivera', '0974455668', 'milton.cando28@example.com', '2025-11-24 03:38:23'),
(40, 'Karla', 'Jara Vaca', '0983198765', 'karla.jara29@example.com', '2025-11-24 03:38:23'),
(41, 'Xavier', 'Andrade Salas', '0997744112', 'xavier.andrade30@example.com', '2025-11-24 03:38:23'),
(42, 'Nathaly', 'Espin Barba', '0985512344', 'nathaly.espin31@example.com', '2025-11-24 03:38:23'),
(43, 'Bryan', 'Cardenas Pozo', '0976654433', 'bryan.cardenas32@example.com', '2025-11-24 03:38:23'),
(44, 'Alexandra', 'Ona Tene', '0998877123', 'alexandra.ona33@example.com', '2025-11-24 03:38:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_trabajo`
--

CREATE TABLE `orden_trabajo` (
  `id` int(11) NOT NULL,
  `Descripcion` text NOT NULL,
  `Servicio_Id` bigint(20) NOT NULL,
  `TipoServicio_Id` bigint(20) NOT NULL,
  `Usuario_Id` bigint(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', 'El Admin'),
(2, 'Secretaria', 'La Secre'),
(3, 'Mecanico', 'El Maestro'),
(4, 'Oficial', 'El Oficial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) NOT NULL,
  `id_vehiculo` bigint(20) NOT NULL,
  `id_usuario` bigint(20) NOT NULL,
  `fecha_servicio` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposervicio`
--

CREATE TABLE `tiposervicio` (
  `id` bigint(20) NOT NULL,
  `detalle` text NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tiposervicio`
--

INSERT INTO `tiposervicio` (`id`, `detalle`, `valor`, `estado`) VALUES
(1, 'Mantenimiento Preventivo', 100, 1),
(2, 'Mantenimiento de Frenos', 10, 1),
(3, 'Lavada de Vehiculo de LUX', 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `nombre_usuario` varchar(150) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `id_rol` bigint(20) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp(),
  `activo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `contrasena`, `id_rol`, `fecha_creacion`, `activo`) VALUES
(5, 'admin', '202cb962ac59075b964b07152d234b70', 1, '2025-11-17 10:00:00', 1),
(6, 'edwin', '202cb962ac59075b964b07152d234b70', 2, '2025-11-17 10:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` bigint(20) NOT NULL,
  `id_cliente` bigint(20) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `anio` int(11) NOT NULL,
  `tipo_motor` enum('dos_tiempos','cuatro_tiempos') NOT NULL DEFAULT 'dos_tiempos',
  `fecha_creacion` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `id_cliente`, `marca`, `modelo`, `anio`, `tipo_motor`, `fecha_creacion`) VALUES
(5, 5, 'Chevrolet', 'Spark GT', 2019, 'dos_tiempos', '2025-11-24 02:52:51'),
(6, 6, 'Mazda', 'CX-5', 2021, 'cuatro_tiempos', '2025-11-24 02:52:51'),
(7, 4, 'Toyota', 'Corolla', 100, 'dos_tiempos', '2025-11-24 03:20:00'),
(38, 15, 'Toyota', 'Corolla', 2018, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(39, 16, 'Chevrolet', 'Spark GT', 2020, 'dos_tiempos', '2025-11-24 03:39:24'),
(40, 17, 'Mazda', 'CX-5', 2021, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(41, 18, 'Nissan', 'Sentra', 2017, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(42, 19, 'Hyundai', 'Elantra', 2019, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(43, 20, 'Kia', 'Sportage', 2016, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(44, 21, 'Honda', 'Civic', 2018, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(45, 22, 'Volkswagen', 'Gol', 2015, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(46, 23, 'Renault', 'Duster', 2020, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(47, 24, 'Ford', 'EcoSport', 2017, 'dos_tiempos', '2025-11-24 03:39:24'),
(48, 25, 'Subaru', 'Forester', 2016, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(49, 26, 'Mercedes-Benz', 'GLA 200', 2021, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(50, 27, 'Audi', 'A3', 2019, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(51, 28, 'BMW', 'X1', 2022, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(52, 29, 'Peugeot', '3008', 2018, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(53, 30, 'Citroen', 'C4 Cactus', 2020, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(54, 31, 'Chery', 'Tiggo 2', 2021, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(55, 32, 'Suzuki', 'Vitara', 2017, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(56, 33, 'Great Wall', 'Haval H6', 2020, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(57, 34, 'JAC', 'S3', 2019, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(58, 35, 'Mitsubishi', 'Outlander', 2018, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(59, 36, 'Volvo', 'XC40', 2021, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(60, 37, 'Jeep', 'Compass', 2020, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(61, 38, 'Dodge', 'Durango', 2016, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(62, 39, 'RAM', '1500 Classic', 2019, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(63, 40, 'Infiniti', 'QX30', 2017, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(64, 41, 'Lexus', 'UX 200', 2022, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(65, 42, 'Alfa Romeo', 'Giulietta', 2018, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(66, 43, 'Jaguar', 'E-Pace', 2021, 'cuatro_tiempos', '2025-11-24 03:39:24'),
(67, 44, 'Porsche', 'Macan', 2019, 'cuatro_tiempos', '2025-11-24 03:39:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- Indices de la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_serivicios` (`Servicio_Id`),
  ADD KEY `fk_tipo_servivio` (`TipoServicio_Id`),
  ADD KEY `fk_usuarios` (`Usuario_Id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vehiculo` (`id_vehiculo`),
  ADD KEY `fk_usuario` (`id_usuario`);

--
-- Indices de la tabla `tiposervicio`
--
ALTER TABLE `tiposervicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  ADD KEY `fk_rol` (`id_rol`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiposervicio`
--
ALTER TABLE `tiposervicio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  ADD CONSTRAINT `fk_serivicios` FOREIGN KEY (`Servicio_Id`) REFERENCES `servicios` (`id`),
  ADD CONSTRAINT `fk_tipo_servivio` FOREIGN KEY (`TipoServicio_Id`) REFERENCES `tiposervicio` (`id`),
  ADD CONSTRAINT `fk_usuarios` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `fk_vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculos` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
