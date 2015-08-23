/*
Navicat MySQL Data Transfer

Source Server         : MyDB
Source Server Version : 50541
Source Host           : localhost:3306
Source Database       : loftschool

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-08-23 20:06:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Безопасность
-- ----------------------------
DROP TABLE IF EXISTS `Безопасность`;
CREATE TABLE `Безопасность` (
  `Id_user` int(11) NOT NULL,
  `Login` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Безопасность
-- ----------------------------
INSERT INTO `Безопасность` VALUES ('1', '', '');
INSERT INTO `Безопасность` VALUES ('2', '', '');
INSERT INTO `Безопасность` VALUES ('3', '', '');
INSERT INTO `Безопасность` VALUES ('4', '', '');
INSERT INTO `Безопасность` VALUES ('5', '', '');
INSERT INTO `Безопасность` VALUES ('6', '', '');
INSERT INTO `Безопасность` VALUES ('7', '', '');
INSERT INTO `Безопасность` VALUES ('8', '', '');
INSERT INTO `Безопасность` VALUES ('9', '', '');
INSERT INTO `Безопасность` VALUES ('10', '', '');
INSERT INTO `Безопасность` VALUES ('11', '', '');
INSERT INTO `Безопасность` VALUES ('12', '', '');
INSERT INTO `Безопасность` VALUES ('13', '', '');
INSERT INTO `Безопасность` VALUES ('14', '', '');
INSERT INTO `Безопасность` VALUES ('15', '', '');
INSERT INTO `Безопасность` VALUES ('16', '', '');
INSERT INTO `Безопасность` VALUES ('17', '', '');
INSERT INTO `Безопасность` VALUES ('18', '', '');
INSERT INTO `Безопасность` VALUES ('19', '', '');
INSERT INTO `Безопасность` VALUES ('20', '', '');
INSERT INTO `Безопасность` VALUES ('21', '', '');
INSERT INTO `Безопасность` VALUES ('22', '', '');
INSERT INTO `Безопасность` VALUES ('23', '', '');
INSERT INTO `Безопасность` VALUES ('24', '', '');
INSERT INTO `Безопасность` VALUES ('25', '', '');
INSERT INTO `Безопасность` VALUES ('26', '', '');
INSERT INTO `Безопасность` VALUES ('27', '', '');
INSERT INTO `Безопасность` VALUES ('28', '', '');
INSERT INTO `Безопасность` VALUES ('29', '', '');
INSERT INTO `Безопасность` VALUES ('30', '', '');

-- ----------------------------
-- Table structure for Заказы
-- ----------------------------
DROP TABLE IF EXISTS `Заказы`;
CREATE TABLE `Заказы` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_user` int(11) NOT NULL,
  `Status` varchar(32) NOT NULL,
  `Date_order` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Заказы
-- ----------------------------

-- ----------------------------
-- Table structure for Категории товаров
-- ----------------------------
DROP TABLE IF EXISTS `Категории товаров`;
CREATE TABLE `Категории товаров` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Категории товаров
-- ----------------------------
INSERT INTO `Категории товаров` VALUES ('1', 'Игрушки для мальчиков');
INSERT INTO `Категории товаров` VALUES ('2', 'Игрушки для девочек');
INSERT INTO `Категории товаров` VALUES ('3', 'Мягкие игрушки');
INSERT INTO `Категории товаров` VALUES ('4', 'Конструкторы');
INSERT INTO `Категории товаров` VALUES ('5', 'Наборы для творчества');
INSERT INTO `Категории товаров` VALUES ('6', 'Интерактивные игрушки');
INSERT INTO `Категории товаров` VALUES ('7', 'Развивающие игрушки');
INSERT INTO `Категории товаров` VALUES ('8', 'Коляски, сумки-переноски');
INSERT INTO `Категории товаров` VALUES ('9', 'Детская безопасность');

-- ----------------------------
-- Table structure for Пользователи
-- ----------------------------
DROP TABLE IF EXISTS `Пользователи`;
CREATE TABLE `Пользователи` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(32) DEFAULT NULL,
  `Lastname` varchar(32) NOT NULL,
  `Birthday` date NOT NULL,
  `Email` varchar(128) NOT NULL,
  `Is_active` bit(1) NOT NULL DEFAULT b'0',
  `Reg_date` date NOT NULL,
  `Last_update` date NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Пользователи
-- ----------------------------
INSERT INTO `Пользователи` VALUES ('1', 'Петр', 'Карапетян', '1974-06-13', 'karapet@yandex.ru', '', '2014-12-11', '2015-08-21');
INSERT INTO `Пользователи` VALUES ('2', 'Валерия', 'Попова', '1991-08-17', 'popovale@gmail.com', '', '2015-07-27', '2015-08-21');
INSERT INTO `Пользователи` VALUES ('3', 'Антон', 'Рязанов', '1979-11-29', 'qwerty@rambler.ru', '', '2015-06-09', '2015-08-21');
INSERT INTO `Пользователи` VALUES ('4', 'Анна', 'Виктюк', '1987-08-21', 'whoareyou@mail.ru', '', '2014-04-15', '2015-08-22');
INSERT INTO `Пользователи` VALUES ('5', 'Вячеслав', 'Серый', '1990-08-21', 'koshka@yandex.ru', '\0', '2015-06-07', '2015-08-22');
INSERT INTO `Пользователи` VALUES ('6', 'Андрей', 'Андреев', '1988-03-03', 'andrushka@mail.ru', '', '2015-01-01', '2015-08-22');
INSERT INTO `Пользователи` VALUES ('7', 'Ирина', 'Скорая', '1991-02-21', 'speedy@gmail.com', '', '2014-04-30', '2015-08-22');
INSERT INTO `Пользователи` VALUES ('8', 'Константин', 'Иванов', '1989-08-23', 'vano89@mail.ru', '', '2015-08-11', '2015-08-22');
INSERT INTO `Пользователи` VALUES ('9', null, 'Немирович', '1980-10-10', 'moneymaker@gmail.com', '\0', '2015-08-22', '2015-08-22');
INSERT INTO `Пользователи` VALUES ('10', null, 'Петрова', '1970-08-11', 'petros1970@yandex.ru', '', '2015-08-22', '2015-08-22');
INSERT INTO `Пользователи` VALUES ('11', 'Игорь', 'Смирнов', '1987-01-31', 'smirigo@mail.ru', '', '2015-08-04', '2015-08-04');
INSERT INTO `Пользователи` VALUES ('12', 'Алёна', 'Алабина', '1982-03-21', 'alalaba@mail.ru', '', '2015-07-30', '2015-07-30');
INSERT INTO `Пользователи` VALUES ('13', 'Виктор', 'Иванович', '1978-08-04', 'vitekqqq@yandex.ru', '', '2015-08-05', '2015-08-05');
INSERT INTO `Пользователи` VALUES ('14', 'Наталья', 'Нилова', '1981-07-16', 'nilovanata@rambler.ru', '\0', '2015-08-14', '2015-08-20');
INSERT INTO `Пользователи` VALUES ('15', 'Наталья', 'Орехова', '1978-04-21', 'natalinats@mail.ru', '', '2015-03-22', '2015-03-22');
INSERT INTO `Пользователи` VALUES ('16', 'Виктория', 'Сысоева', '1989-02-05', 'sysovik@gmail.com', '', '2015-08-20', '2015-08-20');
INSERT INTO `Пользователи` VALUES ('17', 'Яна', 'Варина', '1994-03-01', 'janevar@mail.ru', '', '2015-04-01', '2015-04-02');
INSERT INTO `Пользователи` VALUES ('18', 'Артём', 'Васьков', '1993-02-04', 'temavasko@mail.ru', '', '2015-05-12', '2015-05-12');
INSERT INTO `Пользователи` VALUES ('19', 'Максим', 'Ололоев', '1988-03-23', 'makolo88@gmail.com', '', '2015-02-20', '2015-02-24');
INSERT INTO `Пользователи` VALUES ('20', 'Антон', 'Ушаков', '1990-01-11', 'anthonyshakov@yandex.ru', '', '2015-07-31', '2015-07-31');
INSERT INTO `Пользователи` VALUES ('21', null, 'Антонов', '1976-09-03', 'qazxswedc@mail.ru', '\0', '2015-08-19', '2015-08-19');
INSERT INTO `Пользователи` VALUES ('22', 'Екатерина', 'Илова', '1987-08-04', 'lillykate@mail.ru', '', '2015-07-22', '2015-08-14');
INSERT INTO `Пользователи` VALUES ('23', 'Андрей', 'Вашин', '1979-04-20', 'ninashimnovashin@gmail.com', '\0', '2015-08-01', '2015-08-01');
INSERT INTO `Пользователи` VALUES ('24', 'Виктор', 'Пименов', '1980-04-30', 'vitunya@gmail.com', '', '2015-08-12', '2015-08-12');
INSERT INTO `Пользователи` VALUES ('25', 'Олег', 'Орский', '1983-03-10', 'olega1983@mail.ru', '', '2015-08-03', '2015-08-03');
INSERT INTO `Пользователи` VALUES ('26', 'Алёна', 'Теплинская', '1984-06-25', 'teplo84@mail.ru', '', '2015-08-05', '2015-08-05');
INSERT INTO `Пользователи` VALUES ('27', 'Екатерина', 'Токарева', '1986-10-15', 'tokarevakate@yandex.ru', '', '2015-07-31', '2015-08-05');
INSERT INTO `Пользователи` VALUES ('28', 'Анна', 'Родина', '1979-11-23', 'annushkaumaslo@yandex.ru', '', '2015-03-20', '2015-03-26');
INSERT INTO `Пользователи` VALUES ('29', 'Ольга', 'Вираскина', '1980-12-17', 'tsukerbergpozvonit@mail.ru', '', '2015-02-01', '2015-02-06');
INSERT INTO `Пользователи` VALUES ('30', 'Анна', 'Опорова', '1979-09-09', 'oporann@gmail.com', '\0', '2015-08-17', '2015-08-19');

-- ----------------------------
-- Table structure for Состав заказа
-- ----------------------------
DROP TABLE IF EXISTS `Состав заказа`;
CREATE TABLE `Состав заказа` (
  `Id_order` int(11) NOT NULL,
  `Id_product` int(11) NOT NULL,
  `Amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Состав заказа
-- ----------------------------

-- ----------------------------
-- Table structure for Товары
-- ----------------------------
DROP TABLE IF EXISTS `Товары`;
CREATE TABLE `Товары` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) NOT NULL,
  `Mark` varchar(32) NOT NULL,
  `Count` int(11) NOT NULL DEFAULT '0',
  `Price` decimal(10,2) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Id_catalog` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Товары
-- ----------------------------
