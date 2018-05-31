-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2018 a las 16:23:54
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_juegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juegos` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juegos`, `nombre`, `descripcion`) VALUES
(1, 'Memoriza tu día a dí', ': A última hora del día antes de irte a la cama, intenta recordar aspectos que han sucedido durante la jornada, como, por ejemplo, que has desayunado, recordar una de las noticias que viste en el periódico, cuál fue la última persona con la que hablaste por teléfono.'),
(2, 'Bingo', 'Aunque no lo creas, jugar al bingo hace que entrenes algunas de tus funciones cognitivas como el reconocimiento, la discriminación de estímulos, agilidad y rapidez en la búsqueda de símbolos, y coordinación motora entre la mano, el oído y la vista. '),
(3, 'Sudokus', 'Se trata de un rompecabezas numérico que seguro que alguna vez has visto. La resolución del juego requiere paciencia, y concentración. '),
(4, 'Sudokus', 'Se trata de un rompecabezas numérico que seguro que alguna vez has visto. La resolución del juego requiere paciencia, y concentración. '),
(5, 'Encuentra el camino', 'Cuando estés en algún sitio desconocido para ti, intenta mientras vayas caminando fijarte en claves del contexto, como, por ejemplo, un letrero, una señal, una determinada tienda.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_p_cognitivo`
--

CREATE TABLE `juegos_p_cognitivo` (
  `id_juegos` int(11) NOT NULL,
  `id_p_cognitivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `juegos_p_cognitivo`
--

INSERT INTO `juegos_p_cognitivo` (`id_juegos`, `id_p_cognitivo`) VALUES
(1, 3),
(2, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_p_mentales`
--

CREATE TABLE `juegos_p_mentales` (
  `id_juegos` int(11) NOT NULL,
  `id_p_mentales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos_t_mente`
--

CREATE TABLE `juegos_t_mente` (
  `id_juegos` int(11) NOT NULL,
  `id_t_mente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_cognitivo`
--

CREATE TABLE `p_cognitivo` (
  `id_p_cognitivo` int(11) NOT NULL,
  `p_cognitivo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `p_cognitivo`
--

INSERT INTO `p_cognitivo` (`id_p_cognitivo`, `p_cognitivo`, `descripcion`) VALUES
(1, 'Sensación y percepci', 'Las sensaciones son provocadas por los diversos estímulos existentes en nuestro entorno. Nos llegan a través de nuestros sentidos y nos permiten conocer información del mundo exterior. Son datos inmediatos que recibimos del ambiente o de nuestro propio cuerpo.'),
(2, 'Atención', 'A pesar del desorbitado número de elementos que nos acompañan en cada momento, somos capaces de atender a un gran número de estímulos y también de dirigir nuestra atención en función de nuestros intereses.'),
(3, 'Memoria', 'Tenemos diversos tipos de memoria; como la memoria sensorial, la memoria a corto plazo, la memoria de trabajo, la memoria semántica, la memoria autobiográfica, etc. Estas clases interactúan entre ellas, pero no todas dependen de las mismas partes del cerebro.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `p_mentales`
--

CREATE TABLE `p_mentales` (
  `id_p_mentales` int(11) NOT NULL,
  `p_mental` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `p_mentales`
--

INSERT INTO `p_mentales` (`id_p_mentales`, `p_mental`, `descripcion`) VALUES
(1, 'Orientación', ': Es la capacidad que nos permite ser conscientes de la situación en la que nos encontramos en cada momento. La orientación puede ser personal, la cual se refiere a nuestra propia historia e identidad, temporal o espacial. Saber dónde está tu casa, que edad tienes o cómo te llamas, son conocimientos que otorga la orientación.'),
(2, 'Atención', 'Llamamos atención a la capacidad de permanecer activados ante un estímulo determinado, para tener un buen procesamiento de la información. Puede ser atención sostenida, selectiva o alternante.'),
(3, 'Lenguaje', 'Sirve para comunicarnos, y se consideran funciones cognitivas todos sus aspectos, como la expresión, comprensión, vocabulario, denominación, fluidez, discriminación, repetición, escritura y lectura.'),
(4, 'Funciones ejecutivas', 'Son aquellas habilidades que están dirigidas a la consecución de objetivos objetivos. Serían las siguientes: memoria de trabajo, planificación, razonamiento, flexibilidad, inhibición, toma de decisiones, estimación de tiempo, ejecución de doble tarea o multitarea.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Confirmar_contrasena` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `usuario`, `contrasena`, `Confirmar_contrasena`) VALUES
(7, 'sebastian', '12345', '12345'),
(22, 'Mirian', 'laquese', 'laquesea'),
(23, 'jose', '0987', '0987y'),
(24, 'jose', '0987', '0987y'),
(25, 'Solarte97', '12345', '12345'),
(26, 'jesmar01', 'jesus', 'jesus'),
(27, 'jose', '12345', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_mente`
--

CREATE TABLE `t_mente` (
  `id` int(11) NOT NULL,
  `t_mente` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_mente`
--

INSERT INTO `t_mente` (`id`, `t_mente`, `descripcion`) VALUES
(1, 'Transformar la infor', '. Es decir, que a medida que tu organismo reciba información del mundo que nos rodea, antes de que esa información llegue a la central, o sea el cerebro, esta información debe ser transformada para que el cerebro entienda esa información. Para que lo entiendas, digamos que los estímulos están en un idioma que el cerebro debe traducir para entender que están intentando comunicarle.'),
(2, 'Reducción de la info', 'esto quiere decir que el mundo en   el que vivimos está en constante movimiento, y nos llegan infinidad de estímulos en cada momento. Por lo que el cerebro tiene la capacidad de tomar solo la información relevante para ti, y además ordenarla y reducirla para que el gasto energético no sea enorme.'),
(3, 'Elaboración de la in', 'tu cerebro tiene la capacidad de reconstruir y elaborar una historia con sentido a partir de poca información. Normalmente esa información añadida hace que aquellos detalles que no recordamos o a los que no tenemos acceso recompongan lo que si conocemos otorgándole coherencia a lo que intentamos reconstruir.'),
(4, 'Almacenar informació', 'necesitamos un almacén donde guardar toda la información que creemos importante para que cuando la volvamos a utilizar la tengamos accesible y disponible. Ese almacén, querido lector, es tu cerebro.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventajas`
--

CREATE TABLE `ventajas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `id_juego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juegos`);

--
-- Indices de la tabla `p_cognitivo`
--
ALTER TABLE `p_cognitivo`
  ADD PRIMARY KEY (`id_p_cognitivo`);

--
-- Indices de la tabla `p_mentales`
--
ALTER TABLE `p_mentales`
  ADD PRIMARY KEY (`id_p_mentales`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_mente`
--
ALTER TABLE `t_mente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventajas`
--
ALTER TABLE `ventajas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juegos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `p_cognitivo`
--
ALTER TABLE `p_cognitivo`
  MODIFY `id_p_cognitivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `p_mentales`
--
ALTER TABLE `p_mentales`
  MODIFY `id_p_mentales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `t_mente`
--
ALTER TABLE `t_mente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventajas`
--
ALTER TABLE `ventajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
