-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Sie 2022, 19:49
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `praca`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dzialy`
--

CREATE TABLE `dzialy` (
  `id` int(11) NOT NULL,
  `Dzial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dzialy`
--

INSERT INTO `dzialy` (`id`, `Dzial`) VALUES
(1, 'Dział 1'),
(2, 'Dział 2'),
(3, 'Dzial 3'),
(4, 'Dzial 5'),
(5, 'Dzial 5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `firmy`
--

CREATE TABLE `firmy` (
  `id` int(11) NOT NULL,
  `Firma` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `firmy`
--

INSERT INTO `firmy` (`id`, `Firma`) VALUES
(1, 'Grupa DBK'),
(2, 'Firma2'),
(3, 'POLBRUK'),
(4, 'CocaCola'),
(14, 'ORLEN'),
(62, 'Lotos'),
(67, 'Lotos22222222255ddgdd'),
(68, '458712');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `glowna`
--

CREATE TABLE `glowna` (
  `id` int(11) NOT NULL,
  `Imie` text NOT NULL,
  `Nazwisko` text NOT NULL,
  `Firma` text NOT NULL,
  `Oddzial` text NOT NULL,
  `Dzial` text DEFAULT NULL,
  `Stanowisko` text NOT NULL,
  `numerStacjonarny` text DEFAULT NULL,
  `numerKomorkowy` text DEFAULT NULL,
  `adresEmail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `glowna`
--

INSERT INTO `glowna` (`id`, `Imie`, `Nazwisko`, `Firma`, `Oddzial`, `Dzial`, `Stanowisko`, `numerStacjonarny`, `numerKomorkowy`, `adresEmail`) VALUES
(95, 'hanna', 'kostun', 'Firma2', 'Trzeci Oddzial', 'Dział 2', 'ksiegowa', '', '', 'test@test.com'),
(96, 'Hanna', 'Jóźwiak', 'Firma2', 'Drugi Oddzial', 'Dział 1', 'Dyrektor', '456987123', '516301518', 'mail@mail.com'),
(98, 'testt', 'testt', 'Firma2', 'Pierwszy Oddzial', 'Dzial 3', 'Programista', '516301467', '694133713', 'kamil.kostun@onet.pl'),
(99, 'Karolina', 'Leonarczyk', 'Firma2', 'Pierwszy Oddzial', 'Dział 2', 'Dyrektor', '563214789', '456321789', 'KarolinaLeonarczyk@op.pl'),
(100, 'test', 'test', 'Grupa DBK', 'Pierwszy Oddzial', 'Dział 1', 'Dyrektor', '123123123', '123123123', 'test@test.pl'),
(114, 'testt', 'testt', 'Firma2', 'Pierwszy Oddzial', 'Dzial 3', 'Programista', '516301467', '694133713', 'kamil.kostun@onet.pl'),
(115, 'Karolina', 'Leonarczyk', 'Firma2', 'Pierwszy Oddzial', 'Dział 2', 'Dyrektor', '563214789', '456321789', 'KarolinaLeonarczyk@op.pl'),
(116, 'test', 'test', 'Grupa DBK', 'Pierwszy Oddzial', 'Dział 1', 'Dyrektor', '123123123', '123123123', 'test@test.pl'),
(117, 'Hanna', 'Jóźwiak', 'Firma2', 'Drugi Oddzial', 'Dział 1', 'Dyrektor', '456987123', '516301518', 'mail@mail.com'),
(118, 'testt', 'testt', 'Firma2', 'Pierwszy Oddzial', 'Dzial 3', 'Programista', '516301467', '694133713', 'kamil.kostun@onet.pl'),
(119, 'Karolina', 'Leonarczyk', 'Firma2', 'Pierwszy Oddzial', 'Dział 2', 'Dyrektor', '563214789', '456321789', 'KarolinaLeonarczyk@op.pl'),
(120, 'test6', 'test6', 'Firma2', 'Czwarty Oddzial', 'Dział 2', 'Dyrektor', '156984723', '739591655', 'test@test.com'),
(121, 'Hanna', 'Jóźwiak', 'Firma2', 'Drugi Oddzial', 'Dział 1', 'Dyrektor', '456987123', '516301518', 'mail@mail.com'),
(122, 'testt', 'testt', 'Firma2', 'Pierwszy Oddzial', 'Dzial 3', 'Programista', '516301467', '694133713', 'kamil.kostun@onet.pl'),
(123, 'Karolina', 'Leonarczyk', 'Firma2', 'Pierwszy Oddzial', 'Dział 2', 'Dyrektor', '563214789', '456321789', 'KarolinaLeonarczyk@op.pl'),
(124, 'test', 'test', 'Grupa DBK', 'Pierwszy Oddzial', 'Dział 1', 'Dyrektor', '123123123', '123123123', 'test@test.pl'),
(126, 'Kamil', 'Leonarczyk', 'Firma2', 'Pierwszy Oddzial', 'Dział 1', 'Programista', '', '', ''),
(130, 'Kamil', 'Kostun', 'Firma2', 'Trzeci Oddzial', 'Dzial 3', 'Dyrektor', '', '', 'kamil.kostun@onet.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oddzialy`
--

CREATE TABLE `oddzialy` (
  `id` int(11) NOT NULL,
  `Oddzial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `oddzialy`
--

INSERT INTO `oddzialy` (`id`, `Oddzial`) VALUES
(1, 'Pierwszy Oddzial'),
(2, 'Drugi Oddzial'),
(3, 'Trzeci Oddzial'),
(4, 'Czwaty Oddzial');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `id` int(11) NOT NULL,
  `Stanowisko` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`id`, `Stanowisko`) VALUES
(1, 'Dyrektor'),
(2, 'Programista'),
(3, 'ksiegowa'),
(5, 'Stanowisko5');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `firmy`
--
ALTER TABLE `firmy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `glowna`
--
ALTER TABLE `glowna`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oddzialy`
--
ALTER TABLE `oddzialy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dzialy`
--
ALTER TABLE `dzialy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `firmy`
--
ALTER TABLE `firmy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT dla tabeli `glowna`
--
ALTER TABLE `glowna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT dla tabeli `oddzialy`
--
ALTER TABLE `oddzialy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
