-- MySqlBackup.NET 2.0.8
-- Dump Time: 2015-06-25 13:20:05
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
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table aud_auditoria
-- 

/*!40000 ALTER TABLE `aud_auditoria` DISABLE KEYS */;
INSERT INTO `aud_auditoria`(`aud_codigo`,`aud_data`,`aud_pes_codigo`,`aud_antes`,`aud_depois`,`aud_tabela`,`aud_operacao`) VALUES
(460,'2015-06-24 00:36:44',11,'Inserção','11-Samuel da Silva-123.456.678-1-123.123.123-45-1212341234-981234566-projetointersam@outlook.com-2014-08-20 00:00:00-13-44-12123123-Liberdade-Guaratinguetá-São Paulo-1014121','pes_pessoa','insert'),
(461,'2015-06-24 00:36:55',1,'Codigo: -11-Nome: -Samuel da Silva-RG: -123.456.678-1-CPF: -123.123.123-45-Telefone: -1212341234-Celular: -981234566-Email: -projetointersam@outlook.com-Data de Nascimento: -2014-08-20 00:00:00-Rua: -13-Numero: -44-CEP: -12123123-Bairro: -Liberdade-Cidade: -Guaratinguetá-Estado: -São Paulo-RA: -1014121','Codigo: -1-Nome: -Samuel da Silva-RG: -123.456.678-1-CPF: -123.123.123-45-Telefone: -1212341234-Celular: -981234566-Email: -projetointersam@outlook.com-Data de Nascimento: -2014-08-20 00:00:00-Rua: -13-Numero: -44-CEP: -12123123-Bairro: -Liberdade-Cidade: -Guaratinguetá-Estado: -São Paulo-RA: -1014121','pes_pessoa','update'),
(462,'2015-06-24 00:45:02',1,'Codigo: -1-Login: -1014121-Senha: -123456','Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(463,'2015-06-24 00:45:32',1,'Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(464,'2015-06-24 00:52:07',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(465,'2015-06-24 01:13:57',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(466,'2015-06-24 01:20:14',12,'Inserção','12-Maria Julia Oliveira-425172846-43283570850--(12)981632112-majuoliveira95@gmail.com-1994-04-12 00:00:00-Praça Nossa Senhora da Glória-12-12123123-Pedregulho-Guaratinguetá-São Paulo-1310793','pes_pessoa','insert'),
(467,'2015-06-24 01:21:40',13,'Inserção','13-Gabriele Fernanda de Almeida Gonçalves-418546782-42144154856--(12)981376955-gabriele.fernanda49@gmail.com-1993-10-25 00:00:00-Geraldo Derico Moreira-66-12446150-Mantiqueira-Pindamonhangaba-São Paulo-1310185','pes_pessoa','insert'),
(468,'2015-06-24 01:27:10',14,'Inserção','14-Lucas Rafael Granato Pinheiro-369378106-42100400886--(12)982277740-lucas.granato@outlook.com-1994-04-19 00:00:00-Laerte de Assunção Jr. -111-12412040-Campo Alegre-Pindamonhangaba-São Paulo-1220366','pes_pessoa','insert'),
(469,'2015-06-24 01:30:12',15,'Inserção','15-Thales Fernando Ferreira Alonso-46175861-39493228850-(12)31564754--alonso@gmail.com-1990-02-15 00:00:00-São Benedito-550-12620000-Vila Batão-Piquete-São Paulo-1220512','pes_pessoa','insert'),
(470,'2015-06-24 01:40:30',16,'Inserção','16-Hiroshi Kuwahara-470989920-394136634840--(12)981668156-hiroshikuwahara@hotmail.com-1991-01-19 00:00:00-Rui Barbosa -439-12605060-Vila Passos-Lorena-São Paulo-1320169','pes_pessoa','insert'),
(471,'2015-06-24 01:47:36',17,'Inserção','17-Gabriele Fernanda de Almeida Gonçalves-41854678-2-42144154856--(12)981376955-gabriele.fernanda49@gmail.com-1993-10-25 00:00:00-Geraldo Derico Moreira-66-12446150-Mantiqueira-Pindamonhangaba-São Paulo-1310185','pes_pessoa','insert'),
(472,'2015-06-24 01:49:35',18,'Inserção','18-Lucas Rafael Granato Pinheiro-36937810-42100400886--(12)982277740-lucas.granato@outlook.com-1994-04-19 00:00:00-Laerte de Assunção Jr. -111-12412040-Campo Alegre-Pindamonhangaba-São Paulo-1220366','pes_pessoa','insert'),
(473,'2015-06-24 02:31:09',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(474,'2015-06-24 02:32:52',19,'Inserção','19-Lucas Rafael Granato Pinheiro-36937810-42100400886---lucas.granato@outlook.com-1994-04-19 00:00:00-Laerte de Assunção Jr. -111-12412040-Campo Alegre-Pindamonhangaba-São Paulo-1220366','pes_pessoa','insert'),
(475,'2015-06-24 02:33:51',15,'Codigo: -15-Login: -1220366-Senha: -O2E+NvZrjcczmMTJUctpxzIzWpEl1j7RDmVy2XkkK7YA96WRi07Cp/S35fSIUpUAnqUQDRAhPYkHD9gyaw8uTQ==','Codigo: -15-Login: -1220366-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(476,'2015-06-24 02:33:51',16,'Codigo: -16-Login: -1220366-Senha: -O2E+NvZrjcczmMTJUctpxzIzWpEl1j7RDmVy2XkkK7YA96WRi07Cp/S35fSIUpUAnqUQDRAhPYkHD9gyaw8uTQ==','Codigo: -16-Login: -1220366-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(477,'2015-06-24 02:34:45',16,'Codigo: -16-Login: -1220366-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -16-Login: -1220366-Senha: -IsvyBd2DKBJf4xgzz8QNumRtmXf2Hv9qmOzYPFOKDS8wkIhm6cYTaUN79nYgfmrXoIEIVf5bf5TxF5moWjDjiA==','Usuario: ','update'),
(478,'2015-06-24 02:35:18',16,'Codigo: -16-Login: -1220366-Senha: -IsvyBd2DKBJf4xgzz8QNumRtmXf2Hv9qmOzYPFOKDS8wkIhm6cYTaUN79nYgfmrXoIEIVf5bf5TxF5moWjDjiA==','Codigo: -16-Login: -1220366-Senha: -IsvyBd2DKBJf4xgzz8QNumRtmXf2Hv9qmOzYPFOKDS8wkIhm6cYTaUN79nYgfmrXoIEIVf5bf5TxF5moWjDjiA==','Usuario: ','update'),
(479,'2015-06-24 02:37:54',14,'Codigo: -14-Login: -1310185-Senha: -+jmrqIv/x0Lge+8JaaMGNOQ1Q84lMWjqaGD3Q8PqOidaPnmUE5hbGlr5+UJxtkvIM3ANjHfkivySRJxh0QevxA==','Codigo: -14-Login: -1310185-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(480,'2015-06-24 02:38:18',14,'Codigo: -14-Login: -1310185-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -14-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Usuario: ','update'),
(481,'2015-06-24 02:39:33',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(482,'2015-06-24 02:40:26',20,'Inserção','20-Gabriele Fernanda de Almeida Gonçalves-418546782-42144154856--(12)981376955-gabriele.fernanda49@gmail.com-1993-10-25 00:00:00-Geraldo Derico Moreira-66-12446150-Mantiqueira-Pindamonhangaba-São Paulo-1310185','pes_pessoa','insert'),
(483,'2015-06-24 02:40:49',17,'Codigo: -17-Login: -1310185-Senha: -+jmrqIv/x0Lge+8JaaMGNOQ1Q84lMWjqaGD3Q8PqOidaPnmUE5hbGlr5+UJxtkvIM3ANjHfkivySRJxh0QevxA==','Codigo: -17-Login: -1310185-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(484,'2015-06-24 02:41:03',17,'Codigo: -17-Login: -1310185-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Usuario: ','update'),
(485,'2015-06-24 02:41:18',17,'Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Usuario: ','update'),
(486,'2015-06-24 02:41:30',17,'Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Usuario: ','update'),
(487,'2015-06-24 02:55:00',17,'Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Usuario: ','update'),
(488,'2015-06-24 02:55:22',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(489,'2015-06-24 03:05:34',17,'Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Codigo: -17-Login: -1310185-Senha: -ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==','Usuario: ','update'),
(490,'2015-06-24 03:05:59',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(491,'2015-06-24 03:06:22',13,'Codigo: -13-Login: -1320169-Senha: -HuSOEyGYIeNkn6HXWVf82RIGf80h/6V6sg5NLb0U/KEIyCIWtmkuKDk+nwzzLfAS5PcH5Q1M/EY3khgrvGxjkA==','Codigo: -13-Login: -1320169-Senha: -HuSOEyGYIeNkn6HXWVf82RIGf80h/6V6sg5NLb0U/KEIyCIWtmkuKDk+nwzzLfAS5PcH5Q1M/EY3khgrvGxjkA==','Usuario: ','update'),
(492,'2015-06-24 03:06:30',13,'Codigo: -13-Login: -1320169-Senha: -HuSOEyGYIeNkn6HXWVf82RIGf80h/6V6sg5NLb0U/KEIyCIWtmkuKDk+nwzzLfAS5PcH5Q1M/EY3khgrvGxjkA==','Codigo: -13-Login: -1320169-Senha: -HuSOEyGYIeNkn6HXWVf82RIGf80h/6V6sg5NLb0U/KEIyCIWtmkuKDk+nwzzLfAS5PcH5Q1M/EY3khgrvGxjkA==','Usuario: ','update'),
(493,'2015-06-24 03:17:44',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(494,'2015-06-24 03:55:05',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(495,'2015-06-24 11:54:08',10,'Codigo: -10-Login: -1310185-Senha: -+jmrqIv/x0Lge+8JaaMGNOQ1Q84lMWjqaGD3Q8PqOidaPnmUE5hbGlr5+UJxtkvIM3ANjHfkivySRJxh0QevxA==','Codigo: -10-Login: -1310185-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(496,'2015-06-24 11:59:52',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(497,'2015-06-24 13:09:57',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(498,'2015-06-24 13:42:37',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Usuario: ','update'),
(499,'2015-06-24 14:00:14',1,'Inserção','33-Gabriele Fernanda de Almeida Gonçalves-36937810-42100400886---gabriele.fernanda49@gmail.com-2015-06-17 00:00:00-------1310185','Pessoa','insert'),
(500,'2015-06-24 14:00:23',1,'Inserção','34-Gabriele Fernanda de Almeida Gonçalves-36937810-42100400886---gabriele.fernanda49@gmail.com-2015-06-17 00:00:00-------1310185','Pessoa','insert'),
(501,'2015-06-24 14:11:28',16,'Codigo: -16-Login: -1220366-Senha: -IsvyBd2DKBJf4xgzz8QNumRtmXf2Hv9qmOzYPFOKDS8wkIhm6cYTaUN79nYgfmrXoIEIVf5bf5TxF5moWjDjiA==','Codigo: -16-Login: -1220366-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(502,'2015-06-24 14:11:29',9,'Codigo: -9-Login: -1310793-Senha: -MJWv7WVDRZOXhvnQ/JRVMNPK9UqW/9gmrXIcjb7jG05qXq4mnYmOZUjiqwneMGVsf1LIVkHZato/jY+Cp/hlSA==','Codigo: -9-Login: -1310793-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(503,'2015-06-24 14:11:43',1,'Codigo: -1-Login: -1014121-Senha: -0GLiUSEccMaSNbihF6Bxi2bfci7ErqnWvqATjY8N/UK7jFO/lMuF88BkITettmDkfUqfZGlGTDyHRxa/BCzUdg==','Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(504,'2015-06-24 14:12:44',1,'Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(505,'2015-06-24 14:13:21',1,'Inserção','35-João-36937810-42100400886---joaoerique@bol.com.br-1990-02-18 00:00:00-------1220275','Pessoa','insert'),
(506,'2015-06-24 14:13:40',1,'Inserção','36-João-36937810-42100400886---joaoerique@bol.com.br-1990-02-18 00:00:00-------1220275','Pessoa','insert'),
(507,'2015-06-24 14:21:36',1,'Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(508,'2015-06-24 14:23:12',1,'Inserção','37-Rafael Bassanello-1234556-3442441---rafaelbassanello@gmail.com-1995-01-19 00:00:00-------1310501','Pessoa','insert'),
(509,'2015-06-24 14:24:38',16,'Codigo: -16-Login: -1220366-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -16-Login: -1220366-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(510,'2015-06-24 14:28:25',1,'Codigo: -1-Login: -1014121-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Usuario: ','update'),
(511,'2015-06-24 14:29:10',1,'Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Usuario: ','update'),
(512,'2015-06-24 14:31:29',9,'Codigo: -9-Login: -1310793-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -9-Login: -1310793-Senha: -ZDdKvGW8k/Ar48MaasxAcaycdu3wZePSUOcX5IuRXCP2eK47dZM5LXV8jIWtBAzq3jinAbVCSWWFKh35sgL3cA==','Usuario: ','update'),
(513,'2015-06-24 14:32:07',9,'Codigo: -9-Login: -1310793-Senha: -ZDdKvGW8k/Ar48MaasxAcaycdu3wZePSUOcX5IuRXCP2eK47dZM5LXV8jIWtBAzq3jinAbVCSWWFKh35sgL3cA==','Codigo: -9-Login: -1310793-Senha: -ZDdKvGW8k/Ar48MaasxAcaycdu3wZePSUOcX5IuRXCP2eK47dZM5LXV8jIWtBAzq3jinAbVCSWWFKh35sgL3cA==','Usuario: ','update'),
(514,'2015-06-24 14:41:44',1,'Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Usuario: ','update'),
(515,'2015-06-24 14:42:02',1,'Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Usuario: ','update'),
(516,'2015-06-24 14:57:04',1,'Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Usuario: ','update'),
(517,'2015-06-24 15:47:25',9,'Codigo: -9-Login: -1310793-Senha: -ZDdKvGW8k/Ar48MaasxAcaycdu3wZePSUOcX5IuRXCP2eK47dZM5LXV8jIWtBAzq3jinAbVCSWWFKh35sgL3cA==','Codigo: -9-Login: -1310793-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(518,'2015-06-24 15:48:58',9,'Codigo: -9-Login: -1310793-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Codigo: -9-Login: -1310793-Senha: -ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==','Usuario: ','update'),
(519,'2015-06-25 13:19:44',1,'Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Codigo: -1-Login: -1014121-Senha: -pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==','Usuario: ','update');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table ava_avaliacao
-- 

/*!40000 ALTER TABLE `ava_avaliacao` DISABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table bkp_backup
-- 

/*!40000 ALTER TABLE `bkp_backup` DISABLE KEYS */;
INSERT INTO `bkp_backup`(`bkp_codigo`,`bkp_nome`,`bkp_data`) VALUES
(2,'backup24-06-2015 04.02.17.sql','2015-06-24 04:02:31'),
(3,'backup24-06-2015 14.25.01.sql','2015-06-24 14:25:05'),
(4,'backup24-06-2015 14.57.15.sql','2015-06-24 14:57:16');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table cra_criterio_avaliacao
-- 

/*!40000 ALTER TABLE `cra_criterio_avaliacao` DISABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table eqa_equipe_avaliacao
-- 

/*!40000 ALTER TABLE `eqa_equipe_avaliacao` DISABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table equ_equipe_usuario
-- 

/*!40000 ALTER TABLE `equ_equipe_usuario` DISABLE KEYS */;

/*!40000 ALTER TABLE `equ_equipe_usuario` ENABLE KEYS */;

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table pes_pessoa
-- 

/*!40000 ALTER TABLE `pes_pessoa` DISABLE KEYS */;
INSERT INTO `pes_pessoa`(`pes_codigo`,`pes_nome`,`pes_rg`,`pes_cpf`,`pes_telefone`,`pes_celular`,`pes_email`,`pes_data_nascimento`,`pes_rua`,`pes_numero`,`pes_cep`,`pes_bairro`,`pes_cidade`,`pes_estado`,`pes_ra`,`aud_pes_codigo`) VALUES
(1,'Samuel da Silva','123.456.678-1','123.123.123-45','1212341234','981234566','projetointersam@outlook.com','2014-08-20 00:00:00','13','44','12123123','Liberdade','Guaratinguetá','São Paulo','1014121',NULL),
(12,'Maria Julia Oliveira','425172846','43283570850','','(12)981632112','majuoliveira95@gmail.com','1994-04-12 00:00:00','Praça Nossa Senhora da Glória','12','12123123','Pedregulho','Guaratinguetá','São Paulo','1310793',0),
(13,'Gabriele Fernanda de Almeida Gonçalves','418546782','42144154856','','(12)981376955','gabriele.fernanda49@gmail.com','1993-10-25 00:00:00','Geraldo Derico Moreira','66','12446150','Mantiqueira','Pindamonhangaba','São Paulo','1310185',0),
(14,'Lucas Rafael Granato Pinheiro','369378106','42100400886','','(12)982277740','lucas.granato@outlook.com','1994-04-19 00:00:00','Laerte de Assunção Jr. ','111','12412040','Campo Alegre','Pindamonhangaba','São Paulo','1220366',0),
(15,'Thales Fernando Ferreira Alonso','46175861','39493228850','(12)31564754','','alonso@gmail.com','1990-02-15 00:00:00','São Benedito','550','12620000','Vila Batão','Piquete','São Paulo','1220512',0),
(16,'Hiroshi Kuwahara','470989920','394136634840','','(12)981668156','hiroshikuwahara@hotmail.com','1991-01-19 00:00:00','Rui Barbosa ','439','12605060','Vila Passos','Lorena','São Paulo','1320169',0),
(17,'Gabriele Fernanda de Almeida Gonçalves','41854678-2','42144154856','','(12)981376955','gabriele.fernanda49@gmail.com','1993-10-25 00:00:00','Geraldo Derico Moreira','66','12446150','Mantiqueira','Pindamonhangaba','São Paulo','1310185',0),
(18,'Lucas Rafael Granato Pinheiro','36937810','42100400886','','(12)982277740','lucas.granato@outlook.com','1994-04-19 00:00:00','Laerte de Assunção Jr. ','111','12412040','Campo Alegre','Pindamonhangaba','São Paulo','1220366',0),
(19,'Lucas Rafael Granato Pinheiro','36937810','42100400886','','','lucas.granato@outlook.com','1994-04-19 00:00:00','Laerte de Assunção Jr. ','111','12412040','Campo Alegre','Pindamonhangaba','São Paulo','1220366',0),
(20,'Gabriele Fernanda de Almeida Gonçalves','418546782','42144154856','','(12)981376955','gabriele.fernanda49@gmail.com','1993-10-25 00:00:00','Geraldo Derico Moreira','66','12446150','Mantiqueira','Pindamonhangaba','São Paulo','1310185',0),
(33,'Gabriele Fernanda de Almeida Gonçalves','36937810','42100400886','','','gabriele.fernanda49@gmail.com','2015-06-17 00:00:00','','','','','','','1310185',1),
(34,'Gabriele Fernanda de Almeida Gonçalves','36937810','42100400886','','','gabriele.fernanda49@gmail.com','2015-06-17 00:00:00','','','','','','','1310185',1),
(35,'João','36937810','42100400886','','','joaoerique@bol.com.br','1990-02-18 00:00:00','','','','','','','1220275',1),
(36,'João','36937810','42100400886','','','joaoerique@bol.com.br','1990-02-18 00:00:00','','','','','','','1220275',1),
(37,'Rafael Bassanello','1234556','3442441','','','rafaelbassanello@gmail.com','1995-01-19 00:00:00','','','','','','','1310501',1);
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
(9,1),
(10,1),
(12,1),
(13,1),
(15,1),
(16,1),
(17,1),
(1,2),
(9,2),
(10,2),
(12,2),
(13,2),
(16,2),
(17,2),
(9,3),
(10,3),
(17,3),
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
  `aud_pes_codigo` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`usu_codigo`),
  KEY `pes_codigo` (`pes_codigo`),
  CONSTRAINT `pes_codigo` FOREIGN KEY (`pes_codigo`) REFERENCES `pes_pessoa` (`pes_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table usu_usuario
-- 

/*!40000 ALTER TABLE `usu_usuario` DISABLE KEYS */;
INSERT INTO `usu_usuario`(`usu_codigo`,`usu_login`,`usu_senha`,`usu_status`,`usu_data_cadastro`,`usu_data_acesso`,`pes_codigo`,`aud_pes_codigo`) VALUES
(1,'1014121','pymWoXYbVzqrzp5HTYs1iyr4lycR6Q2P7l0t3zSuOxBVHMED7RLyC2wrqvW0yBSR2rItm876R4A1va6k0CZGTA==',1,'2015-06-24 00:00:00','2015-06-25 13:19:45',1,NULL),
(9,'1310793','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-06-24 00:00:00','2015-06-24 15:48:59',12,NULL),
(10,'1310185','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-06-24 00:00:00',NULL,13,NULL),
(12,'1220512','HA1b+5a2RNgWp1rI3x0FNFFeMOchX90SUWm8IFVzjX4qf0pNR2Q88Q8ZL4MuOp5U8zAQb7Ns0PUx8DLEebJZ4A==',1,'2015-06-24 00:00:00',NULL,15,NULL),
(13,'1320169','HuSOEyGYIeNkn6HXWVf82RIGf80h/6V6sg5NLb0U/KEIyCIWtmkuKDk+nwzzLfAS5PcH5Q1M/EY3khgrvGxjkA==',0,'2015-06-24 00:00:00',NULL,16,NULL),
(15,'1220366','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-06-24 00:00:00',NULL,18,NULL),
(16,'1220366','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',0,'2015-06-24 00:00:00','2015-06-24 02:35:18',19,NULL),
(17,'1310185','ClabxP0zzK1UGQRGLQzIkXq6tzqsxv+qYM+VnTpF9WYY+zvdPYpkXko6wVW9mL7S+2pE6aTLCMKQAOqwVdWxdQ==',1,'2015-06-24 00:00:00','2015-06-24 03:05:34',20,NULL);
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
new.pes_ra), 'Pessoa', 'insert');
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

DROP TRIGGER /*!50030 IF EXISTS */ `trg_insercao_usu`;
DELIMITER |
CREATE trigger trg_insercao_usu after insert on usu_usuario for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.usu_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', new.usu_codigo, 'Login: ', new.usu_login, 'Senha: ',new.usu_senha),'Perfil: ', 'insert');

end |
DELIMITER ;

DROP TRIGGER /*!50030 IF EXISTS */ `trg_atualizacao_usu`;
DELIMITER |
CREATE trigger trg_atualizacao_usu after update on usu_usuario for each row
begin
declare codigo int default null;

if(new.aud_pes_codigo > 0) then
set codigo := new.aud_pes_codigo;
else
set codigo := new.usu_codigo;
end if;

insert into aud_auditoria(aud_data, aud_pes_codigo, aud_antes, aud_depois, aud_tabela, aud_operacao) values
(now(), codigo, concat_ws('-',
'Codigo: ', old.usu_codigo, 'Login: ', old.usu_login, 'Senha: ', old.usu_senha), concat_ws('-',

'Codigo: ', new.usu_codigo, 'Login: ', new.usu_login, 'Senha: ', new.usu_senha),'Usuario: ', 'update');

end |
DELIMITER ;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2015-06-25 13:20:05
-- Total time: 0:0:0:0:424 (d:h:m:s:ms)
