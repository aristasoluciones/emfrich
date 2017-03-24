-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-03-2017 a las 00:53:28
-- Versión del servidor: 5.5.54-cll
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `emfrichc_emfrich`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE IF NOT EXISTS `categoria` (
  `categoriaId` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `aquien` text NOT NULL,
  `ventajas` text NOT NULL,
  PRIMARY KEY (`categoriaId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoriaId`, `nombre`, `descripcion`, `aquien`, `ventajas`) VALUES
(1, 'CARNE DE CERDO', '\nesta es la descrepcion de carne de puerco', 'A organizacones del sector publico preocupadas por optimizar sus procesos y ofrecer un servcio mas efectivo', '<li>Automatización y control<li>Información en tiempo real<li>Toma de decisiones basados en indicadores <li>Interconexión con otros sistema<li>Reducción de Tiempo y Costos '),
(2, 'CARNE DE RES', 'desccripcion de carne de res', 'A empresa de diferentes sectores con la necesidad de control y automatización y con la visión de crecimiento \n\n', '<li>Automatización y control<li>Información en tiempo real<li>Toma de decisiones basados en indicadores <li>Interconexión con otros sistema<li>Reducción de Tiempo y Costos '),
(3, 'CARNE DE POLLO', 'desccipcion de carne de poll', '', ''),
(4, 'EMBUTIDOS FRIOS 2', 'descipm embutido', '', ''),
(5, 'Otra carne ', 'descricpn otra carne ', '', ''),
(6, 'Soporte Técnico Empresarial', 'En Arista Soluciones sabemos que es importante tener en optimas condiciones todas las herramientas de trabajo de una empresa, es por esto que el soporte tecnico empresarial da solucion inmediata a cualquier incidencia de hardware o software que se presente', 'A empresas de cualquier sector que pueden o no tener departamento de Informática que necesiten apoyo especializado y respuesta inmediata', '\n<li>Reducción de costos en infraestructura<li>Personal calificado.\n<li>Eliminación de costos de capacitación técnica al personal de la empresa.\n<li>Soporte remoto y presencial.'),
(7, 'Hardware y Software', 'Nuestras soluciones pretenden que tu empresa realice la mejor inversión en compra o arrendamiento de hardware y software, esto es factible ya que te brindamos asesoría de equipos y/o marcas ', '\nA empresas que necesiten actualizar su infraestructura', '<li>Planes de financiamiento\r\n<li>\r\nAsesoría de equipos y marcas\r\n<li>Garantia'),
(8, 'pierna', 'pierna ', 'pierna', 'pierna'),
(9, 'pierna', 'pierna ', 'pierna', 'pierna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE IF NOT EXISTS `contacto` (
  `contac_id` int(230) NOT NULL,
  `Direccion` varchar(230) NOT NULL,
  `Telefonos` int(230) NOT NULL,
  `correo` varchar(230) NOT NULL,
  PRIMARY KEY (`contac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`contac_id`, `Direccion`, `Telefonos`, `correo`) VALUES
(1, 'dos', 1212, 'l@l');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE IF NOT EXISTS `ficha` (
  `fichaId` bigint(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `imagenId` int(11) NOT NULL,
  PRIMARY KEY (`fichaId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=320 ;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`fichaId`, `field`, `value`, `imagenId`) VALUES
(2, 'Peso Total', '18 kg', 16),
(3, 'Diametro del Tubo', '37 mm', 16),
(4, 'Conjunto Flexible', '4.27 mts', 16),
(5, 'Motor', 'Honda 5 hp', 16),
(6, 'tamaño', 'tamaño', 17),
(7, 'color', 'color', 17),
(11, 'Peso', '1,180 kg', 19),
(12, 'Motor a Gasolina', 'Honda 20 hp', 19),
(13, 'Ancho Rodillos  ', '902 mm', 19),
(14, 'Vibración del Tambor', 'Delantera', 19),
(15, 'Peso ', '534 kg', 20),
(16, 'Motor a Gasolina', 'Honda 13 hp', 20),
(17, 'Ancho Rodillos', '881 mm', 20),
(18, 'Vibración del Temblar', 'Unica', 20),
(19, 'Peso ', '13 kg', 21),
(20, 'Medida', 'Cabezal 2"', 21),
(21, 'Longitud', '5.5 m', 21),
(22, 'Frecuencia', '12000 rpm', 21),
(23, 'Peso ', '13 kg', 22),
(24, 'Medida', 'Cabezal 2"', 22),
(25, 'Longitud', '5.5 m', 22),
(26, 'Frecuencia', '12000 rpm', 22),
(27, 'Peso Aprox. ', '835 kg', 22),
(28, 'voltaje', '120-240-480 v', 22),
(29, 'Salida Principal', '20 kw', 22),
(30, 'Motor Consumo', 'Diesel 5.5(lph)', 22),
(31, 'Peso Aprox.', '2460 kg', 24),
(32, 'Voltaje', '120-240-480 v', 24),
(33, 'Salida Principal ', '63 kw', 24),
(34, 'Motor Consumo', 'Diesel 27.89(lph)', 24),
(35, 'Peso Aprox.', '1588 kg', 25),
(36, 'Voltaje', '120-240-480 v', 25),
(37, 'Salida Principal ', '56 kw', 25),
(38, 'Motor Consumo', 'diesel 5.5(lph)', 25),
(39, 'Peso Aprox.', '1390 kg', 26),
(40, 'Voltaje', '120-240-480 v', 26),
(41, 'Salida Principal ', '36 kw', 26),
(42, 'Motor Consumo', 'Diesel 9.89(lph)', 26),
(43, 'Peso Aprox. ', '2460 kg', 27),
(44, 'Voltaje', '120-240-480 v', 27),
(45, 'Salida Principal', '90 kva', 27),
(46, 'Motor Consumo', 'Diesel 27.89(lph)', 27),
(47, 'Peso Aprox. ', '3035 kg', 28),
(48, 'Voltaje', '120-240-480 v', 28),
(49, 'Salida Principal', '120 kw', 28),
(50, 'Motor Consumo', 'Diesel 34.89(lph)', 28),
(67, 'Peso', '32 kg', 33),
(68, 'Voltaje', '110 v', 33),
(69, 'Fuerza de Impacto', '60 j', 33),
(70, 'Impacto por Min', '680', 33),
(71, 'Peso', '869 kg', 34),
(72, 'Motor Diesel', 'Jhon Deere', 34),
(73, 'Potencia Max.', '185 cfm', 34),
(74, 'Capacidad', '90 lbs', 34),
(75, 'Peso', '18 kg', 35),
(76, 'Fuerza de Impacto', '28 j', 35),
(77, 'Voltaje', '110 v', 35),
(78, 'Impactos min. ', '1050', 35),
(79, 'Peso', '125 kg', 36),
(80, 'Motor', 'Kohler 12 hp', 36),
(81, 'Profundidad de Corte', '130 mm', 36),
(82, 'Capacidad de Disco', '356 mm', 36),
(83, 'Cat', '416 o Similar', 37),
(84, 'Cat ', '420 o Similar', 37),
(85, 'Opción  ', 'Bote y Martillo', 37),
(86, 'Cat', '120 G o Similar', 38),
(87, 'Cat', '140 G o Similar', 38),
(88, 'Con', 'Ripper Trasero', 38),
(98, 'Peso Total', '1,111 kg', 42),
(99, 'Capacidad ', '6055 lpm', 42),
(100, 'Succión ', '7.6 mts', 42),
(101, 'Descarga Altura', '46 mts', 42),
(111, 'S', 'S', 51),
(113, '1', '1', 54),
(114, '2', '2', 54),
(117, 'e', 'e', 55),
(130, 'Lamparas', '2 y 4', 30),
(131, 'Motor Gasolina', '110 v', 30),
(132, 'Peso Neto', '90 kg', 30),
(133, 'Watts Salida', '4000', 30),
(134, 'Lamparas ', '4', 32),
(135, 'Motro Diesel', '', 32),
(136, 'Peso Neto', '703 kg', 32),
(137, 'Watts de Salida ', '4500 y 6000 watts', 32),
(138, 'Motor', 'Gasolina', 29),
(139, 'Peso Aprox.', '64 kg', 29),
(140, 'Salida Principal ', '3000 y 8000 w', 29),
(141, 'Voltaje', '110 v', 29),
(142, 'Amperaje', '50/25', 31),
(143, 'Peso Aprox.', '386', 31),
(144, 'Rango Corriente', '35-300 amp', 31),
(145, 'Salida Principal ', '10.5 kw', 31),
(146, '3500 Psi', '', 44),
(147, 'Motor a Gasolina', '6 hp', 44),
(148, 'Rango Corriente', '35-300 amp', 44),
(149, 'Salida Principal ', '10.5 kw', 44),
(150, 'Capacidades1', '560 a 1800 lpm', 43),
(151, 'Pesos', '28 a 78 kg', 43),
(152, 'Potencia', '6,8,12 hp', 43),
(153, 'Succión ', '7.6 mts', 43),
(154, 'Capacidades', '560 a 1800 lpm', 41),
(155, 'Pesos', '28 a 78 kg', 41),
(156, 'Potencia', '6,8,12 hp', 41),
(157, 'Succión ', '7.6 mts', 41),
(158, 'Cat  152', '8 Ton', 40),
(159, 'Cat 250', '12 Ton', 40),
(160, 'Potencia', '6,8,12 hp', 40),
(161, 'Succión ', '7.6 mts', 40),
(166, 'Cat ', '320 o Similar', 39),
(167, 'Cat ', '330 o Similar', 39),
(168, 'Opción', 'Bote y Martillo', 39),
(169, 'Succión ', '7.6 mts', 39),
(170, 'Altura', '15.70 Mts', 46),
(171, 'Cap. peso', '227 kg', 46),
(172, 'Mov. Lateral', '11 mts.', 0),
(173, 'Mov. Lateral', '11 mts.', 46),
(174, '', '', 0),
(175, 'Peso Total', '2118 kg', 50),
(176, 'electrica', '110v', 50),
(177, 'Peso Maximo', '350 kg', 0),
(178, 'Plataforma', '2.22 mts', 0),
(179, 'Peso Maximo', '350 kg', 50),
(180, 'Plataforma', '2.22 mts', 50),
(181, 'Peso', '231 kg', 48),
(182, 'Motor', 'Honda 22 cv', 48),
(183, 'Profundidad de Corte ', '241 mm', 48),
(184, 'Cap de Disco', '600 mm', 48),
(185, 'Opción Bote', '', 49),
(186, 'Opción Martillo', '', 49),
(187, 'Capacidad', '1,133 kg', 47),
(188, 'Longitud', '2.61 m', 47),
(189, 'Motor', 'brigss 18 hp', 47),
(190, 'Tracción', '4x4', 47),
(191, 'Motor', 'Diesel 4 cil', 45),
(192, 'Dirección', 'Hidraulica', 45),
(193, 'Cepillo', '2.43 ancho', 45),
(194, 'Ángulo de Barrido', '45 Grados', 45),
(195, 'Peso', '2500 kg', 2),
(196, 'Motor a Gasolina ', 'Perkins 33.6hp', 2),
(197, 'Ancho Rodillos', '1061 mm', 2),
(198, 'Vibración del Temblor ', 'Del/tra', 2),
(199, 'Peso', '118 kg', 4),
(200, 'Motor', 'Honda', 4),
(201, 'Ancho Placa ', '43/70cm', 4),
(202, 'Frecuencia', '6000 rpm', 4),
(203, 'Peso', '73 kg', 1),
(204, 'Motor', 'Robin HE-12D', 1),
(205, 'Fuerza', '1400 kg', 1),
(206, 'Avance', '12m/MIN', 1),
(207, 'Peso', '1560 kg', 3),
(208, 'Motor', 'Diesel', 3),
(209, 'Ancho', '820 mm', 3),
(210, 'Avance', '2.5 Km/hr', 3),
(215, 'Vol Total de Mezcla', '3.5 m3', 6),
(216, 'Motor', 'Diesel 4 cil 111hp', 6),
(217, 'Dirección', 'Hidráulica 2 ejes', 6),
(218, 'Peso en Vacío', '7,350 vacío', 6),
(219, 'Capacidad ', '1 saco', 7),
(220, 'Peso con Motor', '272 kg', 7),
(221, 'Motor', 'Honda 8 hp', 7),
(222, 'Producción', '5 m3', 7),
(223, 'Peso Aprox.', '835 kg', 233),
(224, 'Voltaje', '120-240-480 v', 233),
(225, 'Salida Principal', '20 kw', 233),
(226, 'Motor Consumo', 'Diesel 5.5(lph)', 233),
(227, 'Peso Aprox', '3035 kg', 23),
(228, 'Voltaje', '120-240-480 V', 23),
(229, 'Salida Principal', '120 KW', 23),
(230, 'Motor Consumo', 'Diesel 34.89(lph)', 23),
(231, 'Peso Aprox.', '2460 Kg.', 56),
(232, 'Voltaje', '120-240-480 V', 56),
(233, 'Salida Principal ', '90 Kva', 56),
(234, 'Motor Consumo', 'Diesel 27.89(lph)', 0),
(235, 'Motor Consumo', 'Diesel 27.89(lph)', 56),
(236, '1', '2', 234),
(253, 'Diametro', '36"/46"', 5),
(254, 'Motor', 'Honda', 5),
(255, 'Peso ', '76/141', 5),
(256, 'RPM', '30-55/65-140', 5),
(281, 'Peso de operacion (KG)', '68', 237),
(282, 'Largo (CM)', '180.5', 237),
(283, 'Ancho (CM)', '90', 237),
(284, 'Alto (CM)', '94', 237),
(285, 'Numero de Aspas', '4', 237),
(286, 'Diametro de Aro', '90', 237),
(287, 'Motor', 'Honda GX160', 237),
(288, 'Combustible', 'Gasolina', 237),
(289, 'Cap. del tanque (LTS)', '3.6 ', 237),
(290, 'Potencia del Motor', '5.5', 237),
(291, 'Metodo de Arranque', 'Retractil', 237),
(292, 'RPM del Motor ', '60-100', 237),
(305, 'd', 'd', 238),
(306, 'd', 'd', 236),
(307, 'd', 'd', 237),
(308, 'Alto (CM)', '94', 235),
(309, 'Ancho (CM)', '90', 235),
(310, 'Cap. del tanque (LTS)', '3.6 ', 235),
(311, 'Combustible', 'Gasolina', 235),
(312, 'Diametro de Aro', '90', 235),
(313, 'Largo (CM)', '180.5', 235),
(314, 'Metodo de Arranque', 'Retractil', 235),
(315, 'Motor', 'Honda GX160', 235),
(316, 'Numero de Aspas', '4', 235),
(317, 'Peso de operacion (KG)', '68', 235),
(318, 'Potencia del Motor', '5.5', 235),
(319, 'RPM del Motor ', '60-100', 235);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE IF NOT EXISTS `imagen` (
  `imagenId` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `categoriaId` int(11) NOT NULL,
  `estatus` enum('nuevo','usado') NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  PRIMARY KEY (`imagenId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=236 ;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`imagenId`, `nombre`, `categoriaId`, `estatus`, `ruta`, `modelo`, `descripcion`) VALUES
(1, 'Apisonador', 1, 'nuevo', '1/1.png', '', ''),
(2, 'AR25', 1, 'nuevo', '1/2.png', '', ''),
(3, 'Pata de Cabra', 1, 'nuevo', '1/3.png', '', ''),
(4, 'Placas', 1, 'nuevo', '1/4.png', '', ''),
(5, 'Allanadoras', 2, 'nuevo', '2/5.png', '', ''),
(6, 'Auto Hormiguera', 2, 'nuevo', '2/6.png', '', ''),
(7, 'Revolvedora', 2, 'nuevo', '2/7.png', '', ''),
(16, 'Vibrador', 2, 'nuevo', '2/8.png', 'modelo', ''),
(19, 'Rodillo AR-15', 1, 'nuevo', '1/19.png', 'AR-15', ''),
(20, 'Rodiilo Vibrador PR 8', 1, 'nuevo', '1/20.png', 'PR 8', ''),
(21, 'Vibrador Electrico', 2, 'nuevo', '2/21.jpg', '1', ''),
(23, 'Generador Acústico MQ Power 150', 3, 'nuevo', '3/28.png', '150', ''),
(24, 'Generador Acustico MQ Power 100', 3, 'nuevo', '3/26.png', '100', ''),
(25, 'Generador Acustico MQ Power', 3, 'nuevo', '3/25.png', '70', ''),
(26, 'Generador Acústico MQ Power  ', 3, 'nuevo', '3/24.png', '45', ''),
(29, 'Generador Portátil 2500-8000', 3, 'nuevo', '3/29.png', '2500-8000', ''),
(30, 'Torres de Ilumincaión Portatiles 2 y 4 lamparas de 1000 watts', 3, 'nuevo', '3/30.png', '1000', ''),
(31, 'Planta Soldadora 300 amp', 3, 'nuevo', '3/31.png', '300', ''),
(32, 'Torre Remolcable diesel', 3, 'nuevo', '3/32.png', 'Diesel', ''),
(33, 'Martillo Demoledor', 4, 'nuevo', '4/33.gif', '1', ''),
(34, 'Compresor 185 psi', 4, 'nuevo', '4/34.jpg', '1', ''),
(35, 'Martillo Demoledor ', 4, 'nuevo', '4/35.jpg', '2', ''),
(36, 'Cortadora de Piso', 4, 'nuevo', '4/36.jpg', '1', ''),
(37, 'Retroexcavadora', 5, 'nuevo', '5/37.jpg', '416', ''),
(38, 'Motoconformadora', 5, 'nuevo', '5/38.png', '1', ''),
(39, 'Excavadora', 5, 'nuevo', '5/39.png', '1', ''),
(40, 'Vibrocompactadora', 5, 'nuevo', '5/40.png', '1', ''),
(41, 'Bombas 2', 6, 'nuevo', '6/41.png', '1', ''),
(42, 'Bomba 6" Tragasolidos', 6, 'nuevo', '6/42.png', '1', ''),
(43, 'Bomba Sumergible 3,4,6', 6, 'nuevo', '6/43.png', '1', ''),
(44, 'Hidrolavadora Industrial 1', 6, 'nuevo', '6/44.png', '1', ''),
(45, 'Barredora', 7, 'nuevo', '7/45.png', '', ''),
(46, 'Brazo Telescopico', 7, 'nuevo', '7/46.jpg', '', ''),
(47, 'Carretilla Motorizada\n', 7, 'nuevo', '7/47.png', '', ''),
(48, 'Cortadora Hidrostatica para concreto y asfalto', 7, 'nuevo', '7/48.png', '', ''),
(49, 'Minicargador', 7, 'nuevo', '7/49.png', '', ''),
(50, 'Plataforma 12 mts\n', 7, 'nuevo', '7/50.png', '', ''),
(56, 'Generador Acústico MQ Power ', 3, 'nuevo', '3/56.png', '125 ', ''),
(233, 'Generador Acustico', 3, 'nuevo', '3/22.png', 'MQ POWER', ''),
(235, 'Allanadora Sencilla  edi', 2, 'usado', '2/235.JPG', 'J36H55', 'Nuestras allanadoras cuentan con motores eléctricos y a gasolina, poseen una diversidad de aros de 24 a 48 pulgadas y un manubrio opcional de tipo "Quick Pitch" para una rápida y fácil inclinación de las llanas. \r\nEsta integrada por una caja de transmisión con bandas reforzadas, aletas de enfriamiento y sello de eje de doble labio, de igual manera posee una base de motor con amortiguadores suaves para evitar la vibración. \r\n¿Para que sirven las allanadoras?\r\nSe usan para el acabado de pisos donde se requiere planicidad y terminados profesionales. Perfectas para obras pequeñas y medianas. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manual`
--

CREATE TABLE IF NOT EXISTS `manual` (
  `manualId` int(11) NOT NULL AUTO_INCREMENT,
  `imagenId` int(11) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`manualId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `manual`
--

INSERT INTO `manual` (`manualId`, `imagenId`, `ruta`, `nombre`) VALUES
(1, 1, '1/Manual Apisonador.pdf', 'Manual de Apisonador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE IF NOT EXISTS `puestos` (
  `puestosid` int(230) NOT NULL,
  `nombre` text NOT NULL,
  `sucursal` text NOT NULL,
  `foto` text NOT NULL,
  PRIMARY KEY (`puestosid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`puestosid`, `nombre`, `sucursal`, `foto`) VALUES
(1, 'EMBUTIDOS FRIOS CHIAPANECOS.', 'COLABORADORES', '<LI><H2>DIRECCION GENERAL</H2><LU><H3>Lic. Jesus Mancialla Hernandez</H3> </LU></LI> <LI><H2>Direccion De Administracion</H2><LU><H3>Lic. Maricela De LA Cruz Vazquez</H3> </LU></LI>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE IF NOT EXISTS `sucursal` (
  `sucursalid` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `productos` text NOT NULL,
  `encargado` text NOT NULL,
  `direccion` varchar(30) NOT NULL,
  PRIMARY KEY (`sucursalid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`sucursalid`, `nombre`, `productos`, `encargado`, `direccion`) VALUES
(0, '"LA NOVENA"', 'DISTRIBUDORA Y COMERZIALIZADORA DE CARNE DE RES, CERDO Y POLLO.', 'SRA. ROSY', '9A NORTE, NIÑO DE ATOCHA.'),
(1, '"SAN JUAN"', '<h4><li>puerco</li><lu>cuero</lu></h4>', 'PACO', '2A ORIENTE'),
(2, '"GRANJAS"', 'cuatro', 'polet', '3a oreinte'),
(3, '"LA NOVENA"', 'DISTRIBUDORA Y COMERZIALIZADORA DE CARNE DE RES, CERDO Y POLLO.', 'SRA. ROSY', '9A NORTE, NIÑO DE ATOCHA.'),
(4, 'CARNICERIA "PACO"', 'COMERCIALIZADORA DE CARNE DE RES, CERDO Y POLLO.', 'PASCUAL PÉREZ', '7A AVENIDA SUR. COL. CENTRO'),
(5, 'CARNICERIA "SALOMON"', 'COMERCIALIZADORA DE CARNE DE RES, CERDO Y POLLO.', 'SALOMON', '2a calle oreinte Col. centro'),
(6, 'CARNICERIA CYNTHIA', 'COMERCIALIZACIÓN DE CARNE DE RES, CERDO Y POLLO.', 'SRA. CYNTHIA ', 'PLAN DE AYALA.'),
(7, 'TERAN', 'COMERCIALIZADORA DE CARNE DE RES, CERDO Y POLLO.', 'SRA. MARIA', 'COLONIA TERAN'),
(8, 'CARNICERIA "JUAN"', 'DISTRIBUIDORA DE CARNE DE RES, CERDO Y POLLO.', 'SR. JUAN CARLOS MANCILLA.', '4A. AVENIDA SUR COL. CENTRO.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `tipo` enum('administrador','usuario') NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userId`, `usuario`, `password`, `nombre`, `apellidos`, `telefono`, `correo`, `tipo`) VALUES
(7, 'admin', 'admin2016', 'admin', 'admin', '', '', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `videoId` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `imagenId` int(11) NOT NULL,
  PRIMARY KEY (`videoId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`videoId`, `description`, `url`, `imagenId`) VALUES
(1, 'este es un video', '<iframe width="430" height="350" src="//www.youtube.com/embed/R05qbD_iNE0?autoplay=1&autohide=1&modestbranding=1" frameborder="0" allowfullscreen></iframe>', 1),
(2, 'asd', 'asd', 51),
(3, 'DESCRIPCION UNO', 'URL1', 51),
(4, 'S', 'S', 51),
(6, '1', '1', 54),
(7, '2', '2', 54),
(8, '2', '2', 54),
(12, 'e', 'e', 55),
(15, 'Allanadora Whiteman ', 'https://youtu.be/mmX7CVlKMUs', 237),
(17, 'd', 'd', 236),
(18, 'd', 'd', 237),
(19, 'Allanadora Whiteman ', 'https://youtu.be/mmX7CVlKMUs', 235);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
