/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : store

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-05-13 15:21:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goodsId` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  `user` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('23', '1', '6', 'asdfasdf');
INSERT INTO `cart` VALUES ('24', '2', '4', 'asdfasdf');

-- ----------------------------
-- Table structure for floor
-- ----------------------------
DROP TABLE IF EXISTS `floor`;
CREATE TABLE `floor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` text,
  `imgUrl` text,
  `price` float(10,2) DEFAULT NULL,
  `oldPrice` float(10,2) DEFAULT NULL,
  `bigParent` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=375 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of floor
-- ----------------------------
INSERT INTO `floor` VALUES ('93', '美的（Midea）电风扇家用风扇立式电扇宿舍工业机械台式静音落地扇FSA30YA 黑色', 'https://gfs17.gomein.net.cn/T1joC5B4ZT1RCvBVdK_400.jpg', '169.00', '179.00', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('94', '多芬(Dove) 石榴+奇异果 身体磨砂乳霜(石榴+奇异果 身体磨砂乳霜 50G+50G)', 'https://gfs17.gomein.net.cn/T1ou_nBbET1RCvBVdK_400.jpg', '33.80', '59.90', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('95', '美的（Midea）养生壶MK-YS15E107 四段定温 智能预约1.2L 电热水壶 煮茶花茶(养生壶)', 'https://gfs17.gomein.net.cn/T1mrDLBvbT1RCvBVdK_400.jpg', '119.00', '129.00', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('96', '摩飞便携式电热水壶MR6080', 'https://gfs17.gomein.net.cn/T1tVKyBCJT1RCvBVdK_400.jpg', '268.00', '328.00', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('97', '德尔玛（Deerma）CM800 紫外线除螨仪除螨机 手持吸尘器家用震动拍打宠物家庭适用(白色 除螨仪)', 'https://gfs17.gomein.net.cn/T12cK4BXKT1RCvBVdK_400.jpg', '189.00', '199.00', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('98', '山本8008 多功能家用空气炸锅2.6L大容量智能无油低脂炸薯条机(空气炸锅)', 'https://gfs17.gomein.net.cn/T1i4Y5BjEv1RCvBVdK_400.jpg', '199.00', '259.00', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('99', '先锋电风扇DD1605/FS40-16ER遥控定时家用落地扇大风力升降12叶扇(落地扇)', 'https://gfs17.gomein.net.cn/T1HyK5BmxT1RCvBVdK_400.jpg', '439.00', '469.00', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('100', '靠垫办公室腰靠记忆棉夏天腰垫汽车靠背垫孕妇护腰靠枕腰椎垫腰枕(水晶绒藏青 默认)', 'https://gfs17.gomein.net.cn/T1PAKLBTKv1RCvBVdK_400.jpg', '8.90', '25.90', '美日必抢', 'null');
INSERT INTO `floor` VALUES ('101', 'Apple iPhone 12 128G 白色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T1u7d7BydT1RCvBVdK_120.jpg', '5949.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('102', 'Apple iPhone 12 128G 黑色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T1w2d7ByCT1RCvBVdK_120.jpg', '5949.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('103', '120克6桶大桶装正宗网红嗨吃酸辣粉红薯粉整箱泡面批发', 'https://gfs17.gomein.net.cn/T1yjDeBCZ_1RCvBVdK_120.jpg', '11.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('104', '纸护士本色卷纸1提*16卷', 'https://gfs17.gomein.net.cn/T1MIJLBCWv1RCvBVdK_120.jpg', '10.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('105', '\n洁饶2支云南三七植物牙膏去黄去牙垢炫白去渍口气清新家庭实惠装 双重薄荷105克1支+留兰香型105克1支 共2支(默认)', 'https://gfs17.gomein.net.cn/T1IzVnByLv1RCvBVdK_120.jpg', '11.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('106', '满格华夫【真选定制】夹心华夫（肉松沙拉味）400g 网红推荐、早餐必备', 'https://gfs17.gomein.net.cn/T1T6EPBQYv1RCvBVdK_120.jpg', '24.90', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('107', '（包邮）洁柔Face天然无香抽纸120抽中号1提3包可湿水面巾纸 （1提装/2提装）(1提)', 'https://gfs17.gomein.net.cn/T1qNWbB_Yv1RCvBVdK_120.jpg', '11.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('108', '清风原木抽纸3层110抽6包抽取式面巾纸', 'https://gfs17.gomein.net.cn/T1kyYnB_Jv1RCvBVdK_120.jpg', '11.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('109', '祈萌极简生活本色抽取纸巾QC-5080(118mm*170mm*80抽)', 'https://gfs17.gomein.net.cn/T1mh_eBKVT1RCvBVdK_120.jpg', '10.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('110', 'la vie lente【真选定制】防晒冰袖 3副装手套袖套臂套均码其他 冷感、防晒', 'https://gfs17.gomein.net.cn/T12sxLBvEv1RCvBVdK_120.jpg', '9.90', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('111', '阿婆家的【真选定制】红糖麻花500g 独立包装香酥小麻花，古法红糖挂浆', 'https://gfs17.gomein.net.cn/T18MDLBsDT1RCvBVdK_120.jpg', '19.90', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('112', '新国标·格力(GREE)天丽系列 1.5P 变频三级能效 挂机 35530', 'https://gfs17.gomein.net.cn/T1DMbPBKZv1RCvBVdK_120.jpg', '2599.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('113', '维达780克4层超韧实芯卷纸10卷1提（1提装/2提装）(1提)', 'https://gfs17.gomein.net.cn/T1Z9CPBjVv1RCvBVdK_120.jpg', '11.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('114', '申宏御贡东北大米1kg袋装', 'https://gfs17.gomein.net.cn/T1ZiEPBCYv1RCvBVdK_120.jpg', '10.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('115', '洁爵仕【真选定制】纳米镀晶雨刷液*2瓶 去污', 'https://gfs17.gomein.net.cn/T1KGdnBvAv1RCvBVdK_120.jpg', '38.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('116', '美的(Midea)KFR-35GW/BP3DN8Y-PH200(1)极地白 1.5P 变频 冷暖 挂机空调', 'https://gfs17.gomein.net.cn/T1G9_5Bjhv1RCvBVdK_120.jpg', '2899.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('117', '新国标·格力(GREE)天丽系列 大1P 变频一级节能 挂机 26530', 'https://gfs17.gomein.net.cn/T1TTVPB7Zg1RCvBVdK_120.jpg', '2999.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('118', '味品堂 酸奶味黄桃罐头水果罐头无添加休闲零食活动款(酸奶黄桃 288g*2罐)', 'https://gfs17.gomein.net.cn/T1h9_LBvd_1RCvBVdK_120.jpg', '11.00', null, '猜你喜欢', 'null');
INSERT INTO `floor` VALUES ('119', 'null', 'https://gfs6.gomein.net.cn/wireless/T1RAV7BgCv1RCvBVdK_220_278.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('120', 'null', 'https://gfs5.gomein.net.cn/wireless/T1SPJnBsx_1RCvBVdK_389_470.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('121', 'null', 'https://gfs5.gomein.net.cn/wireless/T1fzKnBgbT1RCvBVdK_199_234.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('122', 'null', 'https://gfs7.gomein.net.cn/wireless/T1CWLLB7KT1RCvBVdK_199_234.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('123', 'null', 'https://gfs9.gomein.net.cn/wireless/T1lQELBKJT1RCvBVdK_199_234.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('124', 'null', 'https://gfs8.gomein.net.cn/wireless/T1VfJLBCKT1RCvBVdK_199_234.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('125', 'null', 'https://gfs5.gomein.net.cn/wireless/T1dbd7BjJT1RCvBVdK_199_234.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('126', 'null', 'https://gfs8.gomein.net.cn/wireless/T1vvb4B_Yv1RCvBVdK_199_234.jpg', null, null, '手机通讯1f', '活动精选');
INSERT INTO `floor` VALUES ('127', '荣耀V40轻奢版', 'https://gfs17.gomein.net.cn/T1P3dLBXEv1RCvBVdK_130.jpg', '2989.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('128', '小米11 Ultra', 'https://gfs17.gomein.net.cn/T1IXKnBChT1RCvBVdK_130.jpg', '6499.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('129', 'OPPO Find X3 8GB 256GB', 'https://gfs17.gomein.net.cn/T1XvKLBCWT1RCvBVdK_130.jpg', '4999.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('130', '小米11 Pro 8GB 256GB', 'https://gfs17.gomein.net.cn/T1nR_nB_xv1RCvBVdK_130.jpg', '5299.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('131', 'vivo S9 8 128G 印象拾光', 'https://gfs17.gomein.net.cn/T12UJLBQEv1RCvBVdK_130.jpg', '2899.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('132', 'vivo S9e 8GB 256GB', 'https://gfs17.gomein.net.cn/T1O3CLBbWv1RCvBVdK_130.jpg', '2699.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('133', 'vivo X60Pro 12 256GB', 'https://gfs17.gomein.net.cn/T1RSJPBvCT1RCvBVdK_130.jpg', '5998.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('134', '华为 nova 7 Pro 8GB 128GB', 'https://gfs17.gomein.net.cn/T1BmdKBKKv1RCvBVdK_130.jpg', '3699.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('135', '荣耀V40 8GB 128GB', 'https://gfs17.gomein.net.cn/T1QwEPBCAT1RCvBVdK_130.jpg', '3599.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('136', 'Apple iPhone 12 Pro Max 128G', 'https://gfs17.gomein.net.cn/T1s0E7BsdT1RCvBVdK_130.jpg', '8899.00', null, '手机通讯1f', '新品速递');
INSERT INTO `floor` VALUES ('137', '华为 Mate40 Pro 8GB 256GB', 'https://gfs17.gomein.net.cn/T1xAA7B5bv1RCvBVdK_130.jpg', '6999.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('138', '华为 Mate30E Pro 8GB 128GB', 'https://gfs17.gomein.net.cn/T1jiAnB7YT1RCvBVdK_130.jpg', '4999.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('139', '荣耀V40 8GB 256GB', 'https://gfs17.gomein.net.cn/T1VdWPBCb_1RCvBVdK_130.jpg', '3999.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('140', 'OPPO Reno5Pro 12GB 256GB', 'https://gfs17.gomein.net.cn/T19J_eBmVv1RCvBVdK_130.jpg', '3799.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('141', 'vivo X60 8 256GB', 'https://gfs17.gomein.net.cn/T1_LbeB4Dv1RCvBVdK_130.jpg', '3798.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('142', '荣耀 X10 8 128G', 'https://gfs17.gomein.net.cn/T1yLD7BgWT1RCvBVdK_130.jpg', '2389.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('143', '小米10S 12GB 256GB', 'https://gfs17.gomein.net.cn/T1DI_LBbKv1RCvBVdK_130.jpg', '3799.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('144', '小米11  8GB 256GB', 'https://gfs17.gomein.net.cn/T1CjKeB4Ev1RCvBVdK_130.jpg', '4299.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('145', 'iQOO Neo3 8G 256G', 'https://gfs17.gomein.net.cn/T1VRDmBmVT1RCvBVdK_130.jpg', '3398.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('146', '华为 nova 7 Pro 8GB 128GB', 'https://gfs17.gomein.net.cn/T1BmdKBKKv1RCvBVdK_130.jpg', '3699.00', null, '手机通讯1f', '热销推荐');
INSERT INTO `floor` VALUES ('147', 'OPPO A72 8GB 128GB', 'https://gfs17.gomein.net.cn/T1bxd5B4Kv1RCvBVdK_130.jpg', '1799.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('148', 'vivo Y3s 4GB 128G', 'https://gfs17.gomein.net.cn/T1IPh7BgCT1RCvBVdK_130.jpg', '1098.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('149', 'Redmi Note 9 5G 6GB 128GB', 'https://gfs17.gomein.net.cn/T1k5AeBvET1RCvBVdK_130.jpg', '1299.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('150', 'OPPO A32 8 128GB', 'https://gfs17.gomein.net.cn/T1LuWKB4xT1RCvBVdK_130.jpg', '1399.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('151', 'vivo Y52s 8GB 128GB', 'https://gfs17.gomein.net.cn/T1rdbeBXVv1RCvBVdK_130.jpg', '1698.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('152', 'vivo Y31s 6GB 128GB', 'https://gfs17.gomein.net.cn/T1zCxPBXZv1RCvBVdK_130.jpg', '1498.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('153', 'OPPO A93 8GB 256GB', 'https://gfs17.gomein.net.cn/T1kUAPByxT1RCvBVdK_130.jpg', '1999.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('154', 'iQOO U3 8 128GB', 'https://gfs17.gomein.net.cn/T1oSWeBKY_1RCvBVdK_130.jpg', '1598.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('155', 'Redmi 9A 6GB 128GB', 'https://gfs17.gomein.net.cn/T1VrEKB7d_1RCvBVdK_130.jpg', '899.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('156', 'iQOO Z3 8GB 128GB', 'https://gfs17.gomein.net.cn/T1_xCLBKYv1RCvBVdK_130.jpg', '1799.00', null, '手机通讯1f', '畅享低价');
INSERT INTO `floor` VALUES ('157', 'null', 'https://gfs5.gomein.net.cn/wireless/T1.QCLBsZT1RCvBVdK_220_278.png', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('158', 'null', 'https://gfs7.gomein.net.cn/wireless/T1V.YnBKK_1RCvBVdK_389_470.jpg', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('159', 'null', 'https://gfs8.gomein.net.cn/wireless/T1ETbeBXC_1RCvBVdK_199_234.jpg', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('160', 'null', 'https://gfs5.gomein.net.cn/wireless/T1fkAeB7CT1RCvBVdK_199_234.jpg', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('161', 'null', 'https://gfs8.gomein.net.cn/wireless/T1U.D5BmKT1RCvBVdK_199_234.jpg', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('162', 'null', 'https://gfs5.gomein.net.cn/wireless/T1ZuYLBCLv1RCvBVdK_199_234.jpg', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('163', 'null', 'https://gfs5.gomein.net.cn/wireless/T1FnLKBQDv1RCvBVdK_199_234.jpg', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('164', 'null', 'https://gfs5.gomein.net.cn/wireless/T1SLDmBvLv1RCvBVdK_199_234.jpg', null, null, '电脑数码2f', '精选热卖');
INSERT INTO `floor` VALUES ('165', '惠普(hp) 光影精灵6 16英寸十代英特尔酷睿i5游戏本笔记本电脑i5-10200H 16G 512G 高色域 紫光(16-a0076TX)', 'https://gfs17.gomein.net.cn/T10SWeBXh_1RCvBVdK_130.jpg', '5599.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('166', '戴尔DELL灵越5000 15.6英寸英特尔酷睿i5轻薄笔记本电脑(十一代i5-1135G7 16G 512G MX350 2G独显)银', 'https://gfs17.gomein.net.cn/T1ZDD7Bvhv1RCvBVdK_130.jpg', '5399.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('167', 'Apple iPad Air 10.9英寸 2020年新款 平板电脑（256G WLAN版/A14芯片/触控ID/2360 x 1640 分辨率）玫瑰金', 'https://gfs17.gomein.net.cn/T1FlVKBj_T1RCvBVdK_130.jpg', '5699.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('168', '联想(Lenovo)小新Air15 2021锐龙版全面屏轻薄笔记本电脑(8核R7-4800U 16G 512G 100%sRGB 高色域)深空灰', 'https://gfs17.gomein.net.cn/T1pHE7BvAT1RCvBVdK_130.jpg', '4899.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('169', '华硕笔记本电脑E410MA', 'https://gfs17.gomein.net.cn/T161CPBQCT1RCvBVdK_130.jpg', '4399.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('170', 'Kindle oasis电子书阅读器', 'https://gfs17.gomein.net.cn/T1rCKPBXEv1RCvBVdK_130.jpg', '2658.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('171', '荣耀手表GS Pro 潮汐蓝', 'https://gfs17.gomein.net.cn/T1bTJ7BbxT1RCvBVdK_130.jpg', '1388.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('172', '小米55W氮化镓充电器', 'https://gfs17.gomein.net.cn/T1ktWPB4Lv1RCvBVdK_130.jpg', '99.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('173', 'Apple Watch S6智能手表', 'https://gfs17.gomein.net.cn/T1q9CeB5DT1RCvBVdK_130.jpg', '3399.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('174', '华为Max 40W超级快充立式无线充电器', 'https://gfs17.gomein.net.cn/T1FdVeB_hT1RCvBVdK_130.jpg', '269.00', null, '电脑数码2f', '新品抢先');
INSERT INTO `floor` VALUES ('175', '联想(Lenovo)小新Air15 2021锐龙版全面屏轻薄笔记本电脑(8核R7-4800U 16G 512G 100%sRGB 高色域)深空灰', 'https://gfs17.gomein.net.cn/T1pHE7BvAT1RCvBVdK_130.jpg', '4899.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('176', '华硕(ASUS) VivoBook14 X 2020 14英寸金属轻薄本笔记本电脑(i5-10210U 8G 512G固态+32G傲腾 2G独显)耀夜黑', 'https://gfs17.gomein.net.cn/T1PSLeBXd_1RCvBVdK_130.jpg', '4799.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('177', '蔡徐坤代言 惠普(hp) 星系列14英寸十一代轻薄本笔记本电脑 粉 i5-1135G7 16G 512G固态硬盘(14-dv0007TX)', 'https://gfs17.gomein.net.cn/T1fn_PBjbT1RCvBVdK_130.jpg', '5299.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('178', '联想(Lenovo)小新Air14 2020锐龙版 全面屏金属超轻薄笔记本电脑(6核R5-4600U 16G 512G IPS高清屏 高色域)灰', 'https://gfs17.gomein.net.cn/T1X1VmByZT1RCvBVdK_130.jpg', '4299.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('179', '戴尔（DELL）游匣G3 2020新品 15.6英寸第十代游戏笔记本电脑（i7-10750H 16G 512G GTX1660Ti 6G独显）黑', 'https://gfs17.gomein.net.cn/T1MYCmB5LT1RCvBVdK_130.jpg', '7099.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('180', '联想(Lenovo)拯救者R7000P 15.6英寸游戏笔记本电脑(R7-4800H 16G 512G SSD RTX2060 144Hz)钛晶灰', 'https://gfs17.gomein.net.cn/T1XFd7Bsbv1RCvBVdK_130.jpg', '7799.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('181', '华硕(ASUS) 飞行堡垒8 15.6英寸游戏笔记本电脑(i7-10750H 8G 512SSD GTX1650Ti 4G)144Hz电竞屏', 'https://gfs17.gomein.net.cn/T1R9heBQZv1RCvBVdK_130.jpg', '6599.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('182', '联想(Lenovo)拯救者Y7000英特尔酷睿 15.6英寸游戏笔记本电脑标配i5-10200H 16G 512G  1650-4G', 'https://gfs17.gomein.net.cn/T1wldKBjhv1RCvBVdK_130.jpg', '12998.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('183', '联想(Lenovo)小新Pro13 2020 锐龙版 全面屏性能超轻薄笔记本电脑(6核R5-4600U 16G 512G 2.5K屏 高色域)灰', 'https://gfs17.gomein.net.cn/T1yYEmB5Vv1RCvBVdK_130.jpg', '4839.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('184', '蔡徐坤代言 惠普(HP)星14 青春版 14英寸轻薄窄边框笔记本电脑 R7-4700U 16G 512G SSD UMA FHD IPS 闪耀银', 'https://gfs17.gomein.net.cn/T1sdZKBvCv1RCvBVdK_130.jpg', '4199.00', null, '电脑数码2f', '笔记本');
INSERT INTO `floor` VALUES ('185', 'null', 'https://gfs5.gomein.net.cn/wireless/T1NqYnBmbv1RCvBVdK_220_278.png', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('186', 'null', 'https://gfs9.gomein.net.cn/wireless/T1HJZ7B5Lv1RCvBVdK_389_470.jpg', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('187', 'null', 'https://gfs8.gomein.net.cn/wireless/T1HTWnBQAv1RCvBVdK_199_234.jpg', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('188', 'null', 'https://gfs5.gomein.net.cn/wireless/T1VjDnBmY_1RCvBVdK_199_234.jpg', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('189', 'null', 'https://gfs9.gomein.net.cn/wireless/T10AJmBXbv1RCvBVdK_199_234.jpg', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('190', 'null', 'https://gfs11.gomein.net.cn/T1pmWyBjdT1RCvBVdK.jpg', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('191', 'null', 'https://gfs5.gomein.net.cn/wireless/T1fBVnBThT1RCvBVdK_199_234.jpg', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('192', 'null', 'https://gfs6.gomein.net.cn/wireless/T1EAbmBmET1RCvBVdK_199_234.jpg', null, null, '家用电器3f', '精选热卖');
INSERT INTO `floor` VALUES ('193', '长虹55英寸人工智能电视', 'https://gfs17.gomein.net.cn/T1IXEyB_Zv1RCvBVdK_130.jpg', '2399.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('194', 'TCL 55英寸4K智能电视', 'https://gfs17.gomein.net.cn/T12t_4BQKg1RCvBVdK_130.jpg', '2099.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('195', '海信65英寸人工智能电视', 'https://gfs17.gomein.net.cn/T1vpAsBjWT1RCvBVdK_130.jpg', '2899.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('196', '小米43英寸人工智能电视', 'https://gfs17.gomein.net.cn/T1nIJsBybv1RCvBVdK_130.jpg', '1899.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('197', '海尔55英寸人工智能电视', 'https://gfs17.gomein.net.cn/T1FALQBjLT1RCvBVdK_130.jpg', '1699.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('198', '康佳55英寸4K超高清智能电视', 'https://gfs17.gomein.net.cn/T1H8EXBvxv1RCvBVdK_130.jpg', '1699.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('199', '创维65英寸4K超高清智能电视', 'https://gfs17.gomein.net.cn/T1RhLQByEv1RCvBVdK_130.jpg', '3999.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('200', '索尼55英寸4K智能电视', 'https://gfs17.gomein.net.cn/T1IZK4BKA_1RCvBVdK_130.jpg', '4999.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('201', 'TCL 32英寸经典蓝光机', 'https://gfs17.gomein.net.cn/T1nrCsBKEv1RCvBVdK_130.jpg', '799.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('202', 'TCL 50英寸高画质4K电视', 'https://gfs17.gomein.net.cn/T1uFh4B7_v1RCvBVdK_130.jpg', '1699.00', null, '家用电器3f', '电视');
INSERT INTO `floor` VALUES ('203', '海尔10kg滚筒洗衣机', 'https://gfs17.gomein.net.cn/T1W4VPBmZ_1RCvBVdK_130.jpg', '2499.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('204', '荣事达7kg波轮洗衣机', 'https://gfs17.gomein.net.cn/T1RTLeB4x_1RCvBVdK_130.jpg', '799.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('205', '西门子8kg滚筒洗衣机', 'https://gfs17.gomein.net.cn/T1NoVPB4Wv1RCvBVdK_130.jpg', '3099.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('206', '三星9kg变频滚筒洗衣机', 'https://gfs17.gomein.net.cn/T13JD_BKDv1RCvBVdK_130.jpg', '6490.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('207', '海尔8kg波轮洗衣机', 'https://gfs17.gomein.net.cn/T1RpJPB7ET1RCvBVdK_130.jpg', '1099.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('208', '小天鹅8kg波轮洗衣机', 'https://gfs17.gomein.net.cn/T1LnW7B_Zv1RCvBVdK_130.jpg', '1199.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('209', '松下10kg滚筒洗衣机', 'https://gfs17.gomein.net.cn/T1XCJLByJT1RCvBVdK_130.jpg', '5398.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('210', '海尔9kg滚筒洗衣机', 'https://gfs17.gomein.net.cn/T1_TxXBvAT1RCvBVdK_130.jpg', '2699.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('211', '海信7kg波轮洗衣机', 'https://gfs17.gomein.net.cn/T1HxAgBmbv1RCvBVdK_130.jpg', '899.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('212', '西门子10kg滚筒洗衣机', 'https://gfs17.gomein.net.cn/T145VPB4Yv1RCvBVdK_130.jpg', '4999.00', null, '家用电器3f', '洗衣机');
INSERT INTO `floor` VALUES ('213', '海尔258L三门冰箱', 'https://gfs17.gomein.net.cn/T1NxxjBmYv1RCvBVdK_130.jpg', '3199.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('214', '西门子610L对开门冰箱', 'https://gfs17.gomein.net.cn/T1OchPBvLT1RCvBVdK_130.jpg', '6799.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('215', '美的535L对开门冰箱', 'https://gfs17.gomein.net.cn/T1mhKbBvC_1RCvBVdK_130.jpg', '2699.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('216', '美菱568L对开门冰箱', 'https://gfs17.gomein.net.cn/T1MWC_BCJ_1RCvBVdK_130.jpg', '3799.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('217', '美菱362L多门冰箱', 'https://gfs17.gomein.net.cn/T1.FElBKV_1RCvBVdK_130.jpg', '3399.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('218', '西门子452L十字对开门冰箱', 'https://gfs17.gomein.net.cn/T15kdPBjYv1RCvBVdK_130.jpg', '7799.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('219', '博世452L十字对开门冰箱', 'https://gfs17.gomein.net.cn/T17XdLBvVv1RCvBVdK_130.jpg', '8999.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('220', '美菱200L双门冰箱', 'https://gfs17.gomein.net.cn/T1N0WjBgYb1RCvBVdK_130.jpg', '1599.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('221', '海尔642L对开门冰箱', 'https://gfs17.gomein.net.cn/T1v8WPB4xv1RCvBVdK_130.jpg', '3599.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('222', '美的207L双门冰箱电脑控温芙蓉金', 'https://gfs17.gomein.net.cn/T1lRxsBvAT1RCvBVdK_130.jpg', '1899.00', null, '家用电器3f', '冰箱');
INSERT INTO `floor` VALUES ('223', '伊莱克斯 1.5匹新三级变频空调 高温自清洁 智能柔湿制冷', 'https://gfs17.gomein.net.cn/T1fxLnBjYT1RCvBVdK_130.jpg', '1799.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('224', '国美 1.5匹新一级变频静音空调 高温自清洁 智能柔湿制冷', 'https://gfs17.gomein.net.cn/T1G8hKB_JT1RCvBVdK_130.jpg', '1899.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('225', '格力 大1匹云佳新三级变频 节能升级 56°C净菌自洁', 'https://gfs17.gomein.net.cn/T1_9DPB__v1RCvBVdK_130.jpg', '2399.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('226', '格力 1.5匹舒享风Ⅱ新一级变频 睡眠空调 56°C净菌自洁', 'https://gfs17.gomein.net.cn/T1AYx7BgKT1RCvBVdK_130.jpg', '4699.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('227', '格力 大1匹舒享风Ⅱ新一级变频 睡眠空调 56°C净菌自洁', 'https://gfs17.gomein.net.cn/T1OLDPBXWT1RCvBVdK_130.jpg', '4599.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('228', '海尔 大1匹新三级全直流变频空调 专利自清洁 一键PMV', 'https://gfs17.gomein.net.cn/T1CfLPBsEv1RCvBVdK_130.jpg', '2199.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('229', '美的 1.5匹悦弧Ⅱ新一级变频 智能睡眠曲线 升级自清洁', 'https://gfs17.gomein.net.cn/T1WLE5BjDv1RCvBVdK_130.jpg', '2899.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('230', '伊莱克斯 3匹新一级变频 智慧健康柔风 健康除菌智清洁', 'https://gfs17.gomein.net.cn/T1.kbnBvCv1RCvBVdK_130.jpg', '4599.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('231', '格力 2匹王者新一级全直流变频空调 衡温立体送风技术', 'https://gfs17.gomein.net.cn/T1WDZPB7hT1RCvBVdK_130.jpg', '10999.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('232', '格力 3匹天丽新一级变频空调 85°大角度送风  56°C净菌自洁', 'https://gfs17.gomein.net.cn/T1OMKPBTbv1RCvBVdK_130.jpg', '6799.00', null, '家用电器3f', '空调');
INSERT INTO `floor` VALUES ('233', 'null', 'https://gfs13.gomein.net.cn/T1tQJQBvxT1RCvBVdK.jpg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('234', 'null', 'https://gfs5.gomein.net.cn/wireless/T1HNZlBTLT1RCvBVdK_479_470.jpg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('235', 'null', 'https://gfs13.gomein.net.cn/T1AWhyBjDT1RCvBVdK.jpg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('236', 'null', 'https://gfs11.gomein.net.cn/T129KsBjKT1RCvBVdK.jpeg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('237', 'null', 'https://gfs6.gomein.net.cn/wireless/T1sJh7BTWv1RCvBVdK_199_234.jpg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('238', 'null', 'https://gfs12.gomein.net.cn/T1EhKsBbJT1RCvBVdK.jpeg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('239', 'null', 'https://gfs9.gomein.net.cn/wireless/T1RSxLBXY_1RCvBVdK_199_234.jpg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('240', 'null', 'https://gfs12.gomein.net.cn/T1FFJyBQKT1RCvBVdK.jpeg', null, null, '厨房卫浴4f', '精选热卖');
INSERT INTO `floor` VALUES ('241', '东菱咖啡机DL-KF1061', 'https://gfs17.gomein.net.cn/T1YkYyBThT1RCvBVdK_130.jpg', '499.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('242', '摩飞便携榨汁杯MR9600轻奢蓝', 'https://gfs17.gomein.net.cn/T1PEZyB7Dv1RCvBVdK_130.jpg', '219.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('243', '利仁(Liven) 电饼铛 30CM 家用双面加热 烙饼锅 可拆洗煎烤机 电脑版 LR-D3020A (美猴王) 黑咖', 'https://gfs17.gomein.net.cn/T1elZKBXVv1RCvBVdK_130.jpg', '229.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('244', '格兰仕(Galanz) TQD2-32J 32L 精准控温 电烤箱 三层烤位 黑', 'https://gfs17.gomein.net.cn/T1DnVeBghT1RCvBVdK_130.jpg', '199.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('245', '【底价狂欢】格兰仕（Galanz）P70D20N3P- ST（W0）微波炉 20L容量 旋钮操作 简单省时 国家标准尺寸', 'https://gfs17.gomein.net.cn/T13jDnBsKv1RCvBVdK_130.jpg', '289.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('246', '美菱（MeiLing）榨汁机 便携充电式榨汁杯 迷你果汁机 多功能搅拌料理机果汁杯MM-DC0307粉', 'https://gfs17.gomein.net.cn/T1i4EKBvdT1RCvBVdK_130.jpg', '99.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('247', '九阳（Joyoung）JYZ-V15 原汁机 榨汁机 家用多功能 多汁 可制作冰淇淋', 'https://gfs17.gomein.net.cn/T16GCTBbdj1RCvBVdK_130.jpg', '499.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('248', '德尔玛榨汁机 星果杯榨汁杯便携式破壁机果汁机摇摇杯鲜榨水果杯蓝色NU06', 'https://gfs17.gomein.net.cn/T1X7dKBCxT1RCvBVdK_130.jpg', '129.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('249', '利仁（Liven）KL-J4300 电烧烤盘 优质少烟不粘涂层 大烤盘+8小手盘 可调温', 'https://gfs17.gomein.net.cn/T1Svh5B5Ev1RCvBVdK_130.jpg', '159.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('250', '小熊(Bear)电热水壶ZDH-C15C1复古绿', 'https://gfs17.gomein.net.cn/T19TCKBTKv1RCvBVdK_130.jpg', '219.00', null, '厨房卫浴4f', '厨房小电');
INSERT INTO `floor` VALUES ('251', '戴森(Dyson) 手持式吸尘器 SV10 DYSON V8 FLUFFY ORIGIN 进口吸尘器', 'https://gfs17.gomein.net.cn/T1vPL4B__T1RCvBVdK_130.jpg', '2990.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('252', '科沃斯(Ecovacs) 智能扫地机器人 地宝T8 AIVI 智能规划清扫 激光导航 全自动扫拖一体 APP智控 DBX11-21', 'https://gfs17.gomein.net.cn/T1e0C4BQhv1RCvBVdK_130.jpg', '3299.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('253', '莱克(LEXY) VC-B403 除螨吸尘器 强力拍打 22cm宽幅吸尘 降噪静音', 'https://gfs17.gomein.net.cn/T16TVeBvh_1RCvBVdK_130.jpg', '899.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('254', '飞利浦PHILIPS电动牙刷HX9362/67钻石亮白型充电电动牙刷成人 奢宠粉钻 牙刷盒是USB充电器', 'https://gfs17.gomein.net.cn/T1EdKQBX__1RCvBVdK_130.jpg', '899.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('255', '莱克（LEXY）家用空气净化器 除霾 除甲醛 净化器KJ608S紫', 'https://gfs17.gomein.net.cn/T1SLDyBCKv1RCvBVdK_130.jpg', '4499.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('256', '戴森(Dyson) 多功能风扇BP01 进口 电风扇 白', 'https://gfs17.gomein.net.cn/T1aIVvB5AQ1RCvBVdK_130.jpg', '2690.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('257', '松下(Panasonic) F-PXP60C-N CADR值320m³/h 4档风量调节 空气净化器 4重智能感应科技 金', 'https://gfs17.gomein.net.cn/T1EBAvB7Av1RCvBVdK_130.jpg', '2599.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('258', '戴森(Dyson) 加湿器AM10铁紫 加湿器', 'https://gfs17.gomein.net.cn/T11fCQBCLT1RCvBVdK_130.jpg', '3890.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('259', '莱克（LEXY） GT306 1600W 家用智能高压 速出蒸汽熨烫 家用挂烫机', 'https://gfs17.gomein.net.cn/T12vYTB5Kv1RCvBVdK_130.jpg', '699.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('260', '飞利浦（Philips） BHC208  智能风热系统提供动态风热调节 可折叠手柄 便于存放 电吹风', 'https://gfs17.gomein.net.cn/T1RIDTBmAg1RCvBVdK_130.jpg', '299.00', null, '厨房卫浴4f', '生活电器');
INSERT INTO `floor` VALUES ('261', '先锋（Singfun）电风扇 5片扇叶柔风风叶两档高度调节落地台地可选机械落地扇 FS40-19E', 'https://gfs17.gomein.net.cn/T1XwW4BCET1RCvBVdK_130.jpg', '129.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('262', '戴森(Dyson) 多功能风扇BP01 进口 电风扇 白', 'https://gfs17.gomein.net.cn/T1aIVvB5AQ1RCvBVdK_130.jpg', '2690.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('263', '莱克(lexy) F301 7叶 智能空气调节扇 银色', 'https://gfs17.gomein.net.cn/T16CKvBCC_1RCvBVdK_130.jpg', '999.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('264', '康铭 0166 户外充电扇 电风扇 无绳风扇 台式风扇 学生风扇 橙白', 'https://gfs17.gomein.net.cn/T1FXZbB5Lv1RCvBVdK_130.jpg', '89.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('265', '艾美特空气循环扇FA23-RD22', 'https://gfs17.gomein.net.cn/T1G5D4B4Vg1RCvBVdK_130.jpg', '0.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('266', '安备 AN-2932S 户外充电扇 电风扇 无绳风扇 落地扇 台式风扇 蓝', 'https://gfs17.gomein.net.cn/T1M3__B4Z_1RCvBVdK_130.jpg', '249.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('267', '格力(Gree)  KS-0602dhG 机械 单冷 空调扇 翻转式大提手 广角送风 可视水位线 白蓝', 'https://gfs17.gomein.net.cn/T1m.bTBjVT1RCvBVdK_130.jpg', '498.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('268', '格力塔式冷风扇KS-06S61Dg', 'https://gfs17.gomein.net.cn/T1gjDLBsAv1RCvBVdK_130.jpg', '599.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('269', '格力(GREE)  KS-10X63D 蒸发式冷风扇 空调扇 10L大水箱 蓝白', 'https://gfs17.gomein.net.cn/T17DW_BbdT1RCvBVdK_130.jpg', '699.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('270', '格力（Gree） KS-0502Db 遥控单冷式 空调扇 智能远程遥控 15小时定时 蓝', 'https://gfs17.gomein.net.cn/T1z5hTB_hv1RCvBVdK_130.jpg', '698.00', null, '厨房卫浴4f', '电风扇');
INSERT INTO `floor` VALUES ('271', '华帝（VATTI）CXW-260-i11116+JZT-i10056B 侧吸式抽油烟机 家用高端蒸水洗 挥手爆炒 22立方大吸力', 'https://gfs17.gomein.net.cn/T1_NEeBKJ_1RCvBVdK_130.jpg', '3899.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('272', '华帝（VATTI）CXW-240-i11134+JZT-i10056B侧吸式抽油烟机燃气灶具套装挥手即开自动清洁烟灶套装', 'https://gfs17.gomein.net.cn/T15zheBbVv1RCvBVdK_130.jpg', '3299.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('273', '优盟(um)UC237+ZJ001V 烟灶套餐侧式顶吸22m3吸力 天然气', 'https://gfs17.gomein.net.cn/T1X9xKBgVT1RCvBVdK_130.jpg', '999.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('274', '（套装中气源为天然气）澳柯玛烟灶套餐CXW-300BJ013+JZT-3C022B  下置式进风口 宽大拢烟面板', 'https://gfs17.gomein.net.cn/T1hC_PBy_v1RCvBVdK_130.jpg', '899.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('275', '（气源为天然气）澳柯玛自动熄火保护 童锁 4.2W大火力灶具JZT-3C022B', 'https://gfs17.gomein.net.cn/T1nCVPB_dT1RCvBVdK_130.jpg', '299.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('276', '（套装中气源为天然气）澳柯玛烟灶套餐CXW-300BJ013+JZT-3C022B  下置式进风口 宽大拢烟面板', 'https://gfs17.gomein.net.cn/T1hC_PBy_v1RCvBVdK_130.jpg', '899.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('277', '澳柯玛烟灶套餐CXW-258AT916+JZT-3B001B', 'https://gfs17.gomein.net.cn/T1iVWKBXJv1RCvBVdK_130.jpg', '1998.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('278', '澳柯玛烟灶套餐CXW-258AT011+JZT-3B003B', 'https://gfs17.gomein.net.cn/T1sCLKByWv1RCvBVdK_130.jpg', '3098.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('279', '海尔(Haier) 烟灶套餐CXW-200-E900T2S+JZT-QE535(12T) 18立方大风量 大风压 钢化玻璃 烟灶套装', 'https://gfs17.gomein.net.cn/T1IKA5BXYT1RCvBVdK_130.jpg', '2199.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('280', '老板(ROBAM)侧吸烟灶套餐 一键爆炒 19立方 天然气 26A5S+56B0', 'https://gfs17.gomein.net.cn/T1fDDCBQKT1RCvBVdK_130.jpg', '3499.00', null, '厨房卫浴4f', '烟灶套餐');
INSERT INTO `floor` VALUES ('281', 'null', 'https://gfs7.gomein.net.cn/wireless/T1CTxLBKAT1RCvBVdK_220_278.jpg', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('282', 'null', 'https://gfs7.gomein.net.cn/wireless/T1szCKB5bv1RCvBVdK_389_470.jpg%C2%A0', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('283', 'null', 'https://gfs6.gomein.net.cn/wireless/T1xYDLBXET1RCvBVdK_199_234.jpg', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('284', 'null', 'https://gfs6.gomein.net.cn/wireless/T113CLB7Cv1RCvBVdK_199_234.jpg', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('285', 'null', 'https://gfs7.gomein.net.cn/wireless/T17qZLBQxv1RCvBVdK_199_234.jpg', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('286', 'null', 'https://gfs5.gomein.net.cn/wireless/T1zjVKBTLT1RCvBVdK_199_234.jpg', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('287', 'null', 'https://gfs6.gomein.net.cn/wireless/T1nyZeB7Cv1RCvBVdK_199_234.jpg', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('288', 'null', 'https://gfs8.gomein.net.cn/wireless/T1SsKLBmxv1RCvBVdK_199_234.jpg', null, null, '国美超市5f', '精选热卖');
INSERT INTO `floor` VALUES ('289', '佳贝艾特悠装幼儿配方羊奶粉3段800g (12-36月龄适用)', 'https://gfs17.gomein.net.cn/T1ZUA5BTDv1RCvBVdK_130.jpg', '306.00', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('290', '飞鹤星飞帆幼儿配方奶粉3段700g 12-36个月幼儿适用', 'https://gfs17.gomein.net.cn/T1h_dKByKT1RCvBVdK_130.jpg', '259.00', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('291', '爱他美婴儿配方奶粉2段800g （6–12月龄适用）新老包装随机发货', 'https://gfs17.gomein.net.cn/T1VOA5BCxT1RCvBVdK_130.jpg', '270.00', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('292', '惠氏启赋婴幼儿配方奶粉3段900g(12-36个月) 蓝钻启赋 官方授权 品质保证 爱尔兰原装进口', 'https://gfs17.gomein.net.cn/T1GtxeB5__1RCvBVdK_130.jpg', '269.00', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('293', '美素佳儿幼儿配方奶粉3段900g （1-3岁适用）', 'https://gfs17.gomein.net.cn/T14zVLBCKv1RCvBVdK_130.jpg', '159.00', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('294', '强生婴儿牛奶营养面霜60g 润肤霜 宝宝面霜 滋润补水', 'https://gfs17.gomein.net.cn/T1pnL7Bvh_1RCvBVdK_130.jpg', '37.90', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('295', '可心柔V9婴儿纸巾120抽*5 量贩装 保湿抽纸餐巾纸儿童面巾纸', 'https://gfs17.gomein.net.cn/T18KJ5BvAT1RCvBVdK_130.jpg', '34.90', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('296', '强生婴儿牛奶润肤露500g 身体乳 润肤乳 牛奶滋养 长效保湿 秋冬身体乳', 'https://gfs17.gomein.net.cn/T12Lb7BgZT1RCvBVdK_130.jpg', '41.90', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('297', '维达湿巾纸巾婴儿手口可用80片装 卫生洁肤', 'https://gfs17.gomein.net.cn/T1ZKK5ByZT1RCvBVdK_130.jpg', '13.90', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('298', '盈佳智能机器狗塑料11801 儿童玩具早教机宝宝玩具小孩百科问答编程早教玩具', 'https://gfs17.gomein.net.cn/T16Md5Bbxv1RCvBVdK_130.jpg', '147.90', null, '国美超市5f', '母婴玩具');
INSERT INTO `floor` VALUES ('299', '阿玛尼挚爱哑光唇膏口红4g(番茄红301#) 哑而不干润泽持久', 'https://gfs17.gomein.net.cn/T11.xKBmZv1RCvBVdK_130.jpg', '0.00', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('300', '沙宣去屑洗发水水润去屑750ml （针对油头与头屑问题水润平衡去屑轻盈男士女士通用新老包装随机发货）', 'https://gfs17.gomein.net.cn/T11.xKBmZv1RCvBVdK_130.jpg', '77.90', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('301', 'SK-II嫩肤清莹露160ml 【专柜版】 去角质、清洁、毛孔细致', 'https://gfs17.gomein.net.cn/T19.VLByC_1RCvBVdK_130.jpg', '560.00', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('302', '资生堂安热沙水能户外清透防晒乳SPF50+ PA+++60ml（俗称安耐晒）【专柜版】 防晒 清爽 不油腻', 'https://gfs17.gomein.net.cn/T1YoKLBj_v1RCvBVdK_130.jpg', '298.00', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('303', '百雀羚小雀幸补水紧致面膜30片装 面膜女补水保湿化妆品护肤品套装', 'https://gfs17.gomein.net.cn/T1n2VKB4LT1RCvBVdK_130.jpg', '52.90', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('304', '纽西之谜烟酰胺果冻美白淡斑面膜30ml*7片 美白淡斑', 'https://gfs17.gomein.net.cn/T1FHY7B4YT1RCvBVdK_130.jpg', '86.00', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('305', '美迪惠尔水润保湿面膜10片水库针剂 补水保湿', 'https://gfs17.gomein.net.cn/T1W6bKB5W_1RCvBVdK_130.jpg', '49.50', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('306', '碧柔水活SPF50+PA++防晒乳90ml 倍护水凝露防晒霜日本进口', 'https://gfs17.gomein.net.cn/T1uPJLBbLT1RCvBVdK_130.jpg', '53.90', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('307', '瓷遇粉扑美妆化妆蛋海绵蛋化妆工具三只套装 国美超市甄选', 'https://gfs17.gomein.net.cn/T1JSC5BQJv1RCvBVdK_130.jpg', '27.90', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('308', '兰蔻小黑瓶眼霜套装 15ml*2【专柜版】 改善黑眼圈 淡眼纹', 'https://gfs17.gomein.net.cn/T10pLLB5VT1RCvBVdK_130.jpg', '1080.00', null, '国美超市5f', '美妆个护');
INSERT INTO `floor` VALUES ('309', '郎酒白酒500mL 郎牌郎酒 53度 单瓶装 酱香型', 'https://gfs17.gomein.net.cn/T1y0K5B_AT1RCvBVdK_130.jpg', '268.00', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('310', '泸州老窖国窖1573礼盒装52度浓香型白酒500ml*2 （新老包装随机发货）', 'https://gfs17.gomein.net.cn/T17VhKBXd_1RCvBVdK_130.jpg', '2029.00', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('311', '茅台王子传承1999白酒 53度500ml*6瓶 酱香型白酒', 'https://gfs17.gomein.net.cn/T1bAZ5B5KT1RCvBVdK_130.jpg', '2066.00', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('312', '迎驾贡酒白酒迎驾老窖浓香型45度500ml 白酒迎驾老窖浓香型', 'https://gfs17.gomein.net.cn/T17Ob5B4hv1RCvBVdK_130.jpg', '21.90', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('313', '郎酒红花郎十五（15） 陈酿高度白酒 500ml*1  酱香型', 'https://gfs17.gomein.net.cn/T1F5E5BKKv1RCvBVdK_130.jpg', '711.90', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('314', '卡伯纳桃红起泡葡萄酒750mL 意大利原瓶进口红酒卡摩莫斯卡托低醇', 'https://gfs17.gomein.net.cn/T1W0x5B_bv1RCvBVdK_130.jpg', '75.00', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('315', '智象智利进口红酒750ml*6 智象冰川赤霞珠干红葡萄酒 整箱装', 'https://gfs17.gomein.net.cn/T11UA5BX_v1RCvBVdK_130.jpg', '89.90', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('316', '长城特酿3年解百纳干红葡萄酒750ml 中粮出品', 'https://gfs17.gomein.net.cn/T16mD5BsYv1RCvBVdK_130.jpg', '26.00', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('317', '尼雅新疆星光醇酿赤霞珠干红葡萄酒750ml*6 国美甄选', 'https://gfs17.gomein.net.cn/T1q7C5BmLv1RCvBVdK_130.jpg', '105.90', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('318', '西湖明前特级龙井茶罐装春茶50g 茶叶绿茶2020新茶上市', 'https://gfs17.gomein.net.cn/T17KD5BXhT1RCvBVdK_130.jpg', '64.90', null, '国美超市5f', '茗茶名酒');
INSERT INTO `floor` VALUES ('319', 'null', 'https://gfs11.gomein.net.cn/T16rbjBKWT1RCvBVdK.png', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('320', 'null', 'https://gfs6.gomein.net.cn/wireless/T1JsdnBXWT1RCvBVdK_470_470.png', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('321', 'null', 'https://gfs6.gomein.net.cn/wireless/T1KdW7B5hv1RCvBVdK_199_234.jpg', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('322', 'null', 'https://gfs7.gomein.net.cn/wireless/T1UKd7BKL_1RCvBVdK_199_234.jpg', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('323', 'null', 'https://gfs9.gomein.net.cn/wireless/T1zybKBT_T1RCvBVdK_199_234.jpg', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('324', 'null', 'https://gfs9.gomein.net.cn/wireless/T1FR_KBgZT1RCvBVdK_199_234.jpg', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('325', 'null', 'https://gfs8.gomein.net.cn/wireless/T1uydKB5Yv1RCvBVdK_199_234.jpg', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('326', 'null', 'https://gfs9.gomein.net.cn/wireless/T1NYL5Bsdv1RCvBVdK_199_234.jpg', null, null, '家居家装6f', '精选热卖');
INSERT INTO `floor` VALUES ('327', 'JOMOO九牧 可升降淋浴花洒 空气能出水升级经典增压超薄淋浴器 莲蓬头花洒 36281(36281经典款)', 'https://gfs17.gomein.net.cn/T1paVyB4LT1RCvBVdK_130.jpg', '549.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('328', '科勒希尔维独立浴缸亚克力浴缸K-99023/99024/99017/99018/99013/99014(含裙边扶手排水)', 'https://gfs17.gomein.net.cn/T1ncJbBQZv1RCvBVdK_130.jpg', '6699.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('329', '箭牌花洒马桶套装', 'https://gfs17.gomein.net.cn/T1FkL5B4DT1RCvBVdK_130.jpg', '1749.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('330', 'FSL佛山照明 led卧室灯', 'https://gfs17.gomein.net.cn/T10ch4BbKT1RCvBVdK_130.jpg', '89.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('331', '汉斯威诺水晶吊灯', 'https://gfs17.gomein.net.cn/T1biATB5_v1RCvBVdK_130.jpg', '899.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('332', '松下（Panasonic）新款风暖浴霸多功能暖风机风暖机2100w卫生间浴室带照明 支持APP控制(FV-RB20VL1 （通用吊顶带照明） 超薄款厚度11.5CM)', 'https://gfs17.gomein.net.cn/T1LfD4B7xT1RCvBVdK_130.jpg', '1799.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('333', '西门子五孔插座睿致系列', 'https://gfs17.gomein.net.cn/T1A6hvBjxj1RCvBVdK_130.jpg', '40.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('334', 'Aqara智能门锁N100', 'https://gfs17.gomein.net.cn/T1C9hyBTYv1RCvBVdK_130.jpg', '1299.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('335', '艾芬达 电加热毛巾烘干架', 'https://gfs17.gomein.net.cn/T1Ui_yBm_T1RCvBVdK_130.jpg', '998.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('336', '华帝 多功能智能风暖浴霸', 'https://gfs17.gomein.net.cn/T1EOKKBCbv1RCvBVdK_130.jpg', '539.00', null, '家居家装6f', '家装建材');
INSERT INTO `floor` VALUES ('337', '一米色彩 床垫 席梦思 弹簧床垫 双人软硬两用型单人椰棕床垫子 针织面料(白色 1800*2000)', 'https://gfs17.gomein.net.cn/T1_ZE_BbLT1RCvBVdK_130.jpg', '733.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('338', 'A家家具 沙发 布艺沙发 可拆洗透气绒布客厅家具组合套装懒人北欧现代简约小户型布沙发 灰色 三人位+中位+右贵妃位(灰色 三人位+右贵妃位)', 'https://gfs17.gomein.net.cn/T1IDDgBTE_1RCvBVdK_130.jpg', '3699.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('339', '天米 TIMI 北欧白橡实木桌椅 1.2米1.4米餐厅家具 总统椅组合(原木色 1.4米餐桌+4把白蜡木总统椅)', 'https://gfs17.gomein.net.cn/T1AXWbBsDT1RCvBVdK_130.jpg', '4198.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('340', '恒兴达 白橡木床全实木双人床简约北欧卧室家具 大板直拼 纯实木 无贴皮(1.8*2米原木色 单床)', 'https://gfs17.gomein.net.cn/T1M._7B5d_1RCvBVdK_130.jpg', '3198.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('341', 'SKYMI 轻奢床 时尚简约床 港式双人床  婚床(米白色1.5米 单床)', 'https://gfs17.gomein.net.cn/T1L5K4BCJT1RCvBVdK_130.jpg', '2190.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('342', '浪漫星 北欧折叠餐桌椅组合 现代简约家用饭桌 小户型长方形圆餐桌子(灰橡木色 餐桌)', 'https://gfs17.gomein.net.cn/T1XUbyBvAv1RCvBVdK_130.jpg', '1199.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('343', '吉木多 网红实木餐桌椅组合 隐形大理石实木餐桌 小户型收缩家用实木圆桌(胡桃色 椭圆形一桌六椅)', 'https://gfs17.gomein.net.cn/T1zed4BCd_1RCvBVdK_130.jpg', '3598.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('344', '美天乐 北欧实木床主卧1.5m单双人床现代简约1.8米日式卧室高箱储物床婚床(1.8*2米无软靠 床)', 'https://gfs17.gomein.net.cn/T1USKvB5Wj1RCvBVdK_130.jpg', '1498.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('345', '8H乳胶枕 小米枕头泰国进口天然乳胶枕Z6 乳胶枕头颈椎护颈枕芯大波浪按摩型枕芯 狼牙枕 单只装', 'https://gfs17.gomein.net.cn/T1paVyB4__1RCvBVdK_130.jpg', '249.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('346', '浪漫星 头层中厚真牛皮沙发 大小户型客厅皮艺沙发 简约现代3088#(中厚皮-2+1+贵)', 'https://gfs17.gomein.net.cn/T1sQDTBXxv1RCvBVdK_130.jpg', '4660.00', null, '家居家装6f', '精品家具');
INSERT INTO `floor` VALUES ('347', 'null', 'https://gfs13.gomein.net.cn/T16YDyBXCT1RCvBVdK.jpg', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('348', 'null', 'https://gfs13.gomein.net.cn/T1_ZJQBTbv1RCvBVdK.jpg', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('349', 'null', 'https://gfs13.gomein.net.cn/T1H0KbBjdv1RCvBVdK.jpg', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('350', 'null', 'https://gfs13.gomein.net.cn/T1yRA_BTWv1RCvBVdK.jpg', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('351', 'null', 'https://gfs12.gomein.net.cn/T1sVWsBCYv1RCvBVdK.jpg', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('352', 'null', 'https://gfs12.gomein.net.cn/T1mvDQBTYT1RCvBVdK.jpeg', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('353', 'null', 'https://gfs10.gomein.net.cn/T16tbXB7Kv1RCvBVdK.png', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('354', 'null', 'https://gfs13.gomein.net.cn/T15E_QB4LT1RCvBVdK.jpg', null, null, '汽车用品7f', '精选热卖');
INSERT INTO `floor` VALUES ('355', '磐鼎P662A 1080P双录后视镜行车记录仪4.3英寸高清大屏 前后双镜头录像倒车时自动切换到倒车后视停车监控夜视后拉(官方标配无内存)', 'https://gfs17.gomein.net.cn/T14BLTB4Zv1RCvBVdK_130.jpg', '169.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('356', '金字號H7后视镜行车记录仪高清星光夜视7英寸触摸大屏倒车影像停车监控一体机(标配 双镜头)', 'https://gfs17.gomein.net.cn/T1oyJgBgdv1RCvBVdK_130.jpg', '238.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('357', '磐鼎 P616C 1200万相素小巧轻便高清1080P 行车记录仪 重力感映 循环录像 停车监控(单镜头带电子狗无内存)', 'https://gfs17.gomein.net.cn/T12WETBmxv1RCvBVdK_130.jpg', '189.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('358', '磐鼎 P606 车载行车记录仪 锌合金机身 3寸屏单双镜头高清夜视倒车影像一体机(标配（无内存）)', 'https://gfs17.gomein.net.cn/T1ekVTBQhT1RCvBVdK_130.jpg', '149.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('359', '磐鼎P663A超高清后视镜行车记录仪4.3英寸蓝镜 双镜头(官方标配无内存)', 'https://gfs17.gomein.net.cn/T1F1YTBsZT1RCvBVdK_130.jpg', '159.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('360', '磐鼎 360度全景行车记录仪吸盘1080高清夜视360粘贴式车载监控仪循环录像(（标配+32G内存）)', 'https://gfs17.gomein.net.cn/T19RYgBQLT1RCvBVdK_130.jpg', '398.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('361', '磐鼎 行车记录仪电子狗一体机 安全预警仪固定流动雷达测速仪一键升级(标配（无内存）)', 'https://gfs17.gomein.net.cn/T117ZgBmYT1RCvBVdK_130.jpg', '239.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('362', '金字號H7行车记录仪(标配 双镜头)', 'https://gfs17.gomein.net.cn/T1bOCbB4Wv1RCvBVdK_130.jpg', '238.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('363', '磐鼎P8619 3G中控台行车记录仪导航仪双镜头高清夜视广角声控高德地图带电子狗倒车影像停车监控一体机(官方标配无内存)', 'https://gfs17.gomein.net.cn/T1IGWgBmET1RCvBVdK_130.jpg', '699.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('364', '磐鼎P666A四灯夜视电子狗记录仪后视镜行车记录仪后视镜电子狗行车记录仪重力感映停车监控1080P倒车后视行车记录仪(官方标配无内存)', 'https://gfs17.gomein.net.cn/T18YZTB4Zv1RCvBVdK_130.jpg', '229.00', null, '汽车用品7f', '车载电器');
INSERT INTO `floor` VALUES ('365', '乔氏汽车坐垫套新四季通用座垫迈腾凯美瑞帕萨特朗逸速腾坐垫-贝森(炫酷黑 十件套)', 'https://gfs17.gomein.net.cn/T1DHYvBCDv1RCvBVdK_130.jpg', '328.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('366', '【下单备注车型号】2116 混纺麻时尚汽车四季坐垫 决明子亚麻汽车座垫 汽车用品(标准版咖色 材质)', 'https://gfs17.gomein.net.cn/T1dJWjBmDT1RCvBVdK_130.jpg', '299.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('367', '【下单备注车型号】419混纺麻时尚汽车四季坐垫 亚麻汽车座垫 汽车用品(标准版红色 材质)', 'https://gfs17.gomein.net.cn/T186KjBmYT1RCvBVdK_130.jpg', '277.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('368', '【下单备注车型】140丹尼皮冰丝夏季汽车坐垫 汽车用品 通用凉垫套座垫(豪华版橘色 材质)', 'https://gfs17.gomein.net.cn/T1IJdQB5_T1RCvBVdK_130.jpg', '399.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('369', '【下单备注车型号】328高大帅 格调竹碳皮四季汽车坐垫座套 豪华座垫 汽车用品(豪华版黑色 材质)', 'https://gfs17.gomein.net.cn/T1WGxQB5ZT1RCvBVdK_130.jpg', '299.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('370', '【下单备注车型号】047丹尼皮四季通用汽车坐垫 竹碳夏季座垫汽车用品座椅套(豪华版米色 材质)', 'https://gfs17.gomein.net.cn/T13OKQBXAT1RCvBVdK_130.jpg', '318.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('371', '乔氏汽车坐垫套新四季通用座垫迈腾凯美瑞帕萨特朗逸速腾坐垫-贝森(浓情咖 十件套)', 'https://gfs17.gomein.net.cn/T1AiYTB4dv1RCvBVdK_130.jpg', '328.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('372', '乔氏汽车坐垫套新四季通用座垫大众北京帕萨特朗逸速腾坐垫(汉欧-黑色 汉欧豪华款-六件套)', 'https://gfs17.gomein.net.cn/T1EkJvBjW_1RCvBVdK_130.jpg', '458.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('373', '乔氏 汽车脚垫奥迪A4L宝骏730速腾昂科威crv卡罗拉迈腾轩逸哈弗H6丝圈脚垫(迪曼黑金皮-黑灰丝圈收纳)', 'https://gfs17.gomein.net.cn/T1FLhgBm_T1RCvBVdK_130.jpg', '298.00', null, '汽车用品7f', '四季坐垫');
INSERT INTO `floor` VALUES ('374', '乔氏防滑防震后备箱垫XPE环保汽车尾箱垫专车专用丰田福克斯途观朗逸凯越科鲁兹尾垫(雍森款【炫酷黑】下单留言车新年份)', 'https://gfs17.gomein.net.cn/T1MihTB4JT1RCvBVdK_130.jpg', '88.00', null, '汽车用品7f', '四季坐垫');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` text,
  `imgUrl` varchar(100) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `shop` varchar(20) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `parentID` int(10) DEFAULT NULL,
  `readnum` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '小米MI 小米10 双模5G 骁龙865 1亿像素8K电影相机 8GB+256GB 冰海蓝 拍照游戏手机', 'https://gfs17.gomein.net.cn/T15aV4BsJg1RCvBVdK_210.jpg', '3599.00', '自营', '小米', '0', '2');
