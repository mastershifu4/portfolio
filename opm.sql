-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 21 2021 г., 02:15
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `opm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `bk_gorod`
--

CREATE TABLE `bk_gorod` (
  `id_bk_gorod` int NOT NULL,
  `dk_naimenovanie` varchar(11) DEFAULT NULL,
  `id_gorod` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `bk_gorod`
--

INSERT INTO `bk_gorod` (`id_bk_gorod`, `dk_naimenovanie`, `id_gorod`) VALUES
(1, 'кпкпкп', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `bk_jurnal_soobcheniy`
--

CREATE TABLE `bk_jurnal_soobcheniy` (
  `id_bk_jurnal_soobcheniy` int NOT NULL,
  `bk_data` date DEFAULT NULL,
  `id_nomer_telephona` int DEFAULT NULL,
  `id_soobchenie` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_jurnal_zvonkov`
--

CREATE TABLE `bk_jurnal_zvonkov` (
  `id_bk_jurnal_zvonkov` int NOT NULL,
  `data_zvonka` datetime(6) DEFAULT NULL,
  `nachalo_zvonka` datetime(6) DEFAULT NULL,
  `konetc_zvonka` datetime(6) DEFAULT NULL,
  `Nomer_drygogo_abonenta` int DEFAULT NULL,
  `Id_tip_zvonka` int DEFAULT NULL,
  `Id_nomer_telephona` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_klient`
--

CREATE TABLE `bk_klient` (
  `id_bk_klient` int NOT NULL,
  `bk_familya` varchar(11) DEFAULT NULL,
  `bk_name` varchar(11) DEFAULT NULL,
  `bk_otchestvo` varchar(11) DEFAULT NULL,
  `bk_data_rochdeniya` date DEFAULT NULL,
  `bk_pasportniye_danniye` int DEFAULT NULL,
  `bk_adress` varchar(11) DEFAULT NULL,
  `id_tip_klienta` int DEFAULT NULL,
  `id_gorod` int DEFAULT NULL,
  `id_klient` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_menedjer`
--

CREATE TABLE `bk_menedjer` (
  `id_bk_menedjer` int NOT NULL,
  `bk_FIO` varchar(11) DEFAULT NULL,
  `bk_pay` int DEFAULT NULL,
  `id_menedjer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_nomer_telephona`
--

CREATE TABLE `bk_nomer_telephona` (
  `id_bk_nomer_telephona` int NOT NULL,
  `bk_naimenovanie` int DEFAULT NULL,
  `id_nomer_telephona` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_oplata_tarifa`
--

CREATE TABLE `bk_oplata_tarifa` (
  `id_bk_oplata_tarifa` int NOT NULL,
  `bk_data_oplati` date DEFAULT NULL,
  `bk_summa_oplati` int DEFAULT NULL,
  `id_nomer_telephona` int DEFAULT NULL,
  `id_opata_tarifa` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_podcluchenie_menedjera`
--

CREATE TABLE `bk_podcluchenie_menedjera` (
  `id_bk_podcluchenie_menedjera` int NOT NULL,
  `Data` date DEFAULT NULL,
  `Id_nomer_telephona` int DEFAULT NULL,
  `Id_menedjer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_podcluchenie_tarifa`
--

CREATE TABLE `bk_podcluchenie_tarifa` (
  `id_bk_podcluchenie_tarifa` int NOT NULL,
  `bk_data_zakclucheniya` date DEFAULT NULL,
  `id_podcluchenie_tarifa` int DEFAULT NULL,
  `id_prodavetc` int DEFAULT NULL,
  `id_tarif` int DEFAULT NULL,
  `id_klient` int DEFAULT NULL,
  `id_nomer_telephona` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_prodavetc`
--

CREATE TABLE `bk_prodavetc` (
  `id_bk_prodavetc` int NOT NULL,
  `bk_familya` varchar(11) DEFAULT NULL,
  `bk_name` varchar(11) DEFAULT NULL,
  `bk_otchestvo` varchar(11) DEFAULT NULL,
  `bk_pasportniyi_daniyi` int DEFAULT NULL,
  `bk_pol` varchar(8) DEFAULT NULL,
  `id_prodavetc` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_spravochnoe_buro`
--

CREATE TABLE `bk_spravochnoe_buro` (
  `id_bk_spravochnoe_buro` int NOT NULL,
  `bk_data_obrachenie` date DEFAULT NULL,
  `id_spravochnoe_buro` int DEFAULT NULL,
  `id_nomer_telephona` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bk_tarif`
--

CREATE TABLE `bk_tarif` (
  `id_bk_tarif` int NOT NULL,
  `bk_tarif` varchar(11) DEFAULT NULL,
  `bk_opisaniye` varchar(11) DEFAULT NULL,
  `bk_tcena_za_mesetc` int DEFAULT NULL,
  `id_tarif` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `gorod`
--

CREATE TABLE `gorod` (
  `Id_gorod` int NOT NULL,
  `naimenovanie` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `gorod`
--

INSERT INTO `gorod` (`Id_gorod`, `naimenovanie`) VALUES
(1, 'Москва'),
(2, 'Домодедово');

--
-- Триггеры `gorod`
--
DELIMITER $$
CREATE TRIGGER `TrGorodInsert` BEFORE INSERT ON `gorod` FOR EACH ROW BEGIN
INSERT INTO log_gorod SET
log_gorod.log_date = CURRENT_DATE,
log_gorod.log_time = CURRENT_TIME,
log_gorod.log_user = CURRENT_USER,
log_gorod.log_message = 'Запись добавлина',
log_gorod.id_gorod = new.id_gorod;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrGorodUpdate` BEFORE UPDATE ON `gorod` FOR EACH ROW BEGIN
INSERT INTO log_gorod SET
log_gorod.log_date = CURRENT_DATE,
log_gorod.log_time = CURRENT_TIME,
log_gorod.log_user = CURRENT_USER,
log_gorod.log_message = 'Обновление записи',
log_gorod.Id_gorod = OLD.id_gorod;

INSERT INTO bk_gorod SET
bk_gorod.id_gorod = OLD.ID_gorod,
bk_gorod.dk_naimenovanie = OLD.naimenovanie;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrLogGorod` BEFORE DELETE ON `gorod` FOR EACH ROW BEGIN
INSERT INTO log_gorod SET
log_gorod.log_date = CURRENT_DATE,
log_gorod.log_time = CURRENT_TIME,
log_gorod.log_user = CURRENT_USER,
log_gorod.log_message = 'Удаление записи',
log_gorod.Id_gorod = old.id_gorod;

INSERT INTO bk_gorod SET
bk_gorod.dk_naimenovanie = OLD.naimenovanie,
bk_gorod.id_gorod = OLD.id_gorod;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `jurnal_soobcheniy`
--

CREATE TABLE `jurnal_soobcheniy` (
  `ID_jurnal_soobchenie` int NOT NULL,
  `Data` date DEFAULT NULL,
  `Id_nomer_telephone` int DEFAULT NULL,
  `Id_soobchenie` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `jurnal_soobcheniy`
--

INSERT INTO `jurnal_soobcheniy` (`ID_jurnal_soobchenie`, `Data`, `Id_nomer_telephone`, `Id_soobchenie`) VALUES
(1, '2021-12-15', 1, 1),
(2, '2021-12-15', 2, 2);

--
-- Триггеры `jurnal_soobcheniy`
--
DELIMITER $$
CREATE TRIGGER `TrJurnalSoobcheniy` BEFORE DELETE ON `jurnal_soobcheniy` FOR EACH ROW BEGIN
INSERT INTO log_jurnal_soobcheniy SET
log_jurnal_soobcheniy.log_data = CURRENT_DATE,
log_jurnal_soobcheniy.log_time = CURRENT_TIME,
log_jurnal_soobcheniy.log_user = CURRENT_USER,
log_jurnal_soobcheniy.log_massage = 'Удаление записи',
log_jurnal_soobcheniy.log_izm_data = old.data,
log_jurnal_soobcheniy.Id_jurnal_soobcheniy = old.ID_jurnal_soobchenie;

INSERT INTO bk_jurnal_soobcheniy SET
bk_jurnal_soobcheniy.id_soobchenie = OLD.ID_jurnal_soobchenie,
bk_jurnal_soobcheniy.bk_data = OLD.data,
bk_jurnal_soobcheniy.id_nomer_telephona = OLD.ID_nomer_telephone;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrJurnalSoobcheniyInsert` BEFORE INSERT ON `jurnal_soobcheniy` FOR EACH ROW BEGIN
INSERT INTO log_jurnal_soobcheniy SET
log_jurnal_soobcheniy.log_data = CURRENT_DATE,
log_jurnal_soobcheniy.log_time = CURRENT_TIME,
log_jurnal_soobcheniy.log_user = CURRENT_USER,
log_jurnal_soobcheniy.log_massage = 'Обновление записи',
log_jurnal_soobcheniy.Id_jurnal_soobcheniy = new.ID_jurnal_soobchenie;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrJurnalSoobcheniyUpdate` BEFORE UPDATE ON `jurnal_soobcheniy` FOR EACH ROW BEGIN
INSERT INTO log_jurnal_soobcheniy SET
log_jurnal_soobcheniy.log_data = CURRENT_DATE,
log_jurnal_soobcheniy.log_time = CURRENT_TIME,
log_jurnal_soobcheniy.log_user = CURRENT_USER,
log_jurnal_soobcheniy.log_massage = 'Обновление записи',

log_jurnal_soobcheniy.Id_jurnal_soobcheniy = old.ID_jurnal_soobchenie;

INSERT INTO bk_jurnal_soobcheniy SET
bk_jurnal_soobcheniy.Id_soobchenie = OLD.ID_jurnal_soobchenie ,
bk_jurnal_soobcheniy.bk_data = OLD.data,
bk_jurnal_soobcheniy.id_nomer_telephona = OLD.ID_nomer_telephone;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `jurnal_zvonkov`
--

CREATE TABLE `jurnal_zvonkov` (
  `Id_jurnal_zvonka` int NOT NULL,
  `Data_zvonka` datetime DEFAULT NULL,
  `Nachalo_zvonka` datetime(6) DEFAULT NULL,
  `Konetc_zvonka` datetime(6) DEFAULT NULL,
  `Nomer_drygogo_abonenta` char(18) DEFAULT NULL,
  `Id_tip_zvonka` int DEFAULT NULL,
  `Id_nomer_telephona` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `jurnal_zvonkov`
--

INSERT INTO `jurnal_zvonkov` (`Id_jurnal_zvonka`, `Data_zvonka`, `Nachalo_zvonka`, `Konetc_zvonka`, `Nomer_drygogo_abonenta`, `Id_tip_zvonka`, `Id_nomer_telephona`) VALUES
(1, '2021-12-07 14:41:45', '2021-12-15 14:41:46.000000', '2021-12-15 15:00:00.000000', '12331', 1, 1),
(2, '2021-12-14 14:40:15', '2021-12-15 14:41:46.000000', '2021-12-15 15:00:00.000000', '12331', 1, 2),
(3, '2021-12-14 15:08:14', '2021-12-12 15:08:14.000000', '2021-12-12 15:30:00.000000', '12331', 1, 1),
(4, '2021-12-14 15:08:14', '2021-12-12 15:22:14.000000', '2021-12-12 15:30:14.000000', '11111', 2, 2);

--
-- Триггеры `jurnal_zvonkov`
--
DELIMITER $$
CREATE TRIGGER `TrJurnalZvankovUpdate` BEFORE UPDATE ON `jurnal_zvonkov` FOR EACH ROW BEGIN
INSERT INTO log_jurnal_zvonkov SET
log_jurnal_zvonkov.log_date = CURRENT_DATE,
log_jurnal_zvonkov.log_time = CURRENT_TIME,
log_jurnal_zvonkov.log_user = CURRENT_USER,
log_jurnal_zvonkov.log_massage = 'Обновление записи',
log_jurnal_zvonkov.Id_log_jurnal_zvonkov = old.Id_jurnal_zvonka;

INSERT INTO bk_jurnal_zvonkov SET
bk_jurnal_zvonkov.data_zvonka = OLD.data_zvonka,
bk_jurnal_zvonkov.Prodolchitelnost = OLD.Prodolchitelnost,
bk_jurnal_zvonkov.nachalo_zvonka = OLD.nachalo_zvonka,
bk_jurnal_zvonkov.konetc_zvonka = OLD.konetc_zvonka, 
bk_jurnal_zvonkov.Nomer_drygogo_abonenta = OLD.Nomer_drygogo_abonenta,
bk_jurnal_zvonkov.Id_tip_zvonka = OLD.Id_tip_zvonka,
bk_jurnal_zvonkov.Id_nomer_telephona = old.Id_nomer_telephona;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrJurnalZvonkov` BEFORE DELETE ON `jurnal_zvonkov` FOR EACH ROW BEGIN
INSERT INTO log_jurnal_zvonkov SET
log_jurnal_zvonkov.log_date = CURRENT_DATE,
log_jurnal_zvonkov.log_time = CURRENT_TIME,
log_jurnal_zvonkov.log_user = CURRENT_USER,
log_jurnal_zvonkov.log_massage = 'Удаление записи',
log_jurnal_zvonkov.Id_log_jurnal_zvonkov = old.Id_jurnal_zvonka;

INSERT INTO bk_jurnal_zvonkov SET
bk_jurnal_zvonkov.data_zvonka = OLD.data_zvonka,
bk_jurnal_zvonkov.Prodolchitelnost = OLD.Prodolchitelnost,
bk_jurnal_zvonkov.nachalo_zvonka = OLD.nachalo_zvonka,
bk_jurnal_zvonkov.konetc_zvonka = OLD.konetc_zvonka, 
bk_jurnal_zvonkov.Nomer_drygogo_abonenta = OLD.Nomer_drygogo_abonenta,
bk_jurnal_zvonkov.Id_tip_zvonka = OLD.Id_tip_zvonka,
bk_jurnal_zvonkov.Id_nomer_telephona =old.Id_nomer_telephona;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrJurnalZvonkovInsert` BEFORE INSERT ON `jurnal_zvonkov` FOR EACH ROW BEGIN
INSERT INTO log_jurnal_zvonkov SET
log_jurnal_zvonkov.log_date = CURRENT_DATE,
log_jurnal_zvonkov.log_time = CURRENT_TIME,
log_jurnal_zvonkov.log_user = CURRENT_USER,
log_jurnal_zvonkov.log_massage = 'Запись обновлена',
log_jurnal_zvonkov.Id_log_jurnal_zvonkov = new.Id_jurnal_zvonka;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrProdolchitelnostZvonka` AFTER INSERT ON `jurnal_zvonkov` FOR EACH ROW BEGIN
INSERT INTO prodolzhitelnost_zvonka set
prodolzhitelnost_zvonka.Prodolshitelnost=timediff(new.Konetc_zvonka, new.Nachalo_zvonka), 
prodolzhitelnost_zvonka.id_jurnal_zvonkov = new.Id_jurnal_zvonka;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `klient`
--

CREATE TABLE `klient` (
  `ID_klient` int NOT NULL,
  `Familiya` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Otchestvo` varchar(20) DEFAULT NULL,
  `Adress` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Data_rochdeniya` date DEFAULT NULL,
  `Pasportniye_danniye` int DEFAULT NULL,
  `Id_tip_klienta` int DEFAULT NULL,
  `Id_gorod` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `klient`
--

INSERT INTO `klient` (`ID_klient`, `Familiya`, `Name`, `Otchestvo`, `Adress`, `Data_rochdeniya`, `Pasportniye_danniye`, `Id_tip_klienta`, `Id_gorod`) VALUES
(1, 'Рагозин ', 'Илья', 'Игоревич', 'Г. Домодедово', '2011-07-13', 444411111, 1, 2),
(2, 'Винакур', 'Иван', 'Владимирович', 'Г. Москва', '2011-09-16', 111122222, 1, 1);

--
-- Триггеры `klient`
--
DELIMITER $$
CREATE TRIGGER `TrKlient` BEFORE DELETE ON `klient` FOR EACH ROW BEGIN
INSERT INTO log_klient SET
log_klient.log_date = CURRENT_DATE,
log_klient.log_time = CURRENT_TIME,
log_klient.log_user = CURRENT_USER,
log_klient.log_massage = 'Удаление записи',
log_klient.Id_log_klient = old.Id_klient;

INSERT INTO bk_klient SET
bk_klient.bk_familya = OLD.Familiya,
bk_klient.bk_name = OLD.name,
bk_klient.bk_otchestvo = OLD.otchestvo,
bk_klient.bk_data_rochdeniya = OLD.data_rochdeniya, 
bk_klient.bk_pasportniye_danniye = OLD.pasportniye_danniye,
bk_klient.bk_adress = OLD.adress,
bk_klient.id_tip_klienta = OLD.id_tip_klienta,
bk_klient.id_gorod = OLD.id_gorod,
bk_klient.id_klient = OLD.id_klient;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrKlientInsert` BEFORE INSERT ON `klient` FOR EACH ROW BEGIN
INSERT INTO log_klient SET
log_klient.log_date = CURRENT_DATE,
log_klient.log_time = CURRENT_TIME,
log_klient.log_user = CURRENT_USER,
log_klient.log_massage = 'Обновление записи',
log_klient.Id_log_klient = new.Id_klient;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrKlientUpdate` BEFORE UPDATE ON `klient` FOR EACH ROW BEGIN
INSERT INTO log_klient SET
log_klient.log_date = CURRENT_DATE,
log_klient.log_time = CURRENT_TIME,
log_klient.log_user = CURRENT_USER,
log_klient.log_massage = 'Обновление записи',
log_klient.Id_log_klient = old.Id_klient;

INSERT INTO bk_klient SET
bk_klient.bk_familya = OLD.Familiya,
bk_klient.bk_name = OLD.name,
bk_klient.bk_otchestvo = OLD.otchestvo,
bk_klient.bk_data_rochdeniya = OLD.data_rochdeniya, 
bk_klient.bk_pasportniye_danniye = OLD.pasportniye_danniye,
bk_klient.bk_adress = OLD.adress,
bk_klient.id_tip_klienta = OLD.id_tip_klienta,
bk_klient.id_gorod = OLD.id_gorod,
bk_klient.id_klient = OLD.id_klient;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `log_gorod`
--

CREATE TABLE `log_gorod` (
  `Id_log_gorod` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `log_message` varchar(99) DEFAULT NULL,
  `Id_gorod` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_gorod`
--

INSERT INTO `log_gorod` (`Id_log_gorod`, `log_date`, `log_time`, `log_user`, `log_message`, `Id_gorod`) VALUES
(4, '2021-12-07', '12:30:45.000000', 'root@127.0.0.1', 'Запись добавлина', 1),
(5, '2021-12-07', '12:31:55.000000', 'root@127.0.0.1', 'Удаление записи', 1),
(6, '2021-12-07', '12:32:50.000000', 'root@127.0.0.1', 'Запись добавлина', 1),
(7, '2021-12-07', '12:32:50.000000', 'root@127.0.0.1', 'Запись добавлина', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `log_jurnal_soobcheniy`
--

CREATE TABLE `log_jurnal_soobcheniy` (
  `Id_log_jurnal_soobcheniy` int NOT NULL,
  `log_data` date DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `Id_jurnal_soobcheniy` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_jurnal_soobcheniy`
--

INSERT INTO `log_jurnal_soobcheniy` (`Id_log_jurnal_soobcheniy`, `log_data`, `log_user`, `log_time`, `Id_jurnal_soobcheniy`, `log_massage`) VALUES
(1, '2021-12-07', 'root@127.0.0.1', '14:27:39.000000', 1, 'Обновление записи'),
(2, '2021-12-07', 'root@127.0.0.1', '14:27:39.000000', 2, 'Обновление записи');

-- --------------------------------------------------------

--
-- Структура таблицы `log_jurnal_zvonkov`
--

CREATE TABLE `log_jurnal_zvonkov` (
  `Id_log_jurnal_zvonkov` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_zvonki` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_jurnal_zvonkov`
--

INSERT INTO `log_jurnal_zvonkov` (`Id_log_jurnal_zvonkov`, `log_date`, `log_time`, `log_user`, `log_massage`, `Id_zvonki`) VALUES
(1, '2021-12-07', '14:46:09.000000', 'root@127.0.0.1', 'Запись обновлена', NULL),
(2, '2021-12-14', '14:40:42.000000', 'root@127.0.0.1', 'Запись обновлена', NULL),
(3, '2021-12-14', '15:09:36.000000', 'root@127.0.0.1', 'Запись обновлена', NULL),
(4, '2021-12-14', '15:09:36.000000', 'root@127.0.0.1', 'Запись обновлена', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `log_klient`
--

CREATE TABLE `log_klient` (
  `Id_log_klient` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_klient` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_klient`
--

INSERT INTO `log_klient` (`Id_log_klient`, `log_date`, `log_time`, `log_user`, `Id_klient`, `log_massage`) VALUES
(1, '2021-12-07', '12:49:48.000000', 'root@127.0.0.1', NULL, 'Обновление записи'),
(2, '2021-12-07', '12:49:48.000000', 'root@127.0.0.1', NULL, 'Обновление записи');

-- --------------------------------------------------------

--
-- Структура таблицы `log_menedjer`
--

CREATE TABLE `log_menedjer` (
  `Id_log_menedjer` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id_menedjer` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_menedjer`
--

INSERT INTO `log_menedjer` (`Id_log_menedjer`, `log_date`, `log_time`, `log_user`, `id_menedjer`, `log_massage`) VALUES
(1, '2021-12-07', '12:56:10.000000', 'root@127.0.0.1', NULL, 'Запись добавлена'),
(2, '2021-12-07', '12:56:10.000000', 'root@127.0.0.1', NULL, 'Запись добавлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_nomer_telephone`
--

CREATE TABLE `log_nomer_telephone` (
  `Id_log_nomer_telephone` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_nomer_telephona` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_nomer_telephone`
--

INSERT INTO `log_nomer_telephone` (`Id_log_nomer_telephone`, `log_date`, `log_time`, `log_user`, `Id_nomer_telephona`, `log_massage`) VALUES
(1, '2021-12-07', '13:09:50.000000', 'root@127.0.0.1', NULL, 'Запись обновлена'),
(2, '2021-12-07', '13:09:50.000000', 'root@127.0.0.1', NULL, 'Запись обновлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_oplata_tarifa`
--

CREATE TABLE `log_oplata_tarifa` (
  `Id_log_oplata_tarifa` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_oplata_tarifa` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_oplata_tarifa`
--

INSERT INTO `log_oplata_tarifa` (`Id_log_oplata_tarifa`, `log_date`, `log_time`, `log_user`, `Id_oplata_tarifa`, `log_massage`) VALUES
(1, '2021-12-07', '13:12:43.000000', 'root@127.0.0.1', 1, 'Запись обновлена'),
(2, '2021-12-07', '13:12:43.000000', 'root@127.0.0.1', 2, 'Запись обновлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_podcluchenie_menedjera`
--

CREATE TABLE `log_podcluchenie_menedjera` (
  `Id_log_podcluchenie_menedjera` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_podcluchenie_menedjera` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_podcluchenie_menedjera`
--

INSERT INTO `log_podcluchenie_menedjera` (`Id_log_podcluchenie_menedjera`, `log_date`, `log_time`, `log_user`, `Id_podcluchenie_menedjera`, `log_massage`) VALUES
(1, '2021-12-07', '13:14:38.000000', 'root@127.0.0.1', 1, 'Запись обновлена'),
(2, '2021-12-07', '13:14:38.000000', 'root@127.0.0.1', 2, 'Запись обновлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_podcluchenie_tarifa`
--

CREATE TABLE `log_podcluchenie_tarifa` (
  `Id_log_podcluchenie_tarifa` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_podcluchenie_tarifa` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_podcluchenie_tarifa`
--

INSERT INTO `log_podcluchenie_tarifa` (`Id_log_podcluchenie_tarifa`, `log_date`, `log_time`, `log_user`, `Id_podcluchenie_tarifa`, `log_massage`) VALUES
(1, '2021-12-07', '14:25:31.000000', 'root@127.0.0.1', 1, 'Запись добавлена'),
(2, '2021-12-07', '14:26:11.000000', 'root@127.0.0.1', 2, 'Запись добавлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_prodavetc`
--

CREATE TABLE `log_prodavetc` (
  `Id_log_prodavetc` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_prodavetc` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_prodavetc`
--

INSERT INTO `log_prodavetc` (`Id_log_prodavetc`, `log_date`, `log_time`, `log_user`, `Id_prodavetc`, `log_massage`) VALUES
(1, '2021-12-07', '14:15:17.000000', 'root@127.0.0.1', 1, 'Запись добавлена'),
(2, '2021-12-07', '14:15:17.000000', 'root@127.0.0.1', 2, 'Запись добавлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_spravochnoe_buro`
--

CREATE TABLE `log_spravochnoe_buro` (
  `Id_log_spravochnoe_buro` int NOT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_spravochnoe_buro` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_spravochnoe_buro`
--

INSERT INTO `log_spravochnoe_buro` (`Id_log_spravochnoe_buro`, `log_date`, `log_time`, `log_user`, `Id_spravochnoe_buro`, `log_massage`) VALUES
(1, '2021-12-07', '14:17:50.000000', 'root@127.0.0.1', 1, 'Запись добавлена'),
(2, '2021-12-07', '14:17:50.000000', 'root@127.0.0.1', 2, 'Запись добавлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_tarif`
--

CREATE TABLE `log_tarif` (
  `Id_log_tarif` int NOT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_date` date DEFAULT NULL,
  `log_user` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Id_tarif` int DEFAULT NULL,
  `log_massage` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `log_tarif`
--

INSERT INTO `log_tarif` (`Id_log_tarif`, `log_time`, `log_date`, `log_user`, `Id_tarif`, `log_massage`) VALUES
(1, '14:23:20.000000', '2021-12-07', 'root@127.0.0.1', 1, 'Запись добавлена'),
(2, '14:23:20.000000', '2021-12-07', 'root@127.0.0.1', 2, 'Запись добавлена');

-- --------------------------------------------------------

--
-- Структура таблицы `log_tip_klienta`
--

CREATE TABLE `log_tip_klienta` (
  `Id_log_tip_klienta` int NOT NULL,
  `log_naimenovanie` varchar(11) DEFAULT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(11) DEFAULT NULL,
  `Id_tip_klient` int DEFAULT NULL,
  `log_massage` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `log_tip_soobchenie`
--

CREATE TABLE `log_tip_soobchenie` (
  `Id_log_tip_soobchenie` int NOT NULL,
  `log_naimenovanie` varchar(11) DEFAULT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(11) DEFAULT NULL,
  `Id_tip_soobchenie` int DEFAULT NULL,
  `log_massage` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `log_tip_zvonka`
--

CREATE TABLE `log_tip_zvonka` (
  `Id_log_tip_zvonka` int NOT NULL,
  `log_naimenovanie` varchar(11) DEFAULT NULL,
  `log_date` date DEFAULT NULL,
  `log_time` time(6) DEFAULT NULL,
  `log_user` varchar(11) DEFAULT NULL,
  `Id_tip_zvonka` int DEFAULT NULL,
  `log_massage` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `menedjer`
--

CREATE TABLE `menedjer` (
  `Id_menedjer` int NOT NULL,
  `FIO` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Pay` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `menedjer`
--

INSERT INTO `menedjer` (`Id_menedjer`, `FIO`, `Pay`) VALUES
(1, 'Морозов Артём Богданович', 50000),
(2, 'Емельянова Мария Ивановна', 50000);

--
-- Триггеры `menedjer`
--
DELIMITER $$
CREATE TRIGGER `TrMenedjerInsert` BEFORE INSERT ON `menedjer` FOR EACH ROW BEGIN
INSERT INTO log_menedjer SET
log_menedjer.log_date = CURRENT_DATE,
log_menedjer.log_time = CURRENT_TIME,
log_menedjer.log_user = CURRENT_USER,
log_menedjer.log_massage = 'Запись добавлена',
log_menedjer.Id_log_menedjer = new.Id_menedjer;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrMenedjerUpdate` BEFORE UPDATE ON `menedjer` FOR EACH ROW BEGIN
INSERT INTO log_menedjer SET
log_menedjer.log_date = CURRENT_DATE,
log_menedjer.log_time = CURRENT_TIME,
log_menedjer.log_user = CURRENT_USER,
log_menedjer.log_massage = 'Обновление записи',
log_menedjer.Id_log_menedjer = old.Id_menedjer;

INSERT INTO bk_menedjer SET
bk_menedjer.bk_FIO = OLD.FIO,
bk_menedjer.bk_pay = OLD.pay,
bk_menedjer.id_menedjer = OLD.id_menedjer;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Trmenedjer` BEFORE DELETE ON `menedjer` FOR EACH ROW BEGIN
INSERT INTO log_menedjer SET
log_menedjer.log_date = CURRENT_DATE,
log_menedjer.log_time = CURRENT_TIME,
log_menedjer.log_user = CURRENT_USER,
log_menedjer.log_massage = 'Удаление записи',
log_menedjer.Id_log_menedjer = old.Id_menedjer;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `nomer_telephona`
--

CREATE TABLE `nomer_telephona` (
  `Id_nomer_telephona` int NOT NULL,
  `Naimenovanie` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `nomer_telephona`
--

INSERT INTO `nomer_telephona` (`Id_nomer_telephona`, `Naimenovanie`) VALUES
(1, '7(925)284-93-80\r\n'),
(2, '7(925)437-58-98\r\n');

--
-- Триггеры `nomer_telephona`
--
DELIMITER $$
CREATE TRIGGER `TrNomerTelephona` BEFORE DELETE ON `nomer_telephona` FOR EACH ROW BEGIN
INSERT INTO log_nomer_telephone SET
log_nomer_telephone.log_date = CURRENT_DATE,
log_nomer_telephone.log_time = CURRENT_TIME,
log_nomer_telephone.log_user = CURRENT_USER,
log_nomer_telephone.log_massage = 'Удаление записи',
log_nomer_telephone.Id_log_nomer_telephone = old.Id_nomer_telephona ;

INSERT INTO bk_nomer_telephona SET
bk_nomer_telephona.bk_naimenovanie = OLD.naimenovanie,
bk_nomer_telephona.id_nomer_telephona = OLD.id_nomer_telephona;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrNomerTelephonaInsert` BEFORE INSERT ON `nomer_telephona` FOR EACH ROW BEGIN
INSERT INTO log_nomer_telephone SET
log_nomer_telephone.log_date = CURRENT_DATE,
log_nomer_telephone.log_time = CURRENT_TIME,
log_nomer_telephone.log_user = CURRENT_USER,
log_nomer_telephone.log_massage = 'Запись обновлена',
log_nomer_telephone.Id_log_nomer_telephone = new.Id_nomer_telephona ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrNomerTelephonaUpdate` BEFORE UPDATE ON `nomer_telephona` FOR EACH ROW BEGIN
INSERT INTO log_nomer_telephone SET
log_nomer_telephone.log_date = CURRENT_DATE,
log_nomer_telephone.log_time = CURRENT_TIME,
log_nomer_telephone.log_user = CURRENT_USER,
log_nomer_telephone.log_massage = 'Обновление записи',
log_nomer_telephone.Id_log_nomer_telephone = old.Id_nomer_telephona ;

INSERT INTO bk_nomer_telephona SET
bk_nomer_telephona.bk_naimenovanie = OLD.naimenovanie,
bk_nomer_telephona.id_nomer_telephona = OLD.id_nomer_telephona;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `oplata_tarifa`
--

CREATE TABLE `oplata_tarifa` (
  `Id_nomer_telephona` int DEFAULT NULL,
  `Id_oplata_tarifa` int NOT NULL,
  `Data_oplati` date DEFAULT NULL,
  `Summa_oplati` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `oplata_tarifa`
--

INSERT INTO `oplata_tarifa` (`Id_nomer_telephona`, `Id_oplata_tarifa`, `Data_oplati`, `Summa_oplati`) VALUES
(1, 1, '2021-12-15', 500),
(2, 2, '2021-12-15', 600);

--
-- Триггеры `oplata_tarifa`
--
DELIMITER $$
CREATE TRIGGER `TrOplataTarifa` BEFORE DELETE ON `oplata_tarifa` FOR EACH ROW BEGIN
INSERT INTO log_oplata_tarifa SET
log_oplata_tarifa.log_date = CURRENT_DATE,
log_oplata_tarifa.log_time = CURRENT_TIME,
log_oplata_tarifa.log_user = CURRENT_USER,
log_oplata_tarifa.log_massage = 'Удаление записи',
log_oplata_tarifa.Id_oplata_tarifa = old.Id_oplata_tarifa;

INSERT INTO bk_oplata_tarifa SET
bk_oplata_tarifa.bk_data_oplati = OLD.Data_oplati,
bk_oplata_tarifa.bk_summa_oplati = OLD.Summa_oplati,
bk_oplata_tarifa.id_nomer_telephona = OLD.id_nomer_telephona, 
bk_oplata_tarifa.id_opata_tarifa = OLD.Id_oplata_tarifa ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrOplataTarifaInsert` BEFORE INSERT ON `oplata_tarifa` FOR EACH ROW BEGIN
INSERT INTO log_oplata_tarifa SET
log_oplata_tarifa.log_date = CURRENT_DATE,
log_oplata_tarifa.log_time = CURRENT_TIME,
log_oplata_tarifa.log_user = CURRENT_USER,
log_oplata_tarifa.log_massage = 'Запись обновлена',
log_oplata_tarifa.Id_oplata_tarifa = new.Id_oplata_tarifa;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrOplataTarifaUpdate` BEFORE UPDATE ON `oplata_tarifa` FOR EACH ROW BEGIN
INSERT INTO log_oplata_tarifa SET
log_oplata_tarifa.log_date = CURRENT_DATE,
log_oplata_tarifa.log_time = CURRENT_TIME,
log_oplata_tarifa.log_user = CURRENT_USER,
log_oplata_tarifa.log_massage = 'Обновление записи',
log_oplata_tarifa.Id_oplata_tarifa = old.Id_oplata_tarifa;

INSERT INTO bk_oplata_tarifa SET
bk_oplata_tarifa.bk_data_oplati = OLD.Data_oplati,
bk_oplata_tarifa.bk_summa_oplati = OLD.Summa_oplati,
bk_oplata_tarifa.id_nomer_telephona = OLD.id_nomer_telephona, 
bk_oplata_tarifa.id_opata_tarifa = OLD.Id_oplata_tarifa ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `podclucheniye_menedjera`
--

CREATE TABLE `podclucheniye_menedjera` (
  `Id_nomer_telephona` int DEFAULT NULL,
  `Id_podclucheniye_menedjera` int NOT NULL,
  `Data` date DEFAULT NULL,
  `Id_menedjer` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `podclucheniye_menedjera`
--

INSERT INTO `podclucheniye_menedjera` (`Id_nomer_telephona`, `Id_podclucheniye_menedjera`, `Data`, `Id_menedjer`) VALUES
(1, 1, '2021-12-15', 1),
(2, 2, '2021-12-15', 2);

--
-- Триггеры `podclucheniye_menedjera`
--
DELIMITER $$
CREATE TRIGGER `TrPodcluchenieMenedjeraInsert` BEFORE INSERT ON `podclucheniye_menedjera` FOR EACH ROW BEGIN
INSERT INTO log_podcluchenie_menedjera SET
log_podcluchenie_menedjera.log_date = CURRENT_DATE,
log_podcluchenie_menedjera.log_time = CURRENT_TIME,
log_podcluchenie_menedjera.log_user = CURRENT_USER,
log_podcluchenie_menedjera.log_massage = 'Запись обновлена',
log_podcluchenie_menedjera.Id_podcluchenie_menedjera = new.Id_podclucheniye_menedjera;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrPodcluchenieMenedjeraUpdate` BEFORE UPDATE ON `podclucheniye_menedjera` FOR EACH ROW BEGIN
INSERT INTO log_podcluchenie_menedjera SET
log_podcluchenie_menedjera.log_date = CURRENT_DATE,
log_podcluchenie_menedjera.log_time = CURRENT_TIME,
log_podcluchenie_menedjera.log_user = CURRENT_USER,
log_podcluchenie_menedjera.log_massage = 'Обновление записи',
log_podcluchenie_menedjera.Id_podcluchenie_menedjera = old.Id_podclucheniye_menedjera;

INSERT INTO bk_podcluchenie_menedjera SET
bk_podcluchenie_menedjera.Data = OLD.Data,
bk_podcluchenie_menedjera.Id_nomer_telephona = OLD.Id_nomer_telephona,
bk_podcluchenie_menedjera.Id_menedjer = OLD.Id_menedjer;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrPodclucheniyeMenedjer` BEFORE DELETE ON `podclucheniye_menedjera` FOR EACH ROW BEGIN
INSERT INTO log_podcluchenie_menedjera SET
log_podcluchenie_menedjera.log_date = CURRENT_DATE,
log_podcluchenie_menedjera.log_time = CURRENT_TIME,
log_podcluchenie_menedjera.log_user = CURRENT_USER,
log_podcluchenie_menedjera.log_massage = 'Удаление записи',
log_podcluchenie_menedjera.Id_podcluchenie_menedjera = old.Id_podclucheniye_menedjera;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `podklychenie_tarifa`
--

CREATE TABLE `podklychenie_tarifa` (
  `ID_podavetc` int DEFAULT NULL,
  `ID_tarif` int DEFAULT NULL,
  `ID_klient` int DEFAULT NULL,
  `Id_nomer_telephona` int DEFAULT NULL,
  `Id_podklycheniye_tarifa` int NOT NULL,
  `Data_zaklycheniya` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `podklychenie_tarifa`
--

INSERT INTO `podklychenie_tarifa` (`ID_podavetc`, `ID_tarif`, `ID_klient`, `Id_nomer_telephona`, `Id_podklycheniye_tarifa`, `Data_zaklycheniya`) VALUES
(1, 1, 2, 1, 1, '2021-12-01'),
(2, 2, 1, 2, 2, '2021-12-15');

--
-- Триггеры `podklychenie_tarifa`
--
DELIMITER $$
CREATE TRIGGER `TrPodcluchenieTarifUpdate` BEFORE UPDATE ON `podklychenie_tarifa` FOR EACH ROW BEGIN
INSERT INTO log_podcluchenie_tarifa SET
log_podcluchenie_tarifa.log_date = CURRENT_DATE,
log_podcluchenie_tarifa.log_time = CURRENT_TIME,
log_podcluchenie_tarifa.log_user = CURRENT_USER,
log_podcluchenie_tarifa.log_massage = 'Обновление записи',
log_podcluchenie_tarifa.Id_podcluchenie_tarifa = old.Id_podklycheniye_tarifa;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrPodcluchenieTarifa` BEFORE DELETE ON `podklychenie_tarifa` FOR EACH ROW BEGIN
INSERT INTO log_podcluchenie_tarifa SET
log_podcluchenie_tarifa.log_date = CURRENT_DATE,
log_podcluchenie_tarifa.log_time = CURRENT_TIME,
log_podcluchenie_tarifa.log_user = CURRENT_USER,
log_podcluchenie_tarifa.log_massage = 'Удаление записи',
log_podcluchenie_tarifa.Id_podcluchenie_tarifa = old.Id_podklycheniye_tarifa;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrPodcluchenieTarifaraInsert` BEFORE INSERT ON `podklychenie_tarifa` FOR EACH ROW BEGIN
INSERT INTO log_podcluchenie_tarifa SET
log_podcluchenie_tarifa.log_date = CURRENT_DATE,
log_podcluchenie_tarifa.log_time = CURRENT_TIME,
log_podcluchenie_tarifa.log_user = CURRENT_USER,
log_podcluchenie_tarifa.log_massage = 'Запись добавлена',
log_podcluchenie_tarifa.Id_podcluchenie_tarifa = new.Id_podklycheniye_tarifa;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `pol`
--

CREATE TABLE `pol` (
  `Id_pol` int NOT NULL,
  `pol` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pol`
--

INSERT INTO `pol` (`Id_pol`, `pol`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `prodavetc`
--

CREATE TABLE `prodavetc` (
  `ID_podavetc` int NOT NULL,
  `Familiya` varchar(20) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Otchestvo` varchar(20) DEFAULT NULL,
  `Pasportniyi_daniyi` int DEFAULT NULL,
  `id_pol` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `prodavetc`
--

INSERT INTO `prodavetc` (`ID_podavetc`, `Familiya`, `Name`, `Otchestvo`, `Pasportniyi_daniyi`, `id_pol`) VALUES
(1, 'Белова ', 'Дарья', ' Александровна', 121211111, 2),
(2, 'Степанова ', 'Мария', 'Марковна', 123112345, 2);

--
-- Триггеры `prodavetc`
--
DELIMITER $$
CREATE TRIGGER `TrPodavetc` BEFORE DELETE ON `prodavetc` FOR EACH ROW BEGIN
INSERT INTO log_prodavetc SET
log_prodavetc.log_date = CURRENT_DATE,
log_prodavetc.log_time = CURRENT_TIME,
log_prodavetc.log_user = CURRENT_USER,
log_prodavetc.log_massage = 'Удаление записи',
log_prodavetc.Id_prodavetc = old.ID_podavetc;

INSERT INTO bk_prodavetc SET
bk_prodavetc.bk_familya = OLD.Familiya,
bk_prodavetc.bk_name = OLD.name,
bk_prodavetc.bk_otchestvo = OLD.Otchestvo,
bk_prodavetc.bk_pasportniyi_daniyi = OLD.Pasportniyi_daniyi, 
bk_prodavetc.bk_pol = OLD.pol,
bk_prodavetc.id_prodavetc = OLD.ID_podavetc;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrProdavetcUpdate` BEFORE UPDATE ON `prodavetc` FOR EACH ROW BEGIN
INSERT INTO log_prodavetc SET
log_prodavetc.log_date = CURRENT_DATE,
log_prodavetc.log_time = CURRENT_TIME,
log_prodavetc.log_user = CURRENT_USER,
log_prodavetc.log_massage = 'Обновление записи',
log_prodavetc.Id_prodavetc = old.ID_podavetc;

INSERT INTO bk_prodavetc SET
bk_prodavetc.bk_familya = OLD.Familiya,
bk_prodavetc.bk_name = OLD.name,
bk_prodavetc.bk_otchestvo = OLD.Otchestvo,
bk_prodavetc.bk_pasportniyi_daniyi = OLD.Pasportniyi_daniyi, 
bk_prodavetc.bk_pol = OLD.pol,
bk_prodavetc.id_prodavetc = OLD.ID_podavetc;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrProdovetcInsert` BEFORE INSERT ON `prodavetc` FOR EACH ROW BEGIN
INSERT INTO log_prodavetc SET
log_prodavetc.log_date = CURRENT_DATE,
log_prodavetc.log_time = CURRENT_TIME,
log_prodavetc.log_user = CURRENT_USER,
log_prodavetc.log_massage = 'Запись добавлена',
log_prodavetc.Id_prodavetc = new.ID_podavetc;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `prodolzhitelnost_zvonka`
--

CREATE TABLE `prodolzhitelnost_zvonka` (
  `Id_Prodolzhitelnost_Zvonka` int NOT NULL,
  `Prodolshitelnost` datetime(6) DEFAULT NULL,
  `id_jurnal_zvonkov` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `prodolzhitelnost_zvonka`
--

INSERT INTO `prodolzhitelnost_zvonka` (`Id_Prodolzhitelnost_Zvonka`, `Prodolshitelnost`, `id_jurnal_zvonkov`) VALUES
(3, '2021-12-14 00:21:46.000000', 3),
(4, '2021-12-14 00:08:00.000000', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `spravochnoe_buro`
--

CREATE TABLE `spravochnoe_buro` (
  `Id_nomer_telephona` int DEFAULT NULL,
  `Id_spravochnoe_buro` int NOT NULL,
  `Data_obracheniya` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `spravochnoe_buro`
--

INSERT INTO `spravochnoe_buro` (`Id_nomer_telephona`, `Id_spravochnoe_buro`, `Data_obracheniya`) VALUES
(1, 1, '2021-12-01'),
(2, 2, '2021-12-02');

--
-- Триггеры `spravochnoe_buro`
--
DELIMITER $$
CREATE TRIGGER `TrSpravochnoeBuro` BEFORE DELETE ON `spravochnoe_buro` FOR EACH ROW BEGIN
INSERT INTO log_spravochnoe_buro SET
log_spravochnoe_buro.log_date = CURRENT_DATE,
log_spravochnoe_buro.log_time = CURRENT_TIME,
log_spravochnoe_buro.log_user = CURRENT_USER,
log_spravochnoe_buro.log_massage = 'Удаление записи',
log_spravochnoe_buro.Id_spravochnoe_buro = old.Id_spravochnoe_buro;

INSERT INTO bk_spravochnoe_buro SET
bk_spravochnoe_buro.bk_data_obrachenie = OLD.Id_nomer_telephona ,
bk_spravochnoe_buro.id_spravochnoe_buro = OLD.Id_spravochnoe_buro,
bk_spravochnoe_buro.id_nomer_telephona = OLD.Id_nomer_telephona ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrSpravochnoeBuroInsert` BEFORE INSERT ON `spravochnoe_buro` FOR EACH ROW BEGIN
INSERT INTO log_spravochnoe_buro SET
log_spravochnoe_buro.log_date = CURRENT_DATE,
log_spravochnoe_buro.log_time = CURRENT_TIME,
log_spravochnoe_buro.log_user = CURRENT_USER,
log_spravochnoe_buro.log_massage = 'Запись добавлена',
log_spravochnoe_buro.Id_spravochnoe_buro = new.Id_spravochnoe_buro;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrSpravochnoeBuroUpdate` BEFORE UPDATE ON `spravochnoe_buro` FOR EACH ROW BEGIN
INSERT INTO log_spravochnoe_buro SET
log_spravochnoe_buro.log_date = CURRENT_DATE,
log_spravochnoe_buro.log_time = CURRENT_TIME,
log_spravochnoe_buro.log_user = CURRENT_USER,
log_spravochnoe_buro.log_massage = 'Обновление записи',
log_spravochnoe_buro.Id_spravochnoe_buro = old.Id_spravochnoe_buro;

INSERT INTO bk_spravochnoe_buro SET
bk_spravochnoe_buro.bk_data_obrachenie = OLD.Id_nomer_telephona ,
bk_spravochnoe_buro.id_spravochnoe_buro = OLD.Id_spravochnoe_buro,
bk_spravochnoe_buro.id_nomer_telephona = OLD.Id_nomer_telephona ;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `tarif`
--

CREATE TABLE `tarif` (
  `ID_tarif` int NOT NULL,
  `Tarif` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Opisaniye` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Oplata_za_mesetc` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tarif`
--

INSERT INTO `tarif` (`ID_tarif`, `Tarif`, `Opisaniye`, `Oplata_za_mesetc`) VALUES
(1, 'Супер', 'Домашний интернет + IPTV и Мобильное ТВ + Мобильная связь МОБИЛЬНАЯ СВЯЗЬ Интернет 30 ГБ 1500 минут / 100 SMS Онлайн-кинотеатр ', 990),
(2, 'Экстра ', 'Спутниковое ТВ + Безлимит для модема + Онлайн-кинотеатр ', 590);

--
-- Триггеры `tarif`
--
DELIMITER $$
CREATE TRIGGER `TrTarif` BEFORE DELETE ON `tarif` FOR EACH ROW BEGIN
INSERT INTO log_tarif SET
log_tarif.log_date = CURRENT_DATE,
log_tarif.log_time = CURRENT_TIME,
log_tarif.log_user = CURRENT_USER,
log_tarif.log_massage = 'Удаление записи',
log_tarif.Id_tarif = old.ID_tarif ;

INSERT INTO bk_tarif SET
bk_tarif.bk_tarif = OLD.tarif,
bk_tarif.bk_opisaniye = OLD.opisaniye,
bk_tarif.bk_tcena_za_mesetc = OLD.Oplata_za_mesetc,
bk_tarif.id_tarif = OLD.tarif;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrTarifInsert` BEFORE INSERT ON `tarif` FOR EACH ROW BEGIN
INSERT INTO log_tarif SET
log_tarif.log_date = CURRENT_DATE,
log_tarif.log_time = CURRENT_TIME,
log_tarif.log_user = CURRENT_USER,
log_tarif.log_massage = 'Запись добавлена',
log_tarif.Id_tarif = new.ID_tarif ;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `TrTarifUpdate` BEFORE UPDATE ON `tarif` FOR EACH ROW BEGIN
INSERT INTO log_tarif SET
log_tarif.log_date = CURRENT_DATE,
log_tarif.log_time = CURRENT_TIME,
log_tarif.log_user = CURRENT_USER,
log_tarif.log_massage = 'Обновление записи',
log_tarif.Id_tarif = old.ID_tarif ;

INSERT INTO bk_tarif SET
bk_tarif.bk_tarif = OLD.tarif,
bk_tarif.bk_opisaniye = OLD.opisaniye,
bk_tarif.bk_tcena_za_mesetc = OLD.Oplata_za_mesetc,
bk_tarif.id_tarif = OLD.tarif;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `tip_klienta`
--

CREATE TABLE `tip_klienta` (
  `Id_tip_klienta` int NOT NULL,
  `Naimenovanie` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tip_klienta`
--

INSERT INTO `tip_klienta` (`Id_tip_klienta`, `Naimenovanie`) VALUES
(1, 'Физическое лицо'),
(2, 'Юридическое лицо');

-- --------------------------------------------------------

--
-- Структура таблицы `tip_soobchenie`
--

CREATE TABLE `tip_soobchenie` (
  `Id_tip_soobchenie` int NOT NULL,
  `Naimenovania` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tip_soobchenie`
--

INSERT INTO `tip_soobchenie` (`Id_tip_soobchenie`, `Naimenovania`) VALUES
(1, 'Входящие'),
(2, 'Исходящие');

-- --------------------------------------------------------

--
-- Структура таблицы `tip_zvonka`
--

CREATE TABLE `tip_zvonka` (
  `Id_tip_zvonka` int NOT NULL,
  `Naimenovanie` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `tip_zvonka`
--

INSERT INTO `tip_zvonka` (`Id_tip_zvonka`, `Naimenovanie`) VALUES
(1, 'Входящие'),
(2, 'Исходящие');

-- --------------------------------------------------------

--
-- Дублирующая структура для представления `zapros_1`
-- (См. Ниже фактическое представление)
--
CREATE TABLE `zapros_1` (
`Tarif` varchar(99)
,`Naimenovanie` varchar(99)
,`Prodolshitelnost` datetime(6)
,`Summa_oplati` int
);

-- --------------------------------------------------------

--
-- Структура для представления `zapros_1`
--
DROP TABLE IF EXISTS `zapros_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `zapros_1`  AS SELECT `tarif`.`Tarif` AS `Tarif`, `nomer_telephona`.`Naimenovanie` AS `Naimenovanie`, `prodolzhitelnost_zvonka`.`Prodolshitelnost` AS `Prodolshitelnost`, `oplata_tarifa`.`Summa_oplati` AS `Summa_oplati` FROM (((((`tarif` join `podklychenie_tarifa` on((`podklychenie_tarifa`.`ID_tarif` = `tarif`.`ID_tarif`))) join `nomer_telephona` on((`nomer_telephona`.`Id_nomer_telephona` = `podklychenie_tarifa`.`Id_nomer_telephona`))) join `jurnal_zvonkov` on((`jurnal_zvonkov`.`Id_nomer_telephona` = `nomer_telephona`.`Id_nomer_telephona`))) join `prodolzhitelnost_zvonka` on((`prodolzhitelnost_zvonka`.`id_jurnal_zvonkov` = `jurnal_zvonkov`.`Id_jurnal_zvonka`))) join `oplata_tarifa` on((`oplata_tarifa`.`Id_nomer_telephona` = `nomer_telephona`.`Id_nomer_telephona`))) ;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bk_gorod`
--
ALTER TABLE `bk_gorod`
  ADD PRIMARY KEY (`id_bk_gorod`);

--
-- Индексы таблицы `bk_jurnal_soobcheniy`
--
ALTER TABLE `bk_jurnal_soobcheniy`
  ADD PRIMARY KEY (`id_bk_jurnal_soobcheniy`);

--
-- Индексы таблицы `bk_jurnal_zvonkov`
--
ALTER TABLE `bk_jurnal_zvonkov`
  ADD PRIMARY KEY (`id_bk_jurnal_zvonkov`);

--
-- Индексы таблицы `bk_klient`
--
ALTER TABLE `bk_klient`
  ADD PRIMARY KEY (`id_bk_klient`);

--
-- Индексы таблицы `bk_menedjer`
--
ALTER TABLE `bk_menedjer`
  ADD PRIMARY KEY (`id_bk_menedjer`);

--
-- Индексы таблицы `bk_nomer_telephona`
--
ALTER TABLE `bk_nomer_telephona`
  ADD PRIMARY KEY (`id_bk_nomer_telephona`);

--
-- Индексы таблицы `bk_oplata_tarifa`
--
ALTER TABLE `bk_oplata_tarifa`
  ADD PRIMARY KEY (`id_bk_oplata_tarifa`);

--
-- Индексы таблицы `bk_podcluchenie_menedjera`
--
ALTER TABLE `bk_podcluchenie_menedjera`
  ADD PRIMARY KEY (`id_bk_podcluchenie_menedjera`);

--
-- Индексы таблицы `bk_podcluchenie_tarifa`
--
ALTER TABLE `bk_podcluchenie_tarifa`
  ADD PRIMARY KEY (`id_bk_podcluchenie_tarifa`);

--
-- Индексы таблицы `bk_prodavetc`
--
ALTER TABLE `bk_prodavetc`
  ADD PRIMARY KEY (`id_bk_prodavetc`);

--
-- Индексы таблицы `bk_spravochnoe_buro`
--
ALTER TABLE `bk_spravochnoe_buro`
  ADD PRIMARY KEY (`id_bk_spravochnoe_buro`);

--
-- Индексы таблицы `bk_tarif`
--
ALTER TABLE `bk_tarif`
  ADD PRIMARY KEY (`id_bk_tarif`);

--
-- Индексы таблицы `gorod`
--
ALTER TABLE `gorod`
  ADD PRIMARY KEY (`Id_gorod`);

--
-- Индексы таблицы `jurnal_soobcheniy`
--
ALTER TABLE `jurnal_soobcheniy`
  ADD PRIMARY KEY (`ID_jurnal_soobchenie`),
  ADD KEY `Id_nomer_telephone` (`Id_nomer_telephone`),
  ADD KEY `Id_soobchenie` (`Id_soobchenie`);

--
-- Индексы таблицы `jurnal_zvonkov`
--
ALTER TABLE `jurnal_zvonkov`
  ADD PRIMARY KEY (`Id_jurnal_zvonka`),
  ADD KEY `jurnal_zvonkov_ibfk_1` (`Id_tip_zvonka`),
  ADD KEY `jurnal_zvonkov_ibfk_2` (`Id_nomer_telephona`);

--
-- Индексы таблицы `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`ID_klient`),
  ADD KEY `Id_gorod` (`Id_gorod`),
  ADD KEY `Id_tip_klienta` (`Id_tip_klienta`);

--
-- Индексы таблицы `log_gorod`
--
ALTER TABLE `log_gorod`
  ADD PRIMARY KEY (`Id_log_gorod`);

--
-- Индексы таблицы `log_jurnal_soobcheniy`
--
ALTER TABLE `log_jurnal_soobcheniy`
  ADD PRIMARY KEY (`Id_log_jurnal_soobcheniy`);

--
-- Индексы таблицы `log_jurnal_zvonkov`
--
ALTER TABLE `log_jurnal_zvonkov`
  ADD PRIMARY KEY (`Id_log_jurnal_zvonkov`);

--
-- Индексы таблицы `log_klient`
--
ALTER TABLE `log_klient`
  ADD PRIMARY KEY (`Id_log_klient`);

--
-- Индексы таблицы `log_menedjer`
--
ALTER TABLE `log_menedjer`
  ADD PRIMARY KEY (`Id_log_menedjer`);

--
-- Индексы таблицы `log_nomer_telephone`
--
ALTER TABLE `log_nomer_telephone`
  ADD PRIMARY KEY (`Id_log_nomer_telephone`);

--
-- Индексы таблицы `log_oplata_tarifa`
--
ALTER TABLE `log_oplata_tarifa`
  ADD PRIMARY KEY (`Id_log_oplata_tarifa`);

--
-- Индексы таблицы `log_podcluchenie_menedjera`
--
ALTER TABLE `log_podcluchenie_menedjera`
  ADD PRIMARY KEY (`Id_log_podcluchenie_menedjera`);

--
-- Индексы таблицы `log_podcluchenie_tarifa`
--
ALTER TABLE `log_podcluchenie_tarifa`
  ADD PRIMARY KEY (`Id_log_podcluchenie_tarifa`);

--
-- Индексы таблицы `log_prodavetc`
--
ALTER TABLE `log_prodavetc`
  ADD PRIMARY KEY (`Id_log_prodavetc`);

--
-- Индексы таблицы `log_spravochnoe_buro`
--
ALTER TABLE `log_spravochnoe_buro`
  ADD PRIMARY KEY (`Id_log_spravochnoe_buro`);

--
-- Индексы таблицы `log_tarif`
--
ALTER TABLE `log_tarif`
  ADD PRIMARY KEY (`Id_log_tarif`);

--
-- Индексы таблицы `log_tip_klienta`
--
ALTER TABLE `log_tip_klienta`
  ADD PRIMARY KEY (`Id_log_tip_klienta`);

--
-- Индексы таблицы `log_tip_soobchenie`
--
ALTER TABLE `log_tip_soobchenie`
  ADD PRIMARY KEY (`Id_log_tip_soobchenie`);

--
-- Индексы таблицы `log_tip_zvonka`
--
ALTER TABLE `log_tip_zvonka`
  ADD PRIMARY KEY (`Id_log_tip_zvonka`);

--
-- Индексы таблицы `menedjer`
--
ALTER TABLE `menedjer`
  ADD PRIMARY KEY (`Id_menedjer`);

--
-- Индексы таблицы `nomer_telephona`
--
ALTER TABLE `nomer_telephona`
  ADD PRIMARY KEY (`Id_nomer_telephona`);

--
-- Индексы таблицы `oplata_tarifa`
--
ALTER TABLE `oplata_tarifa`
  ADD PRIMARY KEY (`Id_oplata_tarifa`),
  ADD KEY `Id_nomer_telephona` (`Id_nomer_telephona`);

--
-- Индексы таблицы `podclucheniye_menedjera`
--
ALTER TABLE `podclucheniye_menedjera`
  ADD PRIMARY KEY (`Id_podclucheniye_menedjera`),
  ADD KEY `Id_menedjer` (`Id_menedjer`),
  ADD KEY `Id_nomer_telephona` (`Id_nomer_telephona`);

--
-- Индексы таблицы `podklychenie_tarifa`
--
ALTER TABLE `podklychenie_tarifa`
  ADD PRIMARY KEY (`Id_podklycheniye_tarifa`),
  ADD KEY `ID_klient` (`ID_klient`),
  ADD KEY `ID_podavetc` (`ID_podavetc`),
  ADD KEY `Id_nomer_telephona` (`Id_nomer_telephona`),
  ADD KEY `ID_tarif` (`ID_tarif`);

--
-- Индексы таблицы `pol`
--
ALTER TABLE `pol`
  ADD PRIMARY KEY (`Id_pol`);

--
-- Индексы таблицы `prodavetc`
--
ALTER TABLE `prodavetc`
  ADD PRIMARY KEY (`ID_podavetc`),
  ADD KEY `prodavetc_ibfk_1` (`id_pol`);

--
-- Индексы таблицы `prodolzhitelnost_zvonka`
--
ALTER TABLE `prodolzhitelnost_zvonka`
  ADD PRIMARY KEY (`Id_Prodolzhitelnost_Zvonka`);

--
-- Индексы таблицы `spravochnoe_buro`
--
ALTER TABLE `spravochnoe_buro`
  ADD PRIMARY KEY (`Id_spravochnoe_buro`),
  ADD KEY `Id_nomer_telephona` (`Id_nomer_telephona`);

--
-- Индексы таблицы `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`ID_tarif`);

--
-- Индексы таблицы `tip_klienta`
--
ALTER TABLE `tip_klienta`
  ADD PRIMARY KEY (`Id_tip_klienta`);

--
-- Индексы таблицы `tip_soobchenie`
--
ALTER TABLE `tip_soobchenie`
  ADD PRIMARY KEY (`Id_tip_soobchenie`);

--
-- Индексы таблицы `tip_zvonka`
--
ALTER TABLE `tip_zvonka`
  ADD PRIMARY KEY (`Id_tip_zvonka`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bk_gorod`
--
ALTER TABLE `bk_gorod`
  MODIFY `id_bk_gorod` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `bk_jurnal_soobcheniy`
--
ALTER TABLE `bk_jurnal_soobcheniy`
  MODIFY `id_bk_jurnal_soobcheniy` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_jurnal_zvonkov`
--
ALTER TABLE `bk_jurnal_zvonkov`
  MODIFY `id_bk_jurnal_zvonkov` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_klient`
--
ALTER TABLE `bk_klient`
  MODIFY `id_bk_klient` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_menedjer`
--
ALTER TABLE `bk_menedjer`
  MODIFY `id_bk_menedjer` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_nomer_telephona`
--
ALTER TABLE `bk_nomer_telephona`
  MODIFY `id_bk_nomer_telephona` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_oplata_tarifa`
--
ALTER TABLE `bk_oplata_tarifa`
  MODIFY `id_bk_oplata_tarifa` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_podcluchenie_menedjera`
--
ALTER TABLE `bk_podcluchenie_menedjera`
  MODIFY `id_bk_podcluchenie_menedjera` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_podcluchenie_tarifa`
--
ALTER TABLE `bk_podcluchenie_tarifa`
  MODIFY `id_bk_podcluchenie_tarifa` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_prodavetc`
--
ALTER TABLE `bk_prodavetc`
  MODIFY `id_bk_prodavetc` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_spravochnoe_buro`
--
ALTER TABLE `bk_spravochnoe_buro`
  MODIFY `id_bk_spravochnoe_buro` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bk_tarif`
--
ALTER TABLE `bk_tarif`
  MODIFY `id_bk_tarif` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `log_gorod`
--
ALTER TABLE `log_gorod`
  MODIFY `Id_log_gorod` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `log_jurnal_soobcheniy`
--
ALTER TABLE `log_jurnal_soobcheniy`
  MODIFY `Id_log_jurnal_soobcheniy` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_jurnal_zvonkov`
--
ALTER TABLE `log_jurnal_zvonkov`
  MODIFY `Id_log_jurnal_zvonkov` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `log_klient`
--
ALTER TABLE `log_klient`
  MODIFY `Id_log_klient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_menedjer`
--
ALTER TABLE `log_menedjer`
  MODIFY `Id_log_menedjer` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_nomer_telephone`
--
ALTER TABLE `log_nomer_telephone`
  MODIFY `Id_log_nomer_telephone` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_oplata_tarifa`
--
ALTER TABLE `log_oplata_tarifa`
  MODIFY `Id_log_oplata_tarifa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_podcluchenie_menedjera`
--
ALTER TABLE `log_podcluchenie_menedjera`
  MODIFY `Id_log_podcluchenie_menedjera` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_podcluchenie_tarifa`
--
ALTER TABLE `log_podcluchenie_tarifa`
  MODIFY `Id_log_podcluchenie_tarifa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_prodavetc`
--
ALTER TABLE `log_prodavetc`
  MODIFY `Id_log_prodavetc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_spravochnoe_buro`
--
ALTER TABLE `log_spravochnoe_buro`
  MODIFY `Id_log_spravochnoe_buro` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_tarif`
--
ALTER TABLE `log_tarif`
  MODIFY `Id_log_tarif` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `log_tip_klienta`
--
ALTER TABLE `log_tip_klienta`
  MODIFY `Id_log_tip_klienta` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `log_tip_soobchenie`
--
ALTER TABLE `log_tip_soobchenie`
  MODIFY `Id_log_tip_soobchenie` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `log_tip_zvonka`
--
ALTER TABLE `log_tip_zvonka`
  MODIFY `Id_log_tip_zvonka` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pol`
--
ALTER TABLE `pol`
  MODIFY `Id_pol` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `prodolzhitelnost_zvonka`
--
ALTER TABLE `prodolzhitelnost_zvonka`
  MODIFY `Id_Prodolzhitelnost_Zvonka` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `jurnal_soobcheniy`
--
ALTER TABLE `jurnal_soobcheniy`
  ADD CONSTRAINT `jurnal_soobcheniy_ibfk_1` FOREIGN KEY (`Id_nomer_telephone`) REFERENCES `nomer_telephona` (`Id_nomer_telephona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `jurnal_soobcheniy_ibfk_2` FOREIGN KEY (`Id_soobchenie`) REFERENCES `tip_soobchenie` (`Id_tip_soobchenie`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `jurnal_zvonkov`
--
ALTER TABLE `jurnal_zvonkov`
  ADD CONSTRAINT `jurnal_zvonkov_ibfk_1` FOREIGN KEY (`Id_tip_zvonka`) REFERENCES `tip_zvonka` (`Id_tip_zvonka`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `jurnal_zvonkov_ibfk_2` FOREIGN KEY (`Id_nomer_telephona`) REFERENCES `nomer_telephona` (`Id_nomer_telephona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`Id_gorod`) REFERENCES `gorod` (`Id_gorod`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `klient_ibfk_2` FOREIGN KEY (`Id_tip_klienta`) REFERENCES `tip_klienta` (`Id_tip_klienta`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `oplata_tarifa`
--
ALTER TABLE `oplata_tarifa`
  ADD CONSTRAINT `oplata_tarifa_ibfk_1` FOREIGN KEY (`Id_nomer_telephona`) REFERENCES `nomer_telephona` (`Id_nomer_telephona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `podclucheniye_menedjera`
--
ALTER TABLE `podclucheniye_menedjera`
  ADD CONSTRAINT `podclucheniye_menedjera_ibfk_1` FOREIGN KEY (`Id_menedjer`) REFERENCES `menedjer` (`Id_menedjer`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `podclucheniye_menedjera_ibfk_2` FOREIGN KEY (`Id_nomer_telephona`) REFERENCES `nomer_telephona` (`Id_nomer_telephona`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `podklychenie_tarifa`
--
ALTER TABLE `podklychenie_tarifa`
  ADD CONSTRAINT `podklychenie_tarifa_ibfk_1` FOREIGN KEY (`ID_klient`) REFERENCES `klient` (`ID_klient`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `podklychenie_tarifa_ibfk_2` FOREIGN KEY (`ID_podavetc`) REFERENCES `prodavetc` (`ID_podavetc`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `podklychenie_tarifa_ibfk_3` FOREIGN KEY (`Id_nomer_telephona`) REFERENCES `nomer_telephona` (`Id_nomer_telephona`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `podklychenie_tarifa_ibfk_4` FOREIGN KEY (`ID_tarif`) REFERENCES `tarif` (`ID_tarif`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `prodavetc`
--
ALTER TABLE `prodavetc`
  ADD CONSTRAINT `prodavetc_ibfk_1` FOREIGN KEY (`id_pol`) REFERENCES `pol` (`Id_pol`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `spravochnoe_buro`
--
ALTER TABLE `spravochnoe_buro`
  ADD CONSTRAINT `spravochnoe_buro_ibfk_1` FOREIGN KEY (`Id_nomer_telephona`) REFERENCES `nomer_telephona` (`Id_nomer_telephona`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
