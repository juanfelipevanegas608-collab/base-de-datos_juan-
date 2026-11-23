-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 23:14:48
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
-- Base de datos: `bdd_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administrativos`
--

CREATE TABLE `tb_administrativos` (
  `id_admin` int(11) NOT NULL,
  `nombre_ad` varchar(50) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telefono_ad` bigint(20) DEFAULT NULL,
  `dependencia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administrativos`
--

INSERT INTO `tb_administrativos` (`id_admin`, `nombre_ad`, `documento`, `telefono_ad`, `dependencia`) VALUES
(1, 'Gloria Esperanza Cruz', 41678923, 3201234567, 'Coordinación Académica'),
(2, 'Ricardo Alfonso Pineda', 19456789, 3202345678, 'Registro y Control'),
(3, 'Lucía del Pilar Bohórquez', 51789012, 3203456789, 'Bienestar al Aprendiz'),
(4, 'Alberto Enrique Salazar', 16567890, 3204567890, 'Talento Humano'),
(5, 'Patricia Elena Cárdenas', 42890123, 3205678901, 'Coordinación de Fichas'),
(6, 'José Ignacio Valenzuela', 17678901, 3206789012, 'Sistemas - Soporte'),
(7, 'Marta Cecilia Ramírez', 43901234, 3207890123, 'Secretaría General'),
(8, 'Héctor Fabián Prieto', 18789012, 3208901234, 'Almacén e Inventario'),
(9, 'Rosa Elena Galindo', 44012345, 3209012345, 'Tesorería'),
(10, 'Víctor Manuel Barragán', 19890123, 3210123456, 'Coordinación de Calidad'),
(11, 'Isabel Cristina Londoño', 45123456, 3211234567, 'Biblioteca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendiz` int(11) NOT NULL,
  `nombre_ap` varchar(55) DEFAULT NULL,
  `tipo_doc` varchar(11) DEFAULT NULL,
  `numero_doc` int(23) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendiz`, `nombre_ap`, `tipo_doc`, `numero_doc`, `telefono`, `id_ficha`) VALUES
(1, 'Juan Sebastián Quintero', 'TI', 1000123456, 3009876543, 1),
(2, 'Valentina Torres Gómez', 'TI', 1000234567, 3018765432, 1),
(3, 'Santiago Andrés Patiño', 'CC', 1001345678, 3027654321, 2),
(4, 'Camila Andrea Betancourt', 'CC', 1001456789, 3036543210, 2),
(5, 'Mateo Alejandro Salinas', 'TI', 1000567890, 3045432109, 3),
(6, 'Laura Sofía Mendoza', 'CC', 1001567890, 3054321098, 4),
(7, 'Daniel Felipe Cáceres', 'TI', 1000678901, 3063210987, 5),
(8, 'Isabella Cruz Rojas', 'CC', 1001678901, 3072109876, 6),
(9, 'Andrés Felipe Medina', 'CC', 1001789012, 3081098765, 7),
(10, 'María José Londoño', 'TI', 1000890123, 3090987654, 8),
(11, 'Samuel Antonio Vargas', 'CC', 1001890123, 3109876543, 9),
(12, 'Lucía Martínez Pérez', 'CC', 1001901234, 3118765432, 10),
(13, 'Emilio José García', 'TI', 1000901234, 3127654321, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencia`
--

CREATE TABLE `tb_competencia` (
  `id_competencia` int(11) NOT NULL,
  `competencia` varchar(12) DEFAULT NULL,
  `cod_compe` varchar(25) DEFAULT NULL,
  `descripcion` varchar(44) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencia`
--

INSERT INTO `tb_competencia` (`id_competencia`, `competencia`, `cod_compe`, `descripcion`, `duracion`, `id_ficha`) VALUES
(1, 'Programación', 'SOFT-001', 'Desarrollar aplicaciones de software', 120, 1),
(2, 'Contabilidad', 'CONT-001', 'Registrar operaciones contables', 90, 2),
(3, 'Gestión Doc.', 'ADM-001', 'Organizar y administrar archivos', 60, 3),
(4, 'Redes LAN', 'SIST-001', 'Instalar y configurar redes', 100, 4),
(5, 'Circuitos', 'ELEC-001', 'Montar circuitos eléctricos', 80, 5),
(6, 'Seguridad Al', 'COC-001', 'Normas de manipulación de alimentos', 40, 6),
(7, 'Gestión Pers', 'RH-001', 'Procesos de contratación', 70, 7),
(8, 'Cadena Sumin', 'LOG-001', 'Administrar cadena logística', 95, 8),
(9, 'Estrategias ', 'MER-001', 'Diseñar planes comerciales', 85, 9),
(10, 'Sist. Frenos', 'MANT-001', 'Reparación de sistemas de frenos', 75, 10),
(11, 'Ilustración ', 'DG-001', 'Ilustración con software', 110, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `numero_ficha` int(11) DEFAULT NULL,
  `programa` varchar(30) DEFAULT NULL,
  `estado` varchar(11) DEFAULT NULL,
  `id_instructor` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `fecha_inicio`, `fecha_fin`, `numero_ficha`, `programa`, `estado`, `id_instructor`, `id_admin`) VALUES
(1, '2025-01-15', '2026-06-30', 25689, 'Análisis y Desarrollo de Softw', 'Activa', 1, 1),
(2, '2025-02-01', '2026-07-15', 25690, 'Contabilidad y Finanzas', 'Activa', 2, 2),
(3, '2024-08-01', '2025-12-15', 24500, 'Gestión Administrativa', 'Finalizada', 3, 3),
(4, '2025-03-10', '2026-08-20', 25700, 'Sistemas Informáticos', 'Activa', 4, 4),
(5, '2025-04-05', '2026-09-10', 25710, 'Electricidad Industrial', 'Activa', 5, 5),
(6, '2024-09-15', '2026-01-30', 24550, 'Cocina', 'Finalizada', 6, 6),
(7, '2025-05-20', '2026-10-25', 25720, 'Recursos Humanos', 'Activa', 7, 7),
(8, '2025-06-01', '2026-11-15', 25730, 'Logística', 'Activa', 8, 8),
(9, '2024-10-01', '2026-02-28', 24600, 'Mercadeo', 'Finalizada', 9, 9),
(10, '2025-07-10', '2026-12-20', 25740, 'Mantenimiento Automotriz', 'Activa', 10, 10),
(11, '2025-08-05', '2027-01-15', 25750, 'Diseño Gráfico', 'Activa', 11, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructores`
--

CREATE TABLE `tb_instructores` (
  `id_instructor` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `tipo_doc` varchar(30) DEFAULT NULL,
  `No_de_doc` int(11) DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructores`
--

INSERT INTO `tb_instructores` (`id_instructor`, `nombre`, `tipo_doc`, `No_de_doc`, `especialidad`, `correo`, `telefono`) VALUES
(1, 'Carlos Andrés Pérez', 'CC', 79562341, 'Desarrollo de Software', 'carlos.perez@sena.edu.co', 3104567890),
(2, 'María Fernanda López', 'CC', 52456789, 'Contabilidad', 'maria.lopez@sena.edu.co', 3112345678),
(3, 'Jorge Armando Ruiz', 'CC', 71234567, 'Administración', 'jorge.ruiz@sena.edu.co', 3129876543),
(4, 'Ana María González', 'CC', 51234567, 'Sistemas', 'ana.gonzalez@sena.edu.co', 3156781234),
(5, 'Luis Eduardo Martínez', 'CC', 75678901, 'Electricidad', 'luis.martinez@sena.edu.co', 3001234567),
(6, 'Sofía Carolina Vargas', 'CC', 53456712, 'Cocina y Gastronomía', 'sofia.vargas@sena.edu.co', 3014567891),
(7, 'Pedro Antonio Sánchez', 'CC', 77123456, 'Recursos Humanos', 'pedro.sanchez@sena.edu.co', 3027891234),
(8, 'Diana Marcela Castro', 'CC', 55678923, 'Logística', 'diana.castro@sena.edu.co', 3045678901),
(9, 'Roberto Carlos Gómez', 'CC', 78901234, 'Mercadeo', 'roberto.gomez@sena.edu.co', 3052345678),
(10, 'Claudia Patricia Rojas', 'CC', 56789012, 'Mantenimiento', 'claudia.rojas@sena.edu.co', 3109871234),
(11, 'Fernando José Medina', 'CC', 72345678, 'Diseño Gráfico', 'fernando.medina@sena.edu.', 3134567890);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administrativos`
--
ALTER TABLE `tb_administrativos`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `fk_aprendices_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD PRIMARY KEY (`id_competencia`),
  ADD KEY `fk_competencia_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `fk_ficha_instructor` (`id_instructor`),
  ADD KEY `fk_ficha_administrativo` (`id_admin`);

--
-- Indices de la tabla `tb_instructores`
--
ALTER TABLE `tb_instructores`
  ADD PRIMARY KEY (`id_instructor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `fk_aprendices_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD CONSTRAINT `fk_competencia_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `fk_ficha_administrativo` FOREIGN KEY (`id_admin`) REFERENCES `tb_administrativos` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_instructor` FOREIGN KEY (`id_instructor`) REFERENCES `tb_instructores` (`id_instructor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
