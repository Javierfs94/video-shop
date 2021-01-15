-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2021 a las 13:06:26
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `video_shop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `date` year(4) NOT NULL,
  `duration` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `films`
--

INSERT INTO `films` (`id`, `title`, `description`, `date`, `duration`) VALUES
(1, ' Wonder Woman 1984 ', 'En 1984, en plena Guerra Fría, Diana Prince, conocida como Wonder Woman, se enfrenta al empresario Maxwell Lord y a su antigua amiga Barbara Minerva / Cheetah, una villana que posee fuerza y agilidad sobrehumanas. ', 2020, 151),
(2, 'Soul', '¿Alguna vez te has preguntado de dónde provienen tu pasión, tus sueños y tus intereses? ¿Qué es lo que te hace ser... tú? Pixar te lleva en un viaje desde las calles de Nueva York a los reinos cósmicos para descubrir las respuestas a las preguntas más importantes de la vida.', 2020, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frutas`
--

CREATE TABLE `frutas` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` int(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `frutas`
--

INSERT INTO `frutas` (`id`, `nombre`, `descripcion`, `precio`, `fecha`) VALUES
(1, 'Cereza 0', 'Descripcion de la fruta 0', 0, '2021-01-03'),
(2, 'Cereza 1', 'Descripcion de la fruta 1', 1, '2021-01-03'),
(3, 'Cereza 2', 'Descripcion de la fruta 2', 2, '2021-01-03'),
(4, 'Cereza 3', 'Descripcion de la fruta 3', 3, '2021-01-03'),
(5, 'Cereza 4', 'Descripcion de la fruta 4', 4, '2021-01-03'),
(6, 'Cereza 5', 'Descripcion de la fruta 5', 5, '2021-01-03'),
(7, 'Cereza 6', 'Descripcion de la fruta 6', 6, '2021-01-03'),
(8, 'Cereza 7', 'Descripcion de la fruta 7', 7, '2021-01-03'),
(9, 'Cereza 8', 'Descripcion de la fruta 8', 8, '2021-01-03'),
(10, 'Cereza 9', 'Descripcion de la fruta 9', 9, '2021-01-03'),
(11, 'Cereza 10', 'Descripcion de la fruta 10', 10, '2021-01-03'),
(12, 'Cereza 11', 'Descripcion de la fruta 11', 11, '2021-01-03'),
(13, 'Cereza 12', 'Descripcion de la fruta 12', 12, '2021-01-03'),
(14, 'Cereza 13', 'Descripcion de la fruta 13', 13, '2021-01-03'),
(15, 'Cereza 14', 'Descripcion de la fruta 14', 14, '2021-01-03'),
(16, 'Cereza 15', 'Descripcion de la fruta 15', 15, '2021-01-03'),
(17, 'Cereza 16', 'Descripcion de la fruta 16', 16, '2021-01-03'),
(18, 'Cereza 17', 'Descripcion de la fruta 17', 17, '2021-01-03'),
(19, 'Cereza 18', 'Descripcion de la fruta 18', 18, '2021-01-03'),
(20, 'MANZANA 20', 'Descripcion de la manzanida 19', 20, '2021-01-03'),
(24, 'PERA', 'De la vida', 5, '2021-01-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2020_12_29_111721_create_users_table', 1),
(19, '2021_01_03_122258_create_frutas_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `nick` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `nick`, `email`, `password`, `image`, `created_at`, `updated_at`, `remember_token`) VALUES
(7, NULL, 'Francisco Javier', NULL, NULL, 'javifs94@gmail.com', '$2y$10$pevUDxSwpxtlsSKqm.LXWO6K4MEeVSakubY/0raCNj0abMjpqTiwq', NULL, '2021-01-04 23:38:34', '2021-01-04 23:38:34', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `frutas`
--
ALTER TABLE `frutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `frutas`
--
ALTER TABLE `frutas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
