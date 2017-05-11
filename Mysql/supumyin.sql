/*
Navicat MySQL Data Transfer

Source Server         : 本地mysql
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : supumyin

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-10 17:51:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dome
-- ----------------------------
DROP TABLE IF EXISTS `dome`;
CREATE TABLE `dome` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dome
-- ----------------------------
INSERT INTO `dome` VALUES ('hegu', '123456789', '18');
INSERT INTO `dome` VALUES ('yyhhh', '123456789', '19');
INSERT INTO `dome` VALUES ('gggff', '123456789', '21');
INSERT INTO `dome` VALUES ('1354325551', '123456', '18');
INSERT INTO `dome` VALUES ('kkkkkkk', '123456', '19');
INSERT INTO `dome` VALUES ('13543256666', '123456', '20');
INSERT INTO `dome` VALUES ('18877775860', '123456', '18');
INSERT INTO `dome` VALUES ('789789', '123456', '20');
INSERT INTO `dome` VALUES ('13543255551', '123456789', '18');
INSERT INTO `dome` VALUES ('19999999', '123456789', '18');
INSERT INTO `dome` VALUES ('1999999', '123456789', '123456789');
INSERT INTO `dome` VALUES ('18888889999', '123456', '18');
INSERT INTO `dome` VALUES ('19988886666', '123456', '18');
INSERT INTO `dome` VALUES ('16677778888', '123456', '19');
INSERT INTO `dome` VALUES ('15566668888', '123456789', '20');
INSERT INTO `dome` VALUES ('123456789', '123456', '18');
INSERT INTO `dome` VALUES ('15588882222', '123456', '20');
INSERT INTO `dome` VALUES ('12233336666', '123456', '20');
INSERT INTO `dome` VALUES ('14455556666', '123456', '20');
INSERT INTO `dome` VALUES ('12255556666', '123456', '19');
INSERT INTO `dome` VALUES ('18899994444', '123456', '20');
INSERT INTO `dome` VALUES ('18899993333', '123456', '20');
INSERT INTO `dome` VALUES ('16655552222', '123456', '20');
INSERT INTO `dome` VALUES ('10000', '123456', '15');
INSERT INTO `dome` VALUES ('18877770022', '123456', '18');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `xiaotu` varchar(9999) DEFAULT NULL,
  `Datu` varchar(9999) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '湿面膜', '￥20', 'Supu/img/mm1.jpg', '海洋深层保湿面膜', '1', 'Supu/img/mm1.jpg?Supu/img/mm2.jpg?Supu/img/mm3.jpg?Supu/img/mm4.jpg?Supu/img/mm5.jpg', 'Supu/img/mn1.jpg?Supu/img/mn2.jpg?Supu/img/mn3.jpg?Supu/img/mn4.jpg?Supu/img/mn5.jpg');
INSERT INTO `goods` VALUES ('2', '时洁面乳', '￥50', 'Supu/img/pn1.jpg', '无痕系列 纤妍凝时洁面乳', '2', 'Supu/img/pn1.jpg?Supu/img/pn2.jpg?Supu/img/pn3.jpg?Supu/img/pn4.jpg?Supu/img/pn5.jpg', 'Supu/img/pj1.jpg?Supu/img/pj2.jpg?Supu/img/pj3.jpg?Supu/img/pj4.jpg?Supu/img/pj5.jpg');
INSERT INTO `goods` VALUES ('3', '肌植萃保湿乳', '￥80', 'Supu/img/gu1.jpg', '简爱系列 水肌植萃保湿乳', '3', 'Supu/img/gu1.jpg?Supu/img/gu2.jpg?Supu/img/gu3.jpg?Supu/img/gu4.jpg?Supu/img/gu5.jpg', 'Supu/img/gjj1.jpg?Supu/img/gjj2.jpg?Supu/img/gjj3.jpg?Supu/img/gjj4.jpg?Supu/img/gjj5.jpg');
INSERT INTO `goods` VALUES ('4', 'LAMY凌美', '￥88', 'Supu/img/180.jpg', '德国自信系列透明ABS钢笔F笔尖', '4', 'Supu/img/180.jpg?Supu/img/181.jpg?Supu/img/182.jpg?Supu/img/183.jpg?Supu/img/184.jpg', 'Supu/img/185.jpg?Supu/img/186.jpg?Supu/img/187.jpg?Supu/img/188.jpg?Supu/img/189.jpg');
INSERT INTO `goods` VALUES ('5', 'LAMY凌美', '￥89', 'Supu/img/190.jpg', '德国狩猎系列粉色钢笔F笔尖', '5', 'Supu/img/190.jpg?Supu/img/191.jpg?Supu/img/192.jpg?Supu/img/193.jpg?Supu/img/194.jpg', 'Supu/img/195.jpg?Supu/img/196.jpg?Supu/img/197.jpg?Supu/img/198.jpg?Supu/img/199.jpg');
INSERT INTO `goods` VALUES ('6', 'LAMY凌美', '￥90', 'Supu/img/200.jpg', '德国狩猎系列磨砂黑钢笔F笔尖', '6', 'Supu/img/200.jpg?Supu/img/201.jpg?Supu/img/202.jpg?Supu/img/203.jpg?Supu/img/204.jpg', 'Supu/img/205.jpg?Supu/img/206.jpg?Supu/img/207.jpg?Supu/img/208.jpg?Supu/img/209.jpg');
INSERT INTO `goods` VALUES ('7', 'LAMY凌美', '￥95', 'Supu/img/210.jpg', '德国狩猎系列蓝色钢笔F笔尖', '7', 'Supu/img/210.jpg?Supu/img/211.jpg?Supu/img/212.jpg?Supu/img/213.jpg?Supu/img/214.jpg', 'Supu/img/215.jpg?Supu/img/216.jpg?Supu/img/217.jpg?Supu/img/218.jpg?Supu/img/219.jpg');
INSERT INTO `goods` VALUES ('8', 'LAMY凌美', '￥100', 'Supu/img/220.jpg', '德国狩猎系列蓝色钢笔F笔尖', '8', 'Supu/img/220.jpg?Supu/img/221.jpg?Supu/img/222.jpg?Supu/img/223.jpg?Supu/img/224.jpg', 'Supu/img/225.jpg?Supu/img/226.jpg?Supu/img/227.jpg?Supu/img/228.jpg?Supu/img/229.jpg');
INSERT INTO `goods` VALUES ('9', 'LAMY凌美', '￥105', 'Supu/img/230.jpg', '德国狩猎系列黑色钢笔F笔尖', '9', 'Supu/img/230.jpg?Supu/img/231.jpg?Supu/img/232.jpg?Supu/img/233.jpg?Supu/img/234.jpg', 'Supu/img/235.jpg?Supu/img/236.jpg?Supu/img/237.jpg?Supu/img/238.jpg?Supu/img/239.jpg');
INSERT INTO `goods` VALUES ('10', 'LAMY凌美', '￥110', 'Supu/img/240.jpg', '德国狩猎系列白色钢笔F笔尖', '10', 'Supu/img/240.jpg?Supu/img/241.jpg?Supu/img/242.jpg?Supu/img/243.jpg?Supu/img/244.jpg', 'Supu/img/245.jpg?Supu/img/246.jpg?Supu/img/247.jpg?Supu/img/248.jpg?Supu/img/249.jpg');
INSERT INTO `goods` VALUES ('11', 'Peacock孔雀', '￥115', 'Supu/img/250.jpg', '日本不锈钢真空保温杯', '11', 'Supu/img/250.jpg?Supu/img/251.jpg?Supu/img/252.jpg?Supu/img/253.jpg?Supu/img/254.jpg', 'Supu/img/255.jpg?Supu/img/256.jpg?Supu/img/256.jpg?Supu/img/257.jpg?Supu/img/258.jpg?Supu/img/259.jpg');
INSERT INTO `goods` VALUES ('12', 'Peacock孔雀', '￥120', 'Supu/img/260.jpg', '日本炫彩高档情侣不锈钢保温杯', '12', 'Supu/img/260.jpg?Supu/img/261.jpg?Supu/img/262.jpg?Supu/img/263.jpg?Supu/img/264.jpg', 'Supu/img/265.jpg?Supu/img/266.jpg?Supu/img/267.jpg?Supu/img/268.jpg?Supu/img/269.jpg');
INSERT INTO `goods` VALUES ('13', 'Peacock孔雀', '￥125', 'Supu/img/270.jpg', '日本保温杯创意水杯', '13', 'Supu/img/270.jpg?Supu/img/271.jpg?Supu/img/272.jpg?Supu/img/273.jpg?Supu/img/274.jpg', 'Supu/img/275.jpg?Supu/img/276.jpg?Supu/img/277.jpg?Supu/img/278.jpg?Supu/img/279.jpg');
INSERT INTO `goods` VALUES ('14', ' Bepanthen', '￥130', 'Supu/img/280.jpg', '德国婴儿尿布疹万用膏', '14', 'Supu/img/280.jpg?Supu/img/281.jpg?Supu/img/282.jpg?Supu/img/283.jpg?Supu/img/284.jpg', 'Supu/img/285.jpg?Supu/img/286.jpg?Supu/img/287.jpg?Supu/img/288.jpg?Supu/img/289.jpg');
INSERT INTO `goods` VALUES ('15', 'Eucerin优色林', '￥135', 'Supu/img/290.jpg', '美国宝宝万用膏儿童面霜', '15', 'Supu/img/290.jpg?Supu/img/291.jpg?Supu/img/292.jpg?Supu/img/293.jpg?Supu/img/294.jpg', 'Supu/img/295.jpg?Supu/img/296.jpg?Supu/img/297.jpg?Supu/img/298.jpg?Supu/img/299.jpg');
INSERT INTO `goods` VALUES ('16', 'Wakodo和光堂', '￥140', 'Supu/img/300.jpg', '日本儿童婴儿宝宝护肤爽身粉', '16', 'Supu/img/300.jpg?Supu/img/301.jpg?Supu/img/302.jpg?Supu/img/303.jpg?Supu/img/303.jpg?Supu/img/304.jpg', 'Supu/img/305.jpg?Supu/img/306.jpg?Supu/img/307.jpg?Supu/img/308.jpg?Supu/img/309.jpg');
INSERT INTO `goods` VALUES ('17', '杰克和吉尔', '￥150', 'Supu/img/180.jpg', '澳洲恐龙牙刷', '17', 'Supu/img/180.jpg?Supu/img/181.jpg?Supu/img/182.jpg?Supu/img/183.jpg?Supu/img/184.jpg', 'Supu/img/185.jpg?Supu/img/186.jpg?Supu/img/187.jpg?Supu/img/188.jpg?Supu/img/189.jpg');
INSERT INTO `goods` VALUES ('18', 'JACK N\'JILL', '￥160', 'Supu/img/190.jpg', ' 澳洲河马牙刷', '18', 'Supu/img/190.jpg?Supu/img/191.jpg?Supu/img/192.jpg?Supu/img/193.jpg?Supu/img/194.jpg', 'Supu/img/195.jpg?Supu/img/196.jpg?Supu/img/197.jpg?Supu/img/198.jpg?Supu/img/199.jpg');
INSERT INTO `goods` VALUES ('19', '杰克和吉尔', '￥170', 'Supu/img/200.jpg', '澳洲考拉漱口杯', '19', 'Supu/img/200.jpg?Supu/img/201.jpg?Supu/img/202.jpg?Supu/img/203.jpg?Supu/img/204.jpg', 'Supu/img/205.jpg?Supu/img/206.jpg?Supu/img/207.jpg?Supu/img/208.jpg?Supu/img/209.jpg');
INSERT INTO `goods` VALUES ('20', '杰克和吉尔', '￥180', 'Supu/img/210.jpg', '澳洲河马漱口杯', '20', 'Supu/img/210.jpg?Supu/img/211.jpg?Supu/img/212.jpg?Supu/img/213.jpg?Supu/img/214.jpg', 'Supu/img/215.jpg?Supu/img/216.jpg?Supu/img/217.jpg?Supu/img/218.jpg?Supu/img/219.jpg');
INSERT INTO `goods` VALUES ('21', '杰克和吉尔', '￥190', 'Supu/img/220.jpg', '澳洲蓝莓口味牙膏', '21', 'Supu/img/220.jpg?Supu/img/221.jpg?Supu/img/222.jpg?Supu/img/223.jpg?Supu/img/224.jpg', 'Supu/img/225.jpg?Supu/img/226.jpg?Supu/img/227.jpg?Supu/img/228.jpg?Supu/img/229.jpg');
INSERT INTO `goods` VALUES ('22', '杰克和吉尔', '￥200', 'Supu/img/230.jpg', '澳洲香蕉口味牙膏', '22', 'Supu/img/230.jpg?Supu/img/231.jpg?Supu/img/232.jpg?Supu/img/233.jpg?Supu/img/234.jpg', 'Supu/img/235.jpg?Supu/img/236.jpg?Supu/img/237.jpg?Supu/img/238.jpg?Supu/img/239.jpg');
INSERT INTO `goods` VALUES ('23', '曼秀雷敦', '￥210', 'Supu/img/240.jpg', '日本抗痘防晒霜', '23', 'Supu/img/240.jpg?Supu/img/241.jpg?Supu/img/242.jpg?Supu/img/243.jpg?Supu/img/244.jpg', 'Supu/img/245.jpg?Supu/img/246.jpg?Supu/img/247.jpg?Supu/img/248.jpg?Supu/img/249.jpg');
INSERT INTO `goods` VALUES ('24', '维蕾德', '￥220', 'Supu/img/250.jpg', ' 德国有机乳房按摩油', '24', 'Supu/img/250.jpg?Supu/img/251.jpg?Supu/img/252.jpg?Supu/img/253.jpg?Supu/img/254.jpg', 'Supu/img/255.jpg?Supu/img/256.jpg?Supu/img/256.jpg?Supu/img/257.jpg?Supu/img/258.jpg?Supu/img/259.jpg');
INSERT INTO `goods` VALUES ('25', 'VITABIOTICS薇塔', '￥230', 'Supu/img/260.jpg', '英国Wellbaby婴幼儿维生素', '25', 'Supu/img/260.jpg?Supu/img/261.jpg?Supu/img/262.jpg?Supu/img/263.jpg?Supu/img/264.jpg', 'Supu/img/265.jpg?Supu/img/266.jpg?Supu/img/267.jpg?Supu/img/268.jpg?Supu/img/269.jpg');
INSERT INTO `goods` VALUES ('26', 'VITABIOTICS薇塔', '￥240', 'Supu/img/270.jpg', '婴幼儿复合维生素', '26', 'Supu/img/270.jpg?Supu/img/271.jpg?Supu/img/272.jpg?Supu/img/273.jpg?Supu/img/274.jpg', 'Supu/img/275.jpg?Supu/img/276.jpg?Supu/img/277.jpg?Supu/img/278.jpg?Supu/img/279.jpg');
INSERT INTO `goods` VALUES ('27', 'KAO日本', '￥250', 'Supu/img/280.jpg', '花王F系列夜用卫生巾', '27', 'Supu/img/280.jpg?Supu/img/281.jpg?Supu/img/282.jpg?Supu/img/283.jpg?Supu/img/284.jpg', 'Supu/img/285.jpg?Supu/img/286.jpg?Supu/img/287.jpg?Supu/img/288.jpg?Supu/img/289.jpg');
INSERT INTO `goods` VALUES ('28', 'Munchkin麦肯奇', '￥260', 'Supu/img/290.jpg', '美国进口防漏宝宝零食杯', '28', 'Supu/img/290.jpg?Supu/img/291.jpg?Supu/img/292.jpg?Supu/img/293.jpg?Supu/img/294.jpg', 'Supu/img/295.jpg?Supu/img/296.jpg?Supu/img/297.jpg?Supu/img/298.jpg?Supu/img/299.jpg');
INSERT INTO `goods` VALUES ('29', 'NISHIKIKASEI锦化成', '￥270', 'Supu/img/300.jpg', '日本迪士尼宝宝便携式零食杯', '29', 'Supu/img/300.jpg?Supu/img/301.jpg?Supu/img/302.jpg?Supu/img/303.jpg?Supu/img/303.jpg?Supu/img/304.jpg', 'Supu/img/305.jpg?Supu/img/306.jpg?Supu/img/307.jpg?Supu/img/308.jpg?Supu/img/309.jpg');
INSERT INTO `goods` VALUES ('30', ' LEC面包超人', '￥280', 'Supu/img/pn1.jpg', ' 日本双耳杯零食碗', '30', 'Supu/img/pn1.jpg?Supu/img/pn2.jpg?Supu/img/pn3.jpg?Supu/img/pn4.jpg?Supu/img/pn5.jpg', 'Supu/img/pj1.jpg?Supu/img/pj2.jpg?Supu/img/pj3.jpg?Supu/img/pj4.jpg?Supu/img/pj5.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('qinhaidong', '123456789', '18', '男', '350894@qq.com', '13543255551');
INSERT INTO `user` VALUES ('weihegu', '123456789', '18', '女', '784661668@qq.com', '15818182244');
INSERT INTO `user` VALUES ('qinjianglan', '123456789', '18', '女', '66569599@qq.om', '18877775860');
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456789', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456', '18', null, null, null);
INSERT INTO `user` VALUES ('hegu', '123456', '18', null, null, null);
INSERT INTO `user` VALUES ('ggggg', '123456789', '20', null, null, null);
INSERT INTO `user` VALUES ('ggguuu', '123456789', '98', null, null, null);
INSERT INTO `user` VALUES ('ggguuu', '123456789', '98', null, null, null);
INSERT INTO `user` VALUES ('ggguuu', '123456789', '98', null, null, null);
INSERT INTO `user` VALUES ('ggguuu', '123456789', '98', null, null, null);
SET FOREIGN_KEY_CHECKS=1;
