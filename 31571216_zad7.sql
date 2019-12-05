-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 05 Gru 2019, 13:12
-- Wersja serwera: 5.7.26-29-log
-- Wersja PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `31571216_zad7`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `idu` int(11) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `datagodzina` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `logs`
--

INSERT INTO `logs` (`id`, `idu`, `ip`, `datagodzina`) VALUES
(1, 1, '188.147.41.22', '2019-11-29 11:48:17'),
(2, 2, '188.147.41.22', '2019-11-29 11:49:44'),
(3, 2, '188.147.41.22', '2019-11-29 11:51:35'),
(4, 2, '188.147.41.22', '2019-11-29 11:59:45'),
(5, 2, '188.147.41.22', '2019-11-29 12:02:16'),
(6, 2, '188.147.41.22', '2019-11-29 12:37:52'),
(7, 4, '212.122.194.7', '2019-11-29 12:46:17'),
(8, 2, '188.147.41.22', '2019-11-29 12:46:48'),
(9, 4, '188.147.41.22', '2019-11-29 12:47:53'),
(10, 2, '188.147.41.22', '2019-11-29 12:48:18'),
(11, 4, '82.146.252.9', '2019-12-03 09:27:19'),
(12, 5, '89.64.20.156', '2019-12-04 16:08:37');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logserror`
--

CREATE TABLE `logserror` (
  `id` int(11) NOT NULL,
  `idu` int(11) NOT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `datagodzina` varchar(25) DEFAULT NULL,
  `proba` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `logserror`
--

INSERT INTO `logserror` (`id`, `idu`, `ip`, `datagodzina`, `proba`) VALUES
(1, 2, '188.147.41.22', '2019-11-29 11:54:07', '0');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `haslo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `haslo`) VALUES
(2, '123', '123'),
(3, '1234', '123'),
(4, 'grad', 'grad'),
(5, 'adam', 'adam');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idu` (`idu`);

--
-- Indeksy dla tabeli `logserror`
--
ALTER TABLE `logserror`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idu` (`idu`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `logserror`
--
ALTER TABLE `logserror`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
