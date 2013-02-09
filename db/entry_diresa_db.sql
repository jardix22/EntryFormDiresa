/*
Navicat MySQL Data Transfer

Source Server         : home
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : convocatoria

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-02-09 02:06:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `establishments`
-- ----------------------------
DROP TABLE IF EXISTS `establishments`;
CREATE TABLE `establishments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `network_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_establishments_networks1_idx` (`network_id`),
  CONSTRAINT `fk_establishments_networks1` FOREIGN KEY (`network_id`) REFERENCES `networks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of establishments
-- ----------------------------
INSERT INTO `establishments` VALUES ('81', 'C.S. CENTRO DE SALUD ALIANZA', '1');
INSERT INTO `establishments` VALUES ('82', 'C.S. CENTRO DE SALUD SAN JOSE', '1');
INSERT INTO `establishments` VALUES ('83', 'P.S. MATARO CHICO', '1');
INSERT INTO `establishments` VALUES ('84', 'P.S. PUESTO DE SALUD HANAJQUIA', '1');
INSERT INTO `establishments` VALUES ('85', 'P.S. PUESTO DE SALUD YAJCHATA', '1');
INSERT INTO `establishments` VALUES ('86', 'P.S. SAN JUAN SALINAS', '1');
INSERT INTO `establishments` VALUES ('87', 'P.S. VIRGEN DEL ROSARIO SOLLOCOTA', '1');
INSERT INTO `establishments` VALUES ('88', 'C.S. ARAPA', '1');
INSERT INTO `establishments` VALUES ('89', 'P.S. CURAYLLU', '1');
INSERT INTO `establishments` VALUES ('90', 'P.S. IMPUCHI', '1');
INSERT INTO `establishments` VALUES ('91', 'C.S. ASILLO', '1');
INSERT INTO `establishments` VALUES ('92', 'C.S. PROGRESO', '1');
INSERT INTO `establishments` VALUES ('93', 'P.S. ûAUPAPAMPA', '1');
INSERT INTO `establishments` VALUES ('94', 'C.S. CHUPA', '1');
INSERT INTO `establishments` VALUES ('95', 'P.S. CHOCCO', '1');
INSERT INTO `establishments` VALUES ('96', 'P.S. CHUCAHUACAS', '1');
INSERT INTO `establishments` VALUES ('97', 'P.S. PUNCUCHUPA', '1');
INSERT INTO `establishments` VALUES ('98', 'HOSP. CARLOS CORNEJO R. (AZANGARO)', '1');
INSERT INTO `establishments` VALUES ('99', 'C.S. J.D.CHOQUEHUANCA', '1');
INSERT INTO `establishments` VALUES ('100', 'P.S. CHIJCHIPANI', '1');
INSERT INTO `establishments` VALUES ('101', 'P.S. LLALLAHUA', '1');
INSERT INTO `establishments` VALUES ('102', 'P.S. SANTIAGO DE PUPUJA', '1');
INSERT INTO `establishments` VALUES ('103', 'P.S. TIRAPATA', '1');
INSERT INTO `establishments` VALUES ('104', 'C.S. MUÑANI', '1');
INSERT INTO `establishments` VALUES ('105', 'P.S. MORORCO', '1');
INSERT INTO `establishments` VALUES ('106', 'C.S. SAN ANTON', '1');
INSERT INTO `establishments` VALUES ('107', 'P.S. ANTAUTA', '1');
INSERT INTO `establishments` VALUES ('108', 'P.S. CAûICUTO', '1');
INSERT INTO `establishments` VALUES ('109', 'P.S. LARIMAYO', '1');
INSERT INTO `establishments` VALUES ('110', 'P.S. SAN ISIDRO', '1');
INSERT INTO `establishments` VALUES ('111', 'C.S. AYAPATA', '2');
INSERT INTO `establishments` VALUES ('112', 'P.S. KANA', '2');
INSERT INTO `establishments` VALUES ('113', 'P.S. PUESTO DE ESCALERA', '2');
INSERT INTO `establishments` VALUES ('114', 'P.S. PUESTO DE SALUD ITUATA', '2');
INSERT INTO `establishments` VALUES ('115', 'P.S. TAMBILLO', '2');
INSERT INTO `establishments` VALUES ('116', 'P.S. TAYPE', '2');
INSERT INTO `establishments` VALUES ('117', 'HOSP. SAN MARTIN DE P. (MACUSANI)', '2');
INSERT INTO `establishments` VALUES ('118', 'C.S. ISIVILLA', '2');
INSERT INTO `establishments` VALUES ('119', 'P.S. AYMAÐA', '2');
INSERT INTO `establishments` VALUES ('120', 'P.S. AZAROMA', '2');
INSERT INTO `establishments` VALUES ('121', 'P.S. CHACACONIZA', '2');
INSERT INTO `establishments` VALUES ('122', 'P.S. CHACANEQUE', '2');
INSERT INTO `establishments` VALUES ('123', 'P.S. CORANI', '2');
INSERT INTO `establishments` VALUES ('124', 'P.S. PUMACHANCA', '2');
INSERT INTO `establishments` VALUES ('125', 'P.S. QUELCAYA', '2');
INSERT INTO `establishments` VALUES ('126', 'P.S. TANTAMACO', '2');
INSERT INTO `establishments` VALUES ('127', 'C.S. AJOYANI', '2');
INSERT INTO `establishments` VALUES ('128', 'C.S. OLLACHEA', '2');
INSERT INTO `establishments` VALUES ('129', 'P.S. PACAJE', '2');
INSERT INTO `establishments` VALUES ('130', 'P.S. UPINA', '2');
INSERT INTO `establishments` VALUES ('131', 'C.S. SAN GABAN', '2');
INSERT INTO `establishments` VALUES ('132', 'P.S. CUESTA BLANCA', '2');
INSERT INTO `establishments` VALUES ('133', 'P.S. LECHEMAYO', '2');
INSERT INTO `establishments` VALUES ('134', 'P.S. LOROMAYO', '2');
INSERT INTO `establishments` VALUES ('135', 'P.S. PUERTO MANOA', '2');
INSERT INTO `establishments` VALUES ('136', 'C.S. CAMICACHI', '3');
INSERT INTO `establishments` VALUES ('137', 'P.S. CHALLAPUJO SUYO', '3');
INSERT INTO `establishments` VALUES ('138', 'P.S. PACUNCANI CALLATA', '3');
INSERT INTO `establishments` VALUES ('139', 'P.S. PHARATA', '3');
INSERT INTO `establishments` VALUES ('140', 'P.S. ROSACANI', '3');
INSERT INTO `establishments` VALUES ('141', 'P.S. SANTA ROSA DE HUAYLLATA', '3');
INSERT INTO `establishments` VALUES ('142', 'C.S. CHECCA', '3');
INSERT INTO `establishments` VALUES ('143', 'C.S. CHIJICHAYA', '3');
INSERT INTO `establishments` VALUES ('144', 'P.S. CANGALLI', '3');
INSERT INTO `establishments` VALUES ('145', 'P.S. CHURO LOPEZ', '3');
INSERT INTO `establishments` VALUES ('146', 'P.S. CORARACA', '3');
INSERT INTO `establishments` VALUES ('147', 'P.S. JACHOCO HUARACO', '3');
INSERT INTO `establishments` VALUES ('148', 'P.S. PACO RIZALAZO', '3');
INSERT INTO `establishments` VALUES ('149', 'P.S. SIRAYA', '3');
INSERT INTO `establishments` VALUES ('150', 'P.S. ULLACACHI', '3');
INSERT INTO `establishments` VALUES ('151', 'HOSP. ILAVE', '3');
INSERT INTO `establishments` VALUES ('152', 'C.S. CONDURIRI', '3');
INSERT INTO `establishments` VALUES ('153', 'C.S. MAZOCRUZ', '3');
INSERT INTO `establishments` VALUES ('154', 'P.S. CAPASO', '3');
INSERT INTO `establishments` VALUES ('155', 'P.S. CHICHILLAPI', '3');
INSERT INTO `establishments` VALUES ('156', 'P.S. CHUA', '3');
INSERT INTO `establishments` VALUES ('157', 'P.S. HUANACAMAYA', '3');
INSERT INTO `establishments` VALUES ('158', 'P.S. PROVIDENCIA', '3');
INSERT INTO `establishments` VALUES ('159', 'P.S. PUNTA PERDIDA', '3');
INSERT INTO `establishments` VALUES ('160', 'P.S. ROSARIO ALTO ANCOMARCA', '3');
INSERT INTO `establishments` VALUES ('161', 'P.S. SALES GRANDE', '3');
INSERT INTO `establishments` VALUES ('162', 'P.S. SANTA ROSA DE COLLAO', '3');
INSERT INTO `establishments` VALUES ('163', 'P.S. TUPALA', '3');
INSERT INTO `establishments` VALUES ('164', 'P.S. VILUTA', '3');
INSERT INTO `establishments` VALUES ('165', 'C.S. CENTRO DE SALUD METROPOLITANO ILAVE', '3');
INSERT INTO `establishments` VALUES ('166', 'C.S. MULLACONTIHUECO', '3');
INSERT INTO `establishments` VALUES ('167', 'P.S. ANCOAMAYA', '3');
INSERT INTO `establishments` VALUES ('168', 'P.S. CHILACOLLO', '3');
INSERT INTO `establishments` VALUES ('169', 'P.S. CHUCARAYA', '3');
INSERT INTO `establishments` VALUES ('170', 'P.S. OCOûA', '3');
INSERT INTO `establishments` VALUES ('171', 'C.S. CHIPANA', '3');
INSERT INTO `establishments` VALUES ('172', 'C.S. PILCUYO', '3');
INSERT INTO `establishments` VALUES ('173', 'P.S. ACCASO', '3');
INSERT INTO `establishments` VALUES ('174', 'P.S. CACHIPUCARA', '3');
INSERT INTO `establishments` VALUES ('175', 'P.S. MAQUERCOTA', '3');
INSERT INTO `establishments` VALUES ('176', 'P.S. MARCUYO', '3');
INSERT INTO `establishments` VALUES ('177', 'P.S. SAN PEDRO DE HUAYLLATA', '3');
INSERT INTO `establishments` VALUES ('178', 'P.S. SARAPI ARROYO', '3');
INSERT INTO `establishments` VALUES ('179', 'P.S. TARACANCAMAYA', '3');
INSERT INTO `establishments` VALUES ('180', 'C.S. CENTRO DE SALUD DESAGUADERO', '4');
INSERT INTO `establishments` VALUES ('181', 'C.S. HUACULLANI', '4');
INSERT INTO `establishments` VALUES ('182', 'C.S. KELLUYO', '4');
INSERT INTO `establishments` VALUES ('183', 'C.S. PIZACOMA', '4');
INSERT INTO `establishments` VALUES ('184', 'P.S. ALTO LLALLAGUA', '4');
INSERT INTO `establishments` VALUES ('185', 'P.S. BAJO  LLALLAHUA', '4');
INSERT INTO `establishments` VALUES ('186', 'P.S. CALLAZA', '4');
INSERT INTO `establishments` VALUES ('187', 'P.S. CHACOCOLLO', '4');
INSERT INTO `establishments` VALUES ('188', 'P.S. PUESTO DE CARANCAS', '4');
INSERT INTO `establishments` VALUES ('189', 'P.S. ROSARIO DE SORAPA', '4');
INSERT INTO `establishments` VALUES ('190', 'P.S. SANTA CRUZ AYRIHUAS', '4');
INSERT INTO `establishments` VALUES ('191', 'P.S. TOTOROMA', '4');
INSERT INTO `establishments` VALUES ('192', 'P.S. TULACOLLO', '4');
INSERT INTO `establishments` VALUES ('193', 'HOSP. JULI', '4');
INSERT INTO `establishments` VALUES ('194', 'C.S. CASPA CENTRAL', '4');
INSERT INTO `establishments` VALUES ('195', 'C.S. PUEBLO LIBRE', '4');
INSERT INTO `establishments` VALUES ('196', 'P.S. CALLACAMI', '4');
INSERT INTO `establishments` VALUES ('197', 'P.S. CASIMUYO', '4');
INSERT INTO `establishments` VALUES ('198', 'P.S. CCAJJE', '4');
INSERT INTO `establishments` VALUES ('199', 'P.S. CHALLAPAMPA', '4');
INSERT INTO `establishments` VALUES ('200', 'P.S. COLLPAJAHUIRA', '4');
INSERT INTO `establishments` VALUES ('201', 'P.S. KANKORA', '4');
INSERT INTO `establishments` VALUES ('202', 'P.S. MOLINO', '4');
INSERT INTO `establishments` VALUES ('203', 'P.S. PASIRI', '4');
INSERT INTO `establishments` VALUES ('204', 'P.S. QUERUMA', '4');
INSERT INTO `establishments` VALUES ('205', 'P.S. SAN JUAN DE YARIHUANI', '4');
INSERT INTO `establishments` VALUES ('206', 'P.S. SANTIAGO MUCHO CHAMBILLA', '4');
INSERT INTO `establishments` VALUES ('207', 'C.S. AMPATIRI', '4');
INSERT INTO `establishments` VALUES ('208', 'C.S. POMATA', '4');
INSERT INTO `establishments` VALUES ('209', 'P.S. BATALLA', '4');
INSERT INTO `establishments` VALUES ('210', 'P.S. COLLINI', '4');
INSERT INTO `establishments` VALUES ('211', 'P.S. HUAPACA SAN MIGUEL', '4');
INSERT INTO `establishments` VALUES ('212', 'P.S. LAMPA GRANDE', '4');
INSERT INTO `establishments` VALUES ('213', 'P.S. TAMBILLO', '4');
INSERT INTO `establishments` VALUES ('214', 'P.S. TUQUINA', '4');
INSERT INTO `establishments` VALUES ('215', 'C.S. ZEPITA', '4');
INSERT INTO `establishments` VALUES ('216', 'P.S. ALTO AYRIHUAS', '4');
INSERT INTO `establishments` VALUES ('217', 'P.S. ALTO PATACOLLO', '4');
INSERT INTO `establishments` VALUES ('218', 'P.S. ALTO PAVITA', '4');
INSERT INTO `establishments` VALUES ('219', 'P.S. ANCOPUTO', '4');
INSERT INTO `establishments` VALUES ('220', 'P.S. BAJO PAVITA', '4');
INSERT INTO `establishments` VALUES ('221', 'P.S. IZANI', '4');
INSERT INTO `establishments` VALUES ('222', 'P.S. MOLINO KAPIA', '4');
INSERT INTO `establishments` VALUES ('223', 'P.S. PARCO PATACOLLO', '4');
INSERT INTO `establishments` VALUES ('224', 'P.S. SICUYANI', '4');
INSERT INTO `establishments` VALUES ('225', 'P.S. TASAPA PATACOLLO', '4');
INSERT INTO `establishments` VALUES ('226', 'C.S. ANANEA', '5');
INSERT INTO `establishments` VALUES ('227', 'C.S. RINCONADA', '5');
INSERT INTO `establishments` VALUES ('228', 'P.S. LUNAR DE ORO', '5');
INSERT INTO `establishments` VALUES ('229', 'P.S. TRAPICHE', '5');
INSERT INTO `establishments` VALUES ('230', 'P.S. UNTUCA', '5');
INSERT INTO `establishments` VALUES ('231', 'C.S. COJATA', '5');
INSERT INTO `establishments` VALUES ('232', 'P.S. CAYLLOMA', '5');
INSERT INTO `establishments` VALUES ('233', 'P.S. HUANCASAYA', '5');
INSERT INTO `establishments` VALUES ('234', 'P.S. SINA', '5');
INSERT INTO `establishments` VALUES ('235', 'C.S. CONIMA', '5');
INSERT INTO `establishments` VALUES ('236', 'P.S. AYNACHA HUATASANI', '5');
INSERT INTO `establishments` VALUES ('237', 'P.S. CAMBRIA', '5');
INSERT INTO `establishments` VALUES ('238', 'P.S. CUPISAYA', '5');
INSERT INTO `establishments` VALUES ('239', 'P.S. ISLA SOTO', '5');
INSERT INTO `establishments` VALUES ('240', 'P.S. SUCUNI JAPISI', '5');
INSERT INTO `establishments` VALUES ('241', 'P.S. TILALI', '5');
INSERT INTO `establishments` VALUES ('242', 'HOSP. LUCIO ALDAZABAL (HUANCANE)', '5');
INSERT INTO `establishments` VALUES ('243', 'P.S. ACOCOLLO', '5');
INSERT INTO `establishments` VALUES ('244', 'P.S. COHASIA', '5');
INSERT INTO `establishments` VALUES ('245', 'P.S. COTAPATA', '5');
INSERT INTO `establishments` VALUES ('246', 'P.S. CUCHOCHACAMARCA', '5');
INSERT INTO `establishments` VALUES ('247', 'P.S. CUYURAYA', '5');
INSERT INTO `establishments` VALUES ('248', 'P.S. HUANCHO', '5');
INSERT INTO `establishments` VALUES ('249', 'P.S. HUARISANI', '5');
INSERT INTO `establishments` VALUES ('250', 'P.S. HUATASANI', '5');
INSERT INTO `establishments` VALUES ('251', 'P.S. INCHUPALLA', '5');
INSERT INTO `establishments` VALUES ('252', 'P.S. MUNAYPA', '5');
INSERT INTO `establishments` VALUES ('253', 'P.S. PEDRO VILCAPAZA', '5');
INSERT INTO `establishments` VALUES ('254', 'P.S. TEJENA PATA', '5');
INSERT INTO `establishments` VALUES ('255', 'P.S. VISCACHANI', '5');
INSERT INTO `establishments` VALUES ('256', 'C.S. MOHO', '5');
INSERT INTO `establishments` VALUES ('257', 'P.S. HUAYRAPATA', '5');
INSERT INTO `establishments` VALUES ('258', 'P.S. ISLA SOTO', '5');
INSERT INTO `establishments` VALUES ('259', 'P.S. JACHAJAA', '5');
INSERT INTO `establishments` VALUES ('260', 'P.S. JACHAPARU', '5');
INSERT INTO `establishments` VALUES ('261', 'P.S. NINANTAYA', '5');
INSERT INTO `establishments` VALUES ('262', 'P.S. OCCOPAMPA', '5');
INSERT INTO `establishments` VALUES ('263', 'P.S. QUELLAHUYO POMAOCA', '5');
INSERT INTO `establishments` VALUES ('264', 'P.S. SULLCA', '5');
INSERT INTO `establishments` VALUES ('265', 'P.S. TARUCANI', '5');
INSERT INTO `establishments` VALUES ('266', 'P.S. UMUCHI', '5');
INSERT INTO `establishments` VALUES ('267', 'P.S. VILLA JACANTAYA', '5');
INSERT INTO `establishments` VALUES ('268', 'C.S. PUTINA', '5');
INSERT INTO `establishments` VALUES ('269', 'P.S. HUAYLLAPATA', '5');
INSERT INTO `establishments` VALUES ('270', 'P.S. JANANSAYA', '5');
INSERT INTO `establishments` VALUES ('271', 'P.S. PICOTANI', '5');
INSERT INTO `establishments` VALUES ('272', 'P.S. QUILCAPUNCO', '5');
INSERT INTO `establishments` VALUES ('273', 'P.S. SANTA ANA TARUCANI', '5');
INSERT INTO `establishments` VALUES ('274', 'C.S. ROSASPATA', '5');
INSERT INTO `establishments` VALUES ('275', 'P.S. HALLA ALTOS GRANDE', '5');
INSERT INTO `establishments` VALUES ('276', 'P.S. HUAYLLACUYO', '5');
INSERT INTO `establishments` VALUES ('277', 'P.S. OAPA', '5');
INSERT INTO `establishments` VALUES ('278', 'P.S. TICANI CARIQUITA', '5');
INSERT INTO `establishments` VALUES ('279', 'C.S. VILQUECHICO', '5');
INSERT INTO `establishments` VALUES ('280', 'P.S. ALTO CAZADOR', '5');
INSERT INTO `establishments` VALUES ('281', 'P.S. COTACUCHO', '5');
INSERT INTO `establishments` VALUES ('282', 'P.S. HUALLATIRI', '5');
INSERT INTO `establishments` VALUES ('283', 'P.S. HUILACOLLO', '5');
INSERT INTO `establishments` VALUES ('284', 'P.S. SAN JUAN QUISHUARANI', '5');
INSERT INTO `establishments` VALUES ('285', 'P.S. SICTA', '5');
INSERT INTO `establishments` VALUES ('286', 'P.S. SISINAHUYO', '5');
INSERT INTO `establishments` VALUES ('287', 'P.S. SOLITARIO', '5');
INSERT INTO `establishments` VALUES ('288', 'P.S. TIQUI TIQUI', '5');
INSERT INTO `establishments` VALUES ('289', 'P.S. YAPUTIRA', '5');
INSERT INTO `establishments` VALUES ('290', 'C.S. CABANILLA', '6');
INSERT INTO `establishments` VALUES ('291', 'P.S. NESTOR CACERES', '6');
INSERT INTO `establishments` VALUES ('292', 'P.S. QUINSACHATA', '6');
INSERT INTO `establishments` VALUES ('293', 'HOSP. ANTONIO BARRIONUEVO (LAMPA)', '6');
INSERT INTO `establishments` VALUES ('294', 'P.S. CHAÐOCAHUA', '6');
INSERT INTO `establishments` VALUES ('295', 'P.S. HUAYTA CENTRAL', '6');
INSERT INTO `establishments` VALUES ('296', 'P.S. HUAYTA TUPAC AMARU', '6');
INSERT INTO `establishments` VALUES ('297', 'P.S. QUELLOQUELLO', '6');
INSERT INTO `establishments` VALUES ('298', 'C.S. PALCA', '6');
INSERT INTO `establishments` VALUES ('299', 'P.S. CHIVAY', '6');
INSERT INTO `establishments` VALUES ('300', 'P.S. RIVERA COYLATA', '6');
INSERT INTO `establishments` VALUES ('301', 'P.S. VILAVILA', '6');
INSERT INTO `establishments` VALUES ('302', 'C.S. PARATIA', '6');
INSERT INTO `establishments` VALUES ('303', 'C.S. SANTA LUCIA', '6');
INSERT INTO `establishments` VALUES ('304', 'P.S. CHILAHUITO', '6');
INSERT INTO `establishments` VALUES ('305', 'P.S. LAGUNILLAS', '6');
INSERT INTO `establishments` VALUES ('306', 'P.S. PINAYA', '6');
INSERT INTO `establishments` VALUES ('307', 'C.S. COAZA', '7');
INSERT INTO `establishments` VALUES ('308', 'C.S. CONO NORTE', '7');
INSERT INTO `establishments` VALUES ('309', 'C.S. LLALLI', '7');
INSERT INTO `establishments` VALUES ('310', 'C.S. MACARI', '7');
INSERT INTO `establishments` VALUES ('311', 'C.S. PUCARA', '7');
INSERT INTO `establishments` VALUES ('312', 'C.S. SANTA ROSA', '7');
INSERT INTO `establishments` VALUES ('313', 'P.S. ACLLAMAYO', '7');
INSERT INTO `establishments` VALUES ('314', 'P.S. ALTO COLLANA', '7');
INSERT INTO `establishments` VALUES ('315', 'P.S. ANGARA ALTO', '7');
INSERT INTO `establishments` VALUES ('316', 'P.S. BAJO COLLANA', '7');
INSERT INTO `establishments` VALUES ('317', 'P.S. BALSAPATA', '7');
INSERT INTO `establishments` VALUES ('318', 'P.S. CAYARANI', '7');
INSERT INTO `establishments` VALUES ('319', 'P.S. CHIJNAYA', '7');
INSERT INTO `establishments` VALUES ('320', 'P.S. CHOQUESANI', '7');
INSERT INTO `establishments` VALUES ('321', 'P.S. CHUQUIBAMBILLA', '7');
INSERT INTO `establishments` VALUES ('322', 'P.S. COLQUE', '7');
INSERT INTO `establishments` VALUES ('323', 'P.S. CONDORMILLA ALTO', '7');
INSERT INTO `establishments` VALUES ('324', 'P.S. CONDORMILLA BAJO', '7');
INSERT INTO `establishments` VALUES ('325', 'P.S. CUPI', '7');
INSERT INTO `establishments` VALUES ('326', 'P.S. ESQUENA', '7');
INSERT INTO `establishments` VALUES ('327', 'P.S. HUAMANRURO', '7');
INSERT INTO `establishments` VALUES ('328', 'P.S. ICHUCAHUA', '7');
INSERT INTO `establishments` VALUES ('329', 'P.S. JANCHALLANI', '7');
INSERT INTO `establishments` VALUES ('330', 'P.S. KUNURANA ALTO', '7');
INSERT INTO `establishments` VALUES ('331', 'P.S. KUNURANA BAJO', '7');
INSERT INTO `establishments` VALUES ('332', 'P.S. NINA CORANI', '7');
INSERT INTO `establishments` VALUES ('333', 'P.S. OCUVIRI', '7');
INSERT INTO `establishments` VALUES ('334', 'P.S. PARINA', '7');
INSERT INTO `establishments` VALUES ('335', 'P.S. PICCHU', '7');
INSERT INTO `establishments` VALUES ('336', 'P.S. PUEBLO LIBRE', '7');
INSERT INTO `establishments` VALUES ('337', 'P.S. QUISHUARA', '7');
INSERT INTO `establishments` VALUES ('338', 'P.S. SANTA CRUZ', '7');
INSERT INTO `establishments` VALUES ('339', 'P.S. SELQUE', '7');
INSERT INTO `establishments` VALUES ('340', 'P.S. SUNIMARCA', '7');
INSERT INTO `establishments` VALUES ('341', 'P.S. TUNI GRANDE', '7');
INSERT INTO `establishments` VALUES ('342', 'P.S. UCHUHUMA', '7');
INSERT INTO `establishments` VALUES ('343', 'P.S. UMACHIRI', '7');
INSERT INTO `establishments` VALUES ('344', 'P.S. UNION COLLANA', '7');
INSERT INTO `establishments` VALUES ('345', 'P.S. VILCAMARCA', '7');
INSERT INTO `establishments` VALUES ('346', 'C.S. CRUCERO', '7');
INSERT INTO `establishments` VALUES ('347', 'C.S. PATAMBUCO', '7');
INSERT INTO `establishments` VALUES ('348', 'C.S. PHARA', '7');
INSERT INTO `establishments` VALUES ('349', 'C.S. POTONI', '7');
INSERT INTO `establishments` VALUES ('350', 'C.S. USICAYOS', '7');
INSERT INTO `establishments` VALUES ('351', 'P.S. APOROMA', '7');
INSERT INTO `establishments` VALUES ('352', 'P.S. CAPILLA PAMPA', '7');
INSERT INTO `establishments` VALUES ('353', 'P.S. CARLOS GUTIERREZ', '7');
INSERT INTO `establishments` VALUES ('354', 'P.S. CHEJANI', '7');
INSERT INTO `establishments` VALUES ('355', 'P.S. HUANCASAYANI', '7');
INSERT INTO `establishments` VALUES ('356', 'P.S. LIMBANI', '7');
INSERT INTO `establishments` VALUES ('357', 'P.S. ORURO', '7');
INSERT INTO `establishments` VALUES ('358', 'P.S. OSCOROQUE', '7');
INSERT INTO `establishments` VALUES ('359', 'P.S. PACOPACUNI', '7');
INSERT INTO `establishments` VALUES ('360', 'P.S. PUNA AYLLU', '7');
INSERT INTO `establishments` VALUES ('361', 'P.S. SALLACONI', '7');
INSERT INTO `establishments` VALUES ('362', 'HOSP. SAN JUAN DE DIOS (AYAVARI)', '7');
INSERT INTO `establishments` VALUES ('363', 'C.S. NUûOA', '7');
INSERT INTO `establishments` VALUES ('364', 'C.S. ORURILLO', '7');
INSERT INTO `establishments` VALUES ('365', 'P.S. CANGALLI PICHACANI', '7');
INSERT INTO `establishments` VALUES ('366', 'P.S. CHIRIUNO', '7');
INSERT INTO `establishments` VALUES ('367', 'P.S. HUAYCHO', '7');
INSERT INTO `establishments` VALUES ('368', 'P.S. PASANACOLLO', '7');
INSERT INTO `establishments` VALUES ('369', 'P.S. PUCARAPATA', '7');
INSERT INTO `establishments` VALUES ('370', 'C.S. ACORA', '8');
INSERT INTO `establishments` VALUES ('371', 'C.S. CHUCUITO', '8');
INSERT INTO `establishments` VALUES ('372', 'C.S. CHURO', '8');
INSERT INTO `establishments` VALUES ('373', 'P.S. AGUAS CALIENTES', '8');
INSERT INTO `establishments` VALUES ('374', 'P.S. AMPARANI', '8');
INSERT INTO `establishments` VALUES ('375', 'P.S. CAMATA', '8');
INSERT INTO `establishments` VALUES ('376', 'P.S. CAPALLA', '8');
INSERT INTO `establishments` VALUES ('377', 'P.S. CARITAMAYA', '8');
INSERT INTO `establishments` VALUES ('378', 'P.S. CARUMAS', '8');
INSERT INTO `establishments` VALUES ('379', 'P.S. CCOTA', '8');
INSERT INTO `establishments` VALUES ('380', 'P.S. CHANCACHI', '8');
INSERT INTO `establishments` VALUES ('381', 'P.S. COCHIRAYA', '8');
INSERT INTO `establishments` VALUES ('382', 'P.S. COCOSANI', '8');
INSERT INTO `establishments` VALUES ('383', 'P.S. CUCHO ESQUEûA', '8');
INSERT INTO `establishments` VALUES ('384', 'P.S. CULTA', '8');
INSERT INTO `establishments` VALUES ('385', 'P.S. HUAYLLAHUECO', '8');
INSERT INTO `establishments` VALUES ('386', 'P.S. JAYU JAYU', '8');
INSERT INTO `establishments` VALUES ('387', 'P.S. LAQUI', '8');
INSERT INTO `establishments` VALUES ('388', 'P.S. LUQUINA CHICO', '8');
INSERT INTO `establishments` VALUES ('389', 'P.S. PALLALLA', '8');
INSERT INTO `establishments` VALUES ('390', 'P.S. PERKA', '8');
INSERT INTO `establishments` VALUES ('391', 'P.S. PLATERIA', '8');
INSERT INTO `establishments` VALUES ('392', 'P.S. SACUYO RIO GRANDE', '8');
INSERT INTO `establishments` VALUES ('393', 'P.S. SANTA ROSA YANAQUE', '8');
INSERT INTO `establishments` VALUES ('394', 'P.S. SULLCACATURA', '8');
INSERT INTO `establishments` VALUES ('395', 'P.S. TAIPISIRCA', '8');
INSERT INTO `establishments` VALUES ('396', 'P.S. THUNCO', '8');
INSERT INTO `establishments` VALUES ('397', 'P.S. TOTORANI', '8');
INSERT INTO `establishments` VALUES ('398', 'P.S. VILLASOCA', '8');
INSERT INTO `establishments` VALUES ('399', 'C.S. CAPACHICA', '8');
INSERT INTO `establishments` VALUES ('400', 'C.S. COATA', '8');
INSERT INTO `establishments` VALUES ('401', 'C.S. HUATTA', '8');
INSERT INTO `establishments` VALUES ('402', 'P.S. CCOTOS', '8');
INSERT INTO `establishments` VALUES ('403', 'P.S. ESCALLINI', '8');
INSERT INTO `establishments` VALUES ('404', 'P.S. ISAûURA', '8');
INSERT INTO `establishments` VALUES ('405', 'P.S. LLACHON', '8');
INSERT INTO `establishments` VALUES ('406', 'P.S. SORAZA', '8');
INSERT INTO `establishments` VALUES ('407', 'P.S. SUCASCO', '8');
INSERT INTO `establishments` VALUES ('408', 'P.S. YAPURA', '8');
INSERT INTO `establishments` VALUES ('409', 'C.S. LARAQUERI', '8');
INSERT INTO `establishments` VALUES ('410', 'P.S. CARUCAYA', '8');
INSERT INTO `establishments` VALUES ('411', 'P.S. COLLACACHI', '8');
INSERT INTO `establishments` VALUES ('412', 'P.S. HUACOCHULLO', '8');
INSERT INTO `establishments` VALUES ('413', 'P.S. HUARIJUYO', '8');
INSERT INTO `establishments` VALUES ('414', 'P.S. INCHUPALLA', '8');
INSERT INTO `establishments` VALUES ('415', 'P.S. JILATAMARCA', '8');
INSERT INTO `establishments` VALUES ('416', 'P.S. PICHACANI', '8');
INSERT INTO `establishments` VALUES ('417', 'P.S. TITIRI', '8');
INSERT INTO `establishments` VALUES ('418', 'C.S. MAÐAZO', '8');
INSERT INTO `establishments` VALUES ('419', 'P.S. CACHIPASCANA', '8');
INSERT INTO `establishments` VALUES ('420', 'P.S. CHARAMAYA', '8');
INSERT INTO `establishments` VALUES ('421', 'P.S. CONDORIRI', '8');
INSERT INTO `establishments` VALUES ('422', 'P.S. JUNCAL', '8');
INSERT INTO `establishments` VALUES ('423', 'P.S. SAN MIGUEL DE CARI CARI', '8');
INSERT INTO `establishments` VALUES ('424', 'P.S. TIQUILLACA', '8');
INSERT INTO `establishments` VALUES ('425', 'P.S. TOLAPALCA', '8');
INSERT INTO `establishments` VALUES ('426', 'P.S. VILQUE', '8');
INSERT INTO `establishments` VALUES ('427', 'P.S. YANARICO', '8');
INSERT INTO `establishments` VALUES ('428', 'C.S. 4 DE NOVIEMBRE', '8');
INSERT INTO `establishments` VALUES ('429', 'C.S. ATUNCOLLA', '8');
INSERT INTO `establishments` VALUES ('430', 'C.S. CHEJOûA', '8');
INSERT INTO `establishments` VALUES ('431', 'C.S. JOSE ANTONIO ENCINAS', '8');
INSERT INTO `establishments` VALUES ('432', 'C.S. METROPOLITANO PUNO', '8');
INSERT INTO `establishments` VALUES ('433', 'C.S. SIMON BOLIVAR', '8');
INSERT INTO `establishments` VALUES ('434', 'C.S. VALLECITO', '8');
INSERT INTO `establishments` VALUES ('435', 'P.S. AMANTANI', '8');
INSERT INTO `establishments` VALUES ('436', 'P.S. HABITH HUMANITY', '8');
INSERT INTO `establishments` VALUES ('437', 'P.S. HUERTA HUARAYA', '8');
INSERT INTO `establishments` VALUES ('438', 'P.S. ICHU', '8');
INSERT INTO `establishments` VALUES ('439', 'P.S. JALLIHUAYA', '8');
INSERT INTO `establishments` VALUES ('440', 'P.S. LLAVINI', '8');
INSERT INTO `establishments` VALUES ('441', 'P.S. LOS UROS', '8');
INSERT INTO `establishments` VALUES ('442', 'P.S. MARCA JILAPUNTA', '8');
INSERT INTO `establishments` VALUES ('443', 'P.S. PAUCARCOLLA', '8');
INSERT INTO `establishments` VALUES ('444', 'P.S. PUERTO PUNO', '8');
INSERT INTO `establishments` VALUES ('445', 'P.S. SALCEDO', '8');
INSERT INTO `establishments` VALUES ('446', 'P.S. TAQUILE', '8');
INSERT INTO `establishments` VALUES ('447', 'P.S. VIRGEN DE LA CANDELARIA', '8');
INSERT INTO `establishments` VALUES ('448', 'P.S. YANAMAYO', '8');
INSERT INTO `establishments` VALUES ('449', 'C.S. CARACOTO', '9');
INSERT INTO `establishments` VALUES ('450', 'C.S. CONO SUR', '9');
INSERT INTO `establishments` VALUES ('451', 'P.S. COLLANA CHILLORA', '9');
INSERT INTO `establishments` VALUES ('452', 'P.S. COLLANA JULIACA', '9');
INSERT INTO `establishments` VALUES ('453', 'P.S. NUEVE DE OCTUBRE', '9');
INSERT INTO `establishments` VALUES ('454', 'P.S. SUCHIS', '9');
INSERT INTO `establishments` VALUES ('455', 'P.S. TAPARACHI', '9');
INSERT INTO `establishments` VALUES ('456', 'HOSP. REG JULIACA (CARLOS MONGE M.)', '9');
INSERT INTO `establishments` VALUES ('457', 'C.S. CAMINACA', '9');
INSERT INTO `establishments` VALUES ('458', 'C.S. REVOLUCION', '9');
INSERT INTO `establishments` VALUES ('459', 'C.S. SAMAN', '9');
INSERT INTO `establishments` VALUES ('460', 'P.S. ACHAYA', '9');
INSERT INTO `establishments` VALUES ('461', 'P.S. CALAPUJA', '9');
INSERT INTO `establishments` VALUES ('462', 'P.S. CANCHI GRANDE', '9');
INSERT INTO `establishments` VALUES ('463', 'P.S. CHINGORA', '9');
INSERT INTO `establishments` VALUES ('464', 'P.S. CHUCARIPO', '9');
INSERT INTO `establishments` VALUES ('465', 'P.S. ESCURI', '9');
INSERT INTO `establishments` VALUES ('466', 'P.S. LARO', '9');
INSERT INTO `establishments` VALUES ('467', 'P.S. MARIANO MELGAR', '9');
INSERT INTO `establishments` VALUES ('468', 'P.S. MUNI GRANDE', '9');
INSERT INTO `establishments` VALUES ('469', 'P.S. NICASIO', '9');
INSERT INTO `establishments` VALUES ('470', 'P.S. QUEJON MOCCO', '9');
INSERT INTO `establishments` VALUES ('471', 'P.S. SAN PEDRO COLLANA', '9');
INSERT INTO `establishments` VALUES ('472', 'P.S. VILCAPATA', '9');
INSERT INTO `establishments` VALUES ('473', 'C.S. CABANA', '9');
INSERT INTO `establishments` VALUES ('474', 'C.S. CABANILLAS', '9');
INSERT INTO `establishments` VALUES ('475', 'C.S. JORGE CHAVEZ', '9');
INSERT INTO `establishments` VALUES ('476', 'C.S. SANTA ADRIANA', '9');
INSERT INTO `establishments` VALUES ('477', 'C.S. SANTA CATALINA', '9');
INSERT INTO `establishments` VALUES ('478', 'P.S. AYAGACHI', '9');
INSERT INTO `establishments` VALUES ('479', 'P.S. CENTRAL ESQUENA', '9');
INSERT INTO `establishments` VALUES ('480', 'P.S. CHOFERES', '9');
INSERT INTO `establishments` VALUES ('481', 'P.S. COLLANA CABANA', '9');
INSERT INTO `establishments` VALUES ('482', 'P.S. HUATAQUITA', '9');
INSERT INTO `establishments` VALUES ('483', 'P.S. P.S. ISLA', '9');
INSERT INTO `establishments` VALUES ('484', 'P.S. RANCHO PUCACHUPA', '9');
INSERT INTO `establishments` VALUES ('485', 'P.S. SANTA MARIA', '9');
INSERT INTO `establishments` VALUES ('486', 'P.S. TINCOPALCA', '9');
INSERT INTO `establishments` VALUES ('487', 'P.S. UNOCOLLA', '9');
INSERT INTO `establishments` VALUES ('488', 'C.S. PUSI', '9');
INSERT INTO `establishments` VALUES ('489', 'C.S. TARACO', '9');
INSERT INTO `establishments` VALUES ('490', 'P.S. HUANCOLLUSCO', '9');
INSERT INTO `establishments` VALUES ('491', 'P.S. JASANA GRANDE', '9');
INSERT INTO `establishments` VALUES ('492', 'P.S. JASANA POCCELLIN', '9');
INSERT INTO `establishments` VALUES ('493', 'P.S. MUNI CHICO', '9');
INSERT INTO `establishments` VALUES ('494', 'P.S. PUQUIS', '9');
INSERT INTO `establishments` VALUES ('495', 'P.S. RAMIS', '9');
INSERT INTO `establishments` VALUES ('496', 'C.S. CUYO CUYO', '10');
INSERT INTO `establishments` VALUES ('497', 'P.S. CCUMANI HUANCASAYANI', '10');
INSERT INTO `establishments` VALUES ('498', 'P.S. ORIENTAL', '10');
INSERT INTO `establishments` VALUES ('499', 'P.S. PUNA LAQUEQUE', '10');
INSERT INTO `establishments` VALUES ('500', 'HOSP. HOSPITAL SANDIA', '10');
INSERT INTO `establishments` VALUES ('501', 'C.S. MASIAPO', '10');
INSERT INTO `establishments` VALUES ('502', 'C.S. QUIQUIRA', '10');
INSERT INTO `establishments` VALUES ('503', 'P.S. ISILLUMA', '10');
INSERT INTO `establishments` VALUES ('504', 'P.S. MANCOARI', '10');
INSERT INTO `establishments` VALUES ('505', 'P.S. PACAYSUIZO', '10');
INSERT INTO `establishments` VALUES ('506', 'P.S. PAMPA YANAMAYO', '10');
INSERT INTO `establishments` VALUES ('507', 'C.S. PUTINA PUNCO', '10');
INSERT INTO `establishments` VALUES ('508', 'P.S. JANANSAYA', '10');
INSERT INTO `establishments` VALUES ('509', 'P.S. PALMERANI', '10');
INSERT INTO `establishments` VALUES ('510', 'P.S. PUESTO DE SALUD DE PAMPA GRANDE', '10');
INSERT INTO `establishments` VALUES ('511', 'P.S. SAN IGNACIO', '10');
INSERT INTO `establishments` VALUES ('512', 'C.S. SAN JUAN DEL ORO', '10');
INSERT INTO `establishments` VALUES ('513', 'C.S. YANAHUAYA', '10');
INSERT INTO `establishments` VALUES ('514', 'P.S. LUCINE', '10');
INSERT INTO `establishments` VALUES ('515', 'P.S. SANTA ANA', '10');
INSERT INTO `establishments` VALUES ('516', 'P.S. YANAMAYO', '10');
INSERT INTO `establishments` VALUES ('517', 'P.S. CCAPUNA', '10');
INSERT INTO `establishments` VALUES ('518', 'P.S. PUESTO DE SALUD IGUARA', '10');
INSERT INTO `establishments` VALUES ('519', 'P.S. QUENEQUE', '10');
INSERT INTO `establishments` VALUES ('520', 'P.S. QUIACA', '10');
INSERT INTO `establishments` VALUES ('521', 'C.S. AYCHUYO', '11');
INSERT INTO `establishments` VALUES ('522', 'P.S. ESPIRITU SANTO', '11');
INSERT INTO `establishments` VALUES ('523', 'P.S. PAJJANA SAN AGUSTIN', '11');
INSERT INTO `establishments` VALUES ('524', 'P.S. TAPOJE', '11');
INSERT INTO `establishments` VALUES ('525', 'C.S. COPANI', '11');
INSERT INTO `establishments` VALUES ('526', 'C.S. SANQUIRA', '11');
INSERT INTO `establishments` VALUES ('527', 'C.S. YANAPATA', '11');
INSERT INTO `establishments` VALUES ('528', 'P.S. KCANAMARCA', '11');
INSERT INTO `establishments` VALUES ('529', 'P.S. PICHICHO SANTA ROSA', '11');
INSERT INTO `establishments` VALUES ('530', 'HOSP. YUNGUYO', '11');
INSERT INTO `establishments` VALUES ('531', 'C.S. OLLARAYA', '11');
INSERT INTO `establishments` VALUES ('532', 'P.S. ANAPIA', '11');
INSERT INTO `establishments` VALUES ('533', 'P.S. TINICACHI', '11');
INSERT INTO `establishments` VALUES ('534', 'P.S. UNICACHI', '11');
INSERT INTO `establishments` VALUES ('535', 'C.S. CUTURAPI', '11');
INSERT INTO `establishments` VALUES ('536', 'C.S. QUEÐUANI', '11');
INSERT INTO `establishments` VALUES ('537', 'P.S. ACARI', '11');

-- ----------------------------
-- Table structure for `inscriptions`
-- ----------------------------
DROP TABLE IF EXISTS `inscriptions`;
CREATE TABLE `inscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `establishment_id` int(11) NOT NULL,
  `profession_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `phase_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `voucher_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `boucher_number_UNIQUE` (`voucher_number`),
  KEY `fk_inscription_establishments1_idx` (`establishment_id`),
  KEY `fk_inscription_professions1_idx` (`profession_id`),
  KEY `fk_inscriptions_phases1_idx` (`phase_id`),
  KEY `fk_inscription_people1_idx` (`person_id`),
  CONSTRAINT `fk_inscription_establishments1` FOREIGN KEY (`establishment_id`) REFERENCES `establishments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscription_people1` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscriptions_phases1` FOREIGN KEY (`phase_id`) REFERENCES `phases` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inscription_professions1` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inscriptions
-- ----------------------------
INSERT INTO `inscriptions` VALUES ('5', '133', '2', '1', '1', '2013-02-09 07:35:12', '2013-02-09 07:35:12', '12312312312');
INSERT INTO `inscriptions` VALUES ('7', '134', '2', '2', '1', '2013-02-09 07:42:09', '2013-02-09 07:42:09', '123890809809');

-- ----------------------------
-- Table structure for `networks`
-- ----------------------------
DROP TABLE IF EXISTS `networks`;
CREATE TABLE `networks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of networks
-- ----------------------------
INSERT INTO `networks` VALUES ('1', 'RED AZANGARO');
INSERT INTO `networks` VALUES ('2', 'RED CARABAYA');
INSERT INTO `networks` VALUES ('3', 'RED COLLAO');
INSERT INTO `networks` VALUES ('4', 'RED CHUCUITO');
INSERT INTO `networks` VALUES ('5', 'RED HUANCANE');
INSERT INTO `networks` VALUES ('6', 'RED LAMPA');
INSERT INTO `networks` VALUES ('7', 'RED MELGAR');
INSERT INTO `networks` VALUES ('8', 'RED PUNO');
INSERT INTO `networks` VALUES ('9', 'RED SAN ROMAN');
INSERT INTO `networks` VALUES ('10', 'RED SANDIA');
INSERT INTO `networks` VALUES ('11', 'RED YUNGUYO');

-- ----------------------------
-- Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document` char(8) DEFAULT NULL,
  `names` varchar(45) DEFAULT NULL,
  `lf_name` varchar(45) DEFAULT NULL,
  `lm_name` varchar(45) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cellphone` char(9) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `document_UNIQUE` (`document`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES ('1', '89786777', 'eduardo cosso panca', 'Ramos', 'Arpasi', null, 'AV. tORRE 2', 'jardix22@gmail.com', '957787601', '2013-02-09 07:35:12');
INSERT INTO `people` VALUES ('2', '12312389', 'eduardo cosso panca', 'Ramos', 'Arpasi', null, 'Av. Floral 2343', 'jardix22@gmail.com', '957787601', '2013-02-09 07:42:09');
INSERT INTO `people` VALUES ('3', '89897823', 'adreian', 'Ramos', 'Arpasi', null, 'AV. tORRE 2', 'jardix22@gmail.com', '957787601', '2013-02-09 08:05:31');

-- ----------------------------
-- Table structure for `phases`
-- ----------------------------
DROP TABLE IF EXISTS `phases`;
CREATE TABLE `phases` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `year` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of phases
-- ----------------------------
INSERT INTO `phases` VALUES ('1', 'I Fase - Enero 2013', '0000-00-00');

-- ----------------------------
-- Table structure for `professions`
-- ----------------------------
DROP TABLE IF EXISTS `professions`;
CREATE TABLE `professions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of professions
-- ----------------------------
INSERT INTO `professions` VALUES ('1', 'Odontologo');
INSERT INTO `professions` VALUES ('2', 'P2');
INSERT INTO `professions` VALUES ('3', 'P3');
INSERT INTO `professions` VALUES ('4', 'P4');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '2b3731cf68ff59fe3029e71579b0c2ae5b505afb', null);

-- ----------------------------
-- Table structure for `vacancies`
-- ----------------------------
DROP TABLE IF EXISTS `vacancies`;
CREATE TABLE `vacancies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `establishment_id` int(11) NOT NULL,
  `profession_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_vacancies_establishments1_idx` (`establishment_id`),
  KEY `fk_vacancies_professions1_idx` (`profession_id`),
  CONSTRAINT `fk_vacancies_establishments1` FOREIGN KEY (`establishment_id`) REFERENCES `establishments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vacancies_professions1` FOREIGN KEY (`profession_id`) REFERENCES `professions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of vacancies
-- ----------------------------
