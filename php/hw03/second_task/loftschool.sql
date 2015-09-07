/*
Navicat MySQL Data Transfer

Source Server         : MyDataBases
Source Server Version : 50541
Source Host           : 127.0.0.1:3306
Source Database       : lh

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-09-07 12:42:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Category
-- ----------------------------
DROP TABLE IF EXISTS `Category`;
CREATE TABLE `Category` (
  `Id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Category
-- ----------------------------
INSERT INTO `Category` VALUES ('1', 'Процессоры');
INSERT INTO `Category` VALUES ('2', 'Материнские платы');
INSERT INTO `Category` VALUES ('3', 'Модули памяти');
INSERT INTO `Category` VALUES ('4', 'Видеокарты');
INSERT INTO `Category` VALUES ('5', 'Жесткие диски');
INSERT INTO `Category` VALUES ('6', 'Блоки питания');
INSERT INTO `Category` VALUES ('7', 'Устройства охлаждения');
INSERT INTO `Category` VALUES ('8', 'Звуковые карты');
INSERT INTO `Category` VALUES ('9', 'Контроллеры');
INSERT INTO `Category` VALUES ('10', 'Корпуса');

-- ----------------------------
-- Table structure for Company
-- ----------------------------
DROP TABLE IF EXISTS `Company`;
CREATE TABLE `Company` (
  `Id_company` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Title` varchar(64) NOT NULL,
  PRIMARY KEY (`Id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Company
-- ----------------------------
INSERT INTO `Company` VALUES ('3', 'ASUS');
INSERT INTO `Company` VALUES ('4', 'ASROCK ');
INSERT INTO `Company` VALUES ('5', 'GIGABYTE');
INSERT INTO `Company` VALUES ('6', 'MSI');
INSERT INTO `Company` VALUES ('7', 'HYNIX');
INSERT INTO `Company` VALUES ('8', 'PATRIOT');
INSERT INTO `Company` VALUES ('9', 'SAPPHIRE');
INSERT INTO `Company` VALUES ('10', 'SEAGATE');
INSERT INTO `Company` VALUES ('11', 'WD');
INSERT INTO `Company` VALUES ('12', 'TOSHIBA ');
INSERT INTO `Company` VALUES ('13', 'HGST');
INSERT INTO `Company` VALUES ('14', 'LINKWORLD');
INSERT INTO `Company` VALUES ('15', 'ACCORD');
INSERT INTO `Company` VALUES ('16', ' GIGABYTE');
INSERT INTO `Company` VALUES ('17', ' DEEPCOOL');
INSERT INTO `Company` VALUES ('18', 'TITAN');
INSERT INTO `Company` VALUES ('19', 'GLACIALTECH ');
INSERT INTO `Company` VALUES ('20', 'CREATIVE ');
INSERT INTO `Company` VALUES ('21', 'SATA');
INSERT INTO `Company` VALUES ('22', 'PCI-E USB');
INSERT INTO `Company` VALUES ('23', 'PCI-E SATA/IDE');
INSERT INTO `Company` VALUES ('24', 'ZALMAN');
INSERT INTO `Company` VALUES ('25', 'MICROSOFT');
INSERT INTO `Company` VALUES ('26', 'SAMSUNG');

-- ----------------------------
-- Table structure for Content
-- ----------------------------
DROP TABLE IF EXISTS `Content`;
CREATE TABLE `Content` (
  `Id_order` int(10) unsigned NOT NULL,
  `Id_product` int(10) unsigned NOT NULL,
  `Count` int(10) unsigned NOT NULL,
  `Price` decimal(10,0) unsigned NOT NULL,
  KEY `Id_order` (`Id_order`) USING BTREE,
  KEY `Id_product` (`Id_product`),
  CONSTRAINT `content_ibfk_1` FOREIGN KEY (`Id_order`) REFERENCES `Заказы` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `content_ibfk_2` FOREIGN KEY (`Id_product`) REFERENCES `Товары` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Content
-- ----------------------------
INSERT INTO `Content` VALUES ('1', '3', '1', '1830');
INSERT INTO `Content` VALUES ('1', '24', '1', '2930');
INSERT INTO `Content` VALUES ('1', '11', '1', '2900');
INSERT INTO `Content` VALUES ('2', '27', '2', '3220');
INSERT INTO `Content` VALUES ('2', '12', '1', '2900');
INSERT INTO `Content` VALUES ('3', '38', '1', '3220');
INSERT INTO `Content` VALUES ('4', '23', '2', '2970');
INSERT INTO `Content` VALUES ('5', '46', '1', '1790');
INSERT INTO `Content` VALUES ('6', '33', '2', '180');
INSERT INTO `Content` VALUES ('6', '48', '1', '2220');
INSERT INTO `Content` VALUES ('7', '1', '1', '1750');
INSERT INTO `Content` VALUES ('8', '7', '1', '2330');
INSERT INTO `Content` VALUES ('8', '14', '2', '980');
INSERT INTO `Content` VALUES ('8', '24', '2', '2930');
INSERT INTO `Content` VALUES ('8', '18', '1', '1950');
INSERT INTO `Content` VALUES ('9', '26', '2', '3060');
INSERT INTO `Content` VALUES ('10', '30', '1', '1880');
INSERT INTO `Content` VALUES ('11', '23', '1', '2970');
INSERT INTO `Content` VALUES ('12', '10', '1', '2900');
INSERT INTO `Content` VALUES ('12', '3', '1', '1830');
INSERT INTO `Content` VALUES ('13', '29', '1', '840');
INSERT INTO `Content` VALUES ('13', '32', '1', '180');
INSERT INTO `Content` VALUES ('13', '44', '1', '960');
INSERT INTO `Content` VALUES ('14', '20', '1', '2130');
INSERT INTO `Content` VALUES ('15', '26', '4', '3060');
INSERT INTO `Content` VALUES ('16', '35', '1', '260');
INSERT INTO `Content` VALUES ('17', '42', '1', '1030');
INSERT INTO `Content` VALUES ('18', '48', '1', '2220');
INSERT INTO `Content` VALUES ('19', '22', '2', '2670');
INSERT INTO `Content` VALUES ('20', '16', '1', '1920');
INSERT INTO `Content` VALUES ('20', '6', '1', '2900');
INSERT INTO `Content` VALUES ('20', '11', '1', '2900');
INSERT INTO `Content` VALUES ('21', '19', '1', '2190');
INSERT INTO `Content` VALUES ('21', '26', '1', '3060');
INSERT INTO `Content` VALUES ('22', '31', '2', '110');
INSERT INTO `Content` VALUES ('23', '13', '2', '970');
INSERT INTO `Content` VALUES ('24', '15', '1', '1000');
INSERT INTO `Content` VALUES ('25', '25', '3', '3020');
INSERT INTO `Content` VALUES ('26', '9', '1', '2910');
INSERT INTO `Content` VALUES ('27', '38', '2', '3220');
INSERT INTO `Content` VALUES ('27', '46', '1', '1790');
INSERT INTO `Content` VALUES ('28', '34', '2', '230');
INSERT INTO `Content` VALUES ('28', '42', '1', '1030');
INSERT INTO `Content` VALUES ('28', '3', '1', '1830');
INSERT INTO `Content` VALUES ('29', '21', '2', '2950');
INSERT INTO `Content` VALUES ('29', '2', '1', '1830');
INSERT INTO `Content` VALUES ('30', '22', '1', '2670');
INSERT INTO `Content` VALUES ('31', '18', '1', '1950');
INSERT INTO `Content` VALUES ('32', '5', '1', '2500');

-- ----------------------------
-- Table structure for Items
-- ----------------------------
DROP TABLE IF EXISTS `Items`;
CREATE TABLE `Items` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Id_company` int(10) NOT NULL,
  `Mark` varchar(128) DEFAULT NULL,
  `Count` int(10) unsigned NOT NULL DEFAULT '0',
  `Price` decimal(10,0) unsigned NOT NULL,
  `Description` text,
  `Id_catalog` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  KEY `Id_catalog` (`Id_catalog`),
  KEY `Id_company` (`Id_company`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`Id_catalog`) REFERENCES `Категории товаров` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `товары_to_компании` FOREIGN KEY (`Id_company`) REFERENCES `Компании` (`Id_company`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Items
-- ----------------------------
INSERT INTO `Items` VALUES ('1', '0', 'Sempron 2650', '2', '1750', 'сокет SocketAM1, ядро Jaguar Kabini, ядер — 2, потоков — 2, техпроцесс 28нм, частота 1.45 ГГц, поддержка памяти DDR3 до 16 ГБ, ЕСС, каналов памяти — 2, контроллер PCI Express 2.0, графическое ядро AMD Radeon HD 8240, поставка OEM', '1');
INSERT INTO `Items` VALUES ('2', '0', 'A4 5300', '5', '1830', 'сокет SocketFM2, ядер — 2, техпроцесс 32нм, частота 3.4 ГГц, графическое ядро AMD Radeon HD 7480D, поставка OEM', '1');
INSERT INTO `Items` VALUES ('3', '0', 'Athlon X2 340', '1', '1830', 'сокет SocketFM2, ядер — 2, техпроцесс 32нм, частота 3.2 ГГц, поставка OEM', '1');
INSERT INTO `Items` VALUES ('4', '0', 'Celeron Dual-Core G1630', '4', '2440', 'сокет LGA 1155, ядро Ivy Bridge, ядер — 2, потоков — 2, L3 кэш 2Мб, техпроцесс 22нм, частота 2.8 ГГц, поддержка памяти DDR3 до 32 ГБ, ЕСС, каналов памяти — 2, множитель х 28, контроллер PCI Express 2.0, графическое ядро Intel HD Graphics, поставка OEM', '1');
INSERT INTO `Items` VALUES ('5', '0', 'Celeron G1620', '2', '2500', 'сокет LGA 1155, ядро Ivy Bridge, ядер — 2, потоков — 2, L3 кэш 2Мб, техпроцесс 22нм, частота 2.7 ГГц, поддержка памяти DDR3 до 32 ГБ, ЕСС, каналов памяти — 2, множитель х 27, контроллер PCI Express 2.0, графическое ядро Intel HD Graphics, поставка OEM', '1');
INSERT INTO `Items` VALUES ('6', '0', 'Celeron Dual-Core G1820', '12', '2900', 'сокет LGA 1150, ядро Haswell, ядер — 2, потоков — 2, L3 кэш 2Мб, техпроцесс 22нм, частота 2.7 ГГц, поддержка памяти DDR3 до 32 ГБ, ЕСС, каналов памяти — 2, множитель х 27, контроллер PCI Express 3.0, графическое ядро Intel HD Graphics, поставка OEM', '1');
INSERT INTO `Items` VALUES ('7', '0', 'AM1M-A', '2', '2330', 'память DDR3 — 2слота; частотой до 1600МГц; гнездо процессора: SocketAM1; тип поставки: Ret', '2');
INSERT INTO `Items` VALUES ('8', '0', 'A58M-K', '5', '2870', 'чипсет AMD A58 FCH; память DDR3 — 2слота; частотой до 2133МГц; гнездо процессора: Socket FM2+; тип поставки: Ret; SATA RAID', '2');
INSERT INTO `Items` VALUES ('9', '0', 'H81M-K', '4', '2910', 'чипсет Intel H81; память DDR3 — 2слота; частотой до 1600МГц; гнездо процессора: LGA 1150; тип поставки: Ret', '2');
INSERT INTO `Items` VALUES ('10', '0', '960GM-VGS3 FX', '6', '2870', 'интегрированное видео; чипсет AMD 760G & AMD SB710; память DDR3 — 2слота; частотой до 1333МГц; гнездо процессора: SocketAM3+; тип поставки: Ret; SATA RAID', '2');
INSERT INTO `Items` VALUES ('11', '0', 'GA-H61M-S1', '5', '2900', 'чипсет Intel H61(B3); память DDR3 — 2слота; частотой до 1333МГц; гнездо процессора: LGA 1155; тип поставки: Ret', '2');
INSERT INTO `Items` VALUES ('12', '0', 'H81M-P33', '8', '2900', 'чипсет Intel H81; память DDR3 — 2слота; частотой до 1600МГц; гнездо процессора: LGA 1150; тип поставки: Ret', '2');
INSERT INTO `Items` VALUES ('13', '0', '3rd DDR2', '2', '970', '240-pin; частота: 800; форм-фактор: DIMM; тип поставки: OEM', '3');
INSERT INTO `Items` VALUES ('14', '0', 'DDR3', '1', '980', '240-pin; частота: 1600; форм-фактор: DIMM; тип поставки: Ret', '3');
INSERT INTO `Items` VALUES ('15', '0', 'R532G1601S1S-UO DDR3', '8', '1000', '204-pin; частота: 1600; форм-фактор: SO-DIMM; тип поставки: Ret', '3');
INSERT INTO `Items` VALUES ('16', '0', 'GeForce 210', '6', '1920', 'nVidia GeForce 210; частота процессора: 589 МГц; частота памяти: 500МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; тип поставки: Ret', '4');
INSERT INTO `Items` VALUES ('17', '0', 'Radeon HD 5450', '3', '2250', 'AMD Radeon HD 5450; частота процессора: 650 МГц; частота памяти: 1000МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 11/OpenGL 3.1; доп. питание: без дополнительного питания; блок питания не менее: 400Вт; тип поставки: oem', '4');
INSERT INTO `Items` VALUES ('18', '0', 'GeForce 210, 210-SL-TC1GD3-L', '5', '1950', 'nVidia GeForce 210; частота процессора: 589 МГц; частота памяти: 1200МГц; объём видеопамяти: 512Мб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; тип поставки: Ret', '4');
INSERT INTO `Items` VALUES ('19', '0', 'EN210 SILENT/DI/1GD3/V2(LP)', '5', '2190', 'nVidia GeForce 210; частота процессора: 589 МГц; частота памяти: 1200МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; блок питания не менее: 300Вт; тип поставки: Ret', '4');
INSERT INTO `Items` VALUES ('20', '0', 'GeForce 210, GV-N210D3-1GI', '6', '2130', 'nVidia GeForce 210; частота процессора: 590 МГц; частота памяти: 1200МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; блок питания не менее: 300Вт; тип поставки: Ret', '4');
INSERT INTO `Items` VALUES ('21', '0', 'Momentus Thin ST500LT012', '6', '2950', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA II; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 16Мб', '5');
INSERT INTO `Items` VALUES ('22', '0', 'Momentus ST320LM001', '3', '2670', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA II; объём: 320Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Items` VALUES ('23', '0', 'Scorpio Blue WD5000LPVX', '0', '2970', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Items` VALUES ('24', '0', 'MQ01ABF050', '6', '2930', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Items` VALUES ('25', '0', 'Travelstar Z5K500', '2', '3020', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Items` VALUES ('26', '0', 'Blue WD3200LPVX', '9', '3060', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 320Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Items` VALUES ('27', '0', 'DT01ACA050', '3', '3220', 'форм-фактор 3.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 7200об/мин; буферная память 32Мб', '5');
INSERT INTO `Items` VALUES ('28', '0', 'LW2-300W', '9', '860', 'ATX; размер вентилятора 80мм; мощность: 300Вт; питание MB и CPU: 24+4 pin; питание видеокарты: отсутствует; разъемы Molex: 2шт; разъемы SATA: 2шт; cетевой кабель в комплекте; цвет: стандарт; тип поставки Ret', '6');
INSERT INTO `Items` VALUES ('29', '0', 'ACC-350W-12', '5', '840', 'ATX; размер вентилятора 120мм; мощность: 350Вт; питание MB и CPU: 24+4 pin; питание видеокарты: 6 pin; разъемы Molex: 1шт; разъемы SATA: 4шт; без сетевого кабеля; цвет: стандарт; тип поставки OEM', '6');
INSERT INTO `Items` VALUES ('30', '0', 'GZ-EBS45N-C3', '6', '1880', 'ATX; размер вентилятора 120мм; мощность: 450Вт; питание MB и CPU: 24+4+4 pin; разъемы Molex: 2шт; разъемы SATA: 3шт; без сетевого кабеля; цвет: черный; тип поставки OEM', '6');
INSERT INTO `Items` VALUES ('31', '0', 'XFAN 60', '6', '110', 'вентиляторов — 1шт, 60мм, 3000 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Items` VALUES ('32', '0', 'XFAN 40', '5', '180', 'вентиляторов — 1шт, 40мм, 4500 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Items` VALUES ('33', '0', 'DCF-8025L12S', '3', '180', 'вентиляторов — 1шт, 80мм, 2000 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Items` VALUES ('34', '0', 'IceWind GS14025', '2', '230', 'вентиляторов — 1шт, 140мм, 1000 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Items` VALUES ('35', '0', 'IceWind 9225', '6', '260', 'вентиляторов — 1шт, 92мм, 1500 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Items` VALUES ('36', '0', 'Xonar DG', '3', '2170', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Items` VALUES ('37', '0', 'Sound Blaster Play! 2', '1', '2590', 'звуковая схема: 2.0, тип поставки: Ret', '8');
INSERT INTO `Items` VALUES ('38', '0', 'Audigy FX ', '2', '3220', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Items` VALUES ('39', '0', 'Xonar D-KARA', '4', '3470', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Items` VALUES ('40', '0', 'Sound Blaster Z', '3', '7320', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Items` VALUES ('41', '0', '(2ext/2int)+UDMA 133 1-port', '9', '2530', '(2ext/2int)+UDMA 133 1-port PCI STLab A-230 (VIA 6421)RaiD RTL', '9');
INSERT INTO `Items` VALUES ('42', '0', '(2+1)port +RAID SIL3512 bulk', '3', '1030', '', '9');
INSERT INTO `Items` VALUES ('43', '0', 'USB 2.0 (4+1)port VIA6212 bulk', '6', '540', '', '9');
INSERT INTO `Items` VALUES ('44', '0', 'USB 3.0 2-port NEC D720200F1', '5', '960', '', '9');
INSERT INTO `Items` VALUES ('45', '0', '(2+1)port+SATA RAID JMB363 bulk', '5', '1030', '', '9');
INSERT INTO `Items` VALUES ('46', '0', 'GZ-KХ1', '4', '1790', 'размер: Midi-Tower; USB 2.0: 2шт, + аудио на передней панели; отсеки внешние 5.25\"- 4шт, 3.5\"- 2шт; внутренние 3.5\"- 5шт; материал стенок — сталь, 0.4мм, видеокарта длиной, до: 265мм', '10');
INSERT INTO `Items` VALUES ('47', '0', 'SA-01B', '4', '2200', 'размер: Midi-Tower; USB 2.0: 2шт, USB 3.0: 1шт, + аудио на передней панели; отсеки внешние 5.25\"- 2шт, 3.5\"- 1шт; внутренние 3.5\"- 4шт; материал стенок — сталь, видеокарта длиной, до: 245мм', '10');
INSERT INTO `Items` VALUES ('48', '0', 'ZM-T4', '6', '2220', 'размер: Mini-Tower; USB 2.0: 1шт, USB 3.0: 1шт, + аудио на передней панели; отсеки внешние 5.25\"- 1шт, внутренние 3.5\"- 2шт; материал стенок — сталь, видеокарта длиной, до: 300мм', '10');

-- ----------------------------
-- Table structure for Orders
-- ----------------------------
DROP TABLE IF EXISTS `Orders`;
CREATE TABLE `Orders` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Id_user` int(10) unsigned NOT NULL,
  `Status` enum('Canceled','Complete','In progress') NOT NULL DEFAULT 'In progress',
  `Date_order` date NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`),
  KEY `Id_user` (`Id_user`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `Пользователи` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Orders
-- ----------------------------
INSERT INTO `Orders` VALUES ('1', '1', 'Complete', '2015-07-27');
INSERT INTO `Orders` VALUES ('2', '2', 'Complete', '2015-07-28');
INSERT INTO `Orders` VALUES ('3', '3', 'Complete', '2015-07-29');
INSERT INTO `Orders` VALUES ('4', '4', 'Complete', '2015-07-30');
INSERT INTO `Orders` VALUES ('5', '5', 'Complete', '2015-07-31');
INSERT INTO `Orders` VALUES ('6', '6', 'Complete', '2015-08-01');
INSERT INTO `Orders` VALUES ('7', '7', 'Complete', '2015-08-02');
INSERT INTO `Orders` VALUES ('8', '10', 'Complete', '2015-08-03');
INSERT INTO `Orders` VALUES ('9', '30', 'Complete', '2015-08-04');
INSERT INTO `Orders` VALUES ('10', '1', 'Canceled', '2015-08-05');
INSERT INTO `Orders` VALUES ('11', '12', 'Complete', '2015-08-06');
INSERT INTO `Orders` VALUES ('12', '8', 'Complete', '2015-08-07');
INSERT INTO `Orders` VALUES ('13', '11', 'Complete', '2015-08-08');
INSERT INTO `Orders` VALUES ('14', '14', 'Complete', '2015-08-09');
INSERT INTO `Orders` VALUES ('15', '15', 'Complete', '2015-08-10');
INSERT INTO `Orders` VALUES ('16', '17', 'Complete', '2015-08-11');
INSERT INTO `Orders` VALUES ('17', '20', 'Complete', '2015-08-12');
INSERT INTO `Orders` VALUES ('18', '18', 'Canceled', '2015-08-13');
INSERT INTO `Orders` VALUES ('19', '13', 'Complete', '2015-08-14');
INSERT INTO `Orders` VALUES ('20', '7', 'Complete', '2015-08-15');
INSERT INTO `Orders` VALUES ('21', '9', 'Complete', '2015-08-16');
INSERT INTO `Orders` VALUES ('22', '29', 'Complete', '2015-08-17');
INSERT INTO `Orders` VALUES ('23', '22', 'Canceled', '2015-08-18');
INSERT INTO `Orders` VALUES ('24', '19', 'Complete', '2015-08-19');
INSERT INTO `Orders` VALUES ('25', '21', 'Complete', '2015-08-20');
INSERT INTO `Orders` VALUES ('26', '23', 'In progress', '2015-08-22');
INSERT INTO `Orders` VALUES ('27', '26', 'In progress', '2015-08-22');
INSERT INTO `Orders` VALUES ('28', '27', 'Canceled', '2015-08-23');
INSERT INTO `Orders` VALUES ('29', '24', 'In progress', '2015-08-23');
INSERT INTO `Orders` VALUES ('30', '25', 'In progress', '2015-08-24');
INSERT INTO `Orders` VALUES ('31', '28', 'In progress', '2015-08-24');
INSERT INTO `Orders` VALUES ('32', '14', 'In progress', '2015-08-25');

-- ----------------------------
-- Table structure for Security
-- ----------------------------
DROP TABLE IF EXISTS `Security`;
CREATE TABLE `Security` (
  `Id_user` int(10) unsigned NOT NULL,
  `Login` varchar(32) NOT NULL,
  `Password` varchar(32) NOT NULL,
  PRIMARY KEY (`Id_user`),
  UNIQUE KEY `Id_user` (`Id_user`),
  CONSTRAINT `security_ibfk_1` FOREIGN KEY (`Id_user`) REFERENCES `Пользователи` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Security
-- ----------------------------
INSERT INTO `Security` VALUES ('1', 'qwerty', '134561');
INSERT INTO `Security` VALUES ('2', 'qazxsw', '134fdhs');
INSERT INTO `Security` VALUES ('3', '123456', '12q5eyhv');
INSERT INTO `Security` VALUES ('4', 'login', '3q54y');
INSERT INTO `Security` VALUES ('5', 'slavik', 'qwe5v');
INSERT INTO `Security` VALUES ('6', 'monster', '3qw456y');
INSERT INTO `Security` VALUES ('7', 'йцукен', '25ey');
INSERT INTO `Security` VALUES ('8', 'КтоЗдесь', '23q54v');
INSERT INTO `Security` VALUES ('9', 'KingOfTheDark', 'ervyhf');
INSERT INTO `Security` VALUES ('10', 'petrushka', 'wesrvh');
INSERT INTO `Security` VALUES ('11', 'operatciya', 'sfdv45');
INSERT INTO `Security` VALUES ('12', 'terokk', 'weryw');
INSERT INTO `Security` VALUES ('13', 'three', '452y245y');
INSERT INTO `Security` VALUES ('14', 'dadenBaden', 'wbdfcwerty');
INSERT INTO `Security` VALUES ('15', 'человек', 'gwrtsse54');
INSERT INTO `Security` VALUES ('16', 'Vikula', 'qtq4we5yh');
INSERT INTO `Security` VALUES ('17', 'janeQQ', 'b24w5');
INSERT INTO `Security` VALUES ('18', '123', '2h45wy');
INSERT INTO `Security` VALUES ('19', '067443', 'w45h');
INSERT INTO `Security` VALUES ('20', 'wrum', 'qw45eh');
INSERT INTO `Security` VALUES ('21', 'opachki', '245yh2w45h');
INSERT INTO `Security` VALUES ('22', 'ilova', '6w245hwb');
INSERT INTO `Security` VALUES ('23', 'ggggggg', '2hghwrtty');
INSERT INTO `Security` VALUES ('24', 'edcxsdf', 'astg5ws5erh');
INSERT INTO `Security` VALUES ('25', '142536', 'b54srtdcukg');
INSERT INTO `Security` VALUES ('26', 'trip', 'w45eyh');
INSERT INTO `Security` VALUES ('27', 'qastorka', 'ed5t76ykjm');
INSERT INTO `Security` VALUES ('28', 'rtyu', 'ew6rhjsryf');
INSERT INTO `Security` VALUES ('29', 'trigger', 'sr6ww46');
INSERT INTO `Security` VALUES ('30', 'rota', '46ryu');

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(32) NOT NULL,
  `Lastname` varchar(32) NOT NULL,
  `Birthday` date NOT NULL,
  `Email` varchar(128) NOT NULL,
  `Is_active` bit(1) NOT NULL DEFAULT b'0',
  `Reg_date` date NOT NULL,
  `Last_update` date NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`) USING BTREE,
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Users
-- ----------------------------
INSERT INTO `Users` VALUES ('1', 'Петр', 'Карапетян', '1974-06-13', 'karapet@yandex.ru', '', '2014-12-11', '2015-08-21');
INSERT INTO `Users` VALUES ('2', 'Валерия', 'Попова', '1991-08-17', 'popovale@gmail.com', '', '2015-07-27', '2015-08-21');
INSERT INTO `Users` VALUES ('3', 'Антон', 'Рязанов', '1979-11-29', 'qwerty@rambler.ru', '', '2015-06-09', '2015-08-21');
INSERT INTO `Users` VALUES ('4', 'Анна', 'Виктюк', '1987-08-21', 'whoareyou@mail.ru', '', '2014-04-15', '2015-08-22');
INSERT INTO `Users` VALUES ('5', 'Вячеслав', 'Серый', '1990-08-21', 'koshka@yandex.ru', '\0', '2015-06-07', '2015-08-22');
INSERT INTO `Users` VALUES ('6', 'Андрей', 'Андреев', '1988-03-03', 'andrushka@mail.ru', '', '2015-01-01', '2015-08-22');
INSERT INTO `Users` VALUES ('7', 'Ирина', 'Скорая', '1991-02-21', 'speedy@gmail.com', '', '2014-04-30', '2015-08-22');
INSERT INTO `Users` VALUES ('8', 'Константин', 'Иванов', '1989-08-23', 'vano89@mail.ru', '', '2015-08-11', '2015-08-22');
INSERT INTO `Users` VALUES ('9', 'Изя', 'Немирович', '1980-10-10', 'moneymaker@gmail.com', '\0', '2015-08-22', '2015-08-22');
INSERT INTO `Users` VALUES ('10', 'Инга', 'Петрова', '1970-08-11', 'petros1970@yandex.ru', '', '2015-08-22', '2015-08-22');
INSERT INTO `Users` VALUES ('11', 'Игорь', 'Смирнов', '1987-01-31', 'smirigo@mail.ru', '', '2015-08-04', '2015-08-04');
INSERT INTO `Users` VALUES ('12', 'Алёна', 'Алабина', '1982-03-21', 'alalaba@mail.ru', '', '2015-07-30', '2015-07-30');
INSERT INTO `Users` VALUES ('13', 'Виктор', 'Иванович', '1978-08-04', 'vitekqqq@yandex.ru', '', '2015-08-05', '2015-08-05');
INSERT INTO `Users` VALUES ('14', 'Наталья', 'Нилова', '1981-07-16', 'nilovanata@rambler.ru', '\0', '2015-08-14', '2015-08-20');
INSERT INTO `Users` VALUES ('15', 'Наталья', 'Орехова', '1978-04-21', 'natalinats@mail.ru', '', '2015-03-22', '2015-03-22');
INSERT INTO `Users` VALUES ('16', 'Виктория', 'Сысоева', '1989-02-05', 'sysovik@gmail.com', '', '2015-08-20', '2015-08-20');
INSERT INTO `Users` VALUES ('17', 'Яна', 'Варина', '1994-03-01', 'janevar@mail.ru', '', '2015-04-01', '2015-04-02');
INSERT INTO `Users` VALUES ('18', 'Артём', 'Васьков', '1993-02-04', 'temavasko@mail.ru', '', '2015-05-12', '2015-05-12');
INSERT INTO `Users` VALUES ('19', 'Максим', 'Ололоев', '1988-03-23', 'makolo88@gmail.com', '', '2015-02-20', '2015-02-24');
INSERT INTO `Users` VALUES ('20', 'Антон', 'Ушаков', '1990-01-11', 'anthonyshakov@yandex.ru', '', '2015-07-31', '2015-07-31');
INSERT INTO `Users` VALUES ('21', 'Игорь', 'Антонов', '1976-09-03', 'qazxswedc@mail.ru', '\0', '2015-08-19', '2015-08-19');
INSERT INTO `Users` VALUES ('22', 'Екатерина', 'Илова', '1987-08-04', 'lillykate@mail.ru', '', '2015-07-22', '2015-08-14');
INSERT INTO `Users` VALUES ('23', 'Андрей', 'Вашин', '1979-04-20', 'ninashimnovashin@gmail.com', '\0', '2015-08-01', '2015-08-01');
INSERT INTO `Users` VALUES ('24', 'Виктор', 'Пименов', '1980-04-30', 'vitunya@gmail.com', '', '2015-08-12', '2015-08-12');
INSERT INTO `Users` VALUES ('25', 'Олег', 'Орский', '1983-03-10', 'olega1983@mail.ru', '', '2015-08-03', '2015-08-03');
INSERT INTO `Users` VALUES ('26', 'Алёна', 'Теплинская', '1984-06-25', 'teplo84@mail.ru', '', '2015-08-05', '2015-08-05');
INSERT INTO `Users` VALUES ('27', 'Екатерина', 'Токарева', '1986-10-15', 'tokarevakate@yandex.ru', '', '2015-07-31', '2015-08-05');
INSERT INTO `Users` VALUES ('28', 'Анна', 'Родина', '1979-11-23', 'annushkaumaslo@yandex.ru', '', '2015-03-20', '2015-03-26');
INSERT INTO `Users` VALUES ('29', 'Ольга', 'Вираскина', '1980-12-17', 'tsukerbergpozvonit@mail.ru', '', '2015-02-01', '2015-02-06');
INSERT INTO `Users` VALUES ('30', 'Анна', 'Опорова', '1979-09-09', 'oporann@gmail.com', '\0', '2015-08-17', '2015-08-19');
