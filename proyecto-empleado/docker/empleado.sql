SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: empleado
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla administrador
--

CREATE TABLE administrador (
  idAdministrador int(11) NOT NULL,
  nombre varchar(60) NOT NULL,
  apellido varchar(60) NOT NULL,
  tipoIdentificacion varchar(25) NOT NULL,
  numeroIdentificacion int(11) NOT NULL,
  contrasena varchar(50) NOT NULL,
  email varchar(100) NOT NULL,
  direccion varchar(50) NOT NULL,
  telefono varchar(10) NOT NULL,
  idPedido int(11) NOT NULL,
  idProducto int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla administrador
--

INSERT INTO administrador (idAdministrador, nombre, apellido, tipoIdentificacion, numeroIdentificacion, contrasena, email, direccion, telefono, idPedido, idProducto) VALUES
(1, 'Juan Carlos', 'Valbuena Capera', 'T.I', 1072491687, 'oldschool1', 'juancarlosvalbuenacapera201@gmail.com', 'calle20Bsur#10-11', '3011231492', 1, 1),
(2, 'Erick Santiago ', 'Reyes Roa', 'C.C', 1011092437, 'oldschool2', 'santis.roa10@gmail.com', 'calle27Bsur#5-25', '3150563427', 2, 2),
(3, 'Fabian Alexis', 'Rodriguez Acosta', 'C.C', 1011721512, 'oldschool3', 'fabianrodriguez111@gmail.com', 'calle10Bsur#1-8', '3007325919', 3, 3),
(4, 'Marcos Andres', 'Hernandez Villa ', 'C.C', 1011092435, 'oldschool4', 'marcosvilla112@gmail.com', 'calle27Bsur#5-12', '3227892457', 4, 4),
(5, 'Sharick ', 'Aldana Urrego', 'C.C', 1012789214, 'oldschool5', 'sharickaldana205@gmail.com', 'calle20Bsur#10-13', '3150563441', 5, 5),
(6, 'Carlos Daniel', 'Novillo Jara', 'C.C', 1072494768, 'oldschool6', 'carlos.jara10@gmail.com', 'calle25Bsur#5-26', '3227892385', 6, 6),
(7, 'Jorge Alfonso', 'Llenera Vargas', 'C.C', 1011721517, 'oldschool7', 'jorgevargas456@gmail.com', 'calle16Bsur#2-11', '3504722276', 7, 7),
(8, 'Andres Averto ', 'Suarez Pineda', 'C.C', 1014721518, 'oldschool7', 'andrespineda45@gmail.com', 'calle10Bsur#1-9', '3154892313', 8, 8),
(9, 'Marlon Roberto', 'Banegas Castro', 'C.C', 1011091433, 'oldschool8', 'robertobanegas115@gmail.com', 'calle25Bsur#5-17', '3227893455', 9, 9),
(10, 'Luis Santiago', 'Perez Silva', 'C.C', 1032759217, 'oldschool10', 'santiagosilva458@gmail.com', 'calle10Bsur#14-11', '3145892413', 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla administradores
--

CREATE TABLE administradores (
  documento int(10) NOT NULL,
  Nombre varchar(255) NOT NULL,
  Correo varchar(200) NOT NULL,
  Contraseña varchar(20) NOT NULL,
  Codigo_Administrador int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla categoria
--

CREATE TABLE categoria (
  idCategoria int(11) NOT NULL,
  nombreCategoria varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla categoria
--

INSERT INTO categoria (idCategoria, nombreCategoria) VALUES
(1, 'Ropa,Gorras,Zapatos'),
(2, ' ropa y gorras'),
(3, 'zapatos'),
(4, ' ofertas '),
(5, 'zapatos '),
(6, 'ropa y gorras'),
(7, 'ofertas'),
(8, 'zapatos'),
(9, 'ropa y gorras'),
(10, 'ofertas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla detallepedido
--

CREATE TABLE detallepedido (
  idDetallepedido int(11) NOT NULL,
  cantidad int(11) NOT NULL,
  precioUnitario float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla detallepedido
--

INSERT INTO detallepedido (idDetallepedido, cantidad, precioUnitario) VALUES
(1, 10, 180000),
(2, 5, 200000),
(3, 7, 250000),
(4, 2, 150000),
(5, 25, 300000),
(6, 50, 500000),
(7, 22, 100000),
(8, 3, 230000),
(9, 1, 50000),
(10, 11, 70000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla empleadocliente
--

CREATE TABLE empleadocliente (
  idEmpleado int(5) NOT NULL,
  nombreEmpleado varchar(40) NOT NULL,
  correoEmpleado varchar(40) NOT NULL,
  passwordEmpleado varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla empleadocliente
--

INSERT INTO empleadocliente (idEmpleado, nombreEmpleado, correoEmpleado, passwordEmpleado) VALUES
(0, ' Sebastián Torres', 'sebastian.torres@email.com', '12345678'),
(1, 'Carlos Pérez', 'carlos.perez@email.com', 'carlos12345'),
(2, 'Andrea Gómez', 'andrea.gomez@email.com', 'andrea123456787'),
(3, 'Mariana López', 'mariana.lopez@email.com', 'mariana123'),
(4, ' Daniel Rodríguez', 'daniel.rodriguez@email.com', 'daniel123'),
(5, ' Valentina Ramírez', 'valentina.ramirez@email.com', 'valentina00'),
(7, 'Juan Pérez', 'juan.perez@email.com', 'contraseña12345678'),
(10, 'mariana nicol', 'marinicol10@email.com', 'nicol123455'),
(46, 'Carlos Pérez santo', 'carlos.perez12333sa@email.com', 'carlo2323245'),
(901, 'Lucia Maria Torres', 'luciamaria12@email.com', 'luciamaria12'),
(12334824, 'juan valbuena', 'juanvvv@gmail.com', '12345678'),
(75343123, 'Samanta Ruizzz', 'valentina.ramirezzz@email.com', '12334565'),
(914023982, 'sofia valencia', 'sofivalencia@gmail.com', '123456789'),
(1011092437, 'santiago roa', 'santiroa10@gmail.com', 'santi12345'),
(1011905482, 'marcos Lopez', 'maaaarcooos@gmail.com', '123456789'),
(1072493692, 'Ana maria', 'anamaria@gmail.com', '123456'),
(1083438532, 'Lucas vasquez', 'lucasvasquez@gmail.com', '123456'),
(1092321321, 'Nicolas Capera', 'nicolascapera@gmail.com', '123213dsa'),
(1093221321, 'javier lopez', 'javierlopez12@gmail.com', '12345asd'),
(1231231231, 'camila riana', 'camiliaaariana@gmail.com', 'camilaa123'),
(1234567890, 'mariana nicol', 'marinicol@gmail.com', 'nicol1234'),
(1234578665, 'marcos perez', 'marcospere@gmail.com', 's12345678'),
(1457894263, 'salome paez', 'salomitopaez45@gmail.com', '12345678'),
(2131231231, 'fredy kamila', 'fredykaka@gmail.com', '$2y$12$IxImNHLpEqxYgZ0L9pAt/OLePfRInxhIrKc7g1dBzGpBtKLg.9VIy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla envio
--

CREATE TABLE envio (
  idEnvio int(11) NOT NULL,
  fecha date NOT NULL,
  estado varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla envio
--

INSERT INTO envio (idEnvio, fecha, estado) VALUES
(1, '2024-07-20', '5/5'),
(2, '2024-07-18', '5/5'),
(3, '2024-07-19', '5/5'),
(4, '2024-07-10', '4/5'),
(5, '2024-07-24', '4/5'),
(6, '2024-06-06', '3/5'),
(7, '2024-07-08', '5/5'),
(8, '2024-05-31', '4/5'),
(9, '2024-06-04', '4/5'),
(10, '2024-07-01', '5/5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla failed_jobs
--

CREATE TABLE failed_jobs (
  id bigint(20) UNSIGNED NOT NULL,
  uuid varchar(255) NOT NULL,
  connection text NOT NULL,
  queue text NOT NULL,
  payload longtext NOT NULL,
  exception longtext NOT NULL,
  failed_at timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla inventario
--

CREATE TABLE inventario (
  id int(11) NOT NULL,
  Nombre varchar(255) NOT NULL,
  Categoria varchar(100) NOT NULL,
  Precio float NOT NULL,
  Stock int(11) NOT NULL,
  Vendidos int(11) NOT NULL,
  fecha_llegada date NOT NULL,
  fecha_salida date NOT NULL,
  Estado tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla inventario
--

INSERT INTO inventario (id, Nombre, Categoria, Precio, Stock, Vendidos, fecha_llegada, fecha_salida, Estado) VALUES
(2, 'buzo los angeles', 'ropa', 210, 70, 50, '2025-03-06', '2025-03-28', 1),
(4, 'for one ', 'zapatos', 20000, 59, 23, '2025-04-08', '2025-05-01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla migrations
--

CREATE TABLE migrations (
  id int(10) UNSIGNED NOT NULL,
  migration varchar(255) NOT NULL,
  batch int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla migrations
--

INSERT INTO migrations (id, migration, batch) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_25_204647_change_passwordempleado_length_on_empleadocliente_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla oferta
--

CREATE TABLE oferta (
  idOferta int(11) NOT NULL,
  descuento varchar(5) NOT NULL,
  fechaInicio date NOT NULL,
  fechaFin date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla oferta
--

INSERT INTO oferta (idOferta, descuento, fechaInicio, fechaFin) VALUES
(1, '50%', '2024-05-15', '2024-06-15'),
(2, '45%', '2024-06-16', '2024-07-16'),
(3, '40%', '2024-07-01', '2024-08-01'),
(4, '60%', '2024-07-02', '2024-08-02'),
(5, '30%', '2024-07-17', '2024-08-17'),
(6, '20%', '2024-08-01', '2024-08-08'),
(7, '50%', '2024-06-10', '2024-08-20'),
(8, '15%', '2024-05-10', '2024-07-11'),
(9, '5%', '2024-07-01', '2024-08-02'),
(10, '10%', '2024-06-15', '2024-07-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla password_reset_tokens
--

CREATE TABLE password_reset_tokens (
  email varchar(255) NOT NULL,
  token varchar(255) NOT NULL,
  created_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla pedido
--

CREATE TABLE pedido (
  idPedido int(11) NOT NULL,
  fecha date NOT NULL,
  disponibilidad varchar(25) NOT NULL,
  idEnvio int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla pedido
--

INSERT INTO pedido (idPedido, fecha, disponibilidad, idEnvio) VALUES
(1, '2024-05-14', 'disponible', 1),
(2, '2024-05-14', 'disponible', 2),
(3, '2024-06-10', 'disponible', 3),
(4, '2024-06-16', 'disponible', 4),
(5, '2024-05-03', 'disponible', 5),
(6, '2024-08-08', 'no disponible', 6),
(7, '2024-06-01', 'disponible', 7),
(8, '2024-08-04', 'disponible ', 8),
(9, '2024-07-29', 'disponible', 9),
(10, '2024-08-10', 'no disponible', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla pedidos
--

CREATE TABLE pedidos (
  id int(11) NOT NULL,
  producto varchar(100) NOT NULL,
  color varchar(50) NOT NULL,
  talla varchar(10) NOT NULL,
  cantidad int(11) NOT NULL,
  nombre_cliente varchar(100) NOT NULL,
  direccion text NOT NULL,
  telefono varchar(20) NOT NULL,
  email varchar(100) NOT NULL,
  fecha_pedido datetime NOT NULL,
  total decimal(10,2) DEFAULT NULL,
  estado varchar(20) DEFAULT 'pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla pedidos
--

INSERT INTO pedidos (id, producto, color, talla, cantidad, nombre_cliente, direccion, telefono, email, fecha_pedido, total, estado) VALUES
(1, 'Buzo Los Angeles', 'Negro', 'S', 1, 'juan perez', 'calñe12312', '28371293213', 'juanperez@gmail.com', '2025-04-11 22:32:25', 200000.00, 'pendiente'),
(2, 'Buzo Los Angeles', 'Negro', 'S', 1, 'juanito alimaña', 'calle35#38', '3031334903943', 'juanitoalimañana@gmail.com', '2025-04-12 00:39:46', 200000.00, 'pendiente'),
(3, 'Buzo Los Angeles', 'Negro', 'M', 1, 'loreto angeles', 'calle #28', '3039298329832', 'loretoangeles@gmail.con', '2025-04-12 07:47:26', 200000.00, 'pendiente'),
(4, 'Buzo Los Angeles', 'Negro', 'M', 1, 'juan alberto suarez', 'calle 48 b sur #', '392329083213', 'suarezz@gmail.com', '2025-04-14 19:50:16', 200000.00, 'pendiente'),
(5, 'Buzo Los Angeles', 'Negro', 'S', 1, 'katerin ibarguen', 'calle 38 #92', '30002932832', 'katetetete@gmail.com', '2025-04-14 20:39:17', 200000.00, 'pendiente'),
(6, 'Buzo Los Angeles', 'Negro', 'M', 1, 'pirlo ', 'cale 35 # 25', '3032893232', 'pirlo232@gmail.com', '2025-04-14 20:42:05', 200000.00, 'pendiente'),
(7, 'Buzo Los Angeles', 'Negro', 'M', 1, 'kamila la morahs', 'calle 47 # 27', '39032930232', 'kamiiiii@gmail.com', '2025-04-14 22:49:56', 200000.00, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla personal_access_tokens
--

CREATE TABLE personal_access_tokens (
  id bigint(20) UNSIGNED NOT NULL,
  tokenable_type varchar(255) NOT NULL,
  tokenable_id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) NOT NULL,
  token varchar(64) NOT NULL,
  abilities text DEFAULT NULL,
  last_used_at timestamp NULL DEFAULT NULL,
  expires_at timestamp NULL DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla producto
--

CREATE TABLE producto (
  idProducto int(11) NOT NULL,
  nombre varchar(60) NOT NULL,
  descripcion varchar(100) NOT NULL,
  precio float NOT NULL,
  stock int(11) NOT NULL,
  idProveedor int(11) NOT NULL,
  idCategoria int(11) NOT NULL,
  idOferta int(11) NOT NULL,
  idResena int(11) NOT NULL,
  idDetallepedido int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla producto
--

INSERT INTO producto (idProducto, nombre, descripcion, precio, stock, idProveedor, idCategoria, idOferta, idResena, idDetallepedido) VALUES
(1, 'buso oversize ', 'fabricadas en algodón', 150000, 2122, 1, 1, 1, 1, 1),
(2, 'Zapatos', ' hechos con cuero', 200000, 2123, 2, 2, 2, 2, 2),
(3, 'Gorras', 'fabricada en algodón de alta calidad', 180000, 2124, 3, 3, 3, 3, 3),
(4, 'Zapatos', ' hechos con cuero', 250000, 2125, 4, 4, 4, 4, 4),
(5, 'buso oversize ', 'fabricadas en algodón', 210000, 2126, 5, 5, 5, 5, 5),
(6, 'zapatos', ' hechos con cuero', 220000, 2127, 6, 6, 6, 6, 6),
(7, 'Gorras', 'fabricada en algodón de alta calidad', 130000, 2128, 7, 7, 7, 7, 7),
(8, 'Buso oversize', 'fabricadas en algodón', 210000, 2129, 8, 8, 8, 8, 8),
(9, 'Zapatos', ' hechos con cuero', 170000, 2130, 9, 9, 9, 9, 9),
(10, 'Gorras', 'fabricada en algodón de alta calidad', 150000, 2131, 10, 10, 10, 10, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla proveedor
--

CREATE TABLE proveedor (
  idProveedor int(11) NOT NULL,
  nombre varchar(60) NOT NULL,
  apellido varchar(60) NOT NULL,
  tipoIdentificacion varchar(25) NOT NULL,
  numeroIdentificacion int(11) NOT NULL,
  telefono varchar(10) NOT NULL,
  direccion varchar(50) NOT NULL,
  email varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla proveedor
--

INSERT INTO proveedor (idProveedor, nombre, apellido, tipoIdentificacion, numeroIdentificacion, telefono, direccion, email) VALUES
(1, 'Nicolas', 'Quintero Pizano', 'C.C', 1124214212, '3006712189', 'calle29Bsur#40-7', 'antonioquintero11@gmail.com'),
(2, 'David Alejandro', 'Gonzales Mosquera', 'C.C', 1022146121, '3049127221', 'calle50Bsur#27-5', 'richargonzales00@gmail.com'),
(3, 'Jorge Adrian', 'Ramos Peralta', 'C.C', 1102542141, '3018212912', 'calle69Bsur#2-1', 'adrianramos@gmail.com'),
(4, 'Lionel Danilo', 'Condor Tundama', 'C.C', 1529102761, '3047812412', 'Cr 5 No. 9 - 08', 'Lioneldanilocondortundama@gmail.com'),
(5, 'Mario Alvaro', 'Sanchez Diaz', 'C.C', 1049627812, '3158129215', 'Calle20#24-05', 'Mario_sanchez10@gmail.com'),
(6, 'Lina', 'Zapata Riaño', 'C.C', 1075812312, '3168935372', 'Calle42#15-34', 'linazapata11@gmail.com'),
(7, 'Alex Javier', 'Valencia Suarez', 'C.C', 1015862942, '3019261242', 'Calle 11 # 4-50', 'valenciaSuarez0@gmail.com'),
(8, 'Dylan', 'Restrepo Herrera', 'C.C', 1028723123, '3176124124', 'Calle 63 # 50-20', 'restrepodylan90@gmail.com'),
(9, 'Jesus Ivan', 'Morales Mejia', 'C.C', 1675834122, '3008924612', 'Calle71 #1-69', 'jesusivan_*@gmail.com'),
(10, 'Sara Daniela', 'Osorio Parra', 'C.C', 1054241257, '3001117827', 'Calle13#22-4', 'saraosorio912@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla resena
--

CREATE TABLE resena (
  idResena int(11) NOT NULL,
  calificacion varchar(5) NOT NULL,
  comentario varchar(100) NOT NULL,
  fechaResena date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla resena
--

INSERT INTO resena (idResena, calificacion, comentario, fechaResena) VALUES
(1, '5/5', 'muy buena calidad', '2024-08-26'),
(2, ' 5/5', 'Exelente atecion al cliente', '2024-07-20'),
(3, ' 5/5', 'Envio  Rapido del pedido', '2024-07-15'),
(4, '4/4', 'Buena relación calidad-precio', '2024-07-31'),
(5, '4/4', 'Altamente recomendable', '2024-07-03'),
(6, '5/5', 'La gorra tiene un ajuste perfecto y el material es de alta calidad', '2024-07-31'),
(7, '4/4', 'La calidad supera mis expectativas', '2024-08-09'),
(8, '5/5', '\r\nMe encanta, definitivamente compraré más', '2024-07-02'),
(9, '4/4', 'El diseño es espectacular', '2024-06-20'),
(10, '3/3', 'el pedido se demoro un poco', '2024-07-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla transacciones
--

CREATE TABLE transacciones (
  id_transaccion int(11) NOT NULL,
  fecha date NOT NULL,
  tipo enum('ingreso','gasto') NOT NULL,
  categoria varchar(100) NOT NULL,
  descripcion text DEFAULT NULL,
  monto decimal(10,2) NOT NULL,
  metodo_pago varchar(50) NOT NULL,
  referencia varchar(50) DEFAULT NULL,
  creado_en datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla transacciones
--

INSERT INTO transacciones (id_transaccion, fecha, tipo, categoria, descripcion, monto, metodo_pago, referencia, creado_en) VALUES
(2, '2025-04-25', 'ingreso', 'zapatos', 'zapatoos', 200000.00, 'efectivo', '22222', '2025-04-22 11:58:42'),
(3, '2025-04-17', 'gasto', 'ropa', 'buzo', 10000.00, 'tarjeta', '9999', '2025-04-22 11:59:43'),
(4, '2025-04-18', 'ingreso', 'Ropa', 'algodooon', 700000.00, 'tarjeta', '444', '2025-04-22 12:29:49'),
(5, '2025-04-19', 'ingreso', 'zapatos', 'tennis Lv Stake', 800000.00, 'tarjeta', '8888', '2025-04-22 12:40:57'),
(6, '2025-04-16', 'ingreso', 'zapatos', 'zapatos jordan', 500.00, 'efectivo', '789', '2025-04-22 14:56:24'),
(7, '2025-04-18', 'ingreso', 'zapatos', 'tennis lv stake', 200000.00, 'tarjeta', '1111', '2025-04-24 14:36:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla users
--

CREATE TABLE users (
  id bigint(20) UNSIGNED NOT NULL,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  email_verified_at timestamp NULL DEFAULT NULL,
  password varchar(255) NOT NULL,
  remember_token varchar(100) DEFAULT NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla usuarios
--

CREATE TABLE usuarios (
  id int(11) NOT NULL,
  nombre varchar(100) NOT NULL,
  ciudad varchar(100) NOT NULL,
  direccion varchar(100) NOT NULL,
  telefono varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  contrasena varchar(100) NOT NULL,
  idPedido int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla usuarios
--

INSERT INTO usuarios (id, nombre, ciudad, direccion, telefono, email, contrasena, idPedido) VALUES
(35, 'Erick Santigo Reyes Roa ', 'Bogota', 'calle 80 b # 18 b 69 sur ', '3227892491', 'santis.roa10@gmail.com', '$2y$10$dqtvbfWuWYOrjB7P0Zf1de5X8wk5MBvB2dgafU7IO2egCgBrY7Wr.', 0),
(36, 'Nicolas Vergara Zapata ', 'Cali ', 'calle 20 b sur # 15 q 10', '3046179619', '22nicolss22@gmail.com', '$2y$10$YiutbZyH3XO.MjGQ24ZW8.ZpEvX0elVHrzfWYPgqoScCtTf5aEyfy', 0),
(37, 'Juan Sebastian Velazco Aguirre', 'Medellin', 'calle 19 A sur # 5 b 23', '3008743218', 'Sebastianaguirre07@gmail.com', '$2y$10$ADrTV140uMTJAOlhOlCzwOUnmeL4U4ULp.j8916b1TpvZMzkFBqPe', 0),
(38, 'Pablo Rodriguez', 'Cartagena', 'calle 1 a norte # 36 E 99', '3158924531', 'Pablorodriguez10@gmail.com', '$2y$10$/IBe3T9WAVMgub7YKavbAuoMbUYBp1npNt.rN8XPZUxjDU1ELKcTq', 0),
(39, 'Sofia Hernandez Perez ', 'Bucaramanga', 'calle 75 B sur # 2 A 77', '3224789246', 'sofihernandezzz@gmail.com', '$2y$10$i6/4an21XfTbOoima9LsueQ3EIcR7hhdbinIG.PGBb0lAcrkBnrgK', 0),
(40, 'Samuel Felipe Vargas Cupitre', 'Barranquilla', 'calle 45 b sur # 28 A 1', '3119289924', 'cupitrevargas_00@gmail.com', '$2y$10$H0CFVeCB7ZKWAxg1nIGNguaEqHPARHDr/my868h7VVlE6fsoja.Gu', 0),
(41, 'Javier Ramirez Gómez', 'Bogota', 'calle 1 A sur # 115 B ', '3152426667', 'javierramirez@gmail.com', '$2y$10$UMKN6l0VFYwjsNrUi5.QmOyFI3MxxqO3Jw4eugvTNqcKMP.aUvnvm', 0),
(42, 'Nicole Sharick  Jaramillo', 'Medellin', 'calle 19 A sur # 5 b 23', '3001999242', 'nicoleee1@gmail.com', '$2y$10$cgOAsCkPpEILGaYKmzfB1uI9DFvMyWDefX89haV2na5FsSntDOUkC', 0),
(43, 'Daniel Alejandro Paez Peña', 'Ibague ', 'calle 222 A Norte # 9 B 2', '3119924232', 'alejandropaeeez@gmail.com', '$2y$10$S.G2d8NWldexpmKv4MPrieTD0eRav.mVh7HGy03.HVlo1iUpjZXYC', 0),
(50, 'sofia lopez', 'bogota', 'calle 28 # 23 b sur', '3023983272', 'sofiaalopeeez@gmail.com', '$2y$10$DlReVyS.5uuyIIcyX9vcpOwy6GB.ymu9miuORTxHNJFXy6gTXrwb2', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla administrador
--
ALTER TABLE administrador
  ADD PRIMARY KEY (idAdministrador),
  ADD KEY idPedido (idPedido),
  ADD KEY idProducto (idProducto);

--
-- Indices de la tabla categoria
--
ALTER TABLE categoria
  ADD PRIMARY KEY (idCategoria);

--
-- Indices de la tabla detallepedido
--
ALTER TABLE detallepedido
  ADD PRIMARY KEY (idDetallepedido);

--
-- Indices de la tabla empleadocliente
--
ALTER TABLE empleadocliente
  ADD PRIMARY KEY (idEmpleado);

--
-- Indices de la tabla envio
--
ALTER TABLE envio
  ADD PRIMARY KEY (idEnvio);

--
-- Indices de la tabla failed_jobs
--
ALTER TABLE failed_jobs
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY failed_jobs_uuid_unique (uuid);

--
-- Indices de la tabla inventario
--
ALTER TABLE inventario
  ADD PRIMARY KEY (id);

--
-- Indices de la tabla migrations
--
ALTER TABLE migrations
  ADD PRIMARY KEY (id);

--
-- Indices de la tabla oferta
--
ALTER TABLE oferta
  ADD PRIMARY KEY (idOferta);

--
-- Indices de la tabla password_reset_tokens
--
ALTER TABLE password_reset_tokens
  ADD PRIMARY KEY (email);

--
-- Indices de la tabla pedido
--
ALTER TABLE pedido
  ADD PRIMARY KEY (idPedido),
  ADD KEY idEnvio (idEnvio);

--
-- Indices de la tabla pedidos
--
ALTER TABLE pedidos
  ADD PRIMARY KEY (id);

--
-- Indices de la tabla personal_access_tokens
--
ALTER TABLE personal_access_tokens
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY personal_access_tokens_token_unique (token),
  ADD KEY personal_access_tokens_tokenable_type_tokenable_id_index (tokenable_type,tokenable_id);

--
-- Indices de la tabla producto
--
ALTER TABLE producto
  ADD PRIMARY KEY (idProducto),
  ADD KEY idProveedor (idProveedor),
  ADD KEY idCategoria (idCategoria),
  ADD KEY idOferta (idOferta),
  ADD KEY idResena (idResena),
  ADD KEY idDetallepedido (idDetallepedido);

--
-- Indices de la tabla proveedor
--
ALTER TABLE proveedor
  ADD PRIMARY KEY (idProveedor);

--
-- Indices de la tabla resena
--
ALTER TABLE resena
  ADD PRIMARY KEY (idResena);

--
-- Indices de la tabla transacciones
--
ALTER TABLE transacciones
  ADD PRIMARY KEY (id_transaccion);

--
-- Indices de la tabla users
--
ALTER TABLE users
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY users_email_unique (email);

--
-- Indices de la tabla usuarios
--
ALTER TABLE usuarios
  ADD PRIMARY KEY (id),
  ADD KEY idPedido (idPedido);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla administrador
--
ALTER TABLE administrador
  MODIFY idAdministrador int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla categoria
--
ALTER TABLE categoria
  MODIFY idCategoria int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6622;

--
-- AUTO_INCREMENT de la tabla detallepedido
--
ALTER TABLE detallepedido
  MODIFY idDetallepedido int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla empleadocliente
--
ALTER TABLE empleadocliente
  MODIFY idEmpleado int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2131231232;

--
-- AUTO_INCREMENT de la tabla envio
--
ALTER TABLE envio
  MODIFY idEnvio int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla failed_jobs
--
ALTER TABLE failed_jobs
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla inventario
--
ALTER TABLE inventario
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla migrations
--
ALTER TABLE migrations
  MODIFY id int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla oferta
--
ALTER TABLE oferta
  MODIFY idOferta int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla pedido
--
ALTER TABLE pedido
  MODIFY idPedido int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla pedidos
--
ALTER TABLE pedidos
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla personal_access_tokens
--
ALTER TABLE personal_access_tokens
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla producto
--
ALTER TABLE producto
  MODIFY idProducto int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1731;

--
-- AUTO_INCREMENT de la tabla proveedor
--
ALTER TABLE proveedor
  MODIFY idProveedor int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla resena
--
ALTER TABLE resena
  MODIFY idResena int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla transacciones
--
ALTER TABLE transacciones
  MODIFY id_transaccion int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla users
--
ALTER TABLE users
  MODIFY id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla usuarios
--
ALTER TABLE usuarios
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla categoria
--
ALTER TABLE categoria
  ADD CONSTRAINT categoria_ibfk_1 FOREIGN KEY (idCategoria) REFERENCES producto (idCategoria);

--
-- Filtros para la tabla producto
--
ALTER TABLE producto
  ADD CONSTRAINT producto_ibfk_1 FOREIGN KEY (idProducto) REFERENCES administrador (idAdministrador),
  ADD CONSTRAINT producto_ibfk_2 FOREIGN KEY (idProveedor) REFERENCES proveedor (idProveedor),
  ADD CONSTRAINT producto_ibfk_3 FOREIGN KEY (idDetallepedido) REFERENCES detallepedido (idDetallepedido),
  ADD CONSTRAINT producto_ibfk_4 FOREIGN KEY (idOferta) REFERENCES oferta (idOferta),
  ADD CONSTRAINT producto_ibfk_5 FOREIGN KEY (idResena) REFERENCES resena (idResena);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */