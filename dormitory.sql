

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `d_admin`
-- ----------------------------
DROP TABLE IF EXISTS `d_admin`;
CREATE TABLE `d_admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_username` varchar(20) NOT NULL,
  `a_password` varchar(50) NOT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  `a_phone` varchar(11) DEFAULT NULL,
  `a_power` varchar(20) DEFAULT NULL,
  `a_describe` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_admin
-- ----------------------------
INSERT INTO `d_admin` VALUES (1, 'ymm', '123456', '于明明', '13413413412', '1', '高');
INSERT INTO `d_admin` VALUES (2, 'test', '123456', '测试', '15154666233', '2', '低');
INSERT INTO `d_admin` VALUES (22, 'admin', 'adminadmin', '公寓管理员', '15154162226', '1', '高');

-- ----------------------------
-- Table structure for `d_class`
-- ----------------------------
DROP TABLE IF EXISTS `d_class`;
CREATE TABLE `d_class` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_classid` int(11) NOT NULL,
  `c_classname` varchar(30) DEFAULT NULL,
  `c_counsellor` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_class
-- ----------------------------
INSERT INTO `d_class` VALUES (1, 141, '生物', '徐超');
INSERT INTO `d_class` VALUES (2, 151, '应化', '刘晨');
INSERT INTO `d_class` VALUES (3, 142, '土木', '孙玲');
INSERT INTO `d_class` VALUES (4, 161, '物流', '刘阳');
INSERT INTO `d_class` VALUES (5, 153, '数师', '张宇');
INSERT INTO `d_class` VALUES (6, 162, '物流', '刘阳');
INSERT INTO `d_class` VALUES (7, 171, '自动化', '周涵涵');
INSERT INTO `d_class` VALUES (8, 154, '土木', '孙玲');
INSERT INTO `d_class` VALUES (9, 151, '纺织', '赵凯');
INSERT INTO `d_class` VALUES (10, 153, '金融', '刘培');
INSERT INTO `d_class` VALUES (11, 404, '计算机', '王勇');


-- ----------------------------
-- Table structure for `d_dormgrade`
-- ----------------------------
DROP TABLE IF EXISTS `d_dormgrade`;
CREATE TABLE `d_dormgrade` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_grade` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_dormgrade
-- ----------------------------
INSERT INTO `d_dormgrade` VALUES (1, 301, '24', 6, '2019-4-25 10:51:17', '2019-5-12 17:28:38');
INSERT INTO `d_dormgrade` VALUES (2, 302, '24', 7, '2019-5-1 16:36:47', '2019-5-1 16:36:55');
INSERT INTO `d_dormgrade` VALUES (3, 322, '24', 8, '2019-5-4 16:37:42', '2019-5-4 16:37:47');
INSERT INTO `d_dormgrade` VALUES (4, 602, '23', 7, '2019-5-8 16:38:25', '2019-5-8 16:38:30');
INSERT INTO `d_dormgrade` VALUES (5, 112, '22', 7, '2019-5-12 16:38:53', '2019-5-12 16:39:00');
INSERT INTO `d_dormgrade` VALUES (6, 222, '27', 9, '2019-5-9 16:39:37', '2019-5-9 16:39:41');
INSERT INTO `d_dormgrade` VALUES (7, 213, '27', 8, '2019-5-10 16:40:02', '2019-5-10 16:40:08');
INSERT INTO `d_dormgrade` VALUES (8, 301, '24', 10, '2020-5-11 09:58:08', '2020-5-11 09:58:08');
INSERT INTO `d_dormgrade` VALUES (9, 512, '24', 10, '2020-5-21 16:43:35', '2020-5-21 16:43:35');

-- ----------------------------
-- Table structure for `d_dormitoryinfo`
-- ----------------------------
DROP TABLE IF EXISTS `d_dormitoryinfo`;
CREATE TABLE `d_dormitoryinfo` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_dormitoryid` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) DEFAULT NULL,
  `d_bedtotal` varchar(20) DEFAULT NULL,
  `d_bed` varchar(20) DEFAULT NULL,
  `a_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_dormitoryinfo
