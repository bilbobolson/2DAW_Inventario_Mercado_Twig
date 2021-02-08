/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `idIte` int(11) NOT NULL,
  `idPue` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `stock` smallint(6) NOT NULL,
  `alta` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`idIte`, `idPue`, `item`, `stock`, `alta`) VALUES
(1, 1, 'Lettuce - Belgian Endive', 8, '2020-11-18'),
(2, 3, 'Container - Hngd Cll Blk 7x7x3', 35, '2020-10-23'),
(3, 8, 'Sandwich Wrap', 82, '2020-02-02'),
(4, 4, 'Wine - Fat Bastard Merlot', 33, '2019-12-01'),
(5, 6, 'Apples - Spartan', 69, '2020-09-18'),
(6, 5, 'Cheese - Pont Couvert', 68, '2020-03-25'),
(7, 8, 'Eggroll', 38, '2020-01-20'),
(8, 8, 'Beef - Tenderlion, Center Cut', 8, '2020-11-09'),
(9, 2, 'Dried Peach', 58, '2020-06-12'),
(10, 2, 'Milk - Condensed', 17, '2020-09-20'),
(11, 6, 'Pork - Sausage, Medium', 68, '2020-03-02'),
(12, 8, 'Bread - Crusty Italian Poly', 69, '2020-03-09'),
(13, 4, 'Appetizer - Sausage Rolls', 98, '2020-02-12'),
(14, 6, 'Club Soda - Schweppes, 355 Ml', 94, '2020-06-24'),
(15, 2, 'Oranges - Navel, 72', 74, '2020-06-29'),
(16, 7, 'Rhubarb', 93, '2020-03-25'),
(17, 7, 'Pasta - Angel Hair', 14, '2020-08-23'),
(18, 6, 'Chinese Foods - Cantonese', 15, '2020-06-12'),
(19, 4, 'Shrimp - 150 - 250', 36, '2020-10-17'),
(20, 6, 'Wine - Pinot Noir Latour', 70, '2020-03-11'),
(21, 6, 'Shrimp - 150 - 250', 98, '2020-05-02'),
(22, 6, 'Sour Puss - Tangerine', 16, '2019-12-28'),
(23, 4, 'Quail - Whole, Boneless', 65, '2020-08-15'),
(24, 1, 'Cake - Cheese Cake 9 Inch', 29, '2020-04-06'),
(25, 8, 'Creamers - 10%', 24, '2020-02-10'),
(26, 7, 'Plate Pie Foil', 40, '2020-02-02'),
(27, 8, 'Vaccum Bag - 14x20', 100, '2020-03-07'),
(28, 8, 'Sauce - Alfredo', 97, '2020-10-03'),
(29, 2, 'Praline Paste', 49, '2020-03-31'),
(30, 4, 'Ecolab Digiclean Mild Fm', 85, '2020-04-25'),
(31, 8, 'Pernod', 67, '2020-03-29'),
(32, 8, 'Rolled Oats', 87, '2020-04-22'),
(33, 1, 'Yogurt - Raspberry, 175 Gr', 48, '2020-09-21'),
(34, 6, 'Peas - Frozen', 54, '2019-12-26'),
(35, 7, 'Blue Curacao - Marie Brizard', 83, '2020-07-04'),
(36, 3, 'Cheese - Parmesan Cubes', 86, '2020-01-26'),
(37, 4, 'Lettuce - Romaine, Heart', 5, '2020-03-04'),
(38, 3, 'Pastry - Baked Cinnamon Stick', 60, '2020-11-21'),
(39, 3, 'Duck - Legs', 8, '2020-09-08'),
(40, 2, 'Wine - Pinot Grigio Collavini', 25, '2020-07-12'),
(41, 6, 'Galliano', 59, '2020-01-27'),
(42, 7, 'Cheese - Cheddar, Mild', 36, '2020-05-20'),
(43, 2, 'Wine - Acient Coast Caberne', 88, '2020-05-01'),
(44, 3, 'Squeeze Bottle', 88, '2020-05-31'),
(45, 6, 'Carbonated Water - Blackcherry', 29, '2020-01-26'),
(46, 8, 'Garam Masala Powder', 67, '2020-04-02'),
(47, 6, 'Wine - Cahors Ac 2000, Clos', 41, '2020-09-14'),
(48, 8, 'Parsley - Fresh', 91, '2020-11-09'),
(49, 1, 'Thyme - Dried', 30, '2020-05-15'),
(50, 7, 'Ham - Cooked Italian', 53, '2020-07-30'),
(51, 1, 'Cheese - Comte', 75, '2020-08-18'),
(52, 6, 'Wine - Redchard Merritt', 97, '2020-06-04'),
(53, 6, 'Tomatoes - Grape', 87, '2020-04-15'),
(54, 6, 'Mushroom - Shitake, Fresh', 78, '2020-05-23'),
(55, 6, 'Nantucket - Carrot Orange', 33, '2019-12-23'),
(56, 7, 'Lychee', 87, '2020-05-04'),
(57, 3, 'Mushroom - King Eryingii', 37, '2020-03-06'),
(58, 2, 'Wine - Chianti Classico Riserva', 47, '2019-12-18'),
(59, 8, 'Cheese - Bocconcini', 52, '2020-05-04'),
(60, 7, 'Mussels - Frozen', 21, '2020-05-20'),
(61, 3, 'Fudge - Cream Fudge', 85, '2020-09-05'),
(62, 1, 'Veal - Nuckle', 96, '2020-01-19'),
(63, 4, 'Salami - Genova', 83, '2020-04-12'),
(64, 2, 'Pea - Snow', 13, '2020-08-19'),
(65, 6, 'Cup - Translucent 7 Oz Clear', 64, '2020-05-03'),
(66, 2, 'Wine - Magnotta, Merlot Sr Vqa', 7, '2020-03-27'),
(67, 1, 'Assorted Desserts', 42, '2019-12-12'),
(68, 7, 'Longos - Chicken Caeser Salad', 30, '2019-12-07'),
(69, 3, 'Oil - Hazelnut', 84, '2020-06-25'),
(70, 1, 'Beef Cheek Fresh', 79, '2020-05-02'),
(71, 2, 'Ham - Black Forest', 100, '2020-06-17'),
(72, 8, 'Pasta - Linguini, Dry', 53, '2020-11-21'),
(73, 6, 'Table Cloth 144x90 White', 52, '2020-06-20'),
(74, 7, 'Dried Cranberries', 55, '2020-06-03'),
(75, 3, 'Chicken - Tenderloin', 63, '2019-11-28'),
(76, 1, 'Rum - Dark, Bacardi, Black', 5, '2020-09-19'),
(77, 2, 'Soup - Campbells Pasta Fagioli', 58, '2019-11-28'),
(78, 6, 'Dc - Frozen Momji', 62, '2020-11-09'),
(79, 2, 'Beer - Labatt Blue', 74, '2020-08-28'),
(80, 8, 'Cheese - Grana Padano', 79, '2020-02-08'),
(81, 6, 'Wine - White, Chardonnay', 93, '2020-01-02'),
(82, 3, 'Cabbage - Savoy', 11, '2020-05-07'),
(83, 3, 'Eggplant - Baby', 3, '2020-04-30'),
(84, 4, 'Saskatoon Berries - Frozen', 65, '2020-07-22'),
(85, 2, 'Roe - Lump Fish, Black', 87, '2020-07-30'),
(86, 3, 'Mudslide', 76, '2020-03-13'),
(87, 1, 'Beef - Short Ribs', 74, '2020-09-08'),
(88, 2, 'Veal - Kidney', 2, '2020-02-02'),
(89, 1, 'Octopus - Baby, Cleaned', 95, '2020-04-26'),
(90, 6, 'Wine - Lou Black Shiraz', 23, '2020-06-24'),
(91, 7, 'Lettuce - Mini Greens, Whole', 75, '2020-10-28'),
(92, 6, 'Tobasco Sauce', 34, '2020-02-29'),
(93, 4, 'Greens Mustard', 43, '2020-04-03'),
(94, 1, 'Pur Source', 75, '2020-08-21'),
(95, 1, 'Pail For Lid 1537', 70, '2020-03-13'),
(96, 2, 'Bok Choy - Baby', 41, '2020-06-06'),
(97, 3, 'Beef - Ground Medium', 27, '2020-07-02'),
(98, 8, 'Lamb Rack Frenched Australian', 58, '2020-11-07'),
(99, 8, 'Pear - Halves', 84, '2020-03-19'),
(100, 7, 'Beef Ground Medium', 62, '2020-04-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `idPue` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `planta` tinyint(4) DEFAULT NULL,
  `numero` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`idPue`, `nombre`, `ubicacion`, `planta`, `numero`) VALUES
(1, 'Frutería Conchi', 'Mercado Central', 1, 2),
(2, 'Pescadería Hermanos Pacheco', 'Mercado Central', 1, 4),
(3, 'Hermanos Molina', 'Mercado Central', 2, 1),
(4, 'Pescadería \"La riqueza\"', 'Mercado de Allende', 1, 5),
(5, 'Frutas y verduras Ankaladri', 'Mercado de Allende', 1, 7),
(6, 'Mariscos \"La Mari\"', 'Mercado de Allende', 1, 8),
(7, 'Frutos secos Carrillón', 'Mercado de Allende', 2, 2),
(8, 'Droguería Nairoeh', 'Mercado de Allende', 2, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`idIte`),
  ADD KEY `fk_items_puestos` (`idPue`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`idPue`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `idIte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `idPue` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `fk_items_departamento` FOREIGN KEY (`idPue`) REFERENCES `puestos` (`idPue`),
  ADD CONSTRAINT `fk_items_puestos` FOREIGN KEY (`idPue`) REFERENCES `puestos` (`idPue`);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
