
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `Direccion` (
  `Direccion_id` int(100) NOT NULL,
  `Direccion_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Produccion` (
  `Produccion_id` int(100) NOT NULL,
  `Produccion_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Guion` (
  `Guion_id` int(100) NOT NULL,
  `Guion_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Musica` (
  `Musica_id` int(100) NOT NULL,
  `Musica_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Fotografia` (
  `Fotografia_id` int(100) NOT NULL,
  `Fotografia_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Montaje` (
  `Montaje_id` int(100) NOT NULL,
  `Montaje_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Clasificacion` (
  `Clasificacion_id` int(100) NOT NULL,
  `Clasificacion_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Idioma` (
  `Idioma_id` int(100) NOT NULL,
  `Idioma_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `FichaTecnica` (
  `Titulo_id` int(100) NOT NULL,
  `Diraccion_id` int(100) NOT NULL,
  `Produccion_id` int(100) NOT NULL,
  `Guion_id` int(100) NOT NULL,
  `Basada` text NOT NULL,
  `Musica_id` int(100) NOT NULL,
  `Fotografia_id` int(100) NOT NULL,
  `Montaje_id` int(100) NOT NULL,
  `Protagonistas` text NOT NULL,
  `Pais_id` int(100) NOT NULL,
  `Año_id` int(100) NOT NULL,
  `Estreno_id` int(100) NOT NULL,
  `Genero_id` text NOT NULL,
  `Duracion_id` int(100) NOT NULL,
  `Clasificacion_id` int(100) NOT NULL,
  `idioma_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `Productora` (
  `Productora_id` int(100) NOT NULL,
  `Productora_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Distribuidora` (
  `Distribuidora_id` int(100) NOT NULL,
  `Distribuidora_nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Compañias` (
  `Productora_id` int(100) NOT NULL,
  `Productora_id` int(100) NOT NULL,
  `Prosupuesto` int(100) NOT NULL,
  `Recaudacion` int(100) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



ALTER TABLE `Direccion`
  ADD PRIMARY KEY (`Direccion_id`);

ALTER TABLE `Produccion`
  ADD PRIMARY KEY (`Produccion_id`);

ALTER TABLE `Guion`
  ADD PRIMARY KEY (`Guion_id`);

ALTER TABLE `Musica`
  ADD PRIMARY KEY (`Musica_id`);

ALTER TABLE `Fotografia`
  ADD PRIMARY KEY (`Fotografica_id`);

ALTER TABLE `Montaje`
  ADD PRIMARY KEY (`Montaje_id`);

ALTER TABLE `Direccion`
  MODIFY `Direccion_id` int(100) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Produccion`
  MODIFY `Produccion_id` int(100) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Guion`
  MODIFY `Guion_id` int(100) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Musica`
  MODIFY `Musica_id` int(100) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Fotografia`
  MODIFY `Fotografica_id` int(100) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Montaje`
  MODIFY `Montaje_id` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