INSERT INTO `list` VALUES ('2', '小米MI 小米10S 5G 骁龙870 VC液冷散热 白 8GB+256GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1avLLBThv1RCvBVdK_210.jpg', '3499.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('3', '小米MI Note 9 4G 6000mAh大电池 骁龙662处理器 18W快充 羽墨黑 6GB+128GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T19ZDeBjYv1RCvBVdK_210.jpg', '1099.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('4', '小米MI Redmi Note 9 5G 天玑800U 18W快充 4800万超清三摄 云墨灰 6GB+128GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1K5EeBTxT1RCvBVdK_210.jpg', '1299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('5', '小米MI 小米11 Ultra 骁龙888 2K AMOLED四曲面柔性屏 陶瓷工艺 12GB+512GB 陶瓷白 智能手机', 'https://gfs17.gomein.net.cn/T1daJnBbJ_1RCvBVdK_210.jpg', '6999.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('6', '小米MI Redmi 9A 砂石黑 5000mAh大电量 大屏幕大字体大音量 1300万AI相机 4GB+128GB 全网通4G智能手机', 'https://gfs17.gomein.net.cn/T1R3EKBvdT1RCvBVdK_210.jpg', '799.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('7', '小米MI 小米11 5G 骁龙888 2K 1亿像素 55W有线闪充 50W无线闪充  蓝 8GB+256GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1CjKeB4Ev1RCvBVdK_210.jpg', '4299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('8', '小米MI Redmi K40 Pro  骁龙888 120Hz高刷直屏 6400万高清三摄相机 33W快充 8GB+256GB 幻境 智能手机', 'https://gfs17.gomein.net.cn/T1WkELB7DT1RCvBVdK_210.jpg', '3299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('9', '小米MI Redmi Note 9 Pro 5G 一亿像素 骁龙750G 33W快充 120Hz刷新率 静默星空 8GB+128GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1z5KeBsDT1RCvBVdK_210.jpg', '1799.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('10', '小米MI 小米11青春版 骁龙780G处理器 AMOLED柔性直屏 8GB+256GB冰峰黑提 5G时尚游戏手机', 'https://gfs17.gomein.net.cn/T14cxnBCZv1RCvBVdK_210.jpg', '2599.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('11', '小米MI 小米11 Pro 骁龙888 2K AMOLED四曲面柔性屏 67W无线闪充 12GB+256GB 黑色 智能手机', 'https://gfs17.gomein.net.cn/T15RZnBvx_1RCvBVdK_210.jpg', '5699.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('12', '小米Redmi 红米K40 骁龙870 三星AMOLED 120Hz高刷直屏 游戏电竞智能5G手机(亮黑)', 'https://gfs17.gomein.net.cn/T1nmbLBbAv1RCvBVdK_210.jpg', '2198.00', '欧贸手机专营店', '小米', '0', '0');
INSERT INTO `list` VALUES ('13', '小米MI 小米10纪念版 陶瓷黑 8GB+256GB 智能手机', 'https://gfs17.gomein.net.cn/T1YELKBjKT1RCvBVdK_210.jpg', '5599.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('14', '小米 Redmi 红米Note9 Pro 5G手机(湖光秋色)', 'https://gfs17.gomein.net.cn/T1AmxeB7K_1RCvBVdK_210.jpg', '1899.00', '低调手机专营店', '小米', '0', '0');
INSERT INTO `list` VALUES ('15', '小米 红米K30S至尊纪念版 5G手机(月光银)', 'https://gfs17.gomein.net.cn/T1UhC7BjYv1RCvBVdK_210.jpg', '2199.00', '低调手机专营店', '小米', '0', '0');
INSERT INTO `list` VALUES ('16', '小米Redmi红米K40 旗舰骁龙870 三星AMOLED 120Hz高刷直屏 游戏电竞智能5G手机(晴雪)', 'https://gfs17.gomein.net.cn/T1cODLB5xT1RCvBVdK_210.jpg', '2738.00', '低调手机专营店', '小米', '0', '0');
INSERT INTO `list` VALUES ('17', '小米Redmi 红米Note9 4G手机(烟波蓝)', 'https://gfs17.gomein.net.cn/T1MmDeBQJ_1RCvBVdK_210.jpg', '988.00', '低调手机专营店', '小米', '0', '0');
INSERT INTO `list` VALUES ('18', '小米(MI) Redmi 红米K30 5G版本 全面屏索尼6400万后置四摄 4500mAh超长续航 30W快充(蔷薇粉 官方标配)', 'https://gfs17.gomein.net.cn/T10XA4BXZg1RCvBVdK_210.jpg', '1698.00', '仕伟手机专营店', '小米', '0', '0');
INSERT INTO `list` VALUES ('19', '小米MI 小米10 双模5G 骁龙865 1亿像素8K电影相机 8GB+128GB 钛银黑 拍照游戏手机', 'https://gfs17.gomein.net.cn/T1RXE4Bmxg1RCvBVdK_210.jpg', '3399.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('20', '小米MI 小米10S 5G 骁龙870 VC液冷散热 蓝 12GB+256GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1NIDLBmK_1RCvBVdK_210.jpg', '3799.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('21', '小米MI Note 9 4G 6000mAh大电池 骁龙662处理器 18W快充 羽墨黑 8GB+128GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1n8JeB5b_1RCvBVdK_210.jpg', '1299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('22', '小米MI Redmi Note 9 5G 天玑800U 18W快充 4800万超清三摄 云墨灰 8GB+256GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1hZZeB4D_1RCvBVdK_210.jpg', '1699.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('23', '小米MI 小米11 Ultra 骁龙888 2K AMOLED四曲面柔性屏 陶瓷工艺 12GB+256GB 陶瓷白 智能手机', 'https://gfs17.gomein.net.cn/T1IXKnBChT1RCvBVdK_210.jpg', '6499.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('24', '小米MI Redmi 9A 晴空蓝 5000mAh大电量 大屏幕大字体大音量 1300万AI相机 4GB+128GB 全网通4G智能手机', 'https://gfs17.gomein.net.cn/T16jVKBjxT1RCvBVdK_210.jpg', '799.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('25', '小米MI 小米11 5G 骁龙888 2K 1亿像素 55W有线闪充 50W无线闪充  黑 8GB+256GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1HfVeBgh_1RCvBVdK_210.jpg', '4299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('26', '小米MI Redmi K40 Pro 骁龙888 120Hz高刷直屏 6400万高清三摄相机 33W快充 8GB+256GB 晴雪 智能手机', 'https://gfs17.gomein.net.cn/T108bLB_J_1RCvBVdK_210.jpg', '3299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('27', '小米MI Redmi Note 9 Pro 5G 一亿像素 骁龙750G 33W快充 120Hz刷新率 碧海星辰 8GB+128GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1FkbeB_CT1RCvBVdK_210.jpg', '1799.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('28', '小米MI 小米11 Pro 骁龙888 2K AMOLED四曲面柔性屏 67W无线闪充 8GB+256GB 黑色 智能手机', 'https://gfs17.gomein.net.cn/T1YaKnByK_1RCvBVdK_210.jpg', '5299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('29', '小米MI 小米10 双模5G 骁龙865 1亿像素8K电影相机 12GB+256GB 国风雅灰 拍照游戏手机', 'https://gfs17.gomein.net.cn/T1IahKBKhv1RCvBVdK_210.jpg', '3999.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('30', '小米MI 小米10S 5G 骁龙870 VC液冷散热 黑 12GB+256GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1DI_LBbKv1RCvBVdK_210.jpg', '3799.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('31', '小米MI Note 9 4G 6000mAh大电池 骁龙662处理器 18W快充 烟波蓝 4GB+128GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1a5KeBjWT1RCvBVdK_210.jpg', '999.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('32', '小米MI Redmi Note 9 5G 天玑800U 18W快充 4800万超清三摄 青山外 6GB+128GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1k5AeBvET1RCvBVdK_210.jpg', '1299.00', '自营', '小米', '0', '0');
INSERT INTO `list` VALUES ('33', 'Apple iPhone 12 128G 紫色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T17ghnBXd_1RCvBVdK_210.jpg', '5999.00', '自营', '苹果', '0', '1');
INSERT INTO `list` VALUES ('34', 'Apple iPhone 11 128G 紫色 移动联通电信4G手机(新包装)', 'https://gfs17.gomein.net.cn/T1OTVeB7x_1RCvBVdK_210.jpg', '4899.00', '自营', '苹果', '0', '3');
INSERT INTO `list` VALUES ('35', 'Apple iPhone 12 Pro 256G 海蓝色 移动联通电信5G手机', 'https://gfs17.gomein.net.cn/T1G7d7ByhT1RCvBVdK_210.jpg', '8999.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('36', 'Apple iPhone 12 Pro Max 256G 海蓝色 移动联通电信5G手机', 'https://gfs17.gomein.net.cn/T1P6D7BCA_1RCvBVdK_210.jpg', '9799.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('37', 'Apple iPhone 12 mini 128G 蓝色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T1z6b7BgLv1RCvBVdK_210.jpg', '5199.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('38', 'Apple iPhone 12 128G 白色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T1u7d7BydT1RCvBVdK_210.jpg', '5999.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('39', 'Apple iPhone 11 128G 白色 移动联通电信4G手机(新包装)', 'https://gfs17.gomein.net.cn/T1ueC4BCJ_1RCvBVdK_210.jpg', '4899.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('40', 'Apple iPhone 12 Pro 128G 石墨色 移动联通电信5G手机', 'https://gfs17.gomein.net.cn/T1EmK7B_xv1RCvBVdK_210.jpg', '8199.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('41', 'Apple iPhone 12 Pro Max 128G 海蓝色 移动联通电信5G手机', 'https://gfs17.gomein.net.cn/T1s0E7BsdT1RCvBVdK_210.jpg', '8999.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('42', 'Apple iPhone 12 mini 128G 黑色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T10mK7BbVv1RCvBVdK_210.jpg', '5199.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('43', 'Apple iPhone 12 128G 黑色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T1w2d7ByCT1RCvBVdK_210.jpg', '5999.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('44', 'Apple iPhone 11 128G 黑色 移动联通电信4G手机(新包装)', 'https://gfs17.gomein.net.cn/T1zeA4BsdT1RCvBVdK_210.jpg', '4899.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('45', 'Apple iPhone 12 Pro 128G 海蓝色 移动联通电信5G手机', 'https://gfs17.gomein.net.cn/T1ccC7BQEv1RCvBVdK_210.jpg', '8199.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('46', 'Apple iPhone 12 Pro Max 256G 金色 移动联通电信5G手机', 'https://gfs17.gomein.net.cn/T1NOJ7BQDT1RCvBVdK_210.jpg', '9599.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('47', 'Apple iPhone 12 mini 128G 紫色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T1H_hnB5hT1RCvBVdK_210.jpg', '5199.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('48', 'Apple iPhone 12 256G 紫色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T1LhhnB7DT1RCvBVdK_210.jpg', '6799.00', '自营', '苹果', '0', '0');
INSERT INTO `list` VALUES ('49', '小米MI 小米10 双模5G 骁龙865 1亿像素8K电影相机 8GB+256GB 冰海蓝 拍照游戏手机', 'https://gfs17.gomein.net.cn/T15aV4BsJg1RCvBVdK_450.jpg', '3599.00', '全部商品', 'enlage', '1', '0');
INSERT INTO `list` VALUES ('50', '骁龙865, 5G, 一亿像素,30W疾速闪充<更多商品优惠请点击查看> 【5G爆款低价抢】 点击参与', 'https://gfs13.gomein.net.cn/T1vNd4B4hv1RCvBVdK_450.jpg', null, '小米手机', 'enlage', '1', '0');
INSERT INTO `list` VALUES ('51', '小米官方旗舰店', 'https://gfs10.gomein.net.cn/T1uNh4BgY_1RCvBVdK_450.jpg', null, '红米手机', 'enlage', '1', '0');
INSERT INTO `list` VALUES ('52', '', 'https://gfs12.gomein.net.cn/T1xyL4B_Eg1RCvBVdK_450.jpg', null, '智能酷玩', 'enlage', '1', '0');
INSERT INTO `list` VALUES ('53', '', 'https://gfs11.gomein.net.cn/T12FJ4BQC_1RCvBVdK_450.jpg', null, '智能家电', 'enlage', '1', '0');
INSERT INTO `list` VALUES ('54', '', 'https://gfs13.gomein.net.cn/T1KyDmBmJT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('55', '', 'https://gfs12.gomein.net.cn/T1fWY4B_Vv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('56', '', 'https://gfs10.gomein.net.cn/T12xY4BQDv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('57', '', 'https://gfs10.gomein.net.cn/T12xY4BQDv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('58', '', 'https://gfs10.gomein.net.cn/T1TaZmBKbT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('59', '', 'https://gfs11.gomein.net.cn/T1jtdmB7DT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('60', '', 'https://gfs12.gomein.net.cn/T1EbK4BTZv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('61', '', 'https://gfs10.gomein.net.cn/T1baEmBjWT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('62', '', 'https://gfs13.gomein.net.cn/T1hxK4BTJv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('63', '', 'https://gfs10.gomein.net.cn/T1hahmBghT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('64', '', 'https://gfs11.gomein.net.cn/T1Qxx4BXJ_1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('65', '', 'https://gfs11.gomein.net.cn/T1AtCmB4ZT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('66', '', 'https://gfs13.gomein.net.cn/T1GYb4B7Jv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('67', '', 'https://gfs13.gomein.net.cn/T1mbY4BgAv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('68', '', 'https://gfs12.gomein.net.cn/T1PW_4BmYv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('69', '', 'https://gfs12.gomein.net.cn/T1CYV4B5xv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('70', '', 'https://gfs13.gomein.net.cn/T1nWd4BsDv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('71', '', 'https://gfs12.gomein.net.cn/T1kYA4B4Dv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('72', '', 'https://gfs10.gomein.net.cn/T17tKmBy_T1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('73', '', 'https://gfs13.gomein.net.cn/T1ptdmBKJT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('74', '', 'https://gfs12.gomein.net.cn/T1AaJmB_KT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('75', '', 'https://gfs12.gomein.net.cn/T1GYV4B5Wv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('76', '', 'https://gfs11.gomein.net.cn/T1CY_4BmKv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('77', '', 'https://gfs13.gomein.net.cn/T1vydmB7DT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('78', '', 'https://gfs12.gomein.net.cn/T1bbY4BTVv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('79', '', 'https://gfs11.gomein.net.cn/T1EW_4BK_v1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('80', '', 'https://gfs12.gomein.net.cn/T1vYV4BCLv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('81', '', 'https://gfs13.gomein.net.cn/T1gxD4BQxv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('82', '', 'https://gfs10.gomein.net.cn/T1laxmBTET1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('83', '', 'https://gfs10.gomein.net.cn/T1wW_4BKAv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('84', '', 'https://gfs12.gomein.net.cn/T15WZ4ByJ_1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('85', '', 'https://gfs11.gomein.net.cn/T1HtYmB4ZT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('86', '', 'https://gfs10.gomein.net.cn/T1HxV4B5Kv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('87', '', 'https://gfs12.gomein.net.cn/T1wyhmBQdT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('88', '', 'https://gfs13.gomein.net.cn/T1exD4BQDv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('89', '', 'https://gfs10.gomein.net.cn/T1ktYmBCAT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('90', '', 'https://gfs11.gomein.net.cn/T18ahmB_LT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('91', '', 'https://gfs10.gomein.net.cn/T1zY_4B5Jv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('92', '', 'https://gfs10.gomein.net.cn/T1XaZmBKJT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('93', '', 'https://gfs12.gomein.net.cn/T1oYK4BTEv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('94', '', 'https://gfs13.gomein.net.cn/T19tdmB7xT1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('95', '', 'https://gfs13.gomein.net.cn/T1QYb4Bmxv1RCvBVdK', null, '', 'details', '1', '0');
INSERT INTO `list` VALUES ('96', '小米MI 小米10S 5G 骁龙870 VC液冷散热 白 8GB+256GB 游戏智能手机', 'https://gfs17.gomein.net.cn/T1avLLBThv1RCvBVdK_450.jpg', '3499.00', '全部商品', 'enlage', '2', '0');
INSERT INTO `list` VALUES ('97', '小米10S为环保版，不赠充电器，请谨慎下单！\"<更多商品优惠请点击查看> 【5G爆款低价抢】 点击参与', 'https://gfs13.gomein.net.cn/T1meYLBTVT1RCvBVdK_450.jpg', null, '小米手机', 'enlage', '2', '0');
INSERT INTO `list` VALUES ('98', '小米官方旗舰店', 'https://gfs12.gomein.net.cn/T14SxLBydv1RCvBVdK_450.jpg', null, '红米手机', 'enlage', '2', '0');
INSERT INTO `list` VALUES ('99', '', 'https://gfs12.gomein.net.cn/T17I_LBTVv1RCvBVdK_450.jpg', null, '智能酷玩', 'enlage', '2', '0');
INSERT INTO `list` VALUES ('100', '', 'https://gfs13.gomein.net.cn/T1IP_LBjWv1RCvBVdK_450.jpg', null, '智能家电', 'enlage', '2', '0');
INSERT INTO `list` VALUES ('101', '', 'https://gfs12.gomein.net.cn/T1gwdLBjdT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('102', '', 'https://gfs13.gomein.net.cn/T1DwDLB_bT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('103', '', 'https://gfs13.gomein.net.cn/T1EwbLBCVT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('104', '', 'https://gfs11.gomein.net.cn/T1ye_LB4_T1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('105', '', 'https://gfs13.gomein.net.cn/T15PVLB_dv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('106', '', 'https://gfs11.gomein.net.cn/T1lT_LBCYT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('107', '', 'https://gfs11.gomein.net.cn/T1HIdLBmY_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('108', '', 'https://gfs11.gomein.net.cn/T1nGWLB7Dv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('109', '', 'https://gfs12.gomein.net.cn/T11SYLBTAT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('110', '', 'https://gfs11.gomein.net.cn/T1ZwdLBs_T1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('111', '', 'https://gfs12.gomein.net.cn/T1DvVLBQKv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('112', '', 'https://gfs10.gomein.net.cn/T1iPKLByE_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('113', '', 'https://gfs13.gomein.net.cn/T1rGVLBQDv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('114', '', 'https://gfs12.gomein.net.cn/T1vPZLBKL_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('115', '', 'https://gfs11.gomein.net.cn/T1bvKLBb_v1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('116', '', 'https://gfs12.gomein.net.cn/T1pwDLB_bT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('117', '', 'https://gfs10.gomein.net.cn/T1nPWLBKKv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('118', '', 'https://gfs13.gomein.net.cn/T18eZLBj_T1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('119', '', 'https://gfs11.gomein.net.cn/T1QeKLBmbT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('120', '', 'https://gfs10.gomein.net.cn/T1wTDLBQKT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('121', '', 'https://gfs10.gomein.net.cn/T1eeELBmLv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('122', '', 'https://gfs11.gomein.net.cn/T1OSJLB5Dv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('123', '', 'https://gfs11.gomein.net.cn/T1OIKLByE_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('124', '', 'https://gfs13.gomein.net.cn/T1NvALBgVv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('125', '', 'https://gfs13.gomein.net.cn/T1xPKLBbJv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('126', '', 'https://gfs10.gomein.net.cn/T1TSKLBC_T1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('127', '', 'https://gfs12.gomein.net.cn/T1LedLBjVT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('128', '', 'https://gfs13.gomein.net.cn/T1JTZLBbbT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('129', '', 'https://gfs13.gomein.net.cn/T1YTDLBQLT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('130', '', 'https://gfs10.gomein.net.cn/T1GICLB4K_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('131', '', 'https://gfs11.gomein.net.cn/T1hwdLBsJT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('132', '', 'https://gfs10.gomein.net.cn/T1fedLBgKT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('133', '', 'https://gfs10.gomein.net.cn/T1cGKLByd_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('134', '', 'https://gfs11.gomein.net.cn/T11SdLBjhT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('135', '', 'https://gfs10.gomein.net.cn/T1XIALB7Cv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('136', '', 'https://gfs13.gomein.net.cn/T1QvKLBbdv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('137', '', 'https://gfs10.gomein.net.cn/T1pP_LBbWv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('138', '', 'https://gfs13.gomein.net.cn/T1CvKLBjxv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('139', '', 'https://gfs13.gomein.net.cn/T1FwbLB5ET1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('140', '', 'https://gfs11.gomein.net.cn/T1EeZLBsxT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('141', '', 'https://gfs13.gomein.net.cn/T17PALBgEv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('142', '', 'https://gfs13.gomein.net.cn/T1PPKLByE_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('143', '', 'https://gfs12.gomein.net.cn/T1HSKLB7_T1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('144', '', 'https://gfs11.gomein.net.cn/T1Ev_LBjEv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('145', '', 'https://gfs13.gomein.net.cn/T16eVLB4dT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('146', '', 'https://gfs12.gomein.net.cn/T14SxLBy_v1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('147', '', 'https://gfs10.gomein.net.cn/T1zvZLBKY_1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('148', '', 'https://gfs12.gomein.net.cn/T1leYLBTKT1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('149', '', 'https://gfs11.gomein.net.cn/T17I_LBgJv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('150', '', 'https://gfs10.gomein.net.cn/T1IP_LBsZv1RCvBVdK', null, '', 'details', '2', '0');
INSERT INTO `list` VALUES ('151', 'Apple iPhone 12 128G 紫色 移动联通电信 5G手机', 'https://gfs17.gomein.net.cn/T17ghnBXd_1RCvBVdK_450.jpg', '5999.00', 'Mac', 'enlage', '33', '0');
INSERT INTO `list` VALUES ('152', '<由于活动火爆，会延迟发货，请下单前关注>新品上市，先到先得<选择门店自提，需现场激活手机>', 'https://gfs11.gomein.net.cn/T1b9JnBCE_1RCvBVdK_450.jpg', null, 'iPad', 'enlage', '33', '0');
INSERT INTO `list` VALUES ('153', '国美Apple产品专营店', 'https://gfs10.gomein.net.cn/T1owAnBT__1RCvBVdK_450.jpg', null, 'iPhone', 'enlage', '33', '0');
INSERT INTO `list` VALUES ('154', '', 'https://gfs12.gomein.net.cn/T1FnhnB4D_1RCvBVdK_450.jpg', null, 'Watch', 'enlage', '33', '0');
INSERT INTO `list` VALUES ('155', '', 'https://gfs11.gomein.net.cn/T1ADEnBTxT1RCvBVdK_450.jpg', null, 'Music', 'enlage', '33', '0');
INSERT INTO `list` VALUES ('156', '', 'https://gfs11.gomein.net.cn/T1E9xnByh_1RCvBVdK_450.jpg', null, '', 'enlage', '33', '0');
INSERT INTO `list` VALUES ('157', '', 'https://gfs13.gomein.net.cn/T11MdnB_Yv1RCvBVdK_450.jpg', null, '', 'enlage', '33', '0');
INSERT INTO `list` VALUES ('158', '', 'https://gfs12.gomein.net.cn/T1r9AnBgET1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('159', '', 'https://gfs11.gomein.net.cn/T10nKnB5Yv1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('160', '', 'https://gfs13.gomein.net.cn/T1hnEnB7E_1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('161', '', 'https://gfs11.gomein.net.cn/T1S_JnBvxT1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('162', '', 'https://gfs10.gomein.net.cn/T1egAnBgAT1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('163', '', 'https://gfs11.gomein.net.cn/T1WMbnBXEv1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('164', '', 'https://gfs13.gomein.net.cn/T1SndnB_Vv1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('165', '', 'https://gfs13.gomein.net.cn/T1RhEnBgxT1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('166', '', 'https://gfs13.gomein.net.cn/T1uTAnBjZ_1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('167', '', 'https://gfs11.gomein.net.cn/T1ewWnBKK_1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('168', '', 'https://gfs11.gomein.net.cn/T18nWnB_WT1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('169', '', 'https://gfs10.gomein.net.cn/T11MCnBmKv1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('170', '', 'https://gfs11.gomein.net.cn/T1zgYnBKLv1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('171', '', 'https://gfs11.gomein.net.cn/T1XgAnBsDT1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('172', '', 'https://gfs11.gomein.net.cn/T16wKnBmDg1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('173', '', 'https://gfs11.gomein.net.cn/T1ynZnB_Lv1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('174', '', 'https://gfs10.gomein.net.cn/T1qnbnByhv1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('175', '', 'https://gfs11.gomein.net.cn/T1sLJnBKCT1RCvBVdK', null, '', 'details', '33', '0');
INSERT INTO `list` VALUES ('176', 'Apple iPhone 11 128G 紫色 移动联通电信4G手机(新包装)', 'https://gfs17.gomein.net.cn/T1OTVeB7x_1RCvBVdK_450.jpg', '4899.00', 'Mac', 'enlage', '34', '0');
INSERT INTO `list` VALUES ('177', '<由于活动火爆，会延迟发货，请下单前关注>双摄系统，A13仿生芯片<选择门店自提，需现场激活手机>', 'https://gfs3.gomein.net.cn/T1ie_4BTYv1RCvBVdK_450.jpg', null, 'iPad', 'enlage', '34', '0');
INSERT INTO `list` VALUES ('178', '国美Apple产品专营店', 'https://gfs12.gomein.net.cn/T1QSL4BTLT1RCvBVdK_450.jpg', null, 'iPhone', 'enlage', '34', '0');
INSERT INTO `list` VALUES ('179', '', 'https://gfs11.gomein.net.cn/T14SK4BQWv1RCvBVdK_450.jpg', null, 'Watch', 'enlage', '34', '0');
INSERT INTO `list` VALUES ('180', '', 'https://gfs13.gomein.net.cn/T1uwW4B7LT1RCvBVdK_450.jpg', null, 'Music', 'enlage', '34', '0');
INSERT INTO `list` VALUES ('181', '', 'https://gfs13.gomein.net.cn/T1jTL4BTLT1RCvBVdK_450.jpg', null, '', 'enlage', '34', '0');
INSERT INTO `list` VALUES ('182', '', 'https://gfs13.gomein.net.cn/T11KVPBsLv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('183', '', 'https://gfs13.gomein.net.cn/T1cADPB_d_1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('184', '', 'https://gfs13.gomein.net.cn/T1CI_PBKJT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('185', '', 'https://gfs10.gomein.net.cn/T1oGhPBmbv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('186', '', 'https://gfs11.gomein.net.cn/T1PPhPB7hv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('187', '', 'https://gfs10.gomein.net.cn/T1RJLPBsDv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('188', '', 'https://gfs12.gomein.net.cn/T13ILPBy_T1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('189', '', 'https://gfs13.gomein.net.cn/T1uJVPByb_1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('190', '', 'https://gfs12.gomein.net.cn/T1QdVPBbWv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('191', '', 'https://gfs10.gomein.net.cn/T16G_PBTJT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('192', '', 'https://gfs13.gomein.net.cn/T1cPVPB5KT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('193', '', 'https://gfs10.gomein.net.cn/T1gvxPBC_v1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('194', '', 'https://gfs13.gomein.net.cn/T10A_PBmC_1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('195', '', 'https://gfs12.gomein.net.cn/T1FICPBgDT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('196', '', 'https://gfs11.gomein.net.cn/T1xdDPBgW_1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('197', '', 'https://gfs10.gomein.net.cn/T1bvDPBQLT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('198', '', 'https://gfs10.gomein.net.cn/T11AVPByY_1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('199', '', 'https://gfs11.gomein.net.cn/T19AVPBsVv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('200', '', 'https://gfs11.gomein.net.cn/T1aILPByLT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('201', '', 'https://gfs11.gomein.net.cn/T1GvbPB7DT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('202', '', 'https://gfs12.gomein.net.cn/T1jJLPBQLv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('203', '', 'https://gfs13.gomein.net.cn/T1vPKPBTdT1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('204', '', 'https://gfs11.gomein.net.cn/T1xKLPBjVv1RCvBVdK', null, '', 'details', '34', '0');
INSERT INTO `list` VALUES ('205', '', 'https://gfs10.gomein.net.cn/T1FvhPBKKv1RCvBVdK', null, '', 'details', '34', '0');

-- ----------------------------
-- Table structure for navlist
-- ----------------------------
DROP TABLE IF EXISTS `navlist`;
CREATE TABLE `navlist` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(30) NOT NULL,
  `parentList` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `thead` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navlist
-- ----------------------------
INSERT INTO `navlist` VALUES ('131', '潮3c', '手机 充值', 'li1top', '0');
INSERT INTO `navlist` VALUES ('132', '手机', '手机 充值', 'li1top', '0');
INSERT INTO `navlist` VALUES ('133', '数码', '手机 充值', 'li1top', '0');
INSERT INTO `navlist` VALUES ('134', '以旧换新', '手机 充值', 'li1top', '0');
INSERT INTO `navlist` VALUES ('135', '手机充值', '手机 充值', 'li1top', '0');
INSERT INTO `navlist` VALUES ('136', '延保服务', '手机 充值', 'li1top', '0');
INSERT INTO `navlist` VALUES ('137', '智享生活', '手机 充值', 'li1top', '0');
INSERT INTO `navlist` VALUES ('138', '手机通讯', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('139', '手机', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('140', 'iPhone', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('141', '华为', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('142', '小米', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('143', '荣耀', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('144', '三星', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('145', 'OPPO', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('146', 'vivo', '手机 充值', '0', '手机通讯');
INSERT INTO `navlist` VALUES ('147', '运营商', '手机 充值', '0', '运营商');
INSERT INTO `navlist` VALUES ('148', '中国移动', '手机 充值', '0', '运营商');
INSERT INTO `navlist` VALUES ('149', '中国联通', '手机 充值', '0', '运营商');
INSERT INTO `navlist` VALUES ('150', '手机配件', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('151', '手机壳', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('152', '贴膜', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('153', '手机存储卡', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('154', '数据线', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('155', '充电器', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('156', '手机耳机', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('157', '移动电源', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('158', '手机电池', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('159', '苹果周边', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('160', '车载配件', '手机 充值', '0', '手机配件');
INSERT INTO `navlist` VALUES ('161', '充话费', '手机 充值', '0', '充话费');
INSERT INTO `navlist` VALUES ('162', '移动', '手机 充值', '0', '充话费');
INSERT INTO `navlist` VALUES ('163', '联通', '手机 充值', '0', '充话费');
INSERT INTO `navlist` VALUES ('164', '电信', '手机 充值', '0', '充话费');
INSERT INTO `navlist` VALUES ('165', '极信', '手机 充值', '0', '充话费');
INSERT INTO `navlist` VALUES ('166', '摄影摄像', '相机 智能数码', '0', '摄影摄像');
INSERT INTO `navlist` VALUES ('167', '数码相机', '相机 智能数码', '0', '摄影摄像');
INSERT INTO `navlist` VALUES ('168', '单反相机', '相机 智能数码', '0', '摄影摄像');
INSERT INTO `navlist` VALUES ('169', '单电/微单相机', '相机 智能数码', '0', '摄影摄像');
INSERT INTO `navlist` VALUES ('170', '摄像机', '相机 智能数码', '0', '摄影摄像');
INSERT INTO `navlist` VALUES ('171', '拍立得', '相机 智能数码', '0', '摄影摄像');
INSERT INTO `navlist` VALUES ('172', '数码配件', '相机 智能数码', '1', '数码配件');
INSERT INTO `navlist` VALUES ('173', '存储卡', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('174', '三脚架/云台', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('175', '相机包', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('176', '滤镜', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('177', '相机清洁/贴膜', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('178', '单反镜头', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('179', '单反配件', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('180', '电池/充电器', '相机 智能数码', '0', '数码配件');
INSERT INTO `navlist` VALUES ('181', '智能设备', '相机 智能数码', '0', '智能设备');
INSERT INTO `navlist` VALUES ('182', '智能手表', '相机 智能数码', '0', '智能设备');
INSERT INTO `navlist` VALUES ('183', '智能手环', '相机 智能数码', '0', '智能设备');
INSERT INTO `navlist` VALUES ('184', 'VR眼镜', '相机 智能数码', '0', '智能设备');
INSERT INTO `navlist` VALUES ('185', '智能家居', '相机 智能数码', '0', '智能设备');
INSERT INTO `navlist` VALUES ('186', '健康监测', '相机 智能数码', '0', '智能设备');
INSERT INTO `navlist` VALUES ('187', '智享生活', '相机 智能数码', '0', '智能设备');
INSERT INTO `navlist` VALUES ('188', '视听娱乐', '相机 智能数码', '0', '视听娱乐');
INSERT INTO `navlist` VALUES ('189', '耳机/耳麦', '相机 智能数码', '0', '视听娱乐');
INSERT INTO `navlist` VALUES ('190', '音箱/音响', '相机 智能数码', '0', '视听娱乐');
INSERT INTO `navlist` VALUES ('191', 'MP3/MP4', '相机 智能数码', '0', '视听娱乐');
INSERT INTO `navlist` VALUES ('192', '收/录音机', '相机 智能数码', '0', '视听娱乐');
INSERT INTO `navlist` VALUES ('193', '电子教育', '相机 智能数码', '0', '电子教育');
INSERT INTO `navlist` VALUES ('194', '电子书', '相机 智能数码', '0', '电子教育');
INSERT INTO `navlist` VALUES ('195', '电子词典', '相机 智能数码', '0', '电子教育');
INSERT INTO `navlist` VALUES ('196', '录音笔', '相机 智能数码', '0', '电子教育');
INSERT INTO `navlist` VALUES ('197', '学生平板', '相机 智能数码', '0', '电子教育');
INSERT INTO `navlist` VALUES ('198', '点读机/复读机', '相机 智能数码', '0', '电子教育');
INSERT INTO `navlist` VALUES ('199', '潮3c', '电脑 办公配件', 'li1top', '0');
INSERT INTO `navlist` VALUES ('200', '电脑办公', '电脑 办公配件', 'li1top', '0');
INSERT INTO `navlist` VALUES ('201', '精品配件', '电脑 办公配件', 'li1top', '0');
INSERT INTO `navlist` VALUES ('202', '以旧换新', '电脑 办公配件', 'li1top', '0');
INSERT INTO `navlist` VALUES ('203', '美通卡', '电脑 办公配件', 'li1top', '0');
INSERT INTO `navlist` VALUES ('204', '延保服务', '电脑 办公配件', 'li1top', '0');
INSERT INTO `navlist` VALUES ('205', '电脑整机', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('206', '笔记本', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('207', '游戏本', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('208', '平板电脑', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('209', '台式电脑', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('210', '一体机', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('211', '笔记本配件', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('212', '服务器', '电脑 办公配件', '0', '电脑整机');
INSERT INTO `navlist` VALUES ('213', '外设产品', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('214', '鼠标', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('215', '键盘', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('216', '电脑包', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('217', '电脑音箱', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('218', 'U盘', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('219', '移动硬盘', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('220', '鼠标垫', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('221', '摄像头/监控摄像', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('222', '线缆', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('223', '耳机', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('224', 'UPS电源', '电脑 办公配件', '0', '外设产品');
INSERT INTO `navlist` VALUES ('225', '网络产品', '电脑 办公配件', '0', '网络产品');
INSERT INTO `navlist` VALUES ('226', '路由器', '电脑 办公配件', '0', '网络产品');
INSERT INTO `navlist` VALUES ('227', '网络机顶盒', '电脑 办公配件', '0', '网络产品');
INSERT INTO `navlist` VALUES ('228', '交换机', '电脑 办公配件', '0', '网络产品');
INSERT INTO `navlist` VALUES ('229', '网卡', '电脑 办公配件', '0', '网络产品');
INSERT INTO `navlist` VALUES ('230', '5G/4G/3G上网', '电脑 办公配件', '0', '网络产品');
INSERT INTO `navlist` VALUES ('231', '办公设备', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('232', '投影机', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('233', '摄影配件', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('234', '多功能一体机', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('235', '打印机', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('236', '传真设备', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('237', '验钞/点钞机', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('238', '扫描设备', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('239', '收银机', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('240', '电话机', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('241', '保险柜', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('242', '白板/封装机', '电脑 办公配件', '0', '办公设备');
INSERT INTO `navlist` VALUES ('243', '文具/耗材', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('244', '笔类', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('245', '激光笔', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('246', '办公文具', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('247', '文件收纳', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('248', '学生文具', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('249', '计算器', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('250', '考勤设备', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('251', '硒鼓', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('252', '墨盒/墨粉', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('253', '色带', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('254', '纸类', '电脑 办公配件', '0', '文具/耗材');
INSERT INTO `navlist` VALUES ('255', '平板配件', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('256', '保护套/壳', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('257', '保护膜', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('258', 'iPad配件', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('259', '苹果耳机', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('260', '连接线', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('261', '底座/支架', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('262', '触控笔', '电脑 办公配件', '0', '平板配件');
INSERT INTO `navlist` VALUES ('263', '电脑配件', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('264', '显示器', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('265', 'CPU', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('266', '主板', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('267', '显卡', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('268', '硬盘', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('269', '内存', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('270', '硬盘', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('271', '机箱', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('272', '电源', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('273', '刻录机/光驱', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('274', 'DIY整机', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('275', '装机配件', '电脑 办公配件', '0', '电脑配件');
INSERT INTO `navlist` VALUES ('276', '增值产品', '电脑 办公配件', '0', '增值产品');
INSERT INTO `navlist` VALUES ('277', '电脑远程服务', '电脑 办公配件', '0', '增值产品');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tell` bigint(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'asdfasdf', 'asdasd', null, '15333332242');
INSERT INTO `user` VALUES ('2', 'administor', 'asdasd', null, '15333332242');
INSERT INTO `user` VALUES ('3', 'wuyuancheng', 'qwer123', null, '13559695656');
INSERT INTO `user` VALUES ('4', 'sdfgsdfg', 'asdasd', null, '15333332242');
INSERT INTO `user` VALUES ('5', 'wertwert', 'asdfasdf', null, '14323422342');
