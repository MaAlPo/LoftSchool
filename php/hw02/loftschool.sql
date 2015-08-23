/*
Navicat MySQL Data Transfer

Source Server         : MyDB
Source Server Version : 50541
Source Host           : localhost:3306
Source Database       : loftschool

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-08-23 22:51:35
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
INSERT INTO `Безопасность` VALUES ('1', 'qwerty', '134561');
INSERT INTO `Безопасность` VALUES ('2', 'qazxsw', '134fdhs');
INSERT INTO `Безопасность` VALUES ('3', '123456', '12q5eyhv');
INSERT INTO `Безопасность` VALUES ('4', 'login', '3q54y');
INSERT INTO `Безопасность` VALUES ('5', 'slavik', 'qwe5v');
INSERT INTO `Безопасность` VALUES ('6', 'monster', '3qw456y');
INSERT INTO `Безопасность` VALUES ('7', 'йцукен', '25ey');
INSERT INTO `Безопасность` VALUES ('8', 'КтоЗдесь', '23q54v');
INSERT INTO `Безопасность` VALUES ('9', 'KingOfTheDark', 'ervyhf');
INSERT INTO `Безопасность` VALUES ('10', 'petrushka', 'wesrvh');
INSERT INTO `Безопасность` VALUES ('11', 'operatciya', 'sfdv45');
INSERT INTO `Безопасность` VALUES ('12', 'terokk', 'weryw');
INSERT INTO `Безопасность` VALUES ('13', 'three', '452y245y');
INSERT INTO `Безопасность` VALUES ('14', 'dadenBaden', 'wbdfcwerty');
INSERT INTO `Безопасность` VALUES ('15', 'человек', 'gwrtsse54');
INSERT INTO `Безопасность` VALUES ('16', 'Vikula', 'qtq4we5yh');
INSERT INTO `Безопасность` VALUES ('17', 'janeQQ', 'b24w5');
INSERT INTO `Безопасность` VALUES ('18', '123', '2h45wy');
INSERT INTO `Безопасность` VALUES ('19', '067443', 'w45h');
INSERT INTO `Безопасность` VALUES ('20', 'wrum', 'qw45eh');
INSERT INTO `Безопасность` VALUES ('21', 'opachki', '245yh2w45h');
INSERT INTO `Безопасность` VALUES ('22', 'ilova', '6w245hwb');
INSERT INTO `Безопасность` VALUES ('23', 'ggggggg', '2hghwrtty');
INSERT INTO `Безопасность` VALUES ('24', 'edcxsdf', 'astg5ws5erh');
INSERT INTO `Безопасность` VALUES ('25', '142536', 'b54srtdcukg');
INSERT INTO `Безопасность` VALUES ('26', 'trip', 'w45eyh');
INSERT INTO `Безопасность` VALUES ('27', 'qastorka', 'ed5t76ykjm');
INSERT INTO `Безопасность` VALUES ('28', 'rtyu', 'ew6rhjsryf');
INSERT INTO `Безопасность` VALUES ('29', 'trigger', 'sr6ww46');
INSERT INTO `Безопасность` VALUES ('30', 'rota', '46ryu');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Заказы
-- ----------------------------
INSERT INTO `Заказы` VALUES ('1', '1', 'Завершён', '2015-07-27');
INSERT INTO `Заказы` VALUES ('2', '2', 'Завершён', '2015-07-28');
INSERT INTO `Заказы` VALUES ('3', '3', 'Завершён', '2015-07-29');
INSERT INTO `Заказы` VALUES ('4', '4', 'Отменён', '2015-07-30');
INSERT INTO `Заказы` VALUES ('5', '5', 'Завершён', '2015-07-31');
INSERT INTO `Заказы` VALUES ('6', '6', 'Завершён', '2015-08-01');
INSERT INTO `Заказы` VALUES ('7', '7', 'Завершён', '2015-08-02');
INSERT INTO `Заказы` VALUES ('8', '10', 'Завершён', '2015-08-03');
INSERT INTO `Заказы` VALUES ('9', '30', 'Завершён', '2015-08-04');
INSERT INTO `Заказы` VALUES ('10', '1', 'Завершён', '2015-08-05');
INSERT INTO `Заказы` VALUES ('11', '12', 'Отменён', '2015-08-06');
INSERT INTO `Заказы` VALUES ('12', '8', 'Завершён', '2015-08-07');
INSERT INTO `Заказы` VALUES ('13', '11', 'Завершён', '2015-08-08');
INSERT INTO `Заказы` VALUES ('14', '14', 'Завершён', '2015-08-09');
INSERT INTO `Заказы` VALUES ('15', '15', 'Завершён', '2015-08-10');
INSERT INTO `Заказы` VALUES ('16', '17', 'Завершён', '2015-08-11');
INSERT INTO `Заказы` VALUES ('17', '20', 'Завершён', '2015-08-12');
INSERT INTO `Заказы` VALUES ('18', '18', 'Завершён', '2015-08-13');
INSERT INTO `Заказы` VALUES ('19', '13', 'Завершён', '2015-08-14');
INSERT INTO `Заказы` VALUES ('20', '7', 'Завершён', '2015-08-15');
INSERT INTO `Заказы` VALUES ('21', '9', 'Завершён', '2015-08-16');
INSERT INTO `Заказы` VALUES ('22', '29', 'Завершён', '2015-08-17');
INSERT INTO `Заказы` VALUES ('23', '22', 'Завершён', '2015-08-18');
INSERT INTO `Заказы` VALUES ('24', '19', 'Завершён', '2015-08-19');
INSERT INTO `Заказы` VALUES ('25', '21', 'Доставляется', '2015-08-20');
INSERT INTO `Заказы` VALUES ('26', '23', 'Доставляется', '2015-08-22');
INSERT INTO `Заказы` VALUES ('27', '26', 'Доставляется', '2015-08-22');
INSERT INTO `Заказы` VALUES ('28', '27', 'В обработке', '2015-08-23');
INSERT INTO `Заказы` VALUES ('29', '24', 'В обработке', '2015-08-23');
INSERT INTO `Заказы` VALUES ('30', '25', 'В обработке', '2015-08-24');
INSERT INTO `Заказы` VALUES ('31', '28', 'В обработке', '2015-08-24');
INSERT INTO `Заказы` VALUES ('32', '14', 'В обработке', '2015-08-25');

-- ----------------------------
-- Table structure for Категории товаров
-- ----------------------------
DROP TABLE IF EXISTS `Категории товаров`;
CREATE TABLE `Категории товаров` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Категории товаров
-- ----------------------------
INSERT INTO `Категории товаров` VALUES ('1', 'Процессоры');
INSERT INTO `Категории товаров` VALUES ('2', 'Материнские платы');
INSERT INTO `Категории товаров` VALUES ('3', 'Модули памяти');
INSERT INTO `Категории товаров` VALUES ('4', 'Видеокарты');
INSERT INTO `Категории товаров` VALUES ('5', 'Жесткие диски');
INSERT INTO `Категории товаров` VALUES ('6', 'Блоки питания');
INSERT INTO `Категории товаров` VALUES ('7', 'Устройства охлаждения');
INSERT INTO `Категории товаров` VALUES ('8', 'Звуковые карты');
INSERT INTO `Категории товаров` VALUES ('9', 'Контроллеры');
INSERT INTO `Категории товаров` VALUES ('10', 'Корпуса');

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
  `Price` varchar(255) NOT NULL,
  `Count` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Состав заказа
-- ----------------------------
INSERT INTO `Состав заказа` VALUES ('1', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('0', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('14', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('15', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('16', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('17', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('18', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('19', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('20', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('20', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('20', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('21', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('21', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('22', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('23', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('24', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('25', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('26', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('27', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('27', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('28', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('28', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('28', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('29', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('29', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('30', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('21', '0', '', '0');
INSERT INTO `Состав заказа` VALUES ('32', '0', '', '0');

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
  `Description` text,
  `Id_catalog` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Товары
-- ----------------------------
INSERT INTO `Товары` VALUES ('1', 'AMD', 'Sempron 2650', '2', '1750.00', 'сокет SocketAM1, ядро Jaguar Kabini, ядер — 2, потоков — 2, техпроцесс 28нм, частота 1.45 ГГц, поддержка памяти DDR3 до 16 ГБ, ЕСС, каналов памяти — 2, контроллер PCI Express 2.0, графическое ядро AMD Radeon HD 8240, поставка OEM', '1');
INSERT INTO `Товары` VALUES ('2', 'AMD', 'A4 5300', '5', '1830.00', 'сокет SocketFM2, ядер — 2, техпроцесс 32нм, частота 3.4 ГГц, графическое ядро AMD Radeon HD 7480D, поставка OEM', '1');
INSERT INTO `Товары` VALUES ('3', 'AMD', 'Athlon X2 340', '1', '1830.00', 'сокет SocketFM2, ядер — 2, техпроцесс 32нм, частота 3.2 ГГц, поставка OEM', '1');
INSERT INTO `Товары` VALUES ('4', 'INTEL', 'Celeron Dual-Core G1630', '4', '2440.00', 'сокет LGA 1155, ядро Ivy Bridge, ядер — 2, потоков — 2, L3 кэш 2Мб, техпроцесс 22нм, частота 2.8 ГГц, поддержка памяти DDR3 до 32 ГБ, ЕСС, каналов памяти — 2, множитель х 28, контроллер PCI Express 2.0, графическое ядро Intel HD Graphics, поставка OEM', '1');
INSERT INTO `Товары` VALUES ('5', 'INTEL', 'Celeron G1620', '2', '2500.00', 'сокет LGA 1155, ядро Ivy Bridge, ядер — 2, потоков — 2, L3 кэш 2Мб, техпроцесс 22нм, частота 2.7 ГГц, поддержка памяти DDR3 до 32 ГБ, ЕСС, каналов памяти — 2, множитель х 27, контроллер PCI Express 2.0, графическое ядро Intel HD Graphics, поставка OEM', '1');
INSERT INTO `Товары` VALUES ('6', 'INTEL', 'Celeron Dual-Core G1820', '12', '2900.00', 'сокет LGA 1150, ядро Haswell, ядер — 2, потоков — 2, L3 кэш 2Мб, техпроцесс 22нм, частота 2.7 ГГц, поддержка памяти DDR3 до 32 ГБ, ЕСС, каналов памяти — 2, множитель х 27, контроллер PCI Express 3.0, графическое ядро Intel HD Graphics, поставка OEM', '1');
INSERT INTO `Товары` VALUES ('7', 'ASUS', 'AM1M-A', '2', '2330.00', 'память DDR3 — 2слота; частотой до 1600МГц; гнездо процессора: SocketAM1; тип поставки: Ret', '2');
INSERT INTO `Товары` VALUES ('8', 'ASUS', 'A58M-K', '5', '2870.00', 'чипсет AMD A58 FCH; память DDR3 — 2слота; частотой до 2133МГц; гнездо процессора: Socket FM2+; тип поставки: Ret; SATA RAID', '2');
INSERT INTO `Товары` VALUES ('9', 'ASUS', 'H81M-K', '4', '2910.00', 'чипсет Intel H81; память DDR3 — 2слота; частотой до 1600МГц; гнездо процессора: LGA 1150; тип поставки: Ret', '2');
INSERT INTO `Товары` VALUES ('10', 'ASROCK ', '960GM-VGS3 FX', '6', '2870.00', 'интегрированное видео; чипсет AMD 760G & AMD SB710; память DDR3 — 2слота; частотой до 1333МГц; гнездо процессора: SocketAM3+; тип поставки: Ret; SATA RAID', '2');
INSERT INTO `Товары` VALUES ('11', 'GIGABYTE', 'GA-H61M-S1', '5', '2900.00', 'чипсет Intel H61(B3); память DDR3 — 2слота; частотой до 1333МГц; гнездо процессора: LGA 1155; тип поставки: Ret', '2');
INSERT INTO `Товары` VALUES ('12', 'MSI', 'H81M-P33', '8', '29000.00', 'чипсет Intel H81; память DDR3 — 2слота; частотой до 1600МГц; гнездо процессора: LGA 1150; тип поставки: Ret', '2');
INSERT INTO `Товары` VALUES ('13', 'HYNIX', '3rd DDR2', '2', '970.00', '240-pin; частота: 800; форм-фактор: DIMM; тип поставки: OEM', '3');
INSERT INTO `Товары` VALUES ('14', 'PATRIOT', 'DDR3', '1', '980.00', '240-pin; частота: 1600; форм-фактор: DIMM; тип поставки: Ret', '3');
INSERT INTO `Товары` VALUES ('15', 'AMD', 'R532G1601S1S-UO DDR3', '8', '1000.00', '204-pin; частота: 1600; форм-фактор: SO-DIMM; тип поставки: Ret', '3');
INSERT INTO `Товары` VALUES ('16', 'MSI', 'GeForce 210', '6', '1920.00', 'nVidia GeForce 210; частота процессора: 589 МГц; частота памяти: 500МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; тип поставки: Ret', '4');
INSERT INTO `Товары` VALUES ('17', 'SAPPHIRE', 'Radeon HD 5450', '3', '2250.00', 'AMD Radeon HD 5450; частота процессора: 650 МГц; частота памяти: 1000МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 11/OpenGL 3.1; доп. питание: без дополнительного питания; блок питания не менее: 400Вт; тип поставки: oem', '4');
INSERT INTO `Товары` VALUES ('18', 'ASUS', 'GeForce 210, 210-SL-TC1GD3-L', '5', '1950.00', 'nVidia GeForce 210; частота процессора: 589 МГц; частота памяти: 1200МГц; объём видеопамяти: 512Мб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; тип поставки: Ret', '4');
INSERT INTO `Товары` VALUES ('19', 'ASUS', 'EN210 SILENT/DI/1GD3/V2(LP)', '5', '2190.00', 'nVidia GeForce 210; частота процессора: 589 МГц; частота памяти: 1200МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; блок питания не менее: 300Вт; тип поставки: Ret', '4');
INSERT INTO `Товары` VALUES ('20', 'GIGABYTE', 'GeForce 210, GV-N210D3-1GI', '6', '2130.00', 'nVidia GeForce 210; частота процессора: 590 МГц; частота памяти: 1200МГц; объём видеопамяти: 1Гб; тип видеопамяти: DDR3; DirectX 10.1/OpenGL 3.1; доп. питание: без дополнительного питания; блок питания не менее: 300Вт; тип поставки: Ret', '4');
INSERT INTO `Товары` VALUES ('21', 'SEAGATE', 'Momentus Thin ST500LT012', '6', '2950.00', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA II; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 16Мб', '5');
INSERT INTO `Товары` VALUES ('22', 'SEAGATE', 'Momentus ST320LM001', '3', '2670.00', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA II; объём: 320Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Товары` VALUES ('23', 'WD', 'Scorpio Blue WD5000LPVX', '0', '2970.00', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Товары` VALUES ('24', 'TOSHIBA ', 'MQ01ABF050', '6', '2930.00', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Товары` VALUES ('25', 'HGST', 'Travelstar Z5K500', '2', '3020.00', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Товары` VALUES ('26', 'WD', 'Blue WD3200LPVX', '9', '3060.00', 'форм-фактор 2.5\"; тип: HDD; интерфейс: SATA III; объём: 320Гб; скорость вращения шпинделя 5400об/мин; буферная память 8Мб', '5');
INSERT INTO `Товары` VALUES ('27', 'TOSHIBA', 'DT01ACA050', '3', '3220.00', 'форм-фактор 3.5\"; тип: HDD; интерфейс: SATA III; объём: 500Гб; скорость вращения шпинделя 7200об/мин; буферная память 32Мб', '5');
INSERT INTO `Товары` VALUES ('28', 'LINKWORLD', 'LW2-300W', '9', '860.00', 'ATX; размер вентилятора 80мм; мощность: 300Вт; питание MB и CPU: 24+4 pin; питание видеокарты: отсутствует; разъемы Molex: 2шт; разъемы SATA: 2шт; cетевой кабель в комплекте; цвет: стандарт; тип поставки Ret', '6');
INSERT INTO `Товары` VALUES ('29', 'ACCORD', 'ACC-350W-12', '5', '840.00', 'ATX; размер вентилятора 120мм; мощность: 350Вт; питание MB и CPU: 24+4 pin; питание видеокарты: 6 pin; разъемы Molex: 1шт; разъемы SATA: 4шт; без сетевого кабеля; цвет: стандарт; тип поставки OEM', '6');
INSERT INTO `Товары` VALUES ('30', ' GIGABYTE', 'GZ-EBS45N-C3', '6', '1880.00', 'ATX; размер вентилятора 120мм; мощность: 450Вт; питание MB и CPU: 24+4+4 pin; разъемы Molex: 2шт; разъемы SATA: 3шт; без сетевого кабеля; цвет: черный; тип поставки OEM', '6');
INSERT INTO `Товары` VALUES ('31', ' DEEPCOOL', 'XFAN 60', '6', '110.00', 'вентиляторов — 1шт, 60мм, 3000 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Товары` VALUES ('32', ' DEEPCOOL', 'XFAN 40', '5', '180.00', 'вентиляторов — 1шт, 40мм, 4500 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Товары` VALUES ('33', 'TITAN', 'DCF-8025L12S', '3', '180.00', 'вентиляторов — 1шт, 80мм, 2000 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Товары` VALUES ('34', 'GLACIALTECH ', 'IceWind GS14025', '2', '230.00', 'вентиляторов — 1шт, 140мм, 1000 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Товары` VALUES ('35', 'GLACIALTECH ', 'IceWind 9225', '6', '260.00', 'вентиляторов — 1шт, 92мм, 1500 об/мин; подшипник скольжения; питание от МП — 3-pin', '7');
INSERT INTO `Товары` VALUES ('36', 'ASUS', 'Xonar DG', '3', '2170.00', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Товары` VALUES ('37', 'CREATIVE ', 'Sound Blaster Play! 2', '1', '2590.00', 'звуковая схема: 2.0, тип поставки: Ret', '8');
INSERT INTO `Товары` VALUES ('38', 'CREATIVE', 'Audigy FX ', '2', '3220.00', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Товары` VALUES ('39', 'ASUS', 'Xonar D-KARA', '4', '3470.00', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Товары` VALUES ('40', 'CREATIVE', 'Sound Blaster Z', '3', '7320.00', 'звуковая схема: 5.1, тип поставки: Ret', '8');
INSERT INTO `Товары` VALUES ('41', 'SATA', '(2ext/2int)+UDMA 133 1-port', '9', '2530.00', '(2ext/2int)+UDMA 133 1-port PCI STLab A-230 (VIA 6421)RaiD RTL', '9');
INSERT INTO `Товары` VALUES ('42', 'SATA', '(2+1)port +RAID SIL3512 bulk', '3', '1030.00', '', '9');
INSERT INTO `Товары` VALUES ('43', 'PCI-E USB', 'USB 2.0 (4+1)port VIA6212 bulk', '6', '540.00', '', '9');
INSERT INTO `Товары` VALUES ('44', 'PCI-E USB', 'USB 3.0 2-port NEC D720200F1', '5', '960.00', '', '9');
INSERT INTO `Товары` VALUES ('45', 'PCI-E SATA/IDE', '(2+1)port+SATA RAID JMB363 bulk', '5', '1030.00', '', '9');
INSERT INTO `Товары` VALUES ('46', 'GIGABYTE', 'GZ-KХ1', '4', '1790.00', 'размер: Midi-Tower; USB 2.0: 2шт, + аудио на передней панели; отсеки внешние 5.25\"- 4шт, 3.5\"- 2шт; внутренние 3.5\"- 5шт; материал стенок — сталь, 0.4мм, видеокарта длиной, до: 265мм', '10');
INSERT INTO `Товары` VALUES ('47', 'ACCORD', 'SA-01B', '4', '2200.00', 'размер: Midi-Tower; USB 2.0: 2шт, USB 3.0: 1шт, + аудио на передней панели; отсеки внешние 5.25\"- 2шт, 3.5\"- 1шт; внутренние 3.5\"- 4шт; материал стенок — сталь, видеокарта длиной, до: 245мм', '10');
INSERT INTO `Товары` VALUES ('48', 'ZALMAN', 'ZM-T4', '6', '2220.00', 'размер: Mini-Tower; USB 2.0: 1шт, USB 3.0: 1шт, + аудио на передней панели; отсеки внешние 5.25\"- 1шт, внутренние 3.5\"- 2шт; материал стенок — сталь, видеокарта длиной, до: 300мм', '10');
