-- MySqlBackup.NET 2.0.8
-- Dump Time: 2015-06-18 17:12:13
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
-- Definition of ava_avaliacao
-- 

DROP TABLE IF EXISTS `ava_avaliacao`;
CREATE TABLE IF NOT EXISTS `ava_avaliacao` (
  `ava_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ava_nome` varchar(45) NOT NULL,
  `ava_tipo` varchar(45) NOT NULL,
  `ava_status` char(1) NOT NULL,
  `ava_anonimo` char(1) NOT NULL,
  PRIMARY KEY (`ava_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table ava_avaliacao
-- 

/*!40000 ALTER TABLE `ava_avaliacao` DISABLE KEYS */;
INSERT INTO `ava_avaliacao`(`ava_codigo`,`ava_nome`,`ava_tipo`,`ava_status`,`ava_anonimo`) VALUES
(1,'Avaliação Usuarios','90','1','0'),
(2,'Avaliacao Administradores','180','1','0'),
(3,'Avaliacao SAM','360','1','1'),
(4,'Avaliacao turma 4 ads','180','1','0');
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
  `ava_codigo` int(10) unsigned NOT NULL,
  `cri_codigo` int(10) unsigned NOT NULL,
  `cra_peso` double NOT NULL,
  PRIMARY KEY (`ava_codigo`,`cri_codigo`),
  KEY `cri_codigo` (`cri_codigo`),
  CONSTRAINT `ava_codigo` FOREIGN KEY (`ava_codigo`) REFERENCES `ava_avaliacao` (`ava_codigo`),
  CONSTRAINT `cri_codigo` FOREIGN KEY (`cri_codigo`) REFERENCES `cri_criterio` (`cri_codigo`)
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
  PRIMARY KEY (`cri_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table cri_criterio
-- 

/*!40000 ALTER TABLE `cri_criterio` DISABLE KEYS */;
INSERT INTO `cri_criterio`(`cri_codigo`,`cri_descricao`) VALUES
(1,'Conhecimento'),
(2,'Habilidade'),
(3,'Atitude'),
(4,'Fala'),
(5,'Apresentação'),
(6,'Companheirismo');
/*!40000 ALTER TABLE `cri_criterio` ENABLE KEYS */;

-- 
-- Definition of eqa_equipe_avaliacao
-- 

DROP TABLE IF EXISTS `eqa_equipe_avaliacao`;
CREATE TABLE IF NOT EXISTS `eqa_equipe_avaliacao` (
  `eqp_codigo` int(10) unsigned NOT NULL,
  `ava_codigo` int(10) unsigned NOT NULL,
  `res_codigo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`eqp_codigo`,`ava_codigo`),
  KEY `FK_eqa_equipe_avaliacao_1` (`res_codigo`),
  KEY `FK_eqa_equipe_avaliacao_2` (`ava_codigo`),
  CONSTRAINT `FK_eqa_equipe_avaliacao_1` FOREIGN KEY (`res_codigo`) REFERENCES `res_resposta` (`res_codigo`),
  CONSTRAINT `FK_eqa_equipe_avaliacao_2` FOREIGN KEY (`ava_codigo`) REFERENCES `ava_avaliacao` (`ava_codigo`),
  CONSTRAINT `FK_eqa_equipe_avaliacao_3` FOREIGN KEY (`eqp_codigo`) REFERENCES `eqp_equipe` (`eqp_codigo`)
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
  PRIMARY KEY (`eqp_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table eqp_equipe
-- 

/*!40000 ALTER TABLE `eqp_equipe` DISABLE KEYS */;
INSERT INTO `eqp_equipe`(`eqp_codigo`,`eqp_nome`,`eqp_descricao`) VALUES
(1,'Equipe ADM','Equipe Formada pelo grupo dos ADMS'),
(2,'Equipe USU','Equipes formada pelo Grupo dos USU'),
(3,'Equipe Sam','Equipe Sam'),
(4,'Equipe Cluster','Equipe formada pela turma tarde'),
(5,'Equipe Inter.','Segunda equipe de ads tarde');
/*!40000 ALTER TABLE `eqp_equipe` ENABLE KEYS */;

-- 
-- Definition of equ_equipe_usuario
-- 

DROP TABLE IF EXISTS `equ_equipe_usuario`;
CREATE TABLE IF NOT EXISTS `equ_equipe_usuario` (
  `equ_codigo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eqp_codigo` int(10) unsigned NOT NULL,
  `usu_codigo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`equ_codigo`),
  KEY `FK_equ_equipe_usuario_1` (`usu_codigo`),
  KEY `FK_equ_equipe_usuario_2` (`eqp_codigo`),
  CONSTRAINT `FK_equ_equipe_usuario_1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuario` (`usu_codigo`),
  CONSTRAINT `FK_equ_equipe_usuario_2` FOREIGN KEY (`eqp_codigo`) REFERENCES `eqp_equipe` (`eqp_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table equ_equipe_usuario
-- 

/*!40000 ALTER TABLE `equ_equipe_usuario` DISABLE KEYS */;
INSERT INTO `equ_equipe_usuario`(`equ_codigo`,`eqp_codigo`,`usu_codigo`) VALUES
(4,1,2),
(5,2,1),
(6,3,1),
(7,3,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`per_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table per_perfil
-- 

/*!40000 ALTER TABLE `per_perfil` DISABLE KEYS */;
INSERT INTO `per_perfil`(`per_codigo`,`per_descricao`) VALUES
(1,'Participante'),
(2,'Avaliador'),
(3,'Administrador Comum'),
(4,'Administrador Master');
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
  PRIMARY KEY (`pes_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table pes_pessoa
-- 

/*!40000 ALTER TABLE `pes_pessoa` DISABLE KEYS */;
INSERT INTO `pes_pessoa`(`pes_codigo`,`pes_nome`,`pes_rg`,`pes_cpf`,`pes_telefone`,`pes_celular`,`pes_email`,`pes_data_nascimento`,`pes_rua`,`pes_numero`,`pes_cep`,`pes_bairro`,`pes_cidade`,`pes_estado`,`pes_ra`) VALUES
(1,'Samuel da Silva','48.996.897-0','123.445.678-91','(12)3637-0000','(12)99123-4872','projetointersam@outlook.com','1993-03-15 00:00:00','Joao Pedro','52','12500000','Centro','Guaratinguetá','São Paulo','1014121'),
(2,'Rafael de Oliveira Campos Bassanello','12.345.678-9','987.654.321.01','(12)3637-0001','(12)98123-4567','rafaelbassanello@gmail.com','1996-06-13 00:00:00','02','0010','12445002','Ponte Nova','Guaratingueta','São Paulo','1310501'),
(3,'João Érique Tourinho Amorim','42.222.333-2','876.987.345-56','(12)3132-2896','(12)99137-3002','joaoerique@bol.com.br','1990-02-18 00:00:00','03','123','12500121','Centro','Guaratinguetá','São Paulo','1220275'),
(4,'Maria Julia de Oliveira','42.517.256-4','432.835.708-50','(12)3132-7466','(12)98163-2112','majuoliveira95@gmail.com','1995-01-28 00:00:00','Ari Barroso','32','12456123','Pedregullho','Guaratinguetá','São Paulo','1310793'),
(5,'Gabriele Fernanda de Almeida Gonçalves','41.854.678-2','421.441.548-56','(12)3637-2017','(12)98137-6955','gabriele.fernanda49@gmail.com','1993-10-25 00:00:00','14','66','12446150','Mantiqueira','Pindamonhangaba','São Paulo','1310185'),
(6,'Francisco Ribeiro Junior','41.782.700-0','123.445.678-91','(12)3637-0000','(12)99123-4567','f.ribeiro0512@gmail.com','1994-05-12 00:00:00','01','01','12600000','Moreira César','Pindamonhangaba','São Paulo','1310434'),
(7,'Damião','59.899.654.12','445.206.588-02','','','damião@gmail.com','1995-01-19 00:00:00','','','','','','Selecione...','1114121'),
(8,'Damião','59.899.654.12','445.206.588-02','','','damião@gmail.com','1995-01-19 00:00:00','','','','','','Selecione...','1114121'),
(9,'Lucas','4955869912','445.256.899-02','','','lucaz@gmail.com','1995-04-19 00:00:00','','','','','','Selecione...','1220501'),
(10,'Lucas','4955869912','445.256.899-02','','','lucaz@gmail.com','1995-04-19 00:00:00','','','','','','Selecione...','1220501');
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
(7,1),
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
(8,3),
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
  PRIMARY KEY (`res_codigo`),
  KEY `FK_res_resposta_1` (`usu_codigo`),
  KEY `FK_res_resposta_2` (`usu_codigo1`),
  KEY `FK_res_resposta_3` (`ava_codigo`),
  KEY `FK_res_resposta_4` (`cri_codigo`),
  CONSTRAINT `FK_res_resposta_1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuario` (`usu_codigo`),
  CONSTRAINT `FK_res_resposta_2` FOREIGN KEY (`usu_codigo1`) REFERENCES `usu_usuario` (`usu_codigo`),
  CONSTRAINT `FK_res_resposta_3` FOREIGN KEY (`ava_codigo`) REFERENCES `ava_avaliacao` (`ava_codigo`),
  CONSTRAINT `FK_res_resposta_4` FOREIGN KEY (`cri_codigo`) REFERENCES `cri_criterio` (`cri_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`usu_codigo`),
  KEY `pes_codigo` (`pes_codigo`),
  CONSTRAINT `pes_codigo` FOREIGN KEY (`pes_codigo`) REFERENCES `pes_pessoa` (`pes_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table usu_usuario
-- 

/*!40000 ALTER TABLE `usu_usuario` DISABLE KEYS */;
INSERT INTO `usu_usuario`(`usu_codigo`,`usu_login`,`usu_senha`,`usu_status`,`usu_data_cadastro`,`usu_data_acesso`,`pes_codigo`) VALUES
(1,'1014121','1XU1UP/BUZQlKmHzWV9uTJx1zCqDiGSisexibqrC0GRdD5EY20c4by0sX5PaGjPoYC7SITwzLj/oAbqFBY1HCQ==',1,'2015-04-05 00:00:00','2015-06-18 17:04:12',1),
(2,'1310501','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-05 00:00:00',NULL,2),
(3,'1220275','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-14 00:00:00',NULL,3),
(4,'1310793','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-14 00:00:00',NULL,4),
(5,'1310185','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-14 00:00:00',NULL,5),
(6,'1310434','ujJTh2rta8ItSm/1PYQGxq2GQZXtFEq1yHYhtsIztUi66uaVbfNG7IwX9eoQ817jy8UUeX7X3dMUVGTioLq0Ew==',1,'2015-04-05 00:00:00',NULL,6),
(7,'1114121','G9yo3VVbUtLtpkumnVTolFJVgpf4UiuYWxdVOeuJsYfuJhYUsxHMLFRbEZOgv64m5wxot7eaER5yPLt9XrvhFQ==',1,'2015-06-18 00:00:00','2015-06-18 16:50:41',7),
(8,'1220501','+fDPSG5AnHs3sXsdFSbisRhCfPJLQgs5/J5rp6FqpmpS54WdkdF9MwBi9Jnp1bJtMPXHbVrFJohvEewT+x8rPQ==',1,'2015-06-18 00:00:00',NULL,9);
/*!40000 ALTER TABLE `usu_usuario` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2015-06-18 17:12:14
-- Total time: 0:0:0:0:683 (d:h:m:s:ms)