-- ----------------------------
INSERT INTO `d_dormitoryinfo` VALUES (1, 311, '24', '4', '3', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (2, 322, '24', '4', '4', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (3, 601, '23', '6', '6', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES (4, 602, '23', '6', '5', '张杰');
INSERT INTO `d_dormitoryinfo` VALUES (5, 111, '22', '4', '4', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES (6, 112, '22', '4', '3', '杨雯雯');
INSERT INTO `d_dormitoryinfo` VALUES (7, 222, '27', '6', '6', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES (8, 213, '27', '4', '4', '张伟');
INSERT INTO `d_dormitoryinfo` VALUES (9, 312, '26', '6', '6', '薛磊');
INSERT INTO `d_dormitoryinfo` VALUES (10, 313, '22', '4', '4', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES (11, 323, '22', '6', '5', '张磊');
INSERT INTO `d_dormitoryinfo` VALUES (12, 301, '24', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (13, 302, '24', '6', '6', '周荀凯');
INSERT INTO `d_dormitoryinfo` VALUES (14, 423, '29', '4', '3', '郭浩然');
INSERT INTO `d_dormitoryinfo` VALUES (15, 512, '24', '6', '6', '李超');


-- ----------------------------
-- Table structure for `d_dormrepair`
-- ----------------------------
DROP TABLE IF EXISTS `d_dormrepair`;
CREATE TABLE `d_dormrepair` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_id` int(11) NOT NULL,
  `d_dormbuilding` varchar(20) NOT NULL,
  `r_name` varchar(20) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_dormrepair
-- ----------------------------
INSERT INTO `d_dormrepair` VALUES (1, 301, '24', '王涛', '水池', '2019-5-13 22:39:58', '2019-5-13 22:39:58');
INSERT INTO `d_dormrepair` VALUES (2, 322, '24', '王涛', '灯管', '2019-5-11 16:29:20', '2019-5-14 16:29:35');
INSERT INTO `d_dormrepair` VALUES (3, 601, '23', '冯军', '水龙头', '2019-5-15 16:31:14', '2019-5-14 16:31:20');
INSERT INTO `d_dormrepair` VALUES (4, 601, '23', '冯军', '插孔', '2019-5-15 16:31:56', '2019-5-15 16:32:04');
INSERT INTO `d_dormrepair` VALUES (5, 213, '27', '冯军', '排风扇', '2019-5-18 16:32:54', '2019-5-14 16:33:00');
INSERT INTO `d_dormrepair` VALUES (6, 312, '26', '彭建国', '空调', '2019-5-20 16:33:56', '2019-5-20 16:34:01');
INSERT INTO `d_dormrepair` VALUES (7, 512, '24', '张曦', '水龙头漏水', '2020-5-21 16:39:31', '2020-5-21 16:39:31');

-- ----------------------------
-- Table structure for `d_stgrade`
-- ----------------------------
DROP TABLE IF EXISTS `d_stgrade`;
CREATE TABLE `d_stgrade` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_grade` int(11) DEFAULT NULL,
  `s_classid` int(11) DEFAULT NULL,
  `s_dormitoryid` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_stgrade
-- ----------------------------
INSERT INTO `d_stgrade` VALUES (1, 1413032001, '张杰', 6, 141, 301, '2019-4-26 09:56:51', '2019-4-26 11:02:13');
INSERT INTO `d_stgrade` VALUES (2, 1413032002, '赵凯', 7, 141, 301, '2019-5-1 17:00:05', '2019-5-1 17:00:13');
INSERT INTO `d_stgrade` VALUES (3, 1413032003, '许文文', 6, 141, 301, '2019-5-6 17:00:54', '2019-5-6 17:01:01');
INSERT INTO `d_stgrade` VALUES (4, 1413032003, '许文文', 7, 141, 301, '2019-5-16 17:01:33', '2019-5-16 17:02:15');
INSERT INTO `d_stgrade` VALUES (5, 1413032004, '王浩', 7, 141, 301, '2019-5-10 17:03:03', '2019-5-10 17:03:09');
INSERT INTO `d_stgrade` VALUES (6, 1413032005, '张伟', 8, 141, 301, '2019-5-14 17:03:53', '2019-5-14 17:03:56');
INSERT INTO `d_stgrade` VALUES (7, 1513112412, '赵跃', 9, 151, 112, '2019-5-8 17:05:04', '2019-5-8 17:05:07');
INSERT INTO `d_stgrade` VALUES (8, 1513112412, '赵跃', 9, 151, 112, '2019-5-17 17:05:34', '2019-5-17 17:05:39');
INSERT INTO `d_stgrade` VALUES (9, 1513122418, '田野', 8, 151, 213, '2019-5-15 17:06:28', '2019-5-15 17:06:35');
INSERT INTO `d_stgrade` VALUES (10, 1513122419, '张嘉佳', 8, 151, 213, '2019-5-15 17:07:09', '2019-5-15 17:07:13');
INSERT INTO `d_stgrade` VALUES (11, 2016071109, '李超', 10, 141, 512, '2020-5-21 16:44:05', '2020-5-21 16:44:05');

-- ----------------------------
-- Table structure for `d_student`
-- ----------------------------
DROP TABLE IF EXISTS `d_student`;
CREATE TABLE `d_student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_studentid` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_sex` varchar(20) DEFAULT NULL,
  `s_age` int(11) DEFAULT NULL,
  `s_phone` varchar(11) DEFAULT NULL,
  `s_classid` int(11) NOT NULL,
  `s_classname` varchar(20) DEFAULT NULL,
  `s_dormitoryid` int(11) NOT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of d_student
-- ----------------------------
INSERT INTO `d_student` VALUES (1, 1413032001, '张杰', '男', 22, '12312312312', 141, '生物', 301);
INSERT INTO `d_student` VALUES (2, 1413032002, '赵凯', '男', 22, '13813813812', 141, '生物', 301);
INSERT INTO `d_student` VALUES (3, 1413032003, '许文文', '男', 21, '13813813812', 141, '生物', 301);
INSERT INTO `d_student` VALUES (4, 1413032004, '王浩', '男', 22, '13813813812', 141, '生物', 301);
INSERT INTO `d_student` VALUES (5, 1413032005, '张伟', '男', 22, '13813813812', 141, '土木', 301);
INSERT INTO `d_student` VALUES (6, 1413032006, '郭顶', '男', 21, '13813813812', 141, '土木', 301);
INSERT INTO `d_student` VALUES (7, 1513112411, '曹原', '男', 20, '13813813821', 151, '应化', 112);
INSERT INTO `d_student` VALUES (8, 1513112412, '赵跃', '男', 21, '13813813812', 151, '纺织', 112);
INSERT INTO `d_student` VALUES (9, 1513112413, '孙畅', '男', 21, '13813813812', 151, '纺织', 112);
INSERT INTO `d_student` VALUES (10, 1513122417, '周帆', '男', 21, '13813813821', 161, '物流', 213);
INSERT INTO `d_student` VALUES (11, 1513122418, '田野', '男', 21, '13813813812', 153, '数师', 213);
INSERT INTO `d_student` VALUES (12, 1513122419, '张嘉佳', '男', 20, '13813813812', 153, '金融', 213);
INSERT INTO `d_student` VALUES (13, 1513122420, '陈昊', '男', 21, '13813813812', 153, '金融', 213);
INSERT INTO `d_student` VALUES (14, 2016071109, '李超', '男', 18, '15154666236', 141, '生物', 512);

