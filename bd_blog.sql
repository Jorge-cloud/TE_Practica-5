-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2021 a las 08:37:14
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `contenido` text CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `fecha`, `titulo`, `contenido`) VALUES
(7, '2021-05-10', 'Cohete Chino fuera de control', '                                China lanzo con exito el pasado 29 de abril el primer modulo de la que sera la estacion espacial \'Tianhe\' (Armonia Celestial) desde Wenchang, en la provincia China de Haian. Sin embargo, uno de los cohetes que lo hicieron posible el Long March 5B vuelve hacia la Tierra fuera de control, se preve que entre en la atmosfera de nuestro planeta el 8 de mayo, pero desconocen en que lugar puede caer y los daÃ±os que podria causar si lo hace finalmente en zonas habitadas.                                \r\n                            \r\n                            \r\n                            '),
(8, '2021-05-06', 'Starhip de SpaceX aterriza con exito por primera vez y explota.', '                                A la tercera va la vencida. SpaceX ha conseguido aterrizar con exito por primera vez su gigantesca nave Starship. Despues de elevarse en los cielos, el prototipo SN10 ha vuelto a la superficie terrestre y se ha colocado de pie en tierra firme. Eso si, minutos despues ha volado por los aires.                                \r\n                            \r\n                            '),
(9, '2021-05-11', 'Un fisico aeroespacial afirma que puede haber \"algun tipo de vida\" en una luna de Jupiter.', '                                                                                                                                                                                                                                \"Se ha descubierto en la Tierra, que en cualquier lugar donde mires, por muy dura que sea la condicion, hay vida, por lo tanto, ahora que ya sabemos que Marte fue habitable (gracias al Curiosity, predecesor del Perseverance) vamos a intentar encontrar signos de esta vida pasada\".                                \r\nLa investigacion de Sureda, profesor de Aeronautica de la Universidad Politecnica de Catalunia (UPC) y experto en misiones espaciales, esta centrada en la exploracion espacial sostenible y el analisis de arquitectura de misiones interplanetarias.                         \r\n                            \r\n                            \r\n                            \r\n                            \r\n                            \r\n                            \r\n                            ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'jorge', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
