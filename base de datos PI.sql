CREATE TABLE `rep_principal` (
  `id` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `decha_creacion` date NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `rep_secundario` (
  `id` int(10) NOT NULL,
  `id_repPrincipal` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `fecha_creacion` date NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `recurso` (
  `id` int(10) NOT NULL,
  `id_repSecundario` int NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `url` varchar(250) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `fecha_creacion` date NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `usuario` (
  `id` int(10) NOT NULL,
  `nombres` varchar(25) NOT NULL,
  `apellidoM` varchar(20) NOT NULL,
  `apellidoP` varchar(20) NOT NULL,
  `noCuenta` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `roll` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
