-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Set-2018 às 20:20
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `goa`
--
CREATE DATABASE `goa`;
USE `goa`;
-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

CREATE TABLE `autor` (
  `IdAutor` int(10) UNSIGNED NOT NULL,
  `Autor` varchar(100) NOT NULL,
  `senha` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`IdAutor`, `Autor`, `senha`) VALUES
(1, 'Luiz', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `Idnoticia` int(10) UNSIGNED NOT NULL,
  `idautor` int(10) UNSIGNED NOT NULL,
  `Titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `imagem` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `conteudo` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`Idnoticia`, `idautor`, `Titulo`, `descricao`, `imagem`, `conteudo`, `data`) VALUES
(1, 1, 'R6 - Operadores da dlc Grim sky são relevados ', 'Maverick e Clash serão lançados dia 04 de setembro', 'img/R6GS.jpg', 'Os dois Agentes podem vir de diferentes UAT’s, mas ambos vão se juntar à equipe Urban Tactical Response, conhecida como Grim Sky ou GSUTR.\r\n\r\nA primeira Agente é uma Defensora da Grã-Bretanha. Ela é uma oficial audaciosa, especialista em abordagens de multidões violentas e confrontos diretos. Ela sabe que seu lugar é na linha de frente e não vai tolerar nenhum disparate.\r\n\r\nO segundo Agente é um Atacante americano, um especialista com uma mente aguçada quando se trata de operações táticas. Ele já viu o pior em Kabul; contudo, se apaixonou pela cidade. Famoso por sua precisão cirúrgica, ele permanece um enigma dentro da equipe Rainbow.\r\n\r\nTeremos também nossa primeira reformulação de mapa. O cenário escolhido desta vez é a Base Hereford. Apesar da grande chance de chuva neste icônico centro de treinamento, vamos renovar o local e fazer diversos ajustes para aumentar a competitividade.\r\n\r\n \r\n\r\nAlgumas melhorias no gameplay também estão chegando com a Operation Grim Sky. Depois de uma longa fase de testes, trazemos modificações há muito esperadas para solucionar o desalinhamento das miras. E não paramos por aí! Em nossa busca constante pelo aperfeiçoamento do jogo e da experiência do jogador, chegam também um ajuste na seleção de Agente inativo e escala de resolução dinâmica para consoles. Não deixe de jogar em nosso servidor de testes e envie seu feedback no R6 FIx.', '2018-08-26 15:26:14'),
(2, 1, 'Fortnite - Rift-to-go chega ao game', 'Portais portáteis são adicionados ao game', 'img/FRG.jpg', 'Fortnite now has the Rift-To-Go item, which lets players create a rift for themselves or their allies.\r\n\r\nWhen you activate it you\'re teleported into the sky and placed in skydiving mode. The rift remains at the location it was deployed for 10 seconds, letting other players use it. Of note: enemies can follow you through your rift, so be warned. The video, below, shows it off in action.\r\n\r\nRift-To-Go carries an epic rarity and drops in stacks of one, with a max stack size of two. It can be found in chests, vending machines, supply drops and loot llamas.\r\n\r\nElsewhere, as part of the Fortnite v5.30 patch, Epic has added the Score Royale limited time mode. Here, you earn points by collecting coins, opening loot containers and killing enemies. As you\'d expect, the player who crosses the high score threshold first wins.\r\n\r\n\r\n\r\n ', '2018-08-26 20:28:13'),
(3, 1, 'Overwatch - Novo mapa Busan', 'Mapa Da heroína D.va!', 'img/OWB.jpg', 'Viaje para Busan, na Coreia do Sul, e lute pelo controle de três lugares diferentes no mesmo mapa: Santuário, Centro e Base MEKA.Explore o ambiente sereno do Santuário, cercado por um templo antigo, belos jardins e uma arquitetura histórica. Ande pelo tumultuado Centro de uma metrópole, onde os jogadores lutarão em uma lan house, num bar de karaokê e na estação central de bonde (mas cuidado com o trem). Dispute o controle da Base MEKA, lar de D.Va e do resto do esquadrão MEKA, a vanguarda da defesa sul-coreana contra os ataques ômnicos dos kishin.', '2018-08-26 21:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`IdAutor`),
  ADD UNIQUE KEY `Autor` (`Autor`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`Idnoticia`),
  ADD KEY `idautor` (`idautor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `IdAutor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `Idnoticia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`idautor`) REFERENCES `autor` (`IdAutor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
