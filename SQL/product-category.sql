

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";






CREATE TABLE `category` (
  `idc` int(11) NOT NULL,
  `name_c` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `category` (`idc`, `name_c`) VALUES
(1, 'accessories'),
(2, 'Mobile'),
(3, 'Computer');


CREATE TABLE `product` (
  `idp` int(11) NOT NULL,
  `name_p` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--

INSERT INTO `product` (`idp`, `name_p`, `price`, `category`) VALUES
(1, 'Product 1', 199, 1),
(2, 'Product 2', 299, 1),
(3, 'Product 3', 2999, 3);


--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idc`);

--

--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idp`),
  ADD KEY `FK_PersonOrder` (`category`);


ALTER TABLE `category`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


--
ALTER TABLE `product`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`category`) REFERENCES `category` (`idc`);
COMMIT;

