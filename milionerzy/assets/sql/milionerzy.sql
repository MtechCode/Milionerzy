-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 19, 2024 at 02:06 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Struktura tabeli dla tabeli `pytania`
--

CREATE TABLE `pytania` (
  `id` int(11) NOT NULL,
  `kategoria` varchar(50) NOT NULL,
  `pytanie` text NOT NULL,
  `odpowiedz_a` varchar(100) NOT NULL,
  `odpowiedz_b` varchar(100) NOT NULL,
  `odpowiedz_c` varchar(100) NOT NULL,
  `odpowiedz_d` varchar(100) NOT NULL,
  `poprawna_odpowiedz` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pytania`
--

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(1, '100', 'Który miesiąc ma 28 dni?', 'Marzec', 'Styczeń', 'Luty', 'Każdy', 'D'),
(2, '100', 'Który owoc jest nazywany \"królem owoców\"?', 'Mango', 'Pomarańcza', 'Ananas', 'Durian', 'D'),
(3, '100', 'Jakiego koloru są żółte żółwie?', 'Czerwony', 'Niebieski', 'Żółty', 'Zielony', 'C'),
(4, '100', 'Ile nóg ma pająk?', 'Sześć', 'Osiem', 'Cztery', 'Dwie', 'B'),
(5, '100', 'Co jest stolicą Polski?', 'Kraków', 'Wrocław', 'Warszawa', 'Gdańsk', 'C'),
(6, '100', 'Jakie zwierzę jest znane jako \"król dżungli\"?', 'Tygrys', 'Słoń', 'Lew', 'Lampart', 'C'),
(7, '100', 'Jak nazywa się najpopularniejszy napój gazowany?', 'Coca-Cola', 'Fanta', 'Sprite', 'Pepsi', 'A'),
(8, '100', 'Jakie jest najpopularniejsze zwierzę domowe?', 'Kot', 'Pies', 'Złota rybka', 'Papuga', 'B'),
(9, '100', 'Jak nazywa się najsłynniejszy czarodziej w literaturze?', 'Harry Potter', 'Gandalf', 'Merlin', 'Dumbledore', 'A'),
(10, '100', 'Jakie jest największe zwierzę na Ziemi?', 'Słoń', 'Błękitny waleń', 'Żyrafa', 'Krokodyl', 'B'),
(11, '100', 'Jakiego koloru jest trawa?', 'Czarna', 'Zielona', 'Czerwona', 'Biała', 'B'),
(12, '100', 'Ile dni ma luty w roku przestępnym?', '28', '29', '30', '31', 'B'),
(13, '100', 'Które zwierzę wydaje dźwięk "miau"?', 'Kot', 'Pies', 'Krowa', 'Koń', 'A'),
(14, '100', 'Jaki jest główny składnik chleba?', 'Mąka', 'Cukier', 'Masło', 'Sól', 'A'),
(15, '100', 'Co znajduje się na niebie w dzień?', 'Słońce', 'Księżyc', 'Gwiazdy', 'Planety', 'A'),
(16, '100', 'Jakiego koloru jest niebo?', 'Czerwony', 'Niebieski', 'Żółty', 'Zielony', 'B'),
(17, '100', 'Ile kół ma typowy samochód?', '2', '3', '4', '5', 'C'),
(18, '100', 'Jakie zwierzę jest często trzymane w domu?', 'Lew', 'Pies', 'Tygrys', 'Krokodyl', 'B'),
(19, '100', 'Które z tych zwierząt jest owadem?', 'Pająk', 'Motyl', 'Wąż', 'Mysz', 'B'),
(20, '100', 'Ile dni ma tydzień?', '5', '6', '7', '8', 'C'),
(21, '100', 'Który owoc jest żółty?', 'Pomarańcza', 'Cytryna', 'Jabłko', 'Winogrono', 'B'),
(22, '100', 'Jaki dźwięk wydaje krowa?', 'Miau', 'Muuu', 'Hau', 'Ćwir', 'B'),
(23, '100', 'Które z tych warzyw jest czerwone?', 'Marchewka', 'Pomidor', 'Ogórek', 'Sałata', 'B'),
(24, '100', 'Co jest stolicą Niemiec?', 'Monachium', 'Berlin', 'Hamburg', 'Frankfurt', 'B'),
(25, '100', 'Jakie zwierzę nosi skorupę?', 'Słoń', 'Pies', 'Żółw', 'Ryba', 'C'),
(26, '100', 'Jak nazywa się największy ocean?', 'Atlantycki', 'Spokojny', 'Indyjski', 'Arktyczny', 'B'),
(27, '100', 'Ile minut trwa godzina?', '30', '45', '60', '90', 'C'),
(28, '100', 'Jaki jest symbol chemiczny dla wody?', 'O2', 'H2O', 'CO2', 'NaCl', 'B'),
(29, '100', 'Co jest największą planetą w Układzie Słonecznym?', 'Mars', 'Ziemia', 'Jowisz', 'Saturn', 'C'),
(30, '100', 'Który miesiąc ma 31 dni?', 'Luty', 'Czerwiec', 'Grudzień', 'Kwiecień', 'C'),
(31, '100', 'Który owoc ma pestkę?', 'Pomarańcza', 'Jabłko', 'Brzoskwinia', 'Winogrono', 'C'),
(32, '100', 'Które zwierzę jest znane z produkcji miodu?', 'Motyl', 'Pszczoła', 'Mrówka', 'Komar', 'B'),
(33, '100', 'Co jest źródłem energii dla roślin?', 'Woda', 'Słońce', 'Tlen', 'Cukier', 'B'),
(34, '100', 'Które zwierzę ma trąbę?', 'Lew', 'Żyrafa', 'Słoń', 'Hipopotam', 'C'),
(35, '100', 'Ile wynosi suma kątów w trójkącie?', '90 stopni', '180 stopni', '360 stopni', '120 stopni', 'B'),
(36, '100', 'Który z tych kolorów jest podstawowy?', 'Fioletowy', 'Żółty', 'Pomarańczowy', 'Brązowy', 'B'),
(37, '100', 'Co pływa na wodzie?', 'Księżyc', 'Samolot', 'Łódź', 'Samochód', 'C'),
(38, '100', 'Które z tych warzyw jest korzeniowe?', 'Sałata', 'Marchewka', 'Pomidor', 'Cebula', 'B'),
(39, '100', 'Które zwierzę mieszka w wodzie?', 'Kaczka', 'Słoń', 'Ryba', 'Koń', 'C'),
(40, '100', 'Jaki kolor ma trawa?', 'Czerwony', 'Żółty', 'Niebieski', 'Zielony', 'D'),
(41, '100', 'Które z tych zwierząt skacze?', 'Wąż', 'Kangur', 'Kot', 'Żółw', 'B'),
(42, '100', 'Który kontynent jest największy?', 'Europa', 'Azja', 'Afryka', 'Ameryka Południowa', 'B'),
(43, '100', 'Jaki owoc można wyciskać na sok?', 'Pietruszka', 'Ziemniak', 'Pomarańcza', 'Kukurydza', 'C'),
(44, '100', 'Co jest stolicą Francji?', 'Londyn', 'Berlin', 'Madryt', 'Paryż', 'D'),
(45, '100', 'Które z tych miejsc znajduje się w przestrzeni kosmicznej?', 'Gwiazdy', 'Chmury', 'Ocean', 'Góry', 'A'),
(46, '100', 'Jaki owoc ma ciernie na powierzchni?', 'Ananas', 'Jabłko', 'Banana', 'Winogrono', 'A'),
(47, '100', 'Który napój jest gazowany?', 'Herbata', 'Woda', 'Coca-Cola', 'Kawa', 'C'),
(48, '100', 'Jakie zwierzę wydaje dźwięk "hau-hau"?', 'Kot', 'Pies', 'Krowa', 'Koń', 'B'),
(49, '100', 'Ile sekund ma minuta?', '30', '45', '60', '90', 'C'),
(50, '100', 'Jak nazywa się największy kontynent?', 'Europa', 'Azja', 'Afryka', 'Australia', 'B'),
(51, '100', 'Jak nazywa się najpopularniejszy sport na świecie?', 'Koszykówka', 'Piłka nożna', 'Tenis', 'Siatkówka', 'B'),
(52, '100', 'Jakiego koloru są truskawki?', 'Czerwony', 'Zielony', 'Niebieski', 'Żółty', 'A');

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(53, '200', 'Kto napisał „Romeo i Julię”?', 'William Shakespeare', 'J.K. Rowling', 'Mark Twain', 'Charles Dickens', 'A'),
(54, '200', 'Jakie jest największe państwo na świecie?', 'Chiny', 'Kanada', 'Rosja', 'USA', 'C'),
(55, '200', 'Które miasto jest stolicą Francji?', 'Berlin', 'Paryż', 'Madryt', 'Londyn', 'B'),
(56, '200', 'Jaką planetę nazywamy "Czerwoną Planetą"?', 'Wenus', 'Saturn', 'Mars', 'Jowisz', 'C'),
(57, '200', 'W którym oceanie znajduje się Wielka Rafa Koralowa?', 'Atlantycki', 'Indyjski', 'Spokojny', 'Arktyczny', 'C'),
(58, '200', 'Kto jest autorem teorii względności?', 'Newton', 'Einstein', 'Galileusz', 'Tesla', 'B'),
(59, '200', 'Który organ ludzkiego ciała pompuje krew?', 'Mózg', 'Wątroba', 'Serce', 'Płuca', 'C'),
(60, '200', 'Jakie jest chemiczne oznaczenie złota?', 'Ag', 'Au', 'Fe', 'Zn', 'B'),
(61, '200', 'Jakie jest najdłuższe ramię w trójkącie prostokątnym?', 'Przeciwprostokątna', 'Przyprostokątna', 'Sąsiednia', 'Tarcza', 'A'),
(62, '200', 'Jaką nazwę nosi proces zamiany wody w parę?', 'Kondensacja', 'Parowanie', 'Osmoza', 'Roztwór', 'B'),
(63, '200', 'Która planeta jest najbliżej Słońca?', 'Wenus', 'Ziemia', 'Mars', 'Merkury', 'D'),
(64, '200', 'Jakie jest główne miasto Francji?', 'Lyon', 'Paryż', 'Marsylia', 'Tuluza', 'B'),
(65, '200', 'Ile dni ma rok przestępny?', '365', '366', '364', '370', 'B'),
(66, '200', 'Jak nazywa się najdłuższa rzeka w Polsce?', 'Warta', 'Wisła', 'Odra', 'San', 'B'),
(67, '200', 'Jakie jest największe jezioro w Polsce?', 'Jezioro Białe', 'Jezioro Hańcza', 'Jezioro Łebsko', 'Jezioro Śniardwy', 'D'),
(68, '200', 'Co to jest \"słoń\"?', 'Narzędzie', 'Zwierzę', 'Roślina', 'Skała', 'B'),
(69, '200', 'Jakiego koloru jest krew u ludzi?', 'Niebieski', 'Czerwony', 'Zielony', 'Czarny', 'B'),
(70, '200', 'Jakie zwierzę znane jest jako \"najmądrzejsze zwierzę\"?', 'Słoń', 'Delfin', 'Małpa', 'Krowa', 'B'),
(71, '200', 'Jakie miasto jest stolicą Włoch?', 'Rzym', 'Mediolan', 'Neapol', 'Turyn', 'A'),
(72, '200', 'Ile nóg ma owad?', 'Cztery', 'Sześć', 'Osiem', 'Dwie', 'B'),
(73, '200', 'Jakie zwierzę nosi dom na plecach?', 'Morski jeż', 'Węgorz', 'Krab', 'Ślimak', 'D'),
(74, '200', 'Jak nazywa się najpopularniejszy program komputerowy do edycji zdjęć?', 'Photoshop', 'GIMP', 'Paint', 'CorelDRAW', 'A');



INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(75, '300', 'Który pierwiastek chemiczny ma symbol O?', 'Wodór', 'Tlen', 'Azot', 'Hel', 'B'),
(76, '300', 'Który kontynent ma najwięcej państw?', 'Afryka', 'Europa', 'Azja', 'Ameryka Południowa', 'A'),
(77, '300', 'Jakie jest największe zwierzę na świecie?', 'Słoń', 'Wieloryb', 'Rekin', 'Płetwal błękitny', 'D'),
(78, '300', 'Jak nazywa się słynny obraz Leonarda da Vinci przedstawiający tajemniczą kobietę?', 'Dama z łasiczką', 'Ostatnia Wieczerza', 'Mona Lisa', 'Autoportret', 'C'),
(79, '300', 'Jakie jest największe jezioro słodkowodne na świecie?', 'Jezioro Wiktorii', 'Jezioro Bajkał', 'Jezioro Tanganika', 'Morze Kaspijskie', 'D'),
(80, '300', 'Ile planet liczy nasz Układ Słoneczny?', '7', '8', '9', '10', 'B'),
(81, '300', 'Jak nazywa się najwyższa góra na Ziemi?', 'Mont Blanc', 'Mount Everest', 'K2', 'Denali', 'B'),
(82, '300', 'Który kraj ma największą liczbę ludności?', 'Indie', 'Chiny', 'USA', 'Rosja', 'B'),
(83, '300', 'Jaka jest główna waluta Japonii?', 'Dolar', 'Euro', 'Jen', 'Juan', 'C'),
(84, '300', 'W którym roku człowiek wylądował na Księżycu?', '1965', '1969', '1972', '1975', 'B'),
(85, '300', 'Który pisarz stworzył postać Sherlocka Holmesa?', 'Agatha Christie', 'Arthur Conan Doyle', 'Ian Fleming', 'Jules Verne', 'B'),
(86, '300', 'Które państwo ma największą powierzchnię na świecie?', 'Rosja', 'Kanada', 'Chiny', 'USA', 'A'),
(87, '300', 'Co jest głównym składnikiem betonu?', 'Piasek', 'Woda', 'Cement', 'Kruszywo', 'C'),
(88, '300', 'Który kraj jest znany z produkcji samochodów marki BMW?', 'Francja', 'Włochy', 'Niemcy', 'Japonia', 'C'),
(89, '300', 'Jak nazywa się jednostka częstotliwości?', 'Wolt', 'Herz', 'Newton', 'Om', 'B'),
(90, '300', 'Które morze graniczy z Polską?', 'Bałtyckie', 'Czarne', 'Śródziemne', 'Północne', 'A'),
(91, '300', 'Który sport jest znany jako "król sportów"?', 'Koszykówka', 'Siatkówka', 'Piłka nożna', 'Rugby', 'C'),
(92, '300', 'Ile symfonii skomponował Ludwig van Beethoven?', '7', '8', '9', '10', 'C'),
(93, '300', 'Która roślina uznawana jest za najstarszą uprawianą przez człowieka?', 'Pszenica', 'Kukurydza', 'Ryż', 'Jęczmień', 'A'),
(94, '300', 'Co jest symbolem chemicznym dla złota?', 'Ag', 'Au', 'Fe', 'Pt', 'B'),
(95, '300', 'Które zwierzę jest symbolem Ameryki?', 'Wieloryb', 'Bóbr', 'Orzeł', 'Słoń', 'C'),
(96, '300', 'Jakie jest stolicą Egiptu?', 'Kair', 'Aleksandria', 'Giza', 'Port Said', 'A'),
(97, '300', 'Co to jest \"kimono\"?', 'Sukienka', 'Tradycyjny strój japoński', 'Rodzaj butów', 'Rodzaj jedzenia', 'B'),
(98, '300', 'Jak nazywa się rzeka przepływająca przez Egipt?', 'Nil', 'Amazonka', 'Missisipi', 'Yangtze', 'A'),
(99, '300', 'Jakiego koloru jest Ziemia, widziana z kosmosu?', 'Niebieski', 'Zielony', 'Czarny', 'Czerwony', 'A'),
(100, '300', 'Jakie jest najstarsze miasto na świecie?', 'Damask', 'Kair', 'Jeruzalem', 'Babylon', 'A'),
(101, '300', 'Jak nazywa się największy kontynent?', 'Afryka', 'Azja', 'Ameryka', 'Europa', 'B'),
(102, '300', 'Który z tych języków jest językiem romańskim?', 'Niemiecki', 'Angielski', 'Francuski', 'Rosyjski', 'C'),
(103, '300', 'Jak nazywa się wulkan na Sycylii?', 'Etna', 'Wezuwiusz', 'Kilimandżaro', 'Mauna Loa', 'A'),
(104, '300', 'Które z tych zwierząt jest ssakiem?', 'Krokodyl', 'Wąż', 'Pingwin', 'Delfin', 'D'),
(105, '300', 'Jakie jest największe zwierzę morskie?', 'Rekin', 'Wieloryb', 'Delfin', 'Ośmiornica', 'B'),
(106, '300', 'Jakiego koloru są jabłka?', 'Zielone', 'Czerwone', 'Żółte', 'Wszystkie odpowiedzi są poprawne', 'D');



INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(107, '400', 'Który gaz jest najczęściej spotykany w atmosferze ziemskiej?', 'Tlen', 'Wodór', 'Azot', 'Dwutlenek węgla', 'C'),
(108, '400', 'Który organ ludzkiego ciała jest największy?', 'Wątroba', 'Skóra', 'Płuca', 'Mózg', 'B'),
(109, '400', 'Które państwo jest domem dla piramid w Gizie?', 'Egipt', 'Sudan', 'Meksyk', 'Chiny', 'A'),
(110, '400', 'Który kontynent jest najmniejszy pod względem powierzchni?', 'Europa', 'Australia', 'Antarktyda', 'Ameryka Północna', 'B'),
(111, '400', 'Który rodzaj fal ma najdłuższą długość?', 'Promieniowanie gamma', 'Promieniowanie rentgenowskie', 'Fale radiowe', 'Fale ultrafioletowe', 'C'),
(112, '400', 'Kto jest autorem teorii ewolucji?', 'Isaac Newton', 'Albert Einstein', 'Charles Darwin', 'Galileusz', 'C'),
(113, '400', 'Który metal jest najczęściej stosowany w przewodach elektrycznych?', 'Srebro', 'Aluminium', 'Żelazo', 'Miedź', 'D'),
(114, '400', 'W jakim kraju odbywa się karnawał w Rio de Janeiro?', 'Meksyk', 'Argentyna', 'Brazylia', 'Kolumbia', 'C'),
(115, '400', 'Która wyspa jest największa na świecie?', 'Borneo', 'Nowa Gwinea', 'Grenlandia', 'Madagaskar', 'C'),
(116, '400', 'Jakie zwierzę jest uznawane za najszybsze na lądzie?', 'Gepard', 'Lew', 'Kangur', 'Koń', 'A'),
(117, '400', 'Kto był pierwszym prezydentem Stanów Zjednoczonych?', 'Abraham Lincoln', 'George Washington', 'Thomas Jefferson', 'John Adams', 'B'),
(118, '400', 'Które miasto było gospodarzem letnich igrzysk olimpijskich w 2008 roku?', 'Sydney', 'Ateny', 'Pekin', 'Londyn', 'C'),
(119, '400', 'Jaką nazwę nosi nauka o gwiazdach i innych ciałach niebieskich?', 'Biologia', 'Geologia', 'Astronomia', 'Fizyka', 'C'),
(120, '400', 'Które z tych państw ma największą liczbę wysp?', 'Kanada', 'Szwecja', 'Indonezja', 'Filipiny', 'C'),
(121, '400', 'Kto wynalazł żarówkę?', 'Nikola Tesla', 'Alexander Graham Bell', 'Thomas Edison', 'Galileo Galilei', 'C'),
(122, '400', 'Który instrument muzyczny ma klawisze i struny?', 'Gitara', 'Skrzypce', 'Fortepian', 'Flet', 'C'),
(123, '400', 'Który pierwiastek ma symbol Na?', 'Azot', 'Neon', 'Sód', 'Cynk', 'C'),
(124, '400', 'Która planeta Układu Słonecznego jest najbliżej Słońca?', 'Merkury', 'Wenus', 'Ziemia', 'Mars', 'A'),
(125, '400', 'Który język ma najwięcej rodzimych użytkowników?', 'Angielski', 'Hiszpański', 'Chiński', 'Hindi', 'C'),
(126, '400', 'Która rzeka jest najdłuższa na świecie?', 'Amazonka', 'Nil', 'Jangcy', 'Missisipi', 'B'),
(127, '400', 'Kto napisał \"Przygody Hucka Finna\"?', 'Mark Twain', 'Charles Dickens', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'A'),
(128, '400', 'Jakie jest najgłębsze jezioro na świecie?', 'Jezioro Bajkał', 'Jezioro Tanganika', 'Jezioro Wiktorii', 'Jezioro Michigan', 'A'),
(129, '400', 'Ile planet znajduje się w Układzie Słonecznym?', '7', '8', '9', '10', 'B'),
(130, '400', 'Kto był pierwszym człowiekiem na Księżycu?', 'Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'John Glenn', 'A'),
(131, '400', 'Jak nazywa się najstarsze znane pismo na świecie?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B'),
(132, '400', 'Jakie jest największe miasto na świecie pod względem liczby ludności?', 'Tokio', 'Nowy Jork', 'Seul', 'Delhi', 'A'),
(133, '400', 'Jakie jest stolicą Niemiec?', 'Monachium', 'Berlin', 'Frankfurt', 'Hamburg', 'B'),
(134, '400', 'Jak nazywa się małpa z Galapagos?', 'Szympans', 'Goryl', 'Pawi', 'Lemur', 'D'),
(135, '400', 'Jakie jest główne miasto Japonii?', 'Osaka', 'Tokio', 'Kyoto', 'Hiroshima', 'B'),
(136, '400', 'Jakie jest najstarsze miasto w Polsce?', 'Kraków', 'Gdańsk', 'Wrocław', 'Warszawa', 'A'),
(137, '400', 'Jakie jest największe jezioro w Afryce?', 'Jezioro Wiktorii', 'Jezioro Kaspijskie', 'Jezioro Tanganika', 'Jezioro Malawi', 'A'),
(138, '400', 'Jak nazywa się zjawisko, kiedy Ziemia krąży wokół Słońca?', 'Obieg', 'Obrot', 'Orbita', 'Obrotność', 'C');








INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(139, '500', 'Który fizyk sformułował zasadę nieoznaczoności?', 'Albert Einstein', 'Niels Bohr', 'Werner Heisenberg', 'Max Planck', 'C'),
(140, '500', 'Jak nazywa się część oceanu pomiędzy Afryką a Australią?', 'Ocean Spokojny', 'Ocean Atlantycki', 'Ocean Indyjski', 'Ocean Arktyczny', 'C'),
(141, '500', 'Który kontynent ma największą liczbę krajów?', 'Europa', 'Afryka', 'Azja', 'Ameryka Południowa', 'B'),
(142, '500', 'Jakie ciśnienie atmosferyczne panuje na poziomie morza (w hPa)?', '760', '900', '1013', '1200', 'C'),
(143, '500', 'Jaką nazwę nosi jedyny satelita naturalny Ziemi?', 'Mars', 'Wenus', 'Księżyc', 'Pluton', 'C'),
(144, '500', 'Kto napisał „Boska Komedia”?', 'Homer', 'William Shakespeare', 'Dante Alighieri', 'Johann Wolfgang von Goethe', 'C'),
(145, '500', 'Który surowiec jest najważniejszym źródłem energii elektrycznej na świecie?', 'Węgiel', 'Ropa naftowa', 'Gaz ziemny', 'Uran', 'A'),
(146, '500', 'Które państwo ma najwięcej aktywnych wulkanów?', 'Japonia', 'Indonezja', 'Hawaje', 'Chile', 'B'),
(147, '500', 'Który pisarz jest twórcą „Władcy Pierścieni”?', 'George R.R. Martin', 'J.K. Rowling', 'J.R.R. Tolkien', 'Terry Pratchett', 'C'),
(148, '500', 'Jakie jest chemiczne oznaczenie wody?', 'CO2', 'O2', 'H2O', 'NaCl', 'C'),
(149, '500', 'Które miasto jest stolicą Włoch?', 'Rzym', 'Florencja', 'Mediolan', 'Turyn', 'A'),
(150, '500', 'Jak nazywa się najwyższy szczyt na świecie?', 'Mount Everest', 'K2', 'Kilimandżaro', 'Mont Blanc', 'A'),
(151, '500', 'Jakie jest najgłębsze miejsce na Ziemi?', 'Rów Mariański', 'Rów Tonga', 'Rów Kermadec', 'Rów Atakama', 'A'),
(152, '500', 'Kto napisał "Lalkę"?', 'Henryk Sienkiewicz', 'Bolesław Prus', 'Marek Aureliusz', 'Stanisław Wyspiański', 'B'),
(153, '500', 'Jakie jest stolicą Austrii?', 'Bratysława', 'Wiedeń', 'Zurych', 'Luksemburg', 'B'),
(154, '500', 'Jakie jest największe państwo na świecie?', 'Kanada', 'Chiny', 'Rosja', 'USA', 'C'),
(155, '500', 'Jakie jest największe zwierzę lądowe?', 'Wielbłąd', 'Słoń', 'Nosorożec', 'Zebra', 'B'),
(156, '500', 'Jak nazywa się znany amerykański wynalazca?', 'Nikola Tesla', 'Thomas Edison', 'Albert Einstein', 'Isaac Newton', 'B'),
(157, '500', 'Jakie jest stolicą Szwecji?', 'Sztokholm', 'Göteborg', 'Malmo', 'Uppsala', 'A'),
(158, '500', 'Jakie jest największe jezioro w Kanadzie?', 'Jezioro Huron', 'Jezioro Ontario', 'Jezioro Erie', 'Jezioro Superior', 'D'),
(159, '500', 'Jakie miasto znane jest jako "Wenecja Północy"?', 'Amsterdam', 'Sztokholm', 'Oslo', 'Helsinki', 'B'),
(160, '500', 'Jakie jest najstarsze znane miasto w historii?', 'Ur', 'Babylon', 'Damaszek', 'Aleppo', 'C');



INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(161, '600', 'Który pierwiastek ma największą liczbę atomową?', 'Uran', 'Pluton', 'Oganesson', 'Radon', 'C'),
(162, '600', 'Która jednostka astronomiczna oznacza odległość pomiędzy Ziemią a Słońcem?', 'Rok świetlny', 'Parsek', 'Jednostka astronomiczna (AU)', 'Kiloparsek', 'C'),
(163, '600', 'Kto był pierwszym człowiekiem, który podróżował w kosmos?', 'Neil Armstrong', 'Jurij Gagarin', 'John Glenn', 'Valentina Tereshkova', 'B'),
(164, '600', 'Który gaz jest głównym składnikiem atmosfery Marsa?', 'Tlen', 'Azot', 'Dwutlenek węgla', 'Metan', 'C'),
(165, '600', 'Jak nazywa się struktura, która przekazuje informacje między neuronami?', 'Dendryt', 'Synapsa', 'Akson', 'Neuron', 'B'),
(166, '600', 'Który pierwiastek jest najbardziej reaktywnym metalem alkalicznym?', 'Lit', 'Sód', 'Potas', 'Cez', 'D'),
(167, '600', 'Jak nazywa się największy ocean na Ziemi?', 'Ocean Indyjski', 'Ocean Atlantycki', 'Ocean Spokojny', 'Ocean Arktyczny', 'C'),
(168, '600', 'Kto odkrył penicylinę?', 'Louis Pasteur', 'Alexander Fleming', 'Marie Curie', 'Joseph Lister', 'B'),
(169, '600', 'Które z tych zwierząt żyje najdłużej?', 'Żółw słoniowy', 'Słoń afrykański', 'Baleen whale', 'Karp koi', 'A'),
(170, '600', 'W którym roku zatonął Titanic?', '1902', '1912', '1922', '1932', 'B'),
(171, '600', 'Który kraj graniczy zarówno z Rosją, jak i Chinami?', 'Indie', 'Kazachstan', 'Mongolia', 'Korea Północna', 'C'),
(172, '600', 'Jaką nazwę nosi proces rozdzielania mieszanin na składniki za pomocą różnicy temperatur wrzenia?', 'Destylacja', 'Filtracja', 'Kondensacja', 'Sedymentacja', 'A'),
(173, '600', 'W którym kraju wynaleziono proch strzelniczy?', 'Chiny', 'Indie', 'Turcja', 'Egipt', 'A'),
(174, '600', 'Który kontynent jest uważany za kolebkę cywilizacji ludzkiej?', 'Azja', 'Afryka', 'Europa', 'Ameryka Południowa', 'B'),
(175, '600', 'Kto był autorem pracy "O pochodzeniu gatunków"?', 'Isaac Newton', 'Galileusz', 'Charles Darwin', 'Louis Pasteur', 'C'),
(176, '600', 'Który narząd w ludzkim ciele produkuje insulinę?', 'Wątroba', 'Trzustka', 'Żołądek', 'Płuca', 'B'),
(177, '600', 'Które z tych ciał niebieskich jest galaktyką?', 'Andromeda', 'Merkury', 'Mars', 'Wenus', 'A'),
(178, '600', 'Który filozof napisał „Państwo”?', 'Arystoteles', 'Platon', 'Sokrates', 'Seneka', 'B'),
(179, '600', 'Która bitwa rozegrała się w 1066 roku?', 'Bitwa pod Hastings', 'Bitwa pod Waterloo', 'Bitwa pod Trafalgarem', 'Bitwa pod Azincourt', 'A'),
(180, '600', 'Która część oka odpowiada za regulację ilości światła dostającego się do wnętrza?', 'Rogówka', 'Siatkówka', 'Tęczówka', 'Źrenica', 'C'),
(181, '600', 'Jakie jest imię pierwszego prezydenta USA?', 'George Washington', 'Thomas Jefferson', 'Abraham Lincoln', 'Franklin Roosevelt', 'A'),
(182, '600', 'Jak nazywa się najdłuższa rzeka w Ameryce Południowej?', 'Amazonka', 'Missisipi', 'Orinoko', 'Parana', 'A'),
(183, '600', 'Który kraj był znany jako "Ziemia Słońca"?', 'Egipt', 'Japonia', 'Chiny', 'Grecja', 'B'),
(184, '600', 'Kto jest autorem "Księgi dżungli"?', 'Rudyard Kipling', 'J.R.R. Tolkien', 'C.S. Lewis', 'Herman Melville', 'A'),
(185, '600', 'Jakie jest stolicą Kanady?', 'Ottawa', 'Toronto', 'Vancouver', 'Montreal', 'A'),
(186, '600', 'Jak nazywa się chemik, który odkrył penicylinę?', 'Louis Pasteur', 'Alexander Fleming', 'Joseph Lister', 'Robert Koch', 'B'),
(187, '600', 'Jakie jest największe jezioro w Afryce?', 'Jezioro Wiktorii', 'Jezioro Tanganika', 'Jezioro Malawi', 'Jezioro Kaspijskie', 'A'),
(188, '600', 'Jakie są kolory flagi Francji?', 'Czerwony, Biały, Niebieski', 'Czerwony, Niebieski, Zielony', 'Czarny, Złoty, Czerwony', 'Zielony, Żółty, Czerwony', 'A'),
(189, '600', 'Jakie jest najcięższe zwierzę na świecie?', 'Wieloryb', 'Słoń', 'Hipopotam', 'Nosorożec', 'A'),
(190, '600', 'Jakie jest najdłuższe morze na świecie?', 'Morze Północne', 'Morze Czarne', 'Morze Śródziemne', 'Morze Karaibskie', 'C'),
(191, '600', 'Jakie jest najgłębsze miejsce na Ziemi?', 'Rów Mariański', 'Rów Tonga', 'Rów Atakama', 'Rów Moluków', 'A'),
(192, '600', 'Jakie jest najdłuższe zwierzę na świecie?', 'Wieloryb', 'Gatunek dżdżownicy', 'Błękitny waleń', 'Delfin', 'C');


INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(193, '700', 'Który grecki bóg był bogiem wojny?', 'Zeus', 'Apollo', 'Ares', 'Hermes', 'C'),
(194, '700', 'Który pierwiastek chemiczny ma symbol Pb?', 'Fosfor', 'Ołów', 'Potas', 'Cyna', 'B'),
(195, '700', 'Jaką nazwę nosi największa pustynia na świecie?', 'Sahara', 'Gobi', 'Atacama', 'Antarktyczna', 'D'),
(196, '700', 'Który wynalazek został przypisany Johannowi Gutenbergowi?', 'Radio', 'Telewizor', 'Druk', 'Samochód', 'C'),
(197, '700', 'Która planeta w Układzie Słonecznym ma największą liczbę księżyców?', 'Mars', 'Jowisz', 'Saturn', 'Neptun', 'B'),
(198, '700', 'W którym roku rozpoczęła się II wojna światowa?', '1937', '1938', '1939', '1940', 'C'),
(199, '700', 'Który naukowiec odkrył prawo ciążenia?', 'Johannes Kepler', 'Isaac Newton', 'Galileo Galilei', 'Albert Einstein', 'B'),
(200, '700', 'Który stan USA ma największą powierzchnię?', 'Alaska', 'Teksas', 'Kalifornia', 'Montana', 'A'),
(201, '700', 'Który malarz stworzył freski w Kaplicy Sykstyńskiej?', 'Leonardo da Vinci', 'Donatello', 'Rafael', 'Michał Anioł', 'D'),
(202, '700', 'Które z tych zwierząt zalicza się do ssaków?', 'Żółw', 'Pingwin', 'Wieloryb', 'Krokodyl', 'C'),
(203, '700', 'Które miasto jest stolicą Nowej Zelandii?', 'Auckland', 'Christchurch', 'Wellington', 'Dunedin', 'C'),
(204, '700', 'Jak nazywa się główny bohater książki „Don Kichot”?', 'Sancho Panza', 'Don Kichot', 'Dulcynea', 'Cid', 'B'),
(205, '700', 'Która wojna toczyła się w latach 1914-1918?', 'Wojna Secesyjna', 'II wojna światowa', 'I wojna światowa', 'Wojna Krymska', 'C'),
(206, '700', 'Który prezydent USA ogłosił program Apollo?', 'Dwight D. Eisenhower', 'Lyndon B. Johnson', 'John F. Kennedy', 'Richard Nixon', 'C'),
(207, '700', 'Który kwiat jest narodowym symbolem Japonii?', 'Lilia', 'Kamelia', 'Chryzantema', 'Róża', 'C'),
(208, '700', 'Która gwiazda znajduje się najbliżej Ziemi?', 'Polaris', 'Sirius', 'Proxima Centauri', 'Słońce', 'D'),
(209, '700', 'Które morze jest najgłębsze?', 'Morze Bałtyckie', 'Morze Koralowe', 'Morze Sargassowe', 'Morze Czerwone', 'C'),
(210, '700', 'Kto jest uważany za twórcę teorii heliocentrycznej?', 'Galileusz', 'Johannes Kepler', 'Mikołaj Kopernik', 'Ptolemeusz', 'C'),
(211, '700', 'Który metal jest najlżejszy?', 'Srebro', 'Lit', 'Żelazo', 'Ołów', 'B'),
(212, '700', 'Które z tych wydarzeń miało miejsce w 1989 roku?', 'Lądowanie na Księżycu', 'Atak na Pearl Harbor', 'Upadek Muru Berlińskiego', 'Zjednoczenie Niemiec', 'C'),
(213, '700', 'Jakie jest imię pierwszego człowieka w kosmosie?', 'Yuri Gagarin', 'Neil Armstrong', 'Buzz Aldrin', 'John Glenn', 'A'),
(214, '700', 'Jakie miasto jest stolicą Danii?', 'Kopenhaga', 'Sztokholm', 'Oslo', 'Helsinki', 'A'),
(215, '700', 'Jak nazywa się najstarsza znana cywilizacja?', 'Egipska', 'Sumerowie', 'Greków', 'Rzymian', 'B'),
(216, '700', 'Jakie jest najwyższe drzewo na świecie?', 'Sekwoja', 'Bald Cypress', 'Bamboo', 'Pine', 'A'),
(217, '700', 'Jakie jest największe państwo w Europie?', 'Niemcy', 'Rosja', 'Francja', 'Polska', 'B'),
(218, '700', 'Które z tych zwierząt nie żyje w wodzie?', 'Ryba', 'Żółw', 'Foka', 'Słoń', 'D'),
(219, '700', 'Jakie jest imię najbardziej znanej polskiej noblistki?', 'Maria Curie-Skłodowska', 'Wisława Szymborska', 'Olga Tokarczuk', 'Bronisława Wajs', 'A'),
(220, '700', 'Jakie jest najstarsze znane pismo w Europie?', 'Runiczne', 'Grek', 'Klinowe', 'Pismo łacińskie', 'B'),
(221, '700', 'Jakie są kolory flagi Włoch?', 'Zielony, Biały, Czerwony', 'Zielony, Czerwony, Niebieski', 'Czarny, Złoty, Czerwony', 'Zielony, Żółty, Czerwony', 'A'),
(222, '700', 'Jakie jest największe miasto w USA?', 'Nowy Jork', 'Los Angeles', 'Chicago', 'Houston', 'A'),
(223, '700', 'Jak nazywa się zjawisko, kiedy Ziemia obraca się wokół Słońca?', 'Obieg', 'Obrot', 'Orbita', 'Obrotność', 'C'),
(224, '700', 'Jakie jest najważniejsze prawo fizyki?', 'Prawo zachowania masy', 'Prawo grawitacji', 'Prawo termodynamiki', 'Prawo Newtona', 'B');



INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(225, '800', 'Który pierwiastek ma największą gęstość?', 'Ołów', 'Ir', 'Platyna', 'Złoto', 'B'),
(226, '800', 'Które państwo ma najwięcej sąsiadujących krajów?', 'Rosja', 'Chiny', 'Brazylia', 'Indie', 'B'),
(227, '800', 'Który polski fizyk zdobył Nagrodę Nobla za badania nad promieniotwórczością?', 'Mikołaj Kopernik', 'Maria Skłodowska-Curie', 'Stefan Banach', 'Henryk Sienkiewicz', 'B'),
(228, '800', 'Który kraj jest największym eksporterem ropy naftowej?', 'USA', 'Arabia Saudyjska', 'Rosja', 'Iran', 'B'),
(229, '800', 'Który kraj zdobył najwięcej medali na Letnich Igrzyskach Olimpijskich 2016?', 'Chiny', 'USA', 'Wielka Brytania', 'Rosja', 'B'),
(230, '800', 'Kto napisał „Zbrodnię i karę”?', 'Fiodor Dostojewski', 'Lew Tołstoj', 'Anton Czechow', 'Aleksander Puszkin', 'A'),
(231, '800', 'Która planeta w Układzie Słonecznym ma największą masę?', 'Saturn', 'Ziemia', 'Jowisz', 'Neptun', 'C'),
(232, '800', 'Kto odkrył pierwiastek promieniotwórczy rad?', 'Isaac Newton', 'Albert Einstein', 'Marie Curie', 'Dmitrij Mendelejew', 'C'),
(233, '800', 'Jaką nazwę nosi największy księżyc Saturna?', 'Io', 'Europa', 'Ganimedes', 'Tytan', 'D'),
(234, '800', 'Kiedy miała miejsce wojna trzydziestoletnia?', '1618-1648', '1600-1630', '1701-1731', '1500-1530', 'A'),
(235, '800', 'Które państwo ma najwięcej jezior na świecie?', 'Kanada', 'Finlandia', 'Rosja', 'USA', 'A'),
(236, '800', 'Który władca Francji zbudował Pałac w Wersalu?', 'Ludwik XIV', 'Ludwik XVI', 'Napoleon Bonaparte', 'Karol Wielki', 'A'),
(237, '800', 'Jaką nazwę nosi największa wyspa na świecie?', 'Nowa Gwinea', 'Madagaskar', 'Grenlandia', 'Borneo', 'C'),
(238, '800', 'Kto napisał operę „Carmen”?', 'Wolfgang Amadeus Mozart', 'Giuseppe Verdi', 'Georges Bizet', 'Ludwig van Beethoven', 'C'),
(239, '800', 'Który kraj ma najwięcej aktywnych elektrowni jądrowych?', 'Francja', 'Chiny', 'USA', 'Rosja', 'C'),
(240, '800', 'Który ssak potrafi latać?', 'Nietoperz', 'Orzeł', 'Pingwin', 'Latawiec', 'A'),
(241, '800', 'Jakie jest najwyższe pasmo górskie w Europie?', 'Pireneje', 'Alpy', 'Góry Skandynawskie', 'Kaukaz', 'B'),
(242, '800', 'Kto stworzył postać Sherlocka Holmesa?', 'Agatha Christie', 'Arthur Conan Doyle', 'Raymond Chandler', 'John Grisham', 'B'),
(243, '800', 'Który kraj ma największą powierzchnię na świecie?', 'Kanada', 'Chiny', 'Rosja', 'USA', 'C'),
(244, '800', 'Która bitwa w historii starożytnej Grecji była decydująca w wojnie perskiej?', 'Bitwa pod Termopilami', 'Bitwa pod Maratonem', 'Bitwa pod Platejami', 'Bitwa pod Salaminą', 'D'),
(245, '800', 'Jakie jest imię najpopularniejszego malarza wszech czasów?', 'Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh', 'Michelangelo', 'A'),
(246, '800', 'Jakie jest najstarsze znane miasto w Europie?', 'Ateny', 'Rzym', 'Kraków', 'Istanbul', 'A'),
(247, '800', 'Które z tych zwierząt jest znane jako "król dżungli"?', 'Tygrys', 'Lew', 'Słoń', 'Panda', 'B'),
(248, '800', 'Jakie jest najstarsze znane pismo na świecie?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B'),
(249, '800', 'Jak nazywa się znany europejski wynalazca?', 'Nikola Tesla', 'Thomas Edison', 'Albert Einstein', 'Isaac Newton', 'B'),
(250, '800', 'Jakie jest największe jezioro na świecie?', 'Jezioro Bajkał', 'Jezioro Wiktorii', 'Jezioro Superior', 'Jezioro Kaspijskie', 'C'),
(251, '800', 'Jakie jest najgłębsze jezioro w Afryce?', 'Jezioro Wiktorii', 'Jezioro Kaspijskie', 'Jezioro Tanganika', 'Jezioro Malawi', 'C'),
(252, '800', 'Jakie miasto jest stolicą Niemiec?', 'Monachium', 'Berlin', 'Frankfurt', 'Hamburg', 'B'),
(253, '800', 'Jak nazywa się znany polski pisarz?', 'Henryk Sienkiewicz', 'Bolesław Prus', 'Wiesław Myśliwski', 'Stanisław Lem', 'A'),
(254, '800', 'Jakie jest najstarsze znane zwierzę na świecie?', 'Morski jeż', 'Hedgehog', 'Turtle', 'Cichlid', 'D'),
(255, '800', 'Jakie jest najcięższe zwierzę lądowe?', 'Wielbłąd', 'Nosorożec', 'Słoń', 'Zebra', 'C'),
(256, '800', 'Jakie jest największe zwierzę na Ziemi?', 'Słoń', 'Błękitny waleń', 'Żyrafa', 'Krokodyl', 'B');

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(257, '900', 'Który kraj ma najstarszy obecny parlament na świecie?', 'Wielka Brytania', 'Islandia', 'Szwecja', 'Norwegia', 'B'),
(258, '900', 'Które państwo w całości leży na półkuli południowej?', 'Indie', 'Australia', 'Brazylia', 'Filipiny', 'B'),
(259, '900', 'Który biologiczny proces odpowiada za przekształcanie energii słonecznej w energię chemiczną?', 'Fotosynteza', 'Oddychanie komórkowe', 'Fermentacja', 'Oksydacja', 'A'),
(260, '900', 'Który artysta stworzył rzeźbę „Dawid”?', 'Donatello', 'Michał Anioł', 'Leonardo da Vinci', 'Bernini', 'B'),
(261, '900', 'Jaką nazwę nosi największa warstwa atmosfery?', 'Troposfera', 'Mezosfera', 'Termosfera', 'Stratosfera', 'C'),
(262, '900', 'Która rzeka jest najdłuższą rzeką w Azji?', 'Jangcy', 'Huang He', 'Mekong', 'Amur', 'A'),
(263, '900', 'Który pierwiastek ma symbol W?', 'Wolfram', 'Wanad', 'Tytan', 'Cynk', 'A'),
(264, '900', 'Który wynalazek opatentował Samuel Morse?', 'Telegraf', 'Telefon', 'Radio', 'Żarówka', 'A'),
(265, '900', 'Kto był cesarzem Rzymu w czasie jego największej ekspansji?', 'Trajan', 'Augustus', 'Neron', 'Hadrian', 'A'),
(266, '900', 'Która witamina jest niezbędna do krzepnięcia krwi?', 'Witamina A', 'Witamina D', 'Witamina C', 'Witamina K', 'D'),
(267, '900', 'Kto napisał książkę „Bracia Karamazow”?', 'Lew Tołstoj', 'Anton Czechow', 'Fiodor Dostojewski', 'Boris Pasternak', 'C'),
(268, '900', 'Która cząstka subatomowa nie posiada ładunku elektrycznego?', 'Proton', 'Neutron', 'Elektron', 'Kwark', 'B'),
(269, '900', 'Jak nazywa się najstarsza cywilizacja w historii?', 'Mezopotamia', 'Egipt', 'Indie', 'Chiny', 'A'),
(270, '900', 'Kto wynalazł żarówkę?', 'Nikola Tesla', 'Thomas Edison', 'Benjamin Franklin', 'Alexander Graham Bell', 'B'),
(271, '900', 'Które ciało niebieskie ma najwięcej księżyców w Układzie Słonecznym?', 'Jowisz', 'Saturn', 'Neptun', 'Mars', 'B'),
(272, '900', 'W którym roku opublikowano „Teorię względności” Alberta Einsteina?', '1905', '1915', '1920', '1930', 'A'),
(273, '900', 'Które z poniższych zwierząt jest rybą?', 'Wieloryb', 'Delfin', 'Rekin', 'Manat', 'C'),
(274, '900', 'Która z tych planet ma najkrótszy okres obrotu wokół Słońca?', 'Merkury', 'Wenus', 'Ziemia', 'Mars', 'A'),
(275, '900', 'Które państwo miało najwięcej kolonii w historii?', 'Hiszpania', 'Francja', 'Wielka Brytania', 'Portugalia', 'C'),
(276, '900', 'Który malarz stworzył dzieło „Nocna straż”?', 'Vincent van Gogh', 'Rembrandt', 'Pieter Bruegel', 'Jan Vermeer', 'B'),
(277, '900', 'Jakie jest imię najpopularniejszego pisarza w historii?', 'William Shakespeare', 'Charles Dickens', 'Ernest Hemingway', 'J.K. Rowling', 'A'),
(278, '900', 'Jakie jest najstarsze znane miasto na świecie?', 'Damaszek', 'Aleppo', 'Ur', 'Babylon', 'C'),
(279, '900', 'Które z tych zwierząt jest ssakiem?', 'Pingwin', 'Delfin', 'Żółw', 'Krab', 'B'),
(280, '900', 'Jak nazywa się znany amerykański pisarz?', 'F. Scott Fitzgerald', 'Mark Twain', 'Herman Melville', 'Stephen King', 'A'),
(281, '900', 'Jakie jest najstarsze znane pismo na świecie?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B'),
(282, '900', 'Jakie jest najcięższe zwierzę morskie?', 'Słoń', 'Wieloryb', 'Rekin', 'Ośmiornica', 'B'),
(283, '900', 'Jakie jest najdłuższe morze na świecie?', 'Morze Północne', 'Morze Czarne', 'Morze Śródziemne', 'Morze Karaibskie', 'C'),
(284, '900', 'Jakie jest najstarsze znane pismo w historii?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B'),
(285, '900', 'Jak nazywa się znany polski kompozytor?', 'Fryderyk Chopin', 'Witold Lutosławski', 'Krzysztof Penderecki', 'Henryk Górecki', 'A'),
(286, '900', 'Jakie miasto jest stolicą Ukrainy?', 'Kijów', 'Charków', 'Lwów', 'Odessa', 'A'),
(287, '900', 'Jakie jest największe zwierzę morskie?', 'Rekin', 'Wieloryb', 'Delfin', 'Ośmiornica', 'B');



INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(288, '1000', 'Jak nazywa się najbardziej zewnętrzna warstwa Ziemi?', 'Płaszcz', 'Skorupa ziemska', 'Jądro', 'Astenosfera', 'B'),
(289, '1000', 'Który język jest najstarszym znanym językiem pisanym?', 'Sumeryjski', 'Egipski', 'Chiński', 'Sanskryt', 'A'),
(290, '1000', 'Kto odkrył Amerykę dla Europejczyków w 1492 roku?', 'Ferdynand Magellan', 'Krzysztof Kolumb', 'Vasco da Gama', 'Leif Erikson', 'B'),
(291, '1000', 'Który pierwiastek chemiczny ma najwyższą temperaturę topnienia?', 'Żelazo', 'Węgiel', 'Tungsten', 'Uran', 'C'),
(292, '1000', 'Który kraj był częścią ZSRR i ma obecnie swoją stolicę w Tbilisi?', 'Armenia', 'Estonia', 'Azerbejdżan', 'Gruzja', 'D'),
(293, '1000', 'Jak nazywa się organ u płazów, który umożliwia oddychanie pod wodą?', 'Płuca', 'Skrzela', 'Oskrzela', 'Skóra', 'B'),
(294, '1000', 'Który element matematyki odpowiada za określanie kierunku i długości wektora?', 'Iloczyn skalarny', 'Iloczyn wektorowy', 'Norma wektora', 'Gradient', 'C'),
(295, '1000', 'Jakie jest prawdziwe imię Mark Twaina?', 'Samuel Clemens', 'William Faulkner', 'John Steinbeck', 'Thomas Hardy', 'A'),
(296, '1000', 'Który organ w ludzkim ciele filtruje krew i produkuje mocz?', 'Wątroba', 'Serce', 'Nerki', 'Płuca', 'C'),
(297, '1000', 'Które państwo wprowadziło użycie papierowych pieniędzy?', 'Indie', 'Chiny', 'Persja', 'Grecja', 'B'),
(298, '1000', 'Która wojna doprowadziła do upadku Cesarstwa Bizantyjskiego?', 'Wojna stuletnia', 'Wojny krzyżowe', 'Wojna peloponeska', 'Oblężenie Konstantynopola', 'D'),
(299, '1000', 'Które miasto jest największym portem morskim Europy?', 'Antwerpia', 'Hamburg', 'Rotterdam', 'Gdańsk', 'C'),
(300, '1000', 'Który kwas jest najczęściej spotykany w ludzkim żołądku?', 'Kwas solny', 'Kwas siarkowy', 'Kwas azotowy', 'Kwas octowy', 'A'),
(301, '1000', 'Który stan USA jako jedyny był kiedyś niezależną republiką?', 'Teksas', 'Kalifornia', 'Alaska', 'Floryda', 'A'),
(302, '1000', 'Która część ludzkiego mózgu odpowiada za regulację hormonów?', 'Kora mózgowa', 'Móżdżek', 'Przysadka mózgowa', 'Hipokamp', 'C'),
(303, '1000', 'Który rodzaj promieniowania elektromagnetycznego ma najmniejszą długość fali?', 'Mikrofale', 'Podczerwień', 'Promieniowanie rentgenowskie', 'Promienie gamma', 'D'),
(304, '1000', 'Który kraj zbudował pierwszy atomowy okręt podwodny?', 'Stany Zjednoczone', 'Rosja', 'Wielka Brytania', 'Chiny', 'A'),
(305, '1000', 'Które z poniższych jest jedną z zasad termodynamiki?', 'Zasada nieoznaczoności', 'Prawo Archimedesa', 'Zachowanie energii', 'Równanie stanu', 'C'),
(306, '1000', 'Która wyspa jest największą wulkaniczną wyspą na świecie?', 'Islandia', 'Hawaje', 'Madagaskar', 'Nowa Zelandia', 'A'),
(307, '1000', 'Która rzeka jest najdłuższa na kontynencie afrykańskim?', 'Nil', 'Kongo', 'Zambezi', 'Limpopo', 'A'),
(308, '1000', 'Jakie jest imię najpopularniejszego reżysera w historii?', 'Steven Spielberg', 'Alfred Hitchcock', 'Martin Scorsese', 'Francis Ford Coppola', 'A'),
(309, '1000', 'Jakie jest najstarsze znane pismo na świecie?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B'),
(310, '1000', 'Które z tych zwierząt jest znane jako \"król dżungli\"?', 'Tygrys', 'Lew', 'Słoń', 'Panda', 'B'),
(311, '1000', 'Jakie jest najcięższe zwierzę morskie?', 'Wieloryb', 'Rekin', 'Ośmiornica', 'Krab', 'A'),
(312, '1000', 'Jakie jest najstarsze znane miasto na świecie?', 'Damaszek', 'Aleppo', 'Ur', 'Babylon', 'C'),
(313, '1000', 'Jakie jest największe jezioro w Afryce?', 'Jezioro Wiktorii', 'Jezioro Tanganika', 'Jezioro Malawi', 'Jezioro Kaspijskie', 'A'),
(314, '1000', 'Jakie jest największe jezioro na świecie?', 'Jezioro Bajkał', 'Jezioro Wiktorii', 'Jezioro Superior', 'Jezioro Kaspijskie', 'C'),
(315, '1000', 'Jakie miasto jest stolicą Rosji?', 'Sanktpetersburg', 'Moskwa', 'Kijów', 'Mediolan', 'B'),
(316, '1000', 'Jak nazywa się znany polski kompozytor?', 'Fryderyk Chopin', 'Witold Lutosławski', 'Krzysztof Penderecki', 'Henryk Górecki', 'A'),
(317, '1000', 'Jakie miasto jest znane jako \"miasto miłości\"?', 'Paryż', 'Rzym', 'Nowy Jork', 'Wenecja', 'A'),
(318, '1000', 'Jakie jest największe miasto w Afryce?', 'Kair', 'Lagos', 'Nairobi', 'Kinszasa', 'B'),
(319, '1000', 'Jakie jest najstarsze znane pismo w historii?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B');

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(320, '1100', 'Który pierwiastek chemiczny ma najniższą temperaturę topnienia?', 'Hel', 'Azot', 'Rtęć', 'Wodór', 'A'),
(321, '1100', 'Który kontynent ma najmniej ludności?', 'Australia', 'Antarktyda', 'Ameryka Południowa', 'Europa', 'B'),
(322, '1100', 'Który enzym trawi białka w żołądku?', 'Pepsyna', 'Amylaza', 'Lipaza', 'Trypsyna', 'A'),
(323, '1100', 'Które z poniższych ciał niebieskich jest uważane za planetoidę?', 'Pluton', 'Ceres', 'Kallisto', 'Io', 'B'),
(324, '1100', 'Który genetyczny materiał przekazuje dziedziczenie w komórkach?', 'Białka', 'RNA', 'DNA', 'Enzymy', 'C'),
(325, '1100', 'Kto odkrył szczepionkę przeciwko ospie?', 'Louis Pasteur', 'Edward Jenner', 'Alexander Fleming', 'Jonas Salk', 'B'),
(326, '1100', 'Która planeta w Układzie Słonecznym ma najkrótszy dzień?', 'Merkury', 'Wenus', 'Mars', 'Jowisz', 'D'),
(327, '1100', 'Który prezydent USA ogłosił emancypację niewolników?', 'Thomas Jefferson', 'Abraham Lincoln', 'George Washington', 'Theodore Roosevelt', 'B'),
(328, '1100', 'Jak nazywa się proces zmiany stanu skupienia z gazu w ciecz?', 'Kondensacja', 'Sublimacja', 'Parowanie', 'Topnienie', 'A'),
(329, '1100', 'Który język ma największą liczbę rodzimych użytkowników?', 'Angielski', 'Chiński', 'Hiszpański', 'Hinduski', 'B'),
(330, '1100', 'Która jednostka astronomiczna mierzy odległość w kosmosie?', 'Lata świetlne', 'Parseki', 'Kilometry', 'Mili', 'A'),
(331, '1100', 'Które ciało niebieskie jest najjaśniejsze na nocnym niebie po Księżycu?', 'Mars', 'Wenus', 'Jowisz', 'Sirius', 'B'),
(332, '1100', 'Który król Francji został ścięty podczas rewolucji francuskiej?', 'Ludwik XIV', 'Ludwik XV', 'Ludwik XVI', 'Napoleon Bonaparte', 'C'),
(333, '1100', 'Który narząd ludzki ma najwięcej receptorów bólu?', 'Skóra', 'Serce', 'Mózg', 'Jelita', 'A'),
(334, '1100', 'Jak nazywa się reakcja chemiczna, która powoduje wydzielanie ciepła?', 'Endotermiczna', 'Egzotermiczna', 'Redoks', 'Spalanie', 'B'),
(335, '1100', 'Która cząstka subatomowa przenosi siłę elektromagnetyczną?', 'Foton', 'Neutron', 'Proton', 'Elektron', 'A'),
(336, '1100', 'Kto napisał książkę „Wojna i pokój”?', 'Lew Tołstoj', 'Fiodor Dostojewski', 'Anton Czechow', 'Nikolaj Gogol', 'A'),
(337, '1100', 'Jaką nazwę nosi największy ocean na świecie?', 'Atlantyk', 'Ocean Indyjski', 'Pacyfik', 'Ocean Arktyczny', 'C'),
(338, '1100', 'Która tkanka ludzka jest najbardziej miękka?', 'Kość', 'Skóra', 'Mózg', 'Tłuszcz', 'C'),
(339, '1100', 'Która część ludzkiego oka jest odpowiedzialna za widzenie kolorów?', 'Soczewka', 'Siatkówka', 'Tęczówka', 'Rogówka', 'B'),
(340, '1100', 'Jakie jest imię najbardziej znanego malarza wszech czasów?', 'Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh', 'Michelangelo', 'A'),
(341, '1100', 'Jakie jest najstarsze znane miasto na świecie?', 'Ateny', 'Rzym', 'Kraków', 'Istanbul', 'A'),
(342, '1100', 'Które z tych zwierząt jest znane jako "król dżungli"?', 'Tygrys', 'Lew', 'Słoń', 'Panda', 'B'),
(343, '1100', 'Jakie jest najstarsze znane pismo na świecie?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B'),
(344, '1100', 'Jakie miasto jest stolicą Danii?', 'Kopenhaga', 'Sztokholm', 'Oslo', 'Helsinki', 'A'),
(345, '1100', 'Jakie jest największe jezioro na świecie?', 'Jezioro Bajkał', 'Jezioro Wiktorii', 'Jezioro Superior', 'Jezioro Kaspijskie', 'C'),
(346, '1100', 'Jakie miasto jest stolicą Niemiec?', 'Monachium', 'Berlin', 'Frankfurt', 'Hamburg', 'B'),
(347, '1100', 'Jak nazywa się znany polski kompozytor?', 'Fryderyk Chopin', 'Witold Lutosławski', 'Krzysztof Penderecki', 'Henryk Górecki', 'A'),
(348, '1100', 'Jakie jest najcięższe zwierzę morskie?', 'Słoń', 'Wieloryb', 'Rekin', 'Ośmiornica', 'B'),
(349, '1100', 'Jakie miasto jest znane jako "miasto miłości"?', 'Paryż', 'Rzym', 'Nowy Jork', 'Wenecja', 'A'),
(350, '1100', 'Jakie jest największe miasto w Afryce?', 'Kair', 'Lagos', 'Nairobi', 'Kinszasa', 'B'),
(351, '1100', 'Jakie jest najstarsze znane pismo w historii?', 'Hieroglify', 'Pismo klinowe', 'Pismo egipskie', 'Pismo łacińskie', 'B');

INSERT INTO `pytania` (`id`, `kategoria`, `pytanie`, `odpowiedz_a`, `odpowiedz_b`, `odpowiedz_c`, `odpowiedz_d`, `poprawna_odpowiedz`) VALUES
(352, '1200', 'Który pierwiastek chemiczny jest najbardziej radioaktywny?', 'Pluton', 'Rad', 'Polon', 'Uran', 'B'),
(353, '1200', 'Która planeta ma największy pierścień w Układzie Słonecznym?', 'Saturn', 'Jowisz', 'Uran', 'Neptun', 'A'),
(354, '1200', 'Który gen powoduje rozwój raka w organizmie?', 'Onkogen', 'Gen supresorowy', 'Mikrogen', 'Enzym', 'A'),
(355, '1200', 'Który sułtan osmański zdobył Konstantynopol w 1453 roku?', 'Mehmet II', 'Sulejman Wspaniały', 'Selim I', 'Osman I', 'A'),
(356, '1200', 'Jaką nazwę nosi największy znany wulkan na Marsie?', 'Olympus Mons', 'Vesuvius Mons', 'Arsia Mons', 'Elysium Mons', 'A'),
(357, '1200', 'Który pierwiastek chemiczny występuje w diamentach?', 'Węgiel', 'Silikon', 'Wapń', 'Tlen', 'A'),
(358, '1200', 'Która cząstka przenosi siłę słabą w fizyce jądrowej?', 'W-boson', 'Foton', 'Neutrino', 'Mezon', 'A'),
(359, '1200', 'Który kraj był największym mocarstwem kolonialnym w Ameryce Południowej?', 'Hiszpania', 'Portugalia', 'Francja', 'Wielka Brytania', 'A'),
(360, '1200', 'Jak nazywa się enzym trawiący tłuszcze?', 'Pepsyna', 'Amylaza', 'Lipaza', 'Trypsyna', 'C'),
(361, '1200', 'Który hormon reguluje poziom cukru we krwi?', 'Insulina', 'Kortyzol', 'Adrenalina', 'Glukagon', 'A'),
(362, '1200', 'Kto wynalazł penicylinę?', 'Marie Curie', 'Robert Koch', 'Alexander Fleming', 'Louis Pasteur', 'C'),
(363, '1200', 'Które miasto było stolicą imperium Majów?', 'Tikal', 'Chichén Itzá', 'Palenque', 'Uxmal', 'A'),
(364, '1200', 'Która substancja odpowiada za transport tlenu w organizmie?', 'Hemoglobina', 'Trombina', 'Fibrinogen', 'Miozyna', 'A'),
(365, '1200', 'Który grecki filozof był nauczycielem Aleksandra Wielkiego?', 'Platon', 'Arystoteles', 'Sokrates', 'Heraklit', 'B'),
(366, '1200', 'Która gwiazda jest najbliższą Ziemi?', 'Proxima Centauri', 'Betelgeza', 'Sirius', 'Polaris', 'A'),
(367, '1200', 'Jaką nazwę nosi proces łączenia się dwóch jąder atomowych?', 'Fuzja', 'Rozszczepienie', 'Jonizacja', 'Rekombinacja', 'A'),
(368, '1200', 'Która wyspa jest największa pod względem powierzchni?', 'Nowa Gwinea', 'Grenlandia', 'Borneo', 'Madagaskar', 'B'),
(369, '1200', 'Który element układu nerwowego przewodzi impulsy elektryczne?', 'Akson', 'Dendryt', 'Neuron', 'Synapsa', 'C'),
(370, '1200', 'Który kraj wyprodukował pierwszą bombę atomową?', 'USA', 'Rosja', 'Chiny', 'Niemcy', 'A'),
(371, '1200', 'Który metal jest najcięższy pod względem gęstości?', 'Ołów', 'Uran', 'Osm', 'Platyna', 'C'),
(372, '1200', 'Jak nazywa się najgłębszy ocean na świecie?', 'Ocean Atlantycki', 'Ocean Spokojny', 'Ocean Indyjski', 'Ocean Arktyczny', 'B'),
(373, '1200', 'Kto napisał "Zbrodnię i karę"?', 'Fiodor Dostojewski', 'Lew Tołstoj', 'Anton Czechow', 'Maksym Gorki', 'A'),
(374, '1200', 'Jakie jest największe zwierzę lądowe?', 'Nosorożec', 'Słoń afrykański', 'Bawół', 'Żyrafa', 'B'),
(375, '1200', 'Jakie jest imię najpopularniejszej piosenkarki wszech czasów?', 'Madonna', 'Whitney Houston', 'Celine Dion', 'Beyoncé', 'A'),
(376, '1200', 'Jakie jest najstarsze znane pismo w historii?', 'Pismo klinowe', 'Hieroglify', 'Pismo egipskie', 'Pismo łacińskie', 'A'),
(377, '1200', 'Jakie miasto jest stolicą Włoch?', 'Rzym', 'Mediolan', 'Wenecja', 'Neapol', 'A'),
(378, '1200', 'Jakie jest największe jezioro w Afryce?', 'Jezioro Wiktorii', 'Jezioro Tanganika', 'Jezioro Malawi', 'Jezioro Kaspijskie', 'A'),
(379, '1200', 'Jakie jest imię najsłynniejszego polskiego kompozytora?', 'Fryderyk Chopin', 'Witold Lutosławski', 'Henryk Górecki', 'Krzysztof Penderecki', 'A'),
(380, '1200', 'Jakie jest najwyższe zwierzę na świecie?', 'Słoń', 'Zebra', 'Giraffa camelopardalis', 'Krowa', 'C'),
(381, '1200', 'Kto jest autorem "Małego Księcia"?', 'Antoine de Saint-Exupéry', 'Victor Hugo', 'Jules Verne', 'Marcel Proust', 'A'),

-- Kategoria 100 - Łatwe pytania geograficzne
(382, '100', 'Stolica Francji to:', 'Marsylia', 'Lyon', 'Paryż', 'Nicea', 'C'),
(383, '100', 'Największa wyspa na świecie to:', 'Grenlandia', 'Australia', 'Nowa Gwinea', 'Madagaskar', 'A'),
(384, '100', 'Jaka rzeka przepływa przez Londyn?', 'Seine', 'Loara', 'Tag', 'Tamiza', 'D'),
(385, '100', 'Największy kraj na świecie to:', 'Kanada', 'Chiny', 'Rosja', 'USA', 'C'),
(386, '100', 'Które z tych państw jest w Azji?', 'Chorwacja', 'Indie', 'Brazylia', 'Egipt', 'B'),
(387, '100', 'Stolicą Niemiec jest:', 'Berlin', 'Monachium', 'Frankfurt', 'Hamburg', 'A'),
(388, '100', 'Jak nazywa się największy kontynent?', 'Afryka', 'Azja', 'Europa', 'Ameryka Południowa', 'B'),
(389, '100', 'Kraj ze stolicą w Kopenhadze to:', 'Norwegia', 'Dania', 'Szwecja', 'Finlandia', 'B'),
(390, '100', 'Jaki kraj jest ojczyzną pizzy?', 'Hiszpania', 'Francja', 'Włochy', 'Grecja', 'C'),
(391, '100', 'Która rzeka jest najdłuższa na świecie?', 'Amazonka', 'Nil', 'Missisipi', 'Jangcy', 'B'),
(392, '100', 'Ile stanów ma USA?', '50', '52', '48', '49', 'A'),
(393, '100', 'Które miasto nazywane jest „Wielkim Jabłkiem”?', 'Los Angeles', 'Miami', 'Chicago', 'Nowy Jork', 'D'),
(394, '100', 'Która pustynia jest największa na świecie?', 'Sahara', 'Gobi', 'Atacama', 'Kalahari', 'A'),
(395, '100', 'Które państwo ma największą populację?', 'Indie', 'Chiny', 'USA', 'Indonezja', 'B'),
(396, '100', 'Jakie jest najwyższe jezioro na świecie?', 'Bajkał', 'Titicaca', 'Victoria', 'Ladoga', 'B'),
(397, '100', 'Które miasto jest stolicą Australii?', 'Sydney', 'Canberra', 'Melbourne', 'Perth', 'B'),
(398, '100', 'Który z tych krajów nie ma dostępu do morza?', 'Szwajcaria', 'Portugalia', 'Turcja', 'Hiszpania', 'A'),
(399, '100', 'Gdzie znajduje się Wielka Rafa Koralowa?', 'Indie', 'Australia', 'Brazylia', 'Filipiny', 'B'),
(400, '100', 'Jakie jest największe miasto w Brazylii?', 'Rio de Janeiro', 'Brasília', 'São Paulo', 'Salvador', 'C'),
(401, '100', 'Jaki jest najwyższy wodospad na świecie?', 'Wodospad Niagara', 'Wodospad Angel', 'Wodospad Wiktorii', 'Iguazu', 'B'),

-- Kategoria 200 - Średnie pytania naukowe
(402, '200', 'Jednostką natężenia prądu jest:', 'Volt', 'Amper', 'Wolt', 'Ohm', 'B'),
(403, '200', 'Ile chromosomów ma człowiek?', '42', '44', '46', '48', 'C'),
(404, '200', 'Symbol pierwiastka tlen to:', 'O', 'O2', 'T', 'P', 'A'),
-- Kategoria 200 - Średnie pytania naukowe (ciąg dalszy)
(405, '200', 'Planeta najbliżej Słońca to:', 'Mars', 'Wenus', 'Merkury', 'Jowisz', 'C'),
(406, '200', 'Czym mierzymy energię?', 'Volt', 'Joule', 'Amper', 'Wolt', 'B'),
(407, '200', 'Który gaz dominuje w atmosferze?', 'Tlen', 'Azot', 'Dwutlenek węgla', 'Argon', 'B'),
(408, '200', 'DNA składa się z:', 'Podwójnej helisy', 'Pojedynczej helisy', 'Trypletu', 'Quadrupletu', 'A'),
(409, '200', 'Czas trwania obrotu Ziemi wokół własnej osi to:', '24 godziny', '12 godzin', '48 godzin', '36 godzin', 'A'),
(410, '200', 'Jakie jest przyciąganie ziemskie?', '5.8 m/s²', '9.8 m/s²', '12 m/s²', '4.5 m/s²', 'B'),
(411, '200', 'Która planeta ma największą liczbę księżyców?', 'Saturn', 'Jowisz', 'Mars', 'Wenus', 'B'),
(412, '200', 'Który pierwiastek ma symbol H?', 'Węgiel', 'Wodór', 'Hel', 'Tlen', 'B'),
(413, '200', 'Co jest mniejsze od atomu?', 'Molekuła', 'Proton', 'Neutron', 'Komórka', 'B'),
(414, '200', 'Co jest podstawową jednostką masy?', 'Gram', 'Kilogram', 'Miligram', 'Ton', 'B'),
(415, '200', 'Kto jest autorem teorii ewolucji?', 'Isaac Newton', 'Albert Einstein', 'Charles Darwin', 'Niels Bohr', 'C'),
(416, '200', 'Jak nazywa się komórka nerwowa?', 'Neuron', 'Fibroblast', 'Limfocyt', 'Erytrocyt', 'A'),
(417, '200', 'Która z tych planet jest gazowym gigantem?', 'Mars', 'Ziemia', 'Jowisz', 'Merkury', 'C'),
(418, '200', 'Kto odkrył penicylinę?', 'Alexander Fleming', 'Louis Pasteur', 'Robert Koch', 'Gregor Mendel', 'A'),
(419, '200', 'Która planeta jest największa w Układzie Słonecznym?', 'Saturn', 'Jowisz', 'Mars', 'Ziemia', 'B'),
(420, '200', 'Czym jest kometa?', 'Planeta', 'Gwiazda', 'Ciało lodowe i skalne', 'Supernova', 'C'),

-- Kategoria 300 - Kultura
(421, '300', 'Kto napisał „Romeo i Julia”?', 'Miguel Cervantes', 'Leo Tolstoj', 'William Shakespeare', 'Charles Dickens', 'C'),
(422, '300', 'Mona Lisa została namalowana przez:', 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Rembrandt', 'B'),
(423, '300', 'Film „Forrest Gump” zdobył Oscara za najlepszy film w:', '1990', '1994', '2000', '2005', 'B'),
(424, '300', 'Jaka jest narodowość autora „Hobbita”?', 'Amerykańska', 'Brytyjska', 'Francuska', 'Hiszpańska', 'B'),
(425, '300', 'Które miasto nazywa się „Miasto Miłości”?', 'Paryż', 'Nowy Jork', 'Rzym', 'Wenecja', 'A'),
(426, '300', 'Kto jest autorem „Sklepów cynamonowych”?', 'Bruno Schulz', 'Bolesław Prus', 'Henryk Sienkiewicz', 'Adam Mickiewicz', 'A'),
(427, '300', 'Kto namalował „Gwiezdną Noc”?', 'Van Gogh', 'Monet', 'Cezanne', 'Picasso', 'A'),
(428, '300', 'Która opera została skomponowana przez Mozarta?', 'Don Giovanni', 'Traviata', 'Tosca', 'Carmen', 'A'),
(429, '300', '„Rok 1984” napisał:', 'George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'Philip K. Dick', 'A'),
(430, '300', 'Kto jest twórcą Sherlocka Holmesa?', 'Agatha Christie', 'Arthur Conan Doyle', 'Stephen King', 'Oscar Wilde', 'B'),

-- Kategoria 400 - Średnio-trudne pytania historyczne
(431, '400', 'W którym roku zakończyła się II wojna światowa?', '1945', '1939', '1918', '1950', 'A'),
(432, '400', 'Pierwszy prezydent USA to:', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'Theodore Roosevelt', 'A'),
(433, '400', 'Który z tych przywódców został obalony w czasie Rewolucji Francuskiej?', 'Ludwik XIV', 'Ludwik XVI', 'Napoleon', 'Robespierre', 'B'),
(434, '400', 'Które miasto było stolicą Polski przed Warszawą?', 'Poznań', 'Kraków', 'Gniezno', 'Wrocław', 'B'),
(435, '400', 'W którym roku podpisano Konstytucję 3 maja?', '1789', '1791', '1776', '1815', 'B'),
(436, '400', 'W którym roku miała miejsce bitwa pod Grunwaldem?', '1400', '1410', '1492', '1517', 'B'),
(437, '400', 'Kto odkrył Amerykę?', 'Vasco da Gama', 'Krzysztof Kolumb', 'Ferdynand Magellan', 'Henryk Żeglarz', 'B'),
(438, '400', 'Kto był faraonem podczas budowy Wielkiej Piramidy?', 'Ramses II', 'Cheops', 'Tutanchamon', 'Seti I', 'B'),
(439, '400', 'Które państwo opuściło Unię Europejską w 2020 roku?', 'Francja', 'Wielka Brytania', 'Hiszpania', 'Niemcy', 'B'),
(440, '400', 'Kto był przywódcą Związku Radzieckiego w czasie II wojny światowej?', 'Lenin', 'Stalin', 'Chruszczow', 'Breżniew', 'B'),
-- Kategoria 500 - Historia Polski
(441, '500', 'Kto był królem Polski w 1410 roku?', 'Bolesław Chrobry', 'Kazimierz Wielki', 'Władysław Jagiełło', 'Zygmunt III Waza', 'C'),
(442, '500', 'Bitwa pod Wiedniem odbyła się w roku:', '1588', '1683', '1720', '1621', 'B'),
(443, '500', 'Unia Lubelska została podpisana w roku:', '1410', '1569', '1600', '1772', 'B'),
(444, '500', 'Kto był ostatnim królem Polski?', 'Kazimierz Wielki', 'August II Mocny', 'Stanisław August Poniatowski', 'Władysław IV', 'C'),
(445, '500', 'Który władca Polski był synem królowej Bony?', 'Władysław IV', 'Zygmunt III Waza', 'Zygmunt August', 'Kazimierz Wielki', 'C'),
(446, '500', 'Kto napisał „Rocznik wielkopolski”?', 'Jan Długosz', 'Gall Anonim', 'Wincenty Kadłubek', 'Stanisław Staszic', 'C'),
(447, '500', 'Kto wygrał bitwę pod Kłuszynem?', 'Francuzi', 'Polacy', 'Turcy', 'Rosjanie', 'B'),
(448, '500', 'Które miasto było stolicą Polski za czasów Piastów?', 'Warszawa', 'Kraków', 'Gniezno', 'Poznań', 'C'),
(449, '500', 'Kim był Tadeusz Kościuszko?', 'Poetą', 'Wynalazcą', 'Generałem', 'Królem', 'C'),
(450, '500', 'Która polska królowa zasłynęła jako mecenas sztuki?', 'Anna Jagiellonka', 'Barbara Radziwiłłówna', 'Jadwiga Andegaweńska', 'Bona Sforza', 'D'),

-- Kategoria 600 - Literatura
(451, '600', 'Kto napisał „Dziady”?', 'Bolesław Prus', 'Henryk Sienkiewicz', 'Adam Mickiewicz', 'Juliusz Słowacki', 'C'),
(452, '600', '„W pustyni i w puszczy” to dzieło:', 'Juliusz Verne', 'Henryk Sienkiewicz', 'Juliusz Słowacki', 'Stanisław Lem', 'B'),
(453, '600', 'Który pisarz napisał „Lalka”?', 'Henryk Sienkiewicz', 'Adam Mickiewicz', 'Bolesław Prus', 'Stefan Żeromski', 'C'),
(454, '600', 'Kto napisał „Ogniem i mieczem”?', 'Stefan Żeromski', 'Henryk Sienkiewicz', 'Adam Mickiewicz', 'Juliusz Słowacki', 'B'),
(455, '600', 'Kto jest autorem „Sklepów cynamonowych”?', 'Bruno Schulz', 'Witold Gombrowicz', 'Bolesław Prus', 'Leopold Tyrmand', 'A'),
(456, '600', 'Jakie jest dzieło życia Stefana Żeromskiego?', 'Przedwiośnie', 'Lalka', 'Potop', 'Chłopi', 'A'),
(457, '600', 'Kto napisał „Nad Niemnem”?', 'Stefan Żeromski', 'Henryk Sienkiewicz', 'Eliza Orzeszkowa', 'Władysław Reymont', 'C'),
(458, '600', 'Kto napisał „Kamienie na szaniec”?', 'Jan Brzechwa', 'Aleksander Kamiński', 'Adam Mickiewicz', 'Czesław Miłosz', 'B'),
(459, '600', 'Kto napisał „Potop”?', 'Bolesław Prus', 'Stefan Żeromski', 'Henryk Sienkiewicz', 'Władysław Reymont', 'C'),
(460, '600', 'Kto napisał „Chłopi”?', 'Stefan Żeromski', 'Henryk Sienkiewicz', 'Władysław Reymont', 'Bolesław Prus', 'C'),

-- Kategoria 700 - Sztuka
(461, '700', 'Kto namalował „Słoneczniki”?', 'Monet', 'Van Gogh', 'Picasso', 'Rembrandt', 'B'),
(462, '700', 'Kto jest autorem fresków w Kaplicy Sykstyńskiej?', 'Donatello', 'Leonardo da Vinci', 'Michelangelo', 'Rafael', 'C'),
(463, '700', 'Kto jest twórcą „Guerniki”?', 'Pablo Picasso', 'Salvador Dali', 'Claude Monet', 'Edgar Degas', 'A'),
(464, '700', '„Nocna straż” to obraz autorstwa:', 'Leonardo da Vinci', 'Pieter Bruegel', 'Rembrandt', 'Vermeer', 'C'),
(465, '700', 'Który malarz był impresjonistą?', 'Van Gogh', 'Monet', 'Picasso', 'Cezanne', 'B'),
(466, '700', 'Kto jest autorem „Piety”?', 'Donatello', 'Michelangelo', 'Leonardo da Vinci', 'Botticelli', 'B'),
(467, '700', 'Które dzieło jest autorstwa Botticellego?', 'Narodziny Wenus', 'Pieta', 'Guernica', 'Dama z gronostajem', 'A'),
(468, '700', 'Kto jest twórcą obrazu „Krzyk”?', 'Monet', 'Munch', 'Van Gogh', 'Picasso', 'B'),
(469, '700', 'Kto namalował „Ostatnią wieczerzę”?', 'Leonardo da Vinci', 'Raphael', 'Michelangelo', 'Rembrandt', 'A'),
(470, '700', 'Kto był prekursorem surrealizmu?', 'Dalí', 'Picasso', 'Monet', 'Vermeer', 'A'),

-- Kategoria 800 - Trudne pytania z historii
(471, '800', 'W którym roku odbyła się bitwa pod Hastings?', '1215', '1066', '1302', '1453', 'B'),
(472, '800', 'Która dynastia rządziła Rosją przed rewolucją bolszewicką?', 'Rurykowicze', 'Romanowowie', 'Piastowie', 'Habsburgowie', 'B'),
(473, '800', 'Kiedy upadło Cesarstwo Zachodniorzymskie?', '476', '1453', '330', '800', 'A'),
(474, '800', 'Kto wynalazł druk?', 'Galileusz', 'Da Vinci', 'Gutenberg', 'Newton', 'C'),
(475, '800', 'W którym roku rozpoczęła się II wojna światowa?', '1941', '1914', '1939', '1945', 'C'),
(476, '800', 'W którym roku zakończyła się rewolucja francuska?', '1799', '1789', '1804', '1776', 'A'),
(477, '800', 'Pierwszy człowiek w kosmosie to:', 'Neil Armstrong', 'Jurij Gagarin', 'Alan Shepard', 'John Glenn', 'B'),
(478, '800', 'Kto był pierwszym prezydentem USA?', 'Abraham Lincoln', 'George Washington', 'John Adams', 'Thomas Jefferson', 'B'),
(479, '800', 'Które państwo było przeciwnikiem Polski w bitwie pod Grunwaldem?', 'Krzyżacy', 'Turcja', 'Rosja', 'Austria', 'A'),
(480, '800', 'W którym wieku miała miejsce wojna stuletnia?', 'XV', 'XIV', 'XVI', 'XVII', 'B'),
-- Kategoria 1100 - Filozofia
(481, '1100', 'Kto napisał „Państwo”?', 'Arystoteles', 'Platon', 'Sokrates', 'Kant', 'B'),
(482, '1100', 'Które pojęcie jest związane z egzystencjalizmem?', 'Moralność', 'Absurd', 'Świadomość', 'Logika', 'B'),
(483, '1100', 'Kto jest autorem „Krytyki czystego rozumu”?', 'Platon', 'Arystoteles', 'Kant', 'Hegel', 'C'),
(484, '1100', 'Kto sformułował zasadę „Cogito ergo sum”?', 'Sokrates', 'Descartes', 'Nietzsche', 'Spinoza', 'B'),
(485, '1100', 'Czym zajmuje się ontologia?', 'Estetyką', 'Pojęciem istnienia', 'Moralnością', 'Logiką', 'B'),
(486, '1100', 'Kim był Friedrich Nietzsche?', 'Filozofem', 'Matematykiem', 'Biologiem', 'Artystą', 'A'),
(487, '1100', 'Która filozofia dąży do maksymalizacji szczęścia?', 'Egzystencjalizm', 'Stoicyzm', 'Utylitaryzm', 'Idealizm', 'C'),
(488, '1100', 'Kto jest autorem pojęcia „nadczłowieka”?', 'Nietzsche', 'Kant', 'Hume', 'Sokrates', 'A'),
(489, '1100', 'Który filozof sformułował etykę cnót?', 'Platon', 'Sokrates', 'Arystoteles', 'Kant', 'C'),
(490, '1100', 'Czym zajmuje się epistemologia?', 'Znaczeniem', 'Istnieniem', 'Poznaniem', 'Moralnością', 'C'),

-- Kategoria 1200 - Astronomia
(491, '1200', 'Jaka jest odległość od Ziemi do Słońca?', '150 milionów km', '200 milionów km', '100 milionów km', '250 milionów km', 'A'),
(492, '1200', 'Która planeta ma najwięcej księżyców?', 'Saturn', 'Jowisz', 'Mars', 'Neptun', 'B'),
(493, '1200', 'Jak długo trwa dzień na Wenus?', '24 godziny', '243 dni', '16 godzin', '9 godzin', 'B'),
(494, '1200', 'Który gaz dominuje w atmosferze Jowisza?', 'Tlen', 'Hel', 'Metan', 'Wodór', 'D'),
(495, '1200', 'Kto odkrył pierścienie Saturna?', 'Galileusz', 'Newton', 'Kepler', 'Einstein', 'A'),
(496, '1200', 'Które ciało niebieskie uznaje się za największe w Układzie Słonecznym?', 'Jowisz', 'Słońce', 'Saturn', 'Uran', 'B'),
(497, '1200', 'Co to jest supernowa?', 'Martwa gwiazda', 'Eksplozja gwiazdy', 'Planeta', 'Księżyc', 'B'),
(498, '1200', 'Jakie zjawisko powoduje zaćmienie Słońca?', 'Księżyc zasłania Słońce', 'Ziemia zasłania Księżyc', 'Mars zasłania Ziemię', 'Księżyc zasłania Marsa', 'A'),
(499, '1200', 'Jaki jest najgorętszy rodzaj gwiazdy?', 'Biała karzeł', 'Niebieski olbrzym', 'Czerwony karzeł', 'Żółty karzeł', 'B'),
(500, '1200', 'Który teleskop wyniesiono na orbitę w 1990 roku?', 'Hubble', 'Kepler', 'James Webb', 'Spitzer', 'A');








--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pytania`
--
ALTER TABLE `pytania`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pytania`
--
ALTER TABLE `pytania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;