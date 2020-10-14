-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Out-2020 às 16:13
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `codAno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`codAno`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esportes'),
(2, 'Entreterimento'),
(3, 'Política'),
(4, 'Moda'),
(5, 'Tecnologia'),
(6, 'Saúde e bem estar'),
(7, 'Educação'),
(8, 'Meio ambiente'),
(9, 'Economia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `codDia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`codDia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `codMes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`codMes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `noticia` text DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `codDia` int(11) DEFAULT NULL,
  `codMes` int(11) DEFAULT NULL,
  `codano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `noticia`, `titulo`, `codRedator`, `codCategoria`, `codDia`, `codMes`, `codano`) VALUES
(1, 'Após reforma de quase dois anos, as portas do icônico Museu da Moda da Cidade de Paris foram abertas novamente ao público. Para a exposição de reinauguração, os salões do edifício receberam a primeira retrospectiva dedicada à icônica carreira de Gabrielle Chanel.\r\nAté então, o edifício histórico não tinha exibições permanentes, devido a questões de conservação das peças de roupa. Também conhecido como Palácio Galliera, o local passa, agora, a ser o primeiro museu permanente dedicado à moda em Paris, graças ao financiamento da Chanel.\r\n\r\n', 'Museu da Moda de Paris reabre com retrospectiva inédita de Gabrielle Chanel', 7, 4, 19, 8, 2020),
(2, 'O Fortaleza tem cara nova no elenco. Na verdade, nem tão nova assim. O zagueiro João Paulo, de 23 anos, que havia deixado o Leão no mês de maio, após fim de contrato, retorna ao Tricolor do Pici para integrar o elenco sub-23. Ele atuará nas partidas da equipe de aspirantes, que desenvolve atletas não utilizados no elenco principal.\r\nO defensor chegou a atuar em uma partida em 2020, sob o comando de Rogério Ceni. A partida foi válida pelo Campeonato Cearense, diante do Caucaia. Na ocasião, ele iniciou o jogo como titular e foi substituído aos 25 minutos do segundo tempo. O Leão venceu por 1 a 0 a Raposa Metropolitana.', 'Zagueiro João Paulo é contratado novamente pelo Fortaleza', 1, 1, 20, 5, 2019),
(3, 'Nesta quarta-feira (7/10), durante o lançamento da Campanha do Outubro Rosa 2020, o ministro da Saúde, Eduardo Pazuello, afirmou que até antes da pandemia provocada pelo novo coronavírus não conhecia como funcionava o Sistema Único de Saúde.\r\n“Eu não sabia nem o que era o SUS. Porque eu passei a minha vida sendo tratado também em instituição pública, mas específica do Exército. Vim conhecer o SUS a partir desse momento da vida e compreendi a magnitude dessa ferramenta com a qual o Brasil nos brindou”, disse Pazuello.', '“Não sabia nem o que era o SUS”, afirma ministro da Saúde', 4, 6, 5, 11, 2020),
(4, 'O Ministério da Educação (MEC) apresentou nesta quarta-feira (7) o Guia de Implementação de Protocolos de Retorno das Atividades Presenciais nas Escolas de Educação Básica, ou seja, o kit de volta às aulas presenciais.\r\n\r\nO documento foi produzido pelas secretarias de Alfabetização, de Educação Básica e de Modalidades Especializadas de Educação e oferece informações para que as redes estaduais e municipais possam se preparar para um retorno seguro.', 'MEC apresenta guia para volta às aulas presenciais na educação básica', 5, 7, 14, 3, 2019),
(5, 'O presidente Jair Bolsonaro afirmou nesta quarta-feira (7), durante pronunciamento no Palácio do Planalto, que \"acabou\" com a operação Lava Jato porque, no governo atual, não há corrupção a ser investigada.\r\n\r\nBolsonaro deu a declaração em cerimônia sobre medidas para a aviação civil, no Palácio do Planalto, enquanto elogiava a própria gestão – na qual, segundo ele, as pessoas são confiáveis e não há interessados em \"criar dificuldade para vender facilidade\".', 'Bolsonaro diz que \'acabou\' com operação Lava Jato porque governo \'não tem mais corrupção\'', 3, 3, 13, 9, 2018),
(6, 'Os Estados Unidos anunciaram nesta terça-feira novas restrições aos vistos de trabalho usados pelo setor de alta tecnologia.\r\n\r\nA medida mira nos vistos H-1B, concedidos anualmente a 85 mil funcionários \"qualificados e especializados\", entre eles engenheiros, especialistas em dados e desenvolvedores contratados por empresas do Vale do Silício.\r\n\r\nO programa buscava compensar a escassez no mercado de trabalho doméstico, \"mas foi mais longe e, com frequência, em detrimento dos trabalhadores americanos\", aponta um comunicado do Departamento de Segurança Interior. Quase meio milhão de americanos foram penalizados por esse regime, que também provocou o congelamento dos salários em alguns setores, assinala o texto.', 'EUA anunciam novas restrições a vistos usados por empresas de tecnologia', 5, 5, 12, 12, 2017),
(7, 'Guedes disse, em entrevista a alguns jornalistas, que não há decisão de prorrogar ou articulação nesse sentido. \"Tem um plano de auxílio emergencial que vai até o fim de dezembro. Tem um estado de calamidade pública que vai até o fim de dezembro. E no fim de dezembro acabou tudo isso, ponto\", afirmou o ministro.', 'Guedes nega prorrogação de auxílio emergencial e estado de calamidade para 2021', 2, 9, 10, 3, 2019),
(8, 'Área atingida no ano chega a quase 33 mil km², o que equivale à soma do território do Distrito Federal e de Alagoas. No acumulado em 2020, 26% de todo o bioma já foi consumido pelas chamas.\r\nQuatorze por cento da área do Pantanal foi queimada apenas em setembro deste ano, de acordo com o Instituto Nacional de Pesquisas Espaciais (Inpe). O número já supera a área de todo o ano passado e é a maior devastação anual do território causada pelo fogo desde o início das medições, em 2002, pelo governo federal.', 'Pantanal teve 14% do bioma queimado apenas em setembro e área devastada já é recorde histórico, diz Inpe', 4, 8, 31, 11, 2017),
(9, 'Com o seu lançamento atualmente previsto para agosto de 2021, o filme O Esquadrão Suicida (The Suicide Squad), dirigido pelo cineasta James Gunn, voltou a ganhar novidades durante a mais recente edição do DC FanDome. E entre elas, a mais recente envolvem possíveis detalhes da trama. \r\n\r\n\r\nDurante a sessão de perguntas e respostas no DC FanDome Explore o Multiverso, a atriz Margot Robbie, intérprete da Arlequina, revelou que existe uma cena no filme extremamente insana e que foi desafiadora para ser feita.', 'Esquadrão Suicida | Margot Robbie fala sobre cena desafiadora no filme', 7, 2, 29, 6, 2020),
(10, 'Os preços do petróleo caíram quase 2% nesta quarta-feira (7), após o presidente dos Estados Unidos, Donald Trump, frustar expectativas de um pacote de estímulo à economia local e os estoques da commodity no país registrarem aumento na última semana.\r\n\r\nOs contratos futuros do petróleo Brent fecharam em queda de 0,66 dólar, ou 1,6%, a 41,99 dólares por barril, enquanto o petróleo dos EUA (WTI) recuou 0,72 dólar, ou 1,8%, para 39,95 dólares o barril.\r\n\r\nO chefe de gabinete da Casa Branca, Mark Meadows, disse não estar otimista de que um acordo abrangente quanto ao auxílio financeiro em função da pandemia de Covid-19 possa ser atingido. Ele acrescentou que o governo Trump apoia uma abordagem mais fragmentada.', 'Petróleo cai 2% com impasse sobre estímulo e aumento de estoques nos EUA', 1, 9, 16, 2, 2017),
(11, 'Os alunos da rede estadual de ensino de São Paulo podem acabar reprovados se deixarem de entregar a maior parte de suas atividades que foram repassadas durante a quarentena, declarou hoje o secretário estadual de Educação, Rossieli Soares. Em visita a uma escola que retomou parte das atividades presenciais na zona leste da capital paulista, ele afirmou que \"a retenção é possível\".', 'Aluno que não fizer atividades pode ser reprovado em SP, diz secretário', 6, 7, 24, 5, 2020),
(12, 'A depender da ministra japonesa Seiko Hashimoto, os Jogos de Tóquio devem ser realizados em 2021 “custe o que custar”. Responsável pela Olimpíada no Japão, a ministra declarou que o calendário deve ser seguido para o bem dos atletas, independentemente dos desafios impostos pela pandemia da covid-19.\r\n\r\nO discurso de Hashimoto está alinhado ao do dirigente australiano John Coates, atual vice-presidente do Comitê Olímpico Internacional. À agência AFP, Coates declarou que a Olimpíada deve acontecer em 2021, “com ou sem” coronavírus.\r\n\r\nApesar dos recentes ares de otimismo das autoridades, ainda há dúvidas sobre a possibilidade de realização dos Jogos, principalmente sem a descoberta de uma vacina ou um medicamento eficaz contra a covid-19. A Olimpíada está programada para o período de 23 de julho a 8 de agosto de 2021; a Paralimpíada, para 24 de agosto a 5 de setembro do mesmo ano.\r\n', 'Japão: o que está em jogo na realização da Olimpíada em 2021', 6, 1, 17, 4, 2019);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `codAno` int(11) DEFAULT NULL,
  `codMes` int(11) DEFAULT NULL,
  `codDia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `cidade`, `email`, `ddd`, `nome`, `sobrenome`, `telefone`, `codTurma`, `codAno`, `codMes`, `codDia`) VALUES
(1, 'Ribeirão Pires', 'amandalima@gmail.com', 11, 'Amanda', 'Lima Martins', '98102-5198', 16, 2005, 5, 9),
(2, 'Mauá', 'fernandodiaz@gmail.com', 11, 'Fernando', 'Diaz de Oliveira', '97017-9405', 6, 2003, 4, 6),
(3, 'Ribeirão Pires', 'geovannasilva@gmail.com', 11, 'Geoavanna', 'Silva Machado', '93622-8273', 11, 2004, 1, 29),
(4, 'Ribeirão Pires', 'cauãrodrigues', 11, 'Cauã', 'Rodrigues', '98392-3839', 5, 2004, 7, 12),
(5, 'Mauá', 'beatrizregina@gmail.com', 11, 'Beatriz ', 'Regina Gonçalves', '92732-2781', 12, 2002, 5, 31),
(6, 'Mauá', 'nicolesantos@gmail.com', 11, 'Nicole ', 'Santos Reis', '92722-9381', 14, 2004, 3, 2),
(7, 'Ribeirão Pires', 'leandrazarattini@gmail.com', 11, 'Leandra', 'Zarattini Ribeiro', '92134-2983', 7, 2005, 1, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`, `periodo`) VALUES
(1, '1A', NULL),
(2, '2A', NULL),
(3, '3A', NULL),
(4, '1B', NULL),
(5, '2B', NULL),
(6, '3B', NULL),
(7, '1C', NULL),
(8, '2C', NULL),
(9, '3C', NULL),
(10, '1D', NULL),
(11, '2D', NULL),
(12, '3D', NULL),
(13, '1E', NULL),
(14, '2E', NULL),
(15, '3E', NULL),
(16, '1F', NULL),
(17, '2F', NULL),
(18, '3F', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`codAno`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`codDia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`codMes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `codDia` (`codDia`),
  ADD KEY `codMes` (`codMes`),
  ADD KEY `codano` (`codano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `codAno` (`codAno`),
  ADD KEY `codMes` (`codMes`),
  ADD KEY `codDia` (`codDia`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`codDia`) REFERENCES `dia` (`codDia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`codMes`) REFERENCES `mes` (`codMes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`codano`) REFERENCES `ano` (`codAno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`codAno`) REFERENCES `ano` (`codAno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`codMes`) REFERENCES `mes` (`codMes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`codDia`) REFERENCES `dia` (`codDia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
