-- MySqlBackup.NET 2.0.8
-- Dump Time: 2015-06-23 20:44:31
-- --------------------------------------
-- Server version 5.6.12 MySQL Community Server (GPL)


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 
-- Definition of aud_auditoria
-- 

DROP TABLE IF EXISTS `aud_auditoria`;
CREATE TABLE IF NOT EXISTS `aud_auditoria` (
  `aud_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aud_data` datetime NOT NULL,
  `aud_pes_codigo` int(10) unsigned NOT NULL,
  `aud_antes` text NOT NULL,
  `aud_depois` text NOT NULL,
  `aud_tabela` varchar(100) NOT NULL,
  `aud_operacao` enum('insert','update') NOT NULL,
  PRIMARY KEY (`aud_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table aud_auditoria
-- 

/*!40000 ALTER TABLE `aud_auditoria` DISABLE KEYS */;
INSERT INTO `aud_auditoria`(`aud_codigo`,`aud_data`,`aud_pes_codigo`,`aud_antes`,`aud_depois`,`aud_tabela`,`aud_operacao`) VALUES
(1,'2015-06-20 17:41:53',4,'Inserção','13-jee-2323-23-23-23-ER-1992-10-21 00:00:00-e-e-e-ee-e-e-e','pes_pessoa','insert'),
(2,'2015-06-20 17:43:45',4,'Codigo: -13-Nome: -jee-RG: -2323-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -13-Nome: -aere-RG: -2323-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(3,'2015-06-20 17:44:21',4,'Codigo: -13-Nome: -aere-RG: -2323-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -13-Nome: -5454-RG: -2323-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(4,'2015-06-20 17:44:21',4,'Codigo: -13-Nome: -5454-RG: -2323-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -13-Nome: -5454-RG: -54545-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(5,'2015-06-20 17:44:21',4,'Codigo: -13-Nome: -5454-RG: -54545-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -8-Nome: -5454-RG: -54545-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(6,'2015-06-20 17:44:23',4,'Codigo: -8-Nome: -5454-RG: -54545-CPF: -23-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -8-Nome: -5454-RG: -54545-CPF: -545-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(7,'2015-06-20 17:53:52',4,'Codigo: -8-Nome: -5454-RG: -54545-CPF: -545-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -8-Nome: -Gabriele-RG: -54545-CPF: -545-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(8,'2015-06-20 17:53:52',4,'Codigo: -8-Nome: -Gabriele-RG: -54545-CPF: -545-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -8-Nome: -Gabriele-RG: -1234-CPF: -545-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(9,'2015-06-20 17:53:52',4,'Codigo: -8-Nome: -Gabriele-RG: -1234-CPF: -545-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -8-Nome: -Gabriele-RG: -1234-CPF: -1234-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(10,'2015-06-20 17:53:53',4,'Codigo: -8-Nome: -Gabriele-RG: -1234-CPF: -1234-Telefone: -23-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','Codigo: -8-Nome: -Gabriele-RG: -1234-CPF: -1234-Telefone: -2343-Celular: -23-Email: -ER-Data de Nascimento: -1992-10-21 00:00:00-Rua: -e-Numero: -e-CEP: -e-Bairro: -ee-Cidade: -e-Estado: -e-RA: -e','pes_pessoa','update'),
(11,'2015-06-20 17:54:49',3,'Codigo: -7-Nome: -sds-RG: -3121-CPF: -2323-Telefone: -34342-Celular: -32323-Email: -vfvgg-Data de Nascimento: -1994-05-12 00:00:00-Rua: -ff-Numero: -3-CEP: -2132-Bairro: -cvc-Cidade: -bv-Estado: -vfv-RA: -232','Codigo: -7-Nome: -sds-RG: -3121-CPF: -2323-Telefone: -34342-Celular: -32323-Email: -vfvgg-Data de Nascimento: -1994-05-12 00:00:00-Rua: -ff-Numero: -3-CEP: -2132-Bairro: -cvc-Cidade: -bv-Estado: -vfv-RA: -232','pes_pessoa','update'),
(12,'2015-06-20 17:54:53',3,'Codigo: -7-Nome: -sds-RG: -3121-CPF: -2323-Telefone: -34342-Celular: -32323-Email: -vfvgg-Data de Nascimento: -1994-05-12 00:00:00-Rua: -ff-Numero: -3-CEP: -2132-Bairro: -cvc-Cidade: -bv-Estado: -vfv-RA: -232','Codigo: -7-Nome: -bruno-RG: -3121-CPF: -2323-Telefone: -34342-Celular: -32323-Email: -vfvgg-Data de Nascimento: -1994-05-12 00:00:00-Rua: -ff-Numero: -3-CEP: -2132-Bairro: -cvc-Cidade: -bv-Estado: -vfv-RA: -232','pes_pessoa','update'),
(13,'2015-06-20 18:31:12',4,'Codigo: -32-Nome: -Teste gabi-Tipo: -180-Status: -1-Anonimo: -1-Inicio: -2015-06-20-Termino: -2015-07-19-Descricao: -trigger','Codigo: -32-Nome: -Teste update-Tipo: -180-Status: -1-Anônimo: -1-Inicio: -2015-06-20-Termino: -2015-07-19-Descricao: -trigger','Avaliação','update'),
(14,'2015-06-20 18:37:42',4,'Codigo: -32-Nome: -Teste update-Tipo: -180-Status: -1-Anonimo: -1-Inicio: -2015-06-20-Termino: -2015-07-19-Descricao: -trigger','Codigo: -32-Nome: -Update-Tipo: -180-Status: -1-Anônimo: -1-Inicio: -2015-06-20-Termino: -2015-07-19-Descricao: -trigger','Avaliação','update'),
(15,'2015-06-20 18:39:02',4,'Codigo: -32-Nome: -Update-Tipo: -180-Status: -1-Anonimo: -1-Inicio: -2015-06-20-Termino: -2015-07-19-Descricao: -trigger','Codigo: -32-Nome: -Tentando fazer funfar -Tipo: -180-Status: -1-Anônimo: -1-Inicio: -2015-06-20-Termino: -2015-07-19-Descricao: -trigger','Avaliação','update'),
(16,'2015-06-20 20:12:39',19,'Inserção','Codigo: -19-Descricao: -TesteTrg','pes_pessoa','insert'),
(17,'2015-06-20 20:14:42',20,'Inserção','Codigo: -20-Descricao: -TesteNovamente','Criterio','insert'),
(18,'2015-06-20 20:43:09',20,'Codigo: -20-Descricao: -TesteNovamente','Codigo: -20-Descricao: -TesteNovamenteTrgUpdate','Criterio','insert'),
(19,'2015-06-20 20:43:12',8,'Codigo: -20-Descricao: -TesteNovamenteTrgUpdate','Codigo: -20-Descricao: -TesteNovamenteTrgUpdate','Criterio','insert'),
(20,'2015-06-20 21:57:17',69,'Inserção','Codigo: -69-Peso: -6','Criterio Avaliacao','insert'),
(21,'2015-06-20 22:02:22',69,'Codigo: -69-Peso: -6','Codigo: -69-Peso: -10','Criterio Avaliacao','insert'),
(22,'2015-06-20 22:04:00',62,'Codigo: -62-Peso: -5','Codigo: -62-Peso: -8','Criterio Avaliacao','update'),
(23,'2015-06-22 16:58:37',45,'Insert','Coodigo: -45-Nome: -Equipe trigger-Descricao: ','Equipe','insert'),
(24,'2015-06-22 17:12:09',45,'Insert','Codigo: -45-Nome: -Equipe triggerUp-Descricao: -Trigger','Equipe','insert'),
(25,'2015-06-22 17:12:12',45,'Insert','Codigo: -45-Nome: -Equipe triggerUp-Descricao: -TesteTrigger','Equipe','insert'),
(26,'2015-06-22 21:08:41',68,'Codigo: -68','Codigo: -68','Equipe Usuario: ','update'),
(27,'2015-06-22 21:08:41',69,'Codigo: -68','Codigo: -69','Equipe Usuario: ','update'),
(28,'2015-06-22 22:53:34',4,'Codigo: -4-Descricao: -Administrador Master','Codigo: -4-Descricao: -Administrador Comum','Perfil: ','insert'),
(29,'2015-06-22 22:57:48',3,'Codigo: -3-Descricao: -Administrador Comum','Codigo: -3-Descricao: -Administrador Master','Perfil: ','update'),
(30,'2015-06-22 23:12:31',80,'Codigo: -80-Nota: -9','Codigo: -80-Nota: -8','Perfil: ','insert'),
(31,'2015-06-22 23:13:55',4,'Codigo: -4-Nota: -1','Codigo: -4-Nota: -10','Resposta ','update'),
(32,'2015-06-23 16:35:38',70,'Inserção','Codigo: -70-Peso: -9','Criterio Avaliacao','insert'),
(33,'2015-06-23 17:45:26',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(34,'2015-06-23 17:45:26',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(35,'2015-06-23 17:45:26',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(36,'2015-06-23 17:45:26',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(37,'2015-06-23 17:45:26',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(38,'2015-06-23 17:45:26',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(39,'2015-06-23 17:45:26',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(40,'2015-06-23 17:45:26',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(41,'2015-06-23 17:45:26',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(42,'2015-06-23 17:45:26',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(43,'2015-06-23 17:45:26',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(44,'2015-06-23 17:45:26',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(45,'2015-06-23 17:45:26',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(46,'2015-06-23 17:45:26',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(47,'2015-06-23 17:45:26',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -1-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(48,'2015-06-23 17:45:26',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(49,'2015-06-23 17:45:26',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(50,'2015-06-23 17:45:26',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(51,'2015-06-23 17:45:26',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -1-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(52,'2015-06-23 17:45:26',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -1-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(53,'2015-06-23 18:05:10',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(54,'2015-06-23 18:05:10',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(55,'2015-06-23 18:05:10',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(56,'2015-06-23 18:05:10',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(57,'2015-06-23 18:05:10',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(58,'2015-06-23 18:05:10',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(59,'2015-06-23 18:05:10',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(60,'2015-06-23 18:05:10',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(61,'2015-06-23 18:05:10',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(62,'2015-06-23 18:05:10',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(63,'2015-06-23 18:05:10',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(64,'2015-06-23 18:05:10',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(65,'2015-06-23 18:05:10',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(66,'2015-06-23 18:05:10',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(67,'2015-06-23 18:05:10',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(68,'2015-06-23 18:05:10',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(69,'2015-06-23 18:05:10',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(70,'2015-06-23 18:05:10',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(71,'2015-06-23 18:05:10',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(72,'2015-06-23 18:05:10',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(73,'2015-06-23 18:09:09',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(74,'2015-06-23 18:09:09',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(75,'2015-06-23 18:09:09',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(76,'2015-06-23 18:09:09',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(77,'2015-06-23 18:09:09',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(78,'2015-06-23 18:09:09',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(79,'2015-06-23 18:09:09',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(80,'2015-06-23 18:09:09',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(81,'2015-06-23 18:09:09',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(82,'2015-06-23 18:09:09',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(83,'2015-06-23 18:09:09',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(84,'2015-06-23 18:09:09',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(85,'2015-06-23 18:09:09',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(86,'2015-06-23 18:09:09',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(87,'2015-06-23 18:09:09',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(88,'2015-06-23 18:09:09',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(89,'2015-06-23 18:09:09',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(90,'2015-06-23 18:09:09',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(91,'2015-06-23 18:09:09',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(92,'2015-06-23 18:09:09',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(93,'2015-06-23 18:11:17',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(94,'2015-06-23 18:11:17',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(95,'2015-06-23 18:11:17',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(96,'2015-06-23 18:11:17',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(97,'2015-06-23 18:11:17',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(98,'2015-06-23 18:11:17',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(99,'2015-06-23 18:11:17',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(100,'2015-06-23 18:11:17',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(101,'2015-06-23 18:11:17',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(102,'2015-06-23 18:11:17',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(103,'2015-06-23 18:11:17',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(104,'2015-06-23 18:11:17',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(105,'2015-06-23 18:11:17',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(106,'2015-06-23 18:11:17',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(107,'2015-06-23 18:11:17',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(108,'2015-06-23 18:11:17',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(109,'2015-06-23 18:11:17',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(110,'2015-06-23 18:11:17',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(111,'2015-06-23 18:11:17',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(112,'2015-06-23 18:11:17',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(113,'2015-06-23 18:12:54',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(114,'2015-06-23 18:12:54',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(115,'2015-06-23 18:12:54',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(116,'2015-06-23 18:12:54',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(117,'2015-06-23 18:12:54',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(118,'2015-06-23 18:12:54',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(119,'2015-06-23 18:12:54',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(120,'2015-06-23 18:12:54',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(121,'2015-06-23 18:12:54',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(122,'2015-06-23 18:12:54',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(123,'2015-06-23 18:12:54',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(124,'2015-06-23 18:12:54',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(125,'2015-06-23 18:12:54',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(126,'2015-06-23 18:12:54',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(127,'2015-06-23 18:12:54',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(128,'2015-06-23 18:12:54',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(129,'2015-06-23 18:12:54',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(130,'2015-06-23 18:12:54',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(131,'2015-06-23 18:12:54',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(132,'2015-06-23 18:12:54',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(133,'2015-06-23 18:15:16',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(134,'2015-06-23 18:15:16',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(135,'2015-06-23 18:15:16',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(136,'2015-06-23 18:15:16',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(137,'2015-06-23 18:15:16',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(138,'2015-06-23 18:15:16',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(139,'2015-06-23 18:15:16',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(140,'2015-06-23 18:15:16',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(141,'2015-06-23 18:15:16',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(142,'2015-06-23 18:15:16',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(143,'2015-06-23 18:15:16',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(144,'2015-06-23 18:15:16',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(145,'2015-06-23 18:15:16',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(146,'2015-06-23 18:15:16',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(147,'2015-06-23 18:15:16',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(148,'2015-06-23 18:15:16',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(149,'2015-06-23 18:15:16',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(150,'2015-06-23 18:15:16',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(151,'2015-06-23 18:15:16',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(152,'2015-06-23 18:15:16',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(153,'2015-06-23 18:15:23',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(154,'2015-06-23 18:15:23',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(155,'2015-06-23 18:15:23',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(156,'2015-06-23 18:15:23',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(157,'2015-06-23 18:15:23',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(158,'2015-06-23 18:15:23',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(159,'2015-06-23 18:15:23',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(160,'2015-06-23 18:15:23',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(161,'2015-06-23 18:15:23',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(162,'2015-06-23 18:15:23',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(163,'2015-06-23 18:15:23',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(164,'2015-06-23 18:15:23',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(165,'2015-06-23 18:15:23',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(166,'2015-06-23 18:15:23',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(167,'2015-06-23 18:15:23',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(168,'2015-06-23 18:15:23',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(169,'2015-06-23 18:15:23',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(170,'2015-06-23 18:15:23',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(171,'2015-06-23 18:15:23',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(172,'2015-06-23 18:15:23',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(173,'2015-06-23 18:35:55',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(174,'2015-06-23 18:35:55',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(175,'2015-06-23 18:35:55',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(176,'2015-06-23 18:35:55',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(177,'2015-06-23 18:35:55',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(178,'2015-06-23 18:35:55',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(179,'2015-06-23 18:35:55',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(180,'2015-06-23 18:35:55',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(181,'2015-06-23 18:35:55',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(182,'2015-06-23 18:35:55',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(183,'2015-06-23 18:35:55',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(184,'2015-06-23 18:35:55',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(185,'2015-06-23 18:35:55',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(186,'2015-06-23 18:35:55',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(187,'2015-06-23 18:35:55',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(188,'2015-06-23 18:35:55',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(189,'2015-06-23 18:35:55',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(190,'2015-06-23 18:35:55',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(191,'2015-06-23 18:35:55',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(192,'2015-06-23 18:35:55',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(193,'2015-06-23 18:35:59',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(194,'2015-06-23 18:35:59',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(195,'2015-06-23 18:35:59',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(196,'2015-06-23 18:35:59',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(197,'2015-06-23 18:35:59',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(198,'2015-06-23 18:35:59',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(199,'2015-06-23 18:35:59',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(200,'2015-06-23 18:35:59',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(201,'2015-06-23 18:35:59',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(202,'2015-06-23 18:35:59',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(203,'2015-06-23 18:35:59',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(204,'2015-06-23 18:35:59',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(205,'2015-06-23 18:35:59',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(206,'2015-06-23 18:35:59',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(207,'2015-06-23 18:35:59',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(208,'2015-06-23 18:35:59',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(209,'2015-06-23 18:35:59',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(210,'2015-06-23 18:35:59',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(211,'2015-06-23 18:35:59',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(212,'2015-06-23 18:35:59',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(213,'2015-06-23 20:43:17',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(214,'2015-06-23 20:43:17',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(215,'2015-06-23 20:43:17',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(216,'2015-06-23 20:43:17',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(217,'2015-06-23 20:43:17',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(218,'2015-06-23 20:43:17',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(219,'2015-06-23 20:43:17',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(220,'2015-06-23 20:43:17',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(221,'2015-06-23 20:43:17',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(222,'2015-06-23 20:43:17',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(223,'2015-06-23 20:43:17',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(224,'2015-06-23 20:43:17',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(225,'2015-06-23 20:43:17',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(226,'2015-06-23 20:43:17',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(227,'2015-06-23 20:43:17',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(228,'2015-06-23 20:43:17',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(229,'2015-06-23 20:43:17',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(230,'2015-06-23 20:43:17',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(231,'2015-06-23 20:43:17',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(232,'2015-06-23 20:43:17',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update'),
(233,'2015-06-23 20:43:26',1,'Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -1-Nome: -Avaliação Usuarios-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(234,'2015-06-23 20:43:26',2,'Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Codigo: -2-Nome: -Avaliacao Administradores-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-03-29-Termino: -2015-04-25-Descricao: ','Avaliação','update'),
(235,'2015-06-23 20:43:26',13,'Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Codigo: -13-Nome: -Avaliação de 90 graus-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-04-15-Termino: -2015-04-15-Descricao: ','Avaliação','update'),
(236,'2015-06-23 20:43:26',14,'Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Codigo: -14-Nome: -Teste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-05-Termino: -2015-05-28-Descricao: ','Avaliação','update'),
(237,'2015-06-23 20:43:26',15,'Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Codigo: -15-Nome: -TesteModelo-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-20-Termino: -2015-05-26-Descricao: ','Avaliação','update'),
(238,'2015-06-23 20:43:26',16,'Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Codigo: -16-Nome: -Avaliação de 90 graus2132-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-12-Termino: -2015-05-14-Descricao: -testando ','Avaliação','update'),
(239,'2015-06-23 20:43:26',17,'Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Codigo: -17-Nome: -testando-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-05-14-Termino: -2015-05-18-Descricao: -tentando again ','Avaliação','update'),
(240,'2015-06-23 20:43:26',18,'Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Codigo: -18-Nome: -teste novo banco-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -testando com o novo bancao -cluster ','Avaliação','update'),
(241,'2015-06-23 20:43:26',19,'Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Codigo: -19-Nome: -teste-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -teste ','Avaliação','update'),
(242,'2015-06-23 20:43:26',20,'Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Codigo: -20-Nome: -rseresrs-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-09-Termino: -2015-06-10-Descricao: -rseresresrserse ','Avaliação','update'),
(243,'2015-06-23 20:43:26',21,'Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Codigo: -21-Nome: -Teste da MArisa-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-12-Descricao: -marisa fazenda cafune ','Avaliação','update'),
(244,'2015-06-23 20:43:26',22,'Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Codigo: -22-Nome: -Avateste-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -313132132 ','Avaliação','update'),
(245,'2015-06-23 20:43:26',23,'Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Codigo: -23-Nome: -avaliação-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -sdfdsfsdf ','Avaliação','update'),
(246,'2015-06-23 20:43:26',24,'Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Codigo: -24-Nome: -Avaliação de 90 graus 3-Tipo: -90-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -foda teclsdo lixo ','Avaliação','update'),
(247,'2015-06-23 20:43:26',25,'Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Codigo: -25-Nome: -testandoResponder360-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -oi ','Avaliação','update'),
(248,'2015-06-23 20:43:26',26,'Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Codigo: -26-Nome: -Testeava36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-11-Descricao: -testando os pontos positivos e negativos ','Avaliação','update'),
(249,'2015-06-23 20:43:26',27,'Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Codigo: -27-Nome: -testandoResponder36023-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-10-Termino: -2015-06-18-Descricao: -teste again ','Avaliação','update'),
(250,'2015-06-23 20:43:26',28,'Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anonimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Codigo: -28-Nome: -testandorelatorio-Tipo: -360-Status: -0-Anônimo: -1-Inicio: -2015-06-11-Termino: -2015-06-19-Descricao: -teste para ver se relatorio anonimo funfa ','Avaliação','update'),
(251,'2015-06-23 20:43:26',29,'Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Codigo: -29-Nome: -Teste do allbertino-Tipo: -360-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -pra ver se funfa ','Avaliação','update'),
(252,'2015-06-23 20:43:26',30,'Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anonimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Codigo: -30-Nome: -Teste do allbertino-Tipo: -180-Status: -0-Anônimo: -0-Inicio: -2015-06-11-Termino: -2015-06-18-Descricao: -again ','Avaliação','update');
/*!40000 ALTER TABLE `aud_auditoria` ENABLE KEYS */;

-- 
-- Definition of ava_avaliacao
-- 

DROP TABLE IF EXISTS `ava_avaliacao`;
CREATE TABLE IF NOT EXISTS `ava_avaliacao` (
  `ava_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ava_nome` varchar(45) NOT NULL,
  `ava_tipo` varchar(45) NOT NULL,
  `ava_status` char(1) NOT NULL,
  `ava_anonimo` char(1) NOT NULL,
  `ava_inicio` date NOT NULL,
  `ava_termino` date NOT NULL,
  `ava_descricao` varchar(45) DEFAULT NULL,
  `usu_codigo` int(10) unsigned DEFAULT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`ava_codigo`),
  KEY `FK_ava_avaliacao_1` (`usu_codigo`),
  CONSTRAINT `FK_ava_avaliacao_1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuario` (`usu_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table ava_avaliacao
-- 

/*!40000 ALTER TABLE `ava_avaliacao` DISABLE KEYS */;
INSERT INTO `ava_avaliacao`(`ava_codigo`,`ava_nome`,`ava_tipo`,`ava_status`,`ava_anonimo`,`ava_inicio`,`ava_termino`,`ava_descricao`,`usu_codigo`,`aud_pes_codigo`) VALUES
(1,'Avaliação Usuarios','90','0','0','2015-03-29 00:00:00','2015-04-25 00:00:00',NULL,NULL,0),
(2,'Avaliacao Administradores','180','0','0','2015-03-29 00:00:00','2015-04-25 00:00:00',NULL,NULL,0),
(13,'Avaliação de 90 graus','90','0','0','2015-04-15 00:00:00','2015-04-15 00:00:00',NULL,NULL,0),
(14,'Teste','90','0','0','2015-05-05 00:00:00','2015-05-28 00:00:00',NULL,NULL,0),
(15,'TesteModelo','90','0','0','2015-05-20 00:00:00','2015-05-26 00:00:00',NULL,NULL,0),
(16,'Avaliação de 90 graus2132','90','0','0','2015-05-12 00:00:00','2015-05-14 00:00:00','testando ',NULL,0),
(17,'testando','90','0','0','2015-05-14 00:00:00','2015-05-18 00:00:00','tentando again ',NULL,0),
(18,'teste novo banco','90','0','0','2015-06-09 00:00:00','2015-06-10 00:00:00','testando com o novo bancao -cluster ',NULL,0),
(19,'teste','360','0','0','2015-06-10 00:00:00','2015-06-11 00:00:00','teste ',NULL,0),
(20,'rseresrs','180','0','0','2015-06-09 00:00:00','2015-06-10 00:00:00','rseresresrserse ',NULL,0),
(21,'Teste da MArisa','90','0','0','2015-06-10 00:00:00','2015-06-12 00:00:00','marisa fazenda cafune ',NULL,0),
(22,'Avateste','90','0','0','2015-06-10 00:00:00','2015-06-11 00:00:00','313132132 ',NULL,0),
(23,'avaliação','90','0','0','2015-06-10 00:00:00','2015-06-11 00:00:00','sdfdsfsdf ',NULL,0),
(24,'Avaliação de 90 graus 3','90','0','0','2015-06-11 00:00:00','2015-06-18 00:00:00','foda teclsdo lixo ',6,0),
(25,'testandoResponder360','360','0','0','2015-06-10 00:00:00','2015-06-18 00:00:00','oi ',6,0),
(26,'Testeava36023','360','0','0','2015-06-10 00:00:00','2015-06-11 00:00:00','testando os pontos positivos e negativos ',6,0),
(27,'testandoResponder36023','360','0','0','2015-06-10 00:00:00','2015-06-18 00:00:00','teste again ',6,0),
(28,'testandorelatorio','360','0','1','2015-06-11 00:00:00','2015-06-19 00:00:00','teste para ver se relatorio anonimo funfa ',6,0),
(29,'Teste do allbertino','360','0','0','2015-06-11 00:00:00','2015-06-18 00:00:00','pra ver se funfa ',6,0),
(30,'Teste do allbertino','180','0','0','2015-06-11 00:00:00','2015-06-18 00:00:00','again ',6,0),
(32,'Tentando fazer funfar ','180','1','1','2015-06-20 00:00:00','2015-07-19 00:00:00','trigger',6,4);
/*!40000 ALTER TABLE `ava_avaliacao` ENABLE KEYS */;

-- 
-- Definition of bkp_backup
-- 

DROP TABLE IF EXISTS `bkp_backup`;
CREATE TABLE IF NOT EXISTS `bkp_backup` (
  `bkp_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bkp_nome` varchar(255) NOT NULL,
  `bkp_data` datetime NOT NULL,
  PRIMARY KEY (`bkp_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table bkp_backup
-- 

/*!40000 ALTER TABLE `bkp_backup` DISABLE KEYS */;

/*!40000 ALTER TABLE `bkp_backup` ENABLE KEYS */;

-- 
-- Definition of cra_criterio_avaliacao
-- 

DROP TABLE IF EXISTS `cra_criterio_avaliacao`;
CREATE TABLE IF NOT EXISTS `cra_criterio_avaliacao` (
  `cra_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ava_codigo` int(10) unsigned NOT NULL,
  `cri_codigo` int(10) unsigned NOT NULL,
  `cra_peso` double NOT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`cra_codigo`),
  KEY `FK_cra_criterio_avaliaca_1` (`ava_codigo`),
  KEY `FK_cra_criterio_avaliaca_2` (`cri_codigo`),
  CONSTRAINT `FK_cra_criterio_avaliaca_1` FOREIGN KEY (`ava_codigo`) REFERENCES `ava_avaliacao` (`ava_codigo`),
  CONSTRAINT `FK_cra_criterio_avaliaca_2` FOREIGN KEY (`cri_codigo`) REFERENCES `cri_criterio` (`cri_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table cra_criterio_avaliacao
-- 

/*!40000 ALTER TABLE `cra_criterio_avaliacao` DISABLE KEYS */;
INSERT INTO `cra_criterio_avaliacao`(`cra_codigo`,`ava_codigo`,`cri_codigo`,`cra_peso`,`aud_pes_codigo`) VALUES
(23,13,14,7,NULL),
(24,13,6,1,NULL),
(25,13,1,1,NULL),
(26,13,11,1,NULL),
(27,14,5,5,NULL),
(28,14,6,5,NULL),
(29,15,5,1,NULL),
(30,15,6,1,NULL),
(31,16,14,1,NULL),
(32,16,6,1,NULL),
(33,16,1,1,NULL),
(34,16,11,1,NULL),
(35,17,5,12,NULL),
(36,18,3,10,NULL),
(37,18,5,10,NULL),
(38,19,3,5,NULL),
(39,19,5,2,NULL),
(40,20,3,2,NULL),
(41,21,3,1,NULL),
(42,21,6,10,NULL),
(43,22,5,5,NULL),
(44,22,3,6,NULL),
(45,22,6,3,NULL),
(46,23,3,10,NULL),
(47,23,5,10,NULL),
(48,24,3,2,NULL),
(49,25,6,5,NULL),
(50,25,5,2,NULL),
(51,25,3,3,NULL),
(52,26,5,2,NULL),
(53,26,3,3,NULL),
(54,26,6,4,NULL),
(55,26,1,5,NULL),
(56,27,3,5,NULL),
(57,27,6,6,NULL),
(58,27,1,3,NULL),
(59,28,5,1,NULL),
(60,28,3,2,NULL),
(61,28,6,5,NULL),
(62,29,5,8,NULL),
(63,29,3,5,NULL),
(64,29,6,6,NULL),
(65,29,1,4,NULL),
(66,30,5,5,NULL),
(67,30,3,2,NULL),
(68,30,6,3,NULL),
(69,21,5,10,NULL),
(70,21,6,9,NULL);
/*!40000 ALTER TABLE `cra_criterio_avaliacao` ENABLE KEYS */;

-- 
-- Definition of cri_criterio
-- 

DROP TABLE IF EXISTS `cri_criterio`;
CREATE TABLE IF NOT EXISTS `cri_criterio` (
  `cri_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cri_descricao` varchar(45) NOT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`cri_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table cri_criterio
-- 

/*!40000 ALTER TABLE `cri_criterio` DISABLE KEYS */;
INSERT INTO `cri_criterio`(`cri_codigo`,`cri_descricao`,`aud_pes_codigo`) VALUES
(1,'Conhecimento',NULL),
(2,'Habilidade',NULL),
(3,'Atitude',NULL),
(4,'Fala',NULL),
(5,'Apresentação',NULL),
(6,'Companherismo',NULL),
(11,'Domínio de conteúdo',NULL),
(12,'Funcionalidades',NULL),
(13,'teste',NULL),
(14,'Postura',NULL),
(15,'damiao',NULL),
(19,'TesteTrg',NULL),
(20,'TesteNovamenteTrgUpdate',8);
/*!40000 ALTER TABLE `cri_criterio` ENABLE KEYS */;

-- 
-- Definition of eqa_equipe_avaliacao
-- 

DROP TABLE IF EXISTS `eqa_equipe_avaliacao`;
CREATE TABLE IF NOT EXISTS `eqa_equipe_avaliacao` (
  `eqa_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eqp_codigo` int(10) unsigned NOT NULL,
  `ava_codigo` int(10) unsigned NOT NULL,
  `res_codigo` int(10) unsigned DEFAULT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`eqa_codigo`),
  KEY `FK_eqa_equipe_avaliaca_1` (`eqp_codigo`),
  KEY `FK_eqa_equipe_avaliaca_2` (`ava_codigo`),
  KEY `FK_eqa_equipe_avaliaca_3` (`res_codigo`),
  CONSTRAINT `FK_eqa_equipe_avaliaca_1` FOREIGN KEY (`eqp_codigo`) REFERENCES `eqp_equipe` (`eqp_codigo`),
  CONSTRAINT `FK_eqa_equipe_avaliaca_2` FOREIGN KEY (`ava_codigo`) REFERENCES `ava_avaliacao` (`ava_codigo`),
  CONSTRAINT `FK_eqa_equipe_avaliaca_3` FOREIGN KEY (`res_codigo`) REFERENCES `res_resposta` (`res_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table eqa_equipe_avaliacao
-- 

/*!40000 ALTER TABLE `eqa_equipe_avaliacao` DISABLE KEYS */;
INSERT INTO `eqa_equipe_avaliacao`(`eqa_codigo`,`eqp_codigo`,`ava_codigo`,`res_codigo`,`aud_pes_codigo`) VALUES
(15,25,13,NULL,NULL),
(16,3,14,NULL,NULL),
(17,1,15,NULL,NULL),
(18,2,15,NULL,NULL),
(19,19,16,NULL,NULL),
(20,23,17,NULL,NULL),
(21,33,18,NULL,NULL),
(22,33,19,NULL,NULL),
(23,33,20,NULL,NULL),
(24,32,21,NULL,NULL),
(25,33,22,NULL,NULL),
(26,36,23,NULL,NULL),
(27,38,24,NULL,NULL),
(28,38,25,NULL,NULL),
(29,37,26,NULL,NULL),
(30,33,27,NULL,NULL),
(31,42,28,NULL,NULL),
(32,43,29,NULL,NULL),
(33,43,30,NULL,NULL);
/*!40000 ALTER TABLE `eqa_equipe_avaliacao` ENABLE KEYS */;

-- 
-- Definition of eqp_equipe
-- 

DROP TABLE IF EXISTS `eqp_equipe`;
CREATE TABLE IF NOT EXISTS `eqp_equipe` (
  `eqp_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eqp_nome` varchar(45) NOT NULL,
  `eqp_descricao` varchar(45) DEFAULT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`eqp_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table eqp_equipe
-- 

/*!40000 ALTER TABLE `eqp_equipe` DISABLE KEYS */;
INSERT INTO `eqp_equipe`(`eqp_codigo`,`eqp_nome`,`eqp_descricao`,`aud_pes_codigo`) VALUES
(1,'Equipe ADM','Equipe Formada pelo grupo dos ADMS',NULL),
(2,'Equipe USU','Equipes formada pelo Grupo dos USU',NULL),
(3,'Equipe Sam','Equipe Sam',NULL),
(15,'samus','samus',NULL),
(19,'5º ADS','5º ADS',NULL),
(20,'Equipe de Teste','Equipe de Teste',NULL),
(21,'Equipe de Teste 2','Equipe de Teste 2',NULL),
(22,'teste','teste',NULL),
(23,'Equipe Final Test 2','Equipe Final Test 2',NULL),
(24,'ter','ter',NULL),
(25,'5 ads','5 ads',NULL),
(26,'quinto ads','quinto ads',NULL),
(27,'Teste02','Teste02',NULL),
(28,'Projetos','Projetos',NULL),
(29,'Projetos','Projetos',NULL),
(30,'tetfsdf','tetfsdf',NULL),
(31,'tetfsdf','tetfsdf',NULL),
(32,'tetfsdf','tetfsdf',NULL),
(33,'jhfjhgdjhgdjgfdghd','jhfjhgdjhgdjgfdghd',NULL),
(34,'','',NULL),
(35,'','',NULL),
(36,'EquiepeTesteParaVerSeVai','EquiepeTesteParaVerSeVai',NULL),
(37,'Equipe do Lucas','Equipe do Lucas',NULL),
(38,'equipe pra testa 180','equipe pra testa 180',NULL),
(39,'','',NULL),
(40,'Testepraava180','Testepraava180',NULL),
(41,'Testepraava1802','Testepraava1802',NULL),
(42,'Testepraava180235','Testepraava180235',NULL),
(43,'Sem eu na equipe','Sem eu na equipe',NULL),
(44,'Equipe com o chicao','Equipe com o chicao',NULL),
(45,'Equipe triggerUp','TesteTrigger',NULL);
/*!40000 ALTER TABLE `eqp_equipe` ENABLE KEYS */;

-- 
-- Definition of equ_equipe_usuario
-- 

DROP TABLE IF EXISTS `equ_equipe_usuario`;
CREATE TABLE IF NOT EXISTS `equ_equipe_usuario` (
  `equ_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eqp_codigo` int(10) unsigned NOT NULL,
  `usu_codigo` int(10) unsigned NOT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`equ_codigo`),
  KEY `FK_equ_equipe_usuario_1` (`usu_codigo`),
  KEY `FK_equ_equipe_usuario_2` (`eqp_codigo`),
  CONSTRAINT `FK_equ_equipe_usuario_1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuario` (`usu_codigo`),
  CONSTRAINT `FK_equ_equipe_usuario_2` FOREIGN KEY (`eqp_codigo`) REFERENCES `eqp_equipe` (`eqp_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table equ_equipe_usuario
-- 

/*!40000 ALTER TABLE `equ_equipe_usuario` DISABLE KEYS */;
INSERT INTO `equ_equipe_usuario`(`equ_codigo`,`eqp_codigo`,`usu_codigo`,`aud_pes_codigo`) VALUES
(23,25,1,NULL),
(24,25,2,NULL),
(25,26,1,NULL),
(26,26,2,NULL),
(27,27,1,NULL),
(28,27,2,NULL),
(29,30,1,NULL),
(30,30,2,NULL),
(31,31,1,NULL),
(32,31,2,NULL),
(33,32,1,NULL),
(34,33,6,NULL),
(35,33,5,NULL),
(36,33,4,NULL),
(37,33,2,NULL),
(38,34,3,NULL),
(39,34,5,NULL),
(40,34,2,NULL),
(41,35,3,NULL),
(42,35,5,NULL),
(43,35,2,NULL),
(44,36,6,NULL),
(45,36,5,NULL),
(46,36,4,NULL),
(47,36,2,NULL),
(48,38,6,NULL),
(49,38,5,NULL),
(50,38,4,NULL),
(51,39,6,NULL),
(52,39,5,NULL),
(53,39,3,NULL),
(54,40,6,NULL),
(55,40,5,NULL),
(56,40,3,NULL),
(57,41,6,NULL),
(58,41,5,NULL),
(59,41,3,NULL),
(60,42,5,NULL),
(61,42,3,NULL),
(62,42,6,NULL),
(63,43,5,NULL),
(64,43,4,NULL),
(65,44,6,NULL),
(66,44,5,NULL),
(67,44,4,NULL),
(69,45,5,NULL);
/*!40000 ALTER TABLE `equ_equipe_usuario` ENABLE KEYS */;

-- 
-- Definition of hst_historico
-- 

DROP TABLE IF EXISTS `hst_historico`;
CREATE TABLE IF NOT EXISTS `hst_historico` (
  `hst_codigo` int(11) NOT NULL,
  `hst_atividade` varchar(45) NOT NULL,
  `hst_data` datetime NOT NULL,
  PRIMARY KEY (`hst_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table hst_historico
-- 

/*!40000 ALTER TABLE `hst_historico` DISABLE KEYS */;

/*!40000 ALTER TABLE `hst_historico` ENABLE KEYS */;

-- 
-- Definition of hsu_historico_usuario
-- 

DROP TABLE IF EXISTS `hsu_historico_usuario`;
CREATE TABLE IF NOT EXISTS `hsu_historico_usuario` (
  `hsu_codigo` int(11) NOT NULL,
  `usu_codigo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`hsu_codigo`,`usu_codigo`),
  KEY `fk_his_historico_has_usu_usuario_usu_usuario1_idx` (`usu_codigo`),
  KEY `fk_his_historico_has_usu_usuario_his_historico_idx` (`hsu_codigo`),
  CONSTRAINT `fk_his_historico_has_usu_usuario_his_historico` FOREIGN KEY (`hsu_codigo`) REFERENCES `mydb`.`his_historico` (`his_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_his_historico_has_usu_usuario_usu_usuario1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuario` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table hsu_historico_usuario
-- 

/*!40000 ALTER TABLE `hsu_historico_usuario` DISABLE KEYS */;

/*!40000 ALTER TABLE `hsu_historico_usuario` ENABLE KEYS */;

-- 
-- Definition of per_perfil
-- 

DROP TABLE IF EXISTS `per_perfil`;
CREATE TABLE IF NOT EXISTS `per_perfil` (
  `per_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `per_descricao` enum('Participante','Avaliador','Administrador Comum','Administrador Master') NOT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`per_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table per_perfil
-- 

/*!40000 ALTER TABLE `per_perfil` DISABLE KEYS */;
INSERT INTO `per_perfil`(`per_codigo`,`per_descricao`,`aud_pes_codigo`) VALUES
(1,'Participante',NULL),
(2,'Avaliador',NULL),
(3,'Administrador Master',NULL),
(4,'Administrador Comum',NULL);
/*!40000 ALTER TABLE `per_perfil` ENABLE KEYS */;

-- 
-- Definition of pes_pessoa
-- 

DROP TABLE IF EXISTS `pes_pessoa`;
CREATE TABLE IF NOT EXISTS `pes_pessoa` (
  `pes_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pes_nome` varchar(50) NOT NULL,
  `pes_rg` varchar(20) NOT NULL,
  `pes_cpf` varchar(14) NOT NULL,
  `pes_telefone` varchar(20) DEFAULT NULL,
  `pes_celular` varchar(20) DEFAULT NULL,
  `pes_email` varchar(50) DEFAULT NULL,
  `pes_data_nascimento` datetime NOT NULL,
  `pes_rua` varchar(100) NOT NULL,
  `pes_numero` varchar(11) NOT NULL,
  `pes_cep` varchar(9) NOT NULL,
  `pes_bairro` varchar(50) NOT NULL,
  `pes_cidade` varchar(50) NOT NULL,
  `pes_estado` varchar(45) NOT NULL,
  `pes_ra` varchar(10) NOT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`pes_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table pes_pessoa
-- 

/*!40000 ALTER TABLE `pes_pessoa` DISABLE KEYS */;
INSERT INTO `pes_pessoa`(`pes_codigo`,`pes_nome`,`pes_rg`,`pes_cpf`,`pes_telefone`,`pes_celular`,`pes_email`,`pes_data_nascimento`,`pes_rua`,`pes_numero`,`pes_cep`,`pes_bairro`,`pes_cidade`,`pes_estado`,`pes_ra`,`aud_pes_codigo`) VALUES
(1,'Samuel da Silva','48.996.897-0','123.445.678-91','(12)3637-0000','(12)99123-4872','projetointersam@outlook.com','1993-03-15 00:00:00','Joao Pedro','52','12500000','Centro','Guaratinguetá','São Paulo','1014121',NULL),
(2,'Rafael de Oliveira Campos Bassanello','12.345.678-9','987.654.321.01','(12)3637-0001','(12)98123-4567','rafa.nello@gmail.com','1996-06-13 00:00:00','02','0010','12445002','Ponte Nova','Guaratingueta','São Paulo','1310501',NULL),
(3,'João Érique Tourinho Amorim','42.222.333-2','876.987.345-56','(12)3132-2896','(12)99137-3002','joaoerique@bol.com','1990-02-18 00:00:00','03','123','12500121','Centro','Guaratinguetá','São Paulo','1220275',NULL),
(4,'Maria Julia de Oliveira','42.517.256-4','432.835.708-50','(12)3132-7466','(12)98163-2112','majuoliveira95@gmail.com','1995-01-28 00:00:00','Ari Barroso','32','12456123','Pedregullho','Guaratinguetá','São Paulo','1310793',NULL),
(5,'Gabriele Fernanda de Almeida Gonçalves','41.854.678-2','421.441.548-56','(12)3637-2017','(12)98137-6955','gabriele.fernanda49@gmail.com','1993-10-25 00:00:00','14','66','12446150','Mantiqueira','Pindamonhangaba','São Paulo','1310185',NULL),
(6,'Francisco Ribeiro Junior','41.782.700-0','123.445.678-91','(12)3637-0000','(12)99123-4567','f.ribeiro0512@gmail.com','1994-05-12 00:00:00','01','01','12600000','Moreira César','Pindamonhangaba','São Paulo','1310434',NULL),
(7,'bruno','3121','2323','34342','32323','vfvgg','1994-05-12 00:00:00','ff','3','2132','cvc','bv','vfv','232',3),
(8,'Gabriele','1234','1234','2343','23','ER','1992-10-21 00:00:00','e','e','e','ee','e','e','e',4);
/*!40000 ALTER TABLE `pes_pessoa` ENABLE KEYS */;

-- 
-- Definition of pru_perfil_usuario
-- 

DROP TABLE IF EXISTS `pru_perfil_usuario`;
CREATE TABLE IF NOT EXISTS `pru_perfil_usuario` (
  `usu_codigo` int(10) unsigned NOT NULL,
  `per_codigo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`usu_codigo`,`per_codigo`),
  KEY `FK_pru_perfil_usuario_1` (`per_codigo`),
  CONSTRAINT `FK_pru_perfil_usuario_1` FOREIGN KEY (`per_codigo`) REFERENCES `per_perfil` (`per_codigo`),
  CONSTRAINT `FK_pru_perfil_usuario_2` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuario` (`usu_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table pru_perfil_usuario
-- 

/*!40000 ALTER TABLE `pru_perfil_usuario` DISABLE KEYS */;
INSERT INTO `pru_perfil_usuario`(`usu_codigo`,`per_codigo`) VALUES
(1,1),
(3,1),
(4,1),
(5,1),
(6,1),
(1,2),
(2,2),
(3,2),
(4,2),
(5,2),
(6,2),
(2,3),
(3,3),
(4,3),
(5,3),
(1,4);
/*!40000 ALTER TABLE `pru_perfil_usuario` ENABLE KEYS */;

-- 
-- Definition of res_resposta
-- 

DROP TABLE IF EXISTS `res_resposta`;
CREATE TABLE IF NOT EXISTS `res_resposta` (
  `res_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `res_nota` double NOT NULL,
  `usu_codigo` int(10) unsigned NOT NULL,
  `usu_codigo1` int(10) unsigned NOT NULL,
  `ava_codigo` int(10) unsigned NOT NULL,
  `cri_codigo` int(10) unsigned NOT NULL,
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`res_codigo`),
  KEY `FK_res_resposta_1` (`usu_codigo`),
  KEY `FK_res_resposta_2` (`usu_codigo1`),
  KEY `FK_res_resposta_3` (`ava_codigo`),
  KEY `FK_res_resposta_4` (`cri_codigo`),
  CONSTRAINT `FK_res_resposta_1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuario` (`usu_codigo`),
  CONSTRAINT `FK_res_resposta_2` FOREIGN KEY (`usu_codigo1`) REFERENCES `usu_usuario` (`usu_codigo`),
  CONSTRAINT `FK_res_resposta_3` FOREIGN KEY (`ava_codigo`) REFERENCES `ava_avaliacao` (`ava_codigo`),
  CONSTRAINT `FK_res_resposta_4` FOREIGN KEY (`cri_codigo`) REFERENCES `cri_criterio` (`cri_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table res_resposta
-- 

/*!40000 ALTER TABLE `res_resposta` DISABLE KEYS */;
INSERT INTO `res_resposta`(`res_codigo`,`res_nota`,`usu_codigo`,`usu_codigo1`,`ava_codigo`,`cri_codigo`,`aud_pes_codigo`) VALUES
(1,10,6,3,18,3,0),
(2,10,6,3,18,5,0),
(3,1,5,3,18,3,0),
(4,10,5,3,18,5,0),
(5,1,4,3,18,3,0),
(6,1,4,3,18,5,0),
(7,10,2,3,18,3,0),
(8,10,2,3,18,5,0),
(9,10,6,3,22,5,0),
(10,8,6,3,22,3,0),
(11,10,6,3,22,6,0),
(12,1,5,3,22,5,0),
(13,1,5,3,22,3,0),
(14,2,5,3,22,6,0),
(15,2,4,3,22,5,0),
(16,2,4,3,22,3,0),
(17,1,4,3,22,6,0),
(18,9,2,3,22,5,0),
(19,8,2,3,22,3,0),
(20,7,2,3,22,6,0),
(21,10,6,3,23,3,0),
(22,8,6,3,23,5,0),
(23,1,5,3,23,3,0),
(24,1,5,3,23,5,0),
(25,2,4,3,23,3,0),
(26,2,4,3,23,5,0),
(27,5,2,3,23,3,0),
(28,5,2,3,23,5,0),
(29,10,1,6,21,3,0),
(30,10,1,6,21,6,0),
(31,10,6,6,24,3,0),
(32,1,5,6,24,3,0),
(33,2,4,6,24,3,0),
(34,10,6,6,27,3,0),
(35,5,6,6,27,6,0),
(36,6,6,6,27,1,0),
(37,5,5,6,27,3,0),
(38,1,5,6,27,6,0),
(39,2,5,6,27,1,0),
(40,2,4,6,27,3,0),
(41,2,4,6,27,6,0),
(42,3,4,6,27,1,0),
(43,10,2,6,27,3,0),
(44,10,2,6,27,6,0),
(45,5,2,6,27,1,0),
(46,10,6,5,27,3,0),
(47,10,6,5,27,6,0),
(48,10,6,5,27,1,0),
(49,1,5,5,27,3,0),
(50,1,5,5,27,6,0),
(51,1,5,5,27,1,0),
(52,2,4,5,27,3,0),
(53,2,4,5,27,6,0),
(54,2,4,5,27,1,0),
(55,10,2,5,27,3,0),
(56,10,2,5,27,6,0),
(57,10,2,5,27,1,0),
(58,1,5,6,28,5,0),
(59,1,5,6,28,3,0),
(60,1,5,6,28,6,0),
(61,2,3,6,28,5,0),
(62,2,3,6,28,3,0),
(63,2,3,6,28,6,0),
(64,3,6,6,28,5,0),
(65,3,6,6,28,3,0),
(66,3,6,6,28,6,0),
(67,1,6,6,25,6,0),
(68,1,6,6,25,5,0),
(69,1,6,6,25,3,0),
(70,2,5,6,25,6,0),
(71,2,5,6,25,5,0),
(72,2,5,6,25,3,0),
(73,3,4,6,25,6,0),
(74,3,4,6,25,5,0),
(75,3,4,6,25,3,0),
(76,4,6,6,25,6,0),
(77,4,6,6,25,5,0),
(78,4,6,6,25,3,0),
(79,10,1,6,21,3,0),
(80,8,1,6,21,6,0);
/*!40000 ALTER TABLE `res_resposta` ENABLE KEYS */;

-- 
-- Definition of usu_usuario
-- 

DROP TABLE IF EXISTS `usu_usuario`;
CREATE TABLE IF NOT EXISTS `usu_usuario` (
  `usu_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `usu_login` varchar(45) NOT NULL,
  `usu_senha` varchar(255) NOT NULL,
  `usu_status` int(1) NOT NULL,
  `usu_data_cadastro` datetime NOT NULL,
  `usu_data_acesso` datetime DEFAULT NULL,
  `pes_codigo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`usu_codigo`),
  KEY `pes_codigo` (`pes_codigo`),
  CONSTRAINT `pes_codigo` FOREIGN KEY (`pes_codigo`) REFERENCES `pes_pessoa` (`pes_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table usu_usuario
-- 

/*!40000 ALTER TABLE `usu_usuario` DISABLE KEYS */;
INSERT INTO `usu_usuario`(`usu_codigo`,`usu_login`,`usu_senha`,`usu_status`,`usu_data_cadastro`,`usu_data_acesso`,`pes_codigo`) VALUES
(1,'1014121','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-05 00:00:00','2015-06-23 20:43:29',1),
(2,'1310501','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-05 00:00:00',NULL,2),
(3,'1220275','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-14 00:00:00',NULL,3),
(4,'1310793','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-14 00:00:00',NULL,4),
(5,'1310185','8wNgmb+ifKXKaNuKe9e/7fyWjoYDXsUIXmmmmkrFai6KkT+q34sW4UdEHBxVG5TPLUcKr+v4/zwYH9LgMH5v+A==',1,'2015-04-14 00:00:00','2015-06-10 19:20:54',5),
(6,'1310434','Vs/c2luU98mHPYptVIbTX5Q3rZKApgrah8aBroWztIqkRU+/iylilQ1yC+CV138UnTENlVY+Efu7fJzBDjTaog==',1,'2015-04-05 00:00:00','2015-06-17 17:03:53',6);
/*!40000 ALTER TABLE `usu_usuario` ENABLE KEYS */;

-- 
-- Dumping views
-- 

DROP TABLE IF EXISTS `vie_alterarstatus`;
DROP VIEW IF EXISTS `vie_alterarstatus`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vie_alterarstatus` AS select `aa`.`ava_codigo` AS `ava_codigo` from `ava_avaliacao` `aa` where ((`aa`.`ava_status` = 1) and (if((`aa`.`ava_termino` < now()),1,0) = 1));


-- 
-- Dumping triggers
-- 

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_ava`;
DELIMITER |
CREATE trigger trg_insercao_ava after insert on ava_avaliacao
for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.ava_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-' ,
'Codigo: ', new.ava_codigo,'Nome: ', new.ava_nome,'Tipo: ', new.ava_tipo,'Status: ', new.ava_status,'Anonimo: ', new.ava_anonimo,
'Inicio: ',new.ava_inicio,'Termino: ', new.ava_termino,'Descricao: ', new.ava_descricao), 'Avaliacao', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_update_avaliacao`;
DELIMITER |
CREATE trigger trg_update_avaliacao after update on ava_avaliacao
for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.ava_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-' ,
'Codigo: ', old.ava_codigo,'Nome: ', old.ava_nome,'Tipo: ', old.ava_tipo,'Status: ', old.ava_status,'Anonimo: ', old.ava_anonimo,
'Inicio: ',old.ava_inicio,'Termino: ', old.ava_termino,'Descricao: ', old.ava_descricao), concat_ws('-' ,
'Codigo: ', new.ava_codigo,'Nome: ', new.ava_nome,'Tipo: ', new.ava_tipo,'Status: ', new.ava_status,'Anônimo: ', new.ava_anonimo,
'Inicio: ', new.ava_inicio, 'Termino: ', new.ava_termino, 'Descricao: ', new.ava_descricao),'Avaliação', 'update');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_cra`;
DELIMITER |
CREATE TRIGGER trg_insercao_cra AFTER INSERT ON cra_criterio_avaliacao
FOR EACH ROW
BEGIN
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.cra_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, 'Inserção', concat_ws('-',
'Codigo: ',new.cra_codigo,'Peso: ',new.cra_peso), 'Criterio Avaliacao', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_cra`;
DELIMITER |
CREATE TRIGGER trg_atualizacao_cra AFTER UPDATE ON cra_criterio_avaliacao
FOR EACH ROW
BEGIN
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.cra_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', old.cra_codigo, 'Peso: ', old.cra_peso), concat_ws( '-',
'Codigo: ',new.cra_codigo,'Peso: ',new.cra_peso), 'Criterio Avaliacao', 'update');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_cri`;
DELIMITER |
CREATE TRIGGER trg_insercao_cri AFTER INSERT ON cri_criterio
FOR EACH ROW
BEGIN
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.cri_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, 'Inserção', concat_ws('-',
'Codigo: ',new.cri_codigo,'Descricao: ',new.cri_descricao), 'Criterio', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_cri`;
DELIMITER |
CREATE TRIGGER trg_atualizacao_cri after update on cri_criterio
FOR EACH ROW
BEGIN
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.cri_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', old.cri_codigo, 'Descricao: ', old.cri_descricao), concat_ws('-',
'Codigo: ',new.cri_codigo,'Descricao: ',new.cri_descricao), 'Criterio', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_eqp`;
DELIMITER |
CREATE trigger trg_insercao_eqp after insert on eqp_equipe for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.eqp_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, 'Insert', concat_ws('-',
'Codigo: ', new.eqp_codigo,'Nome: ', new.eqp_nome, 'Descricao: ', new.eqp_descricao), 'Equipe','insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_eqp`;
DELIMITER |
CREATE trigger trg_atualizacao_eqp after update on eqp_equipe for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.eqp_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', old.eqp_codigo, 'Nome: ', old.eqp_nome, 'Descricao: ', old.eqp_descricao), concat_ws('-',
'Codigo: ', new.eqp_codigo,'Nome: ', new.eqp_nome, 'Descricao: ', new.eqp_descricao), 'Equipe','update');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_equ`;
DELIMITER |
CREATE trigger trg_insercao_equ after insert on equ_equipe_usuario for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.equ_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', new.equ_codigo), 'Equipe Usuario','insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_equ`;
DELIMITER |
CREATE trigger trg_atualizacao_equ after update on equ_equipe_usuario for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.equ_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', old.equ_codigo), concat_ws('-',
'Codigo: ', new.equ_codigo),'Equipe Usuario: ', 'update');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_per`;
DELIMITER |
CREATE trigger trg_insercao_per after insert on per_perfil for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.per_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', new.per_codigo, 'Descricao: ', new.per_descricao),'Perfil: ', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_per`;
DELIMITER |
CREATE trigger trg_atualizacao_per after update on per_perfil for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.per_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ',old.per_codigo, 'Descricao: ', old.per_descricao), concat_ws('-',
'Codigo: ', new.per_codigo, 'Descricao: ', new.per_descricao),'Perfil: ', 'update');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_pes`;
DELIMITER |
CREATE TRIGGER trg_insercao_pes AFTER INSERT ON pes_pessoa
FOR EACH ROW
BEGIN
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.pes_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, 'Inserção', concat_ws('-',

new.pes_codigo, new.pes_nome, new.pes_rg, new.pes_cpf, new.pes_telefone,
new.pes_celular, new.pes_email, new.pes_data_nascimento, new.pes_rua,
new.pes_numero, new.pes_cep, new.pes_bairro, new.pes_cidade, new.pes_estado,
new.pes_ra), 'pes_pessoa', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_pes`;
DELIMITER |
CREATE trigger trg_atualizacao_pes after update on pes_pessoa
for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo:= new.aud_pes_codigo;
else
set codigo:=new.pes_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-' ,
'Codigo: ', old.pes_codigo,'Nome: ', old.pes_nome,'RG: ', old.pes_rg,'CPF: ', old.pes_cpf,'Telefone: ', old.pes_telefone,
'Celular: ',old.pes_celular,'Email: ', old.pes_email,'Data de Nascimento: ', old.pes_data_nascimento,'Rua: ', old.pes_rua,
'Numero: ',old.pes_numero,'CEP: ', old.pes_cep,'Bairro: ', old.pes_bairro,'Cidade: ', old.pes_cidade,'Estado: ', old.pes_estado,
'RA: ',old.pes_ra), concat_ws('-' ,
'Codigo: ', new.pes_codigo,'Nome: ', new.pes_nome,'RG: ', new.pes_rg,'CPF: ', new.pes_cpf,'Telefone: ', new.pes_telefone,
'Celular: ',new.pes_celular,'Email: ', new.pes_email,'Data de Nascimento: ', new.pes_data_nascimento,'Rua: ', new.pes_rua,
'Numero: ',new.pes_numero,'CEP: ', new.pes_cep,'Bairro: ', new.pes_bairro,'Cidade: ', new.pes_cidade,'Estado: ', new.pes_estado,
'RA: ',new.pes_ra), 'pes_pessoa', 'update');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_res`;
DELIMITER |
CREATE trigger trg_insercao_res after insert on res_resposta for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.res_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', new.res_codigo, 'Nota: ', new.res_nota),'Perfil: ', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_res`;
DELIMITER |
CREATE trigger trg_atualizacao_res after update on res_resposta for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.res_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', old.res_codigo, 'Nota: ', old.res_nota), concat_ws ('-',
'Codigo: ', new.res_codigo, 'Nota: ', new.res_nota),'Resposta ', 'update');

end |
DELIMITER ;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2015-06-23 20:44:37
-- Total time: 0:0:0:6:123 (d:h:m:s:ms)
