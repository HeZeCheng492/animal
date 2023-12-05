/*
 Navicat Premium Data Transfer

 Source Server         : HZC_Mysql
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : animal

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 05/12/2023 11:51:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610761718736 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2023-11-18 10:23:14', 61, '广东省佛山市南海区狮山镇广云路佛山科学技术学院', '小何', '15015689508', '是');
INSERT INTO `address` VALUES (2, '2023-11-18 10:23:14', 1610761656144, '西藏自治区昌都市江达县生达乡', '小陆', '16459878988', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'chongwuyongpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NULL DEFAULT NULL COMMENT '单价',
  `discountprice` float NULL DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1701167151117 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '购物车表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1701242477110 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '客服聊天表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (101, '2023-11-18 10:23:14', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (102, '2023-11-18 10:23:14', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (103, '2023-11-18 10:23:14', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (104, '2023-11-18 10:23:14', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (105, '2023-11-18 10:23:14', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (106, '2023-11-18 10:23:14', 6, 6, '提问6', '回复6', 6);
INSERT INTO `chat` VALUES (1610761553545, '2023-11-18 10:23:14', 61, NULL, '1212', NULL, 0);
INSERT INTO `chat` VALUES (1610761852227, '2023-11-18 10:23:14', 1610761656144, NULL, '这里可以向管理员咨询', NULL, 0);
INSERT INTO `chat` VALUES (1610762502848, '2023-11-18 10:23:14', 1610761656144, 1, NULL, '这里回复用户的咨询', NULL);
INSERT INTO `chat` VALUES (1701242477109, '2023-11-18 10:23:14', 61, 1, NULL, '3434', NULL);

-- ----------------------------
-- Table structure for chongwufenlei
-- ----------------------------
DROP TABLE IF EXISTS `chongwufenlei`;
CREATE TABLE `chongwufenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `fenlei`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610762157888 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chongwufenlei
-- ----------------------------
INSERT INTO `chongwufenlei` VALUES (11, '2023-11-18 10:23:14', '宠物猫');
INSERT INTO `chongwufenlei` VALUES (12, '2023-11-18 10:23:14', '宠物狗');
INSERT INTO `chongwufenlei` VALUES (13, '2023-11-18 10:23:14', '宠物猪');
INSERT INTO `chongwufenlei` VALUES (14, '2023-11-18 10:23:14', '宠物兔');
INSERT INTO `chongwufenlei` VALUES (15, '2023-11-18 10:23:14', '其它宠物');

-- ----------------------------
-- Table structure for chongwuguashi
-- ----------------------------
DROP TABLE IF EXISTS `chongwuguashi`;
CREATE TABLE `chongwuguashi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `guashibiaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '挂失标题',
  `fenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '宠物名称',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `chengshi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '城市',
  `yishididian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '遗失地点',
  `yishishijian` datetime NULL DEFAULT NULL COMMENT '遗失时间',
  `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
  `neirongxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容详情',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610762017007 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物挂失' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chongwuguashi
-- ----------------------------
INSERT INTO `chongwuguashi` VALUES (91, '2023-11-18 10:23:14', '挂失标题1', '分类1', '宠物名称1', 'http://localhost:8080/animal/upload/chongwuguashi_tupian1.jpg', '城市1', '遗失地点1', '2021-01-16 09:02:43', '2021-01-16', '内容详情1', '用户名1', '手机1');
INSERT INTO `chongwuguashi` VALUES (92, '2023-11-18 10:23:14', '挂失标题2', '分类2', '宠物名称2', 'http://localhost:8080/animal/upload/chongwuguashi_tupian2.jpg', '城市2', '遗失地点2', '2021-01-16 09:02:43', '2021-01-16', '内容详情2', '用户名2', '手机2');
INSERT INTO `chongwuguashi` VALUES (93, '2023-11-18 10:23:14', '挂失标题3', '分类3', '宠物名称3', 'http://localhost:8080/animal/upload/chongwuguashi_tupian3.jpg', '城市3', '遗失地点3', '2021-01-16 09:02:43', '2021-01-16', '内容详情3', '用户名3', '手机3');
INSERT INTO `chongwuguashi` VALUES (94, '2023-11-18 10:23:14', '挂失标题4', '分类4', '宠物名称4', 'http://localhost:8080/animal/upload/chongwuguashi_tupian4.jpg', '城市4', '遗失地点4', '2021-01-16 09:02:43', '2021-01-16', '内容详情4', '用户名4', '手机4');
INSERT INTO `chongwuguashi` VALUES (95, '2023-11-18 10:23:14', '挂失标题5', '分类5', '宠物名称5', 'http://localhost:8080/animal/upload/chongwuguashi_tupian5.jpg', '城市5', '遗失地点5', '2021-01-16 09:02:43', '2021-01-16', '内容详情5', '用户名5', '手机5');
INSERT INTO `chongwuguashi` VALUES (96, '2023-11-18 10:23:14', '挂失标题6', '分类6', '宠物名称6', 'http://localhost:8080/animal/upload/chongwuguashi_tupian6.jpg', '城市6', '遗失地点6', '2021-01-16 09:02:43', '2021-01-16', '内容详情6', '用户名6', '手机6');
INSERT INTO `chongwuguashi` VALUES (1610762017006, '2023-11-18 10:23:14', '这里发布要挂失的宠物', '宠物猫', 'AA', 'http://localhost:8080/animal/upload/guashi.jpg', '北京', '朝阳区', '2021-01-20 09:49:10', '2021-01-20', '<p>1212</p>', '666', '16459878982');

-- ----------------------------
-- Table structure for chongwujicun
-- ----------------------------
DROP TABLE IF EXISTS `chongwujicun`;
CREATE TABLE `chongwujicun`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jicunbiaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '寄存标题',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '宠物名称',
  `fenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `jicunneirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '寄存内容',
  `shangdianbianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商店编号',
  `shangdianmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商店名称',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `jicunriqi` date NULL DEFAULT NULL COMMENT '寄存日期',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610761964514 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物寄存' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chongwujicun
-- ----------------------------
INSERT INTO `chongwujicun` VALUES (71, '2023-11-18 10:23:14', '寄存标题1', '宠物名称1', '分类1', 'http://localhost:8080/animal/upload/chongwujicun_tupian1.jpg', '公', '年龄1', '<p>寄存内容1</p>', '商店编号1', '商店名称1', '联系电话1', '2023-11-18', '备注1', '用户名1', '手机1', '否', '');
INSERT INTO `chongwujicun` VALUES (72, '2023-11-18 10:23:14', '寄存标题2', '宠物名称2', '分类2', 'http://localhost:8080/animal/upload/chongwujicun_tupian2.jpg', '公', '年龄2', '<p>寄存内容2</p>', '商店编号2', '商店名称2', '联系电话2', '2023-11-18', '备注2', '用户名2', '手机2', '否', '');
INSERT INTO `chongwujicun` VALUES (73, '2023-11-18 10:23:14', '寄存标题3', '宠物名称3', '分类3', 'http://localhost:8080/animal/upload/chongwujicun_tupian3.jpg', '公', '年龄3', '寄存内容3', '商店编号3', '商店名称3', '联系电话3', '2023-11-18', '备注3', '用户名3', '手机3', '否', '');
INSERT INTO `chongwujicun` VALUES (74, '2023-11-18 10:23:14', '寄存标题4', '宠物名称4', '分类4', 'http://localhost:8080/animal/upload/chongwujicun_tupian4.jpg', '公', '年龄4', '寄存内容4', '商店编号4', '商店名称4', '联系电话4', '2023-11-18', '备注4', '用户名4', '手机4', '否', '');
INSERT INTO `chongwujicun` VALUES (75, '2023-11-18 10:23:14', '寄存标题5', '宠物名称5', '分类5', 'http://localhost:8080/animal/upload/chongwujicun_tupian5.jpg', '公', '年龄5', '寄存内容5', '商店编号5', '商店名称5', '联系电话5', '2023-11-18', '备注5', '用户名5', '手机5', '否', '');
INSERT INTO `chongwujicun` VALUES (76, '2023-11-18 10:23:14', '寄存标题6', '宠物名称6', '分类6', 'http://localhost:8080/animal/upload/chongwujicun_tupian6.jpg', '公', '年龄6', '寄存内容6', '商店编号6', '商店名称6', '联系电话6', '2023-11-18', '备注6', '用户名6', '手机6', '否', '');
INSERT INTO `chongwujicun` VALUES (1610761964513, '2023-11-18 10:23:14', '宠物寄存', 'AA', '宠物狗', 'http://localhost:8080/animal/upload/jicun.jpg', '公', '三个月', '<p><img src=\"http://localhost:8080/animal/upload/jicun.jpg\" /></p>', '编号1', '商店名称1', '13823888881', '2023-11-18', '', '666', '16459878982', '是', '这里查看审核用户寄存信息');

-- ----------------------------
-- Table structure for chongwulingyang
-- ----------------------------
DROP TABLE IF EXISTS `chongwulingyang`;
CREATE TABLE `chongwulingyang`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '宠物名称',
  `fenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `zhonglei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '种类',
  `nianling` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `xingqing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性情',
  `chongwuzhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '宠物状态',
  `yimiaoqingkuang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '疫苗情况',
  `lingyangfeiyong` int NOT NULL COMMENT '领养费用',
  `lingyangshuoming` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '领养说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610762290903 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物领养' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chongwulingyang
-- ----------------------------
INSERT INTO `chongwulingyang` VALUES (51, '2023-11-18 10:23:14', '宠物名称1', '宠物猫', 'http://localhost:8080/animal/upload/chongwulingyang_tupian1.jpg', '种类1', '年龄1', '母', '性情1', '已领养', '有', 111, '<p>费用包括疫苗费用 治疗费用</p><p><br></p><p>宠物被领养后 可在这里修改宠物状态 或者直接删除该条领养信息</p>');
INSERT INTO `chongwulingyang` VALUES (52, '2023-11-18 10:23:14', '宠物名称2', '分类2', 'http://localhost:8080/animal/upload/chongwulingyang_tupian2.jpg', '种类2', '年龄2', '公', '性情2', '可领养', '有', 2, '领养说明2');
INSERT INTO `chongwulingyang` VALUES (53, '2023-11-18 10:23:14', '宠物名称3', '分类3', 'http://localhost:8080/animal/upload/chongwulingyang_tupian3.jpg', '种类3', '年龄3', '公', '性情3', '可领养', '有', 3, '领养说明3');
INSERT INTO `chongwulingyang` VALUES (54, '2023-11-18 10:23:14', '宠物名称4', '分类4', 'http://localhost:8080/animal/upload/chongwulingyang_tupian4.jpg', '种类4', '年龄4', '公', '性情4', '可领养', '有', 4, '领养说明4');
INSERT INTO `chongwulingyang` VALUES (55, '2023-11-18 10:23:14', '宠物名称5', '分类5', 'http://localhost:8080/animal/upload/chongwulingyang_tupian5.jpg', '种类5', '年龄5', '公', '性情5', '可领养', '有', 5, '领养说明5');
INSERT INTO `chongwulingyang` VALUES (56, '2023-11-18 10:23:14', '宠物名称6', '分类6', 'http://localhost:8080/animal/upload/chongwulingyang_tupian6.jpg', '种类6', '年龄6', '公', '性情6', '可领养', '有', 6, '领养说明6');
INSERT INTO `chongwulingyang` VALUES (1610762290902, '2023-11-18 10:23:14', '这里发布可供领养的宠物信息', '宠物狗', 'http://localhost:8080/animal/upload/lingyang.jpg', '金毛', '四个月', '公', '温顺', '可领养', '有', 160, '<p><img src=\"http://localhost:8080/animal/upload/lingyang.jpg\"></p><p><span class=\"ql-size-large\">领养费用包含流浪狗治疗费用  疫苗费用 </span></p>');

-- ----------------------------
-- Table structure for chongwushangdian
-- ----------------------------
DROP TABLE IF EXISTS `chongwushangdian`;
CREATE TABLE `chongwushangdian`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangdianbianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商店编号',
  `shangdianmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商店名称',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `jingyingfanwei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '经营范围',
  `lianxiren` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `shangdiandizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商店地址',
  `shangdianjieshao` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商店介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物商店' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chongwushangdian
-- ----------------------------
INSERT INTO `chongwushangdian` VALUES (41, '2023-11-18 10:23:14', '编号1', '商店名称1', 'http://localhost:8080/animal/upload/chongwushangdian_tupian1.jpg', '经营范围1', '联系人1', '13823888881', '商店地址1', '<p>商店介绍1</p>');
INSERT INTO `chongwushangdian` VALUES (42, '2023-11-18 10:23:14', '商店编号2', '商店名称2', 'http://localhost:8080/animal/upload/chongwushangdian_tupian2.jpg', '经营范围2', '联系人2', '13823888882', '商店地址2', '商店介绍2');
INSERT INTO `chongwushangdian` VALUES (43, '2023-11-18 10:23:14', '商店编号3', '商店名称3', 'http://localhost:8080/animal/upload/chongwushangdian_tupian3.jpg', '经营范围3', '联系人3', '13823888883', '商店地址3', '商店介绍3');
INSERT INTO `chongwushangdian` VALUES (44, '2023-11-18 10:23:14', '商店编号4', '商店名称4', 'http://localhost:8080/animal/upload/chongwushangdian_tupian4.jpg', '经营范围4', '联系人4', '13823888884', '商店地址4', '商店介绍4');
INSERT INTO `chongwushangdian` VALUES (45, '2023-11-18 10:23:14', '商店编号5', '商店名称5', 'http://localhost:8080/animal/upload/chongwushangdian_tupian5.jpg', '经营范围5', '联系人5', '13823888885', '商店地址5', '商店介绍5');
INSERT INTO `chongwushangdian` VALUES (46, '2023-11-18 10:23:14', '商店编号6', '商店名称6', 'http://localhost:8080/animal/upload/chongwushangdian_tupian6.jpg', '经营范围6', '联系人6', '13823888886', '商店地址6', '商店介绍6');

-- ----------------------------
-- Table structure for chongwuyongpin
-- ----------------------------
DROP TABLE IF EXISTS `chongwuyongpin`;
CREATE TABLE `chongwuyongpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '品牌',
  `baozhiqi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '保质期',
  `shangpinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品详情',
  `shengchanriqi` date NULL DEFAULT NULL COMMENT '生产日期',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610762211805 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物用品' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chongwuyongpin
-- ----------------------------
INSERT INTO `chongwuyongpin` VALUES (31, '2023-11-18 10:23:14', '商品名称1', '衣服饰品', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian1.jpg', '个', '品牌1', '保质期1', '<p>商品详情1</p>', '2023-10-16', '2023-12-05 11:41:33', 33, 22);
INSERT INTO `chongwuyongpin` VALUES (32, '2023-11-18 10:23:14', '商品名称2', '日用品', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian2.jpg', '规格2', '品牌2', '保质期2', '<p>商品详情2</p>', '2022-12-27', '2023-12-05 11:41:41', 20, 20);
INSERT INTO `chongwuyongpin` VALUES (33, '2023-11-18 10:23:14', '商品名称3', '分类3', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian3.jpg', '规格3', '品牌3', '保质期3', '<p>商品详情3</p>', '2023-11-18', '2023-12-05 11:41:45', 7, 99.9);
INSERT INTO `chongwuyongpin` VALUES (34, '2023-11-18 10:23:14', '商品名称4', '分类4', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian4.jpg', '规格4', '品牌4', '保质期4', '<p>商品详情4</p>', '2023-11-18', '2023-12-05 10:24:45', 6, 99.9);
INSERT INTO `chongwuyongpin` VALUES (35, '2023-11-18 10:23:14', '商品名称5', '分类5', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian5.jpg', '规格5', '品牌5', '保质期5', '<p>商品详情5</p>', '2023-11-18', '2023-12-05 10:24:59', 6, 99.9);
INSERT INTO `chongwuyongpin` VALUES (36, '2023-11-18 10:23:14', '商品名称6', '分类6', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian6.jpg', '规格6', '品牌6', '保质期6', '<p>商品详情6</p>', '2023-11-18', '2023-12-05 10:25:10', 9, 99.9);
INSERT INTO `chongwuyongpin` VALUES (1610762211804, '2023-11-18 10:23:14', '宠物玩具', '玩具', 'http://localhost:8080/animal/upload/yongpin.jpg', '个', 'a', '无', '<p><img src=\"http://localhost:8080/animal/upload/yongpin.jpg\"></p>', '2023-10-23', '2023-12-05 11:21:57', 6, 16);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/animal/upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/animal/upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/animal/upload/picture3.jpg');
INSERT INTO `config` VALUES (4, 'homepage', NULL);

-- ----------------------------
-- Table structure for discusschongwuguashi
-- ----------------------------
DROP TABLE IF EXISTS `discusschongwuguashi`;
CREATE TABLE `discusschongwuguashi`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 207 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物挂失评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discusschongwuguashi
-- ----------------------------
INSERT INTO `discusschongwuguashi` VALUES (201, '2023-11-18 10:23:14', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discusschongwuguashi` VALUES (202, '2023-11-18 10:23:14', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discusschongwuguashi` VALUES (203, '2023-11-18 10:23:14', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discusschongwuguashi` VALUES (204, '2023-11-18 10:23:14', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discusschongwuguashi` VALUES (205, '2023-11-18 10:23:14', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discusschongwuguashi` VALUES (206, '2023-11-18 10:23:14', 6, 6, '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discusschongwulingyang
-- ----------------------------
DROP TABLE IF EXISTS `discusschongwulingyang`;
CREATE TABLE `discusschongwulingyang`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物领养评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discusschongwulingyang
-- ----------------------------
INSERT INTO `discusschongwulingyang` VALUES (191, '2023-11-18 10:23:14', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discusschongwulingyang` VALUES (192, '2023-11-18 10:23:14', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discusschongwulingyang` VALUES (193, '2023-11-18 10:23:14', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discusschongwulingyang` VALUES (194, '2023-11-18 10:23:14', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discusschongwulingyang` VALUES (195, '2023-11-18 10:23:14', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discusschongwulingyang` VALUES (196, '2023-11-18 10:23:14', 6, 6, '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discusschongwushangdian
-- ----------------------------
DROP TABLE IF EXISTS `discusschongwushangdian`;
CREATE TABLE `discusschongwushangdian`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610761926894 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物商店评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discusschongwushangdian
-- ----------------------------
INSERT INTO `discusschongwushangdian` VALUES (181, '2023-11-18 10:23:14', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discusschongwushangdian` VALUES (182, '2023-11-18 10:23:14', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discusschongwushangdian` VALUES (183, '2023-11-18 10:23:14', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discusschongwushangdian` VALUES (184, '2023-11-18 10:23:14', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discusschongwushangdian` VALUES (185, '2023-11-18 10:23:14', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discusschongwushangdian` VALUES (186, '2023-11-18 10:23:14', 6, 6, '评论内容6', '回复内容6');
INSERT INTO `discusschongwushangdian` VALUES (1610761926893, '2023-11-18 10:23:14', 41, 1610761656144, '这里查看商店信息  并进行寄存操作', NULL);

-- ----------------------------
-- Table structure for discusschongwuyongpin
-- ----------------------------
DROP TABLE IF EXISTS `discusschongwuyongpin`;
CREATE TABLE `discusschongwuyongpin`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610761799227 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物用品评论表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of discusschongwuyongpin
-- ----------------------------
INSERT INTO `discusschongwuyongpin` VALUES (171, '2023-11-18 10:23:14', 1, 1, '评论内容1', '回复内容1');
INSERT INTO `discusschongwuyongpin` VALUES (172, '2023-11-18 10:23:14', 2, 2, '评论内容2', '回复内容2');
INSERT INTO `discusschongwuyongpin` VALUES (173, '2023-11-18 10:23:14', 3, 3, '评论内容3', '回复内容3');
INSERT INTO `discusschongwuyongpin` VALUES (174, '2023-11-18 10:23:14', 4, 4, '评论内容4', '回复内容4');
INSERT INTO `discusschongwuyongpin` VALUES (175, '2023-11-18 10:23:14', 5, 5, '评论内容5', '回复内容5');
INSERT INTO `discusschongwuyongpin` VALUES (176, '2023-11-18 10:23:14', 6, 6, '评论内容6', '回复内容6');
INSERT INTO `discusschongwuyongpin` VALUES (1610761799226, '2023-11-18 10:23:14', 31, 1610761656144, '用户登录后可以收藏  评论  购买 寄养  挂失  发布交流经验的帖子等操作', '这里可以回复用户在前台的评论');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '帖子标题',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帖子内容',
  `parentid` bigint NULL DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610762066052 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '论坛表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1610761430178, '2023-11-18 10:23:14', '你不得不知道的宠物冬季小常识', '<p>随着冬季气温越来越寒冷，人和宠物的活动量开始逐渐的减少，这就给了疾病和病菌可乘之机，从而导致了宠物的一些疾病发病率的提升，让铲屎官们忧心忡忡，那么在冬季要怎样预防一些疾病的发生呢，又有哪些常见的疾病呢，下面为各位铲屎官们介绍一些宠物在冬季常见的一些疾病，和宠物们一起度过健康的冬天~</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/13024195612/1000\"></p><p>针对用户的发帖  对于敏感类话题或者字眼  管理员在后台可以修改或者删除该类帖子</p>', 0, 61, '001', '开放');
INSERT INTO `forum` VALUES (1610761476912, '2023-11-18 10:23:14', '宠物知识猫', '<p><img src=\"http://localhost:8080/animal/upload/news_picture5.jpg\"></p><p>胖丁是继花生毛豆后被女儿喂养的又一只猫。</p><p class=\"ql-align-justify\">听女儿说，胖丁本来是她对门邻居小姑娘养的猫，可不知道什么原因，它总是和它的室友不友好相处，被主人多次嫌弃。一个偶然的机会女儿把它抱回了家。或许它体会到了原主人对它的厌恶，因此刚到女儿家时，胖丁连走路都是特别谨慎小心地溜边进出，生怕弄出一点点声响。而每次花生对它无故地挑衅，它也都表现的大度包容，颇有一番逆来顺受的可怜相。就连喂食机投喂食物时，只要花生毛豆第一时间挤在喂食机前，它也会主动退出不去争抢。时间久了，女儿再看见花生欺负它时总是呵斥花生，大概胖丁能从主人的言语、动作中体会出主人对它的喜爱，于是，它慢慢的开始学会了反击，甚至对花生的一些行为开始了反攻。</p><p class=\"ql-align-justify\">刚喂养胖丁时，女儿给我发过来它的好多照片。胖丁的体型圆滚滚肉嘟嘟，黑白灰相间的横向花纹让它看上去更为胖大。如果名字里不带个“胖”字仿佛就辜负了它这一身的肉肉。胖丁的脸瘪瘪得又宽又大，和毛豆小巧的瓜子脸相比，胖丁的脸足足大出毛豆两个型号。一双提溜圆的大眼睛却总是眯缝着，永远一副睡不醒的样子，嘴角下垂给人一种丧丧的生无可恋的感觉，我管它叫大脸猫，其实人家的学名叫“美国短毛猫”。可就凭着这一张厌世脸，短短半天时间我就喜欢上了它。</p>', 0, 61, '001', '开放');
INSERT INTO `forum` VALUES (1610762036807, '2023-11-18 10:23:14', NULL, '这里可以评论其他用户发布的交流帖子', 1610761476912, 1610761656144, '666', NULL);
INSERT INTO `forum` VALUES (1610762066051, '2023-11-18 10:23:14', '在这里可以发帖跟回帖', '<p>可以在这里分享自己的饲养宠物经验</p><p><br></p>', 0, 1610761656144, '666', '开放');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610762487661 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '宠物资讯' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (161, '2023-11-18 10:23:14', '河北父女坚持救助流浪猫狗13年', 'http://localhost:8080/animal/upload/news_picture1.jpg', '<p class=\"ql-align-justify\">在河北石家庄“阿紫救助家园”，阿紫（化名）正和她的父亲照料满院子的流浪狗、流浪猫。</p><p class=\"ql-align-justify\"><img src=\"http://localhost:8080/animal/upload/news_picture1.jpg\">13年来，阿紫和父亲救助过的流浪猫狗达300余只，如今还专门为这些“孩子”租了一个小院。阿紫表示，多年救助遇到的流浪猫狗有很多都是被人虐待打残或者生病遗弃的，还有在马路上被车轧伤的。她还从狗贩子手里救下过将要被屠宰的狗，这些狗里面除了流浪狗，还有很多家养的，虽然经历各种困难，但她将坚持下去。 中新社记者 翟羽佳 摄</p><p class=\"ql-align-justify\"><br></p>');
INSERT INTO `news` VALUES (162, '2023-11-18 10:23:14', '为让宠物主人安心放心，普陀这支“大部队”出动了！', 'http://localhost:8080/animal/upload/news_picture2.jpg', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">开展专项检查</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">保障消费者权益</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">建立微信群</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">宣传相关法规</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">宜川路街道市场监管所积极行动</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">让监管落到实处</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">为加强对宜川地区宠物店及动物诊疗机构的监管，规范宠物经营及诊疗活动，近期宜川市场监督管理所开展了一次专项检查，并通过建立微信群对上述经营单位进行有关法律法规的宣贯行动。</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">全面检查 规范经营</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">宜川路街道属于老城区，居民小区集中，宠物店多开设在沿街店铺及居民小区内，此次检查共涉及宠物店6户，动物诊疗机构1户，出动执法人员18人次。</span></p>');
INSERT INTO `news` VALUES (163, '2023-11-18 10:23:14', '可收容近萬隻流浪貓，動物綠洲奉賢貓收容領養基地開園', 'http://localhost:8080/animal/upload/news_picture3.jpg', '<p class=\"ql-align-justify\">	11月29日，動物綠洲奉賢貓收容領養基地正式開園。該基地位於上海市奉賢區西渡鎮，歸屬尋它科技旗下，佔地面積55畝，可收容近萬隻流浪貓。</p><p class=\"ql-align-justify\">	開園活動，尋它科技創始人&amp;CEO毛本浩表示：“動物綠洲是基於減少流浪動物數量，保護自然環境，構建人寵和諧的初心而創立的。企業解決養寵生活具體的問題，包括從源頭開始倡導領養代替購買，寵物醫療以及寵物食品安全，致力成為值得信任的寵物平台。”</p><p class=\"ql-align-justify\">	毛本浩宣布企業獲得數千萬元天使輪融資，本輪融資資金主要用於動物綠洲公益基地新開，附近有喵APP運營等，推動公益事業健康可持續發展。</p><p class=\"ql-align-justify\">   	上海市文明養寵專項基金、上海城市流浪貓管理中心代表、上海市志願服務公益基金會資金與物資募集部部長周敏在致辭中表示：“希望動物綠洲奉賢基地能夠彰顯基地初心，用愛和責任搭建流浪貓的天堂,讓它們不再流浪，讓每個被救助的貓咪都能找到溫暖的家”。</p><p class=\"ql-align-justify\">	上海寵物行業協會副會長孫雪梅表示：“救助流浪動物並不是一項簡單的任務，今天動物綠洲的開園是前進的一小步，相信會有更多組織、機構和愛心人士的加入”。</p><p class=\"ql-align-justify\">	中國獸醫協會獸醫文化分會會長賴曉雲表示，負責任地對待寵物，不僅僅是喂養，更包括它們的醫療和日常護理。我們需要提高公眾對流浪動物的認識和同情心，讓更多人了解流浪動物的困境，引導大家去幫助它們。</p><p class=\"ql-align-justify\">	在動物綠洲圓桌論壇中，亞洲小動物獸醫協會前主席陳鵬峰、中國獸醫協會獸醫文化分會會長賴曉雲、比瑞吉寵物股份有限公司CEO許久、中國畜牧業協會寵物產業分會副會長閻金勝、新瑞鵬寵物醫療集團副總裁郝波、上海尋它科技有限公司CEO毛本浩探討了治理流浪貓及流浪貓生存問題，嘉賓一致表示需要通過多方攜手、緊密合作，共筑公益網絡，共同創造出更加科學合理流浪動物綜合治理方案。</p><p><br></p><p class=\"ql-align-right\">(責編：王文娟、軒召強)</p><p><br></p>');
INSERT INTO `news` VALUES (1610762487660, '2023-11-18 10:23:14', '这里能添加新的公告信息跟宠物新闻资讯', 'http://localhost:8080/animal/upload/news_picture4.jpg', '<p><img src=\"http://localhost:8080/animal/upload/news_picture4.jpg\"></p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'chongwuyongpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格/积分',
  `discountprice` float NULL DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格/总积分',
  `discounttotal` float NULL DEFAULT 0 COMMENT '折扣总价格',
  `type` int NULL DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610761838585 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '订单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1610761543492, '2023-11-18 10:23:14', '20231169412527749061', 'chongwuyongpin', 61, 31, '商品名称1', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian1.jpg', 1, 22, 22, 22, 22, 1, '已发货', '广东省佛山市南海区狮山镇广云路佛山科学技术学院');
INSERT INTO `orders` VALUES (1610761808779, '2023-11-18 10:23:14', '2023116945515440758', 'chongwuyongpin', 1610761656144, 31, '商品名称1', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian1.jpg', 1, 22, 22, 22, 22, 1, '已完成', '西藏自治区昌都市江达县生达乡');
INSERT INTO `orders` VALUES (1610761838584, '2023-11-18 10:23:14', '20231169462118183227', 'chongwuyongpin', 1610761656144, 32, '商品名称2', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian2.jpg', 2, 20, 20, 40, 40, 1, '已完成', '西藏自治区昌都市江达县生达乡');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `fenlei`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610762165588 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (21, '2023-11-18 10:23:14', '零食');
INSERT INTO `shangpinfenlei` VALUES (22, '2023-11-18 10:23:14', '饮料');
INSERT INTO `shangpinfenlei` VALUES (23, '2023-11-18 10:23:14', '食品');
INSERT INTO `shangpinfenlei` VALUES (24, '2023-11-18 10:23:14', '玩具');
INSERT INTO `shangpinfenlei` VALUES (25, '2023-11-18 10:23:14', '衣服饰品');
INSERT INTO `shangpinfenlei` VALUES (26, '2023-11-18 10:23:14', '日用品');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1701152972040 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1610761539231, '2023-11-18 10:23:14', 61, 31, 'chongwuyongpin', '商品名称1', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian1.jpg');
INSERT INTO `storeup` VALUES (1610761763187, '2023-11-18 10:23:14', 1610761656144, 31, 'chongwuyongpin', '商品名称1', 'http://localhost:8080/animal/upload/chongwuyongpin_tupian1.jpg');
INSERT INTO `storeup` VALUES (1610761889205, '2023-11-18 10:23:14', 1610761656144, 51, 'chongwulingyang', '宠物名称1', 'http://localhost:8080/animal/upload/chongwulingyang_tupian1.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'hzc', 'users', '管理员', 'cxrf9oft553ysgsbvxnzzyi37z40w6cw', '2023-11-18 10:23:14', '2023-12-05 12:44:55');
INSERT INTO `token` VALUES (2, 61, '001', 'yonghu', '用户', '9xvrz6de62xgdiig30t6izqhwkbsucve', '2023-11-18 10:23:14', '2023-12-05 12:44:12');
INSERT INTO `token` VALUES (3, 1610761656144, '666', 'yonghu', '用户', 'f6yjux3v46ejfpunbgaanknurte1shd6', '2023-11-18 10:23:14', '2023-11-28 15:47:09');
INSERT INTO `token` VALUES (4, 1696739197072, '123', 'yonghu', '用户', 'gugjpea64fmebyuj1ll3y52es67d28gl', '2023-11-18 10:23:14', '2023-10-08 13:26:44');
INSERT INTO `token` VALUES (5, 2, 'lxl', 'users', '管理员', '88jirg0rhu6qhj141o5cznar56wx9wrt', '2023-11-18 10:23:14', '2023-11-29 12:04:04');
INSERT INTO `token` VALUES (6, 1701152048473, 'lxl', 'yonghu', '用户', '2e5r1ahl76ruq7mjnsqb6cnblzkiw86k', '2023-11-18 10:23:14', '2023-11-28 15:14:17');
INSERT INTO `token` VALUES (7, 62, '002', 'yonghu', '用户', 'ko0ofwstflci6571e32s40gj2xb6pymo', '2023-11-18 10:23:14', '2023-11-29 23:35:23');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'hzc', 'hzc123', '管理员', '2023-11-18 10:23:14');
INSERT INTO `users` VALUES (2, 'lxl', 'lxl', '管理员', '2023-11-18 10:23:14');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `money` float NULL DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1701152048474 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (61, '2023-11-18 10:23:14', '001', '001', '小何', '男', 'http://localhost:8080/animal/upload/yonghu_touxiang1.jpg', '15015689508', 78);
INSERT INTO `yonghu` VALUES (62, '2023-11-18 10:23:14', '002', '002', '小陆', '男', 'http://localhost:8080/animal/upload/yonghu_touxiang2.jpg', '13823888882', 100);
INSERT INTO `yonghu` VALUES (63, '2023-11-18 10:23:14', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/animal/upload/yonghu_touxiang3.jpg', '13823888883', 100);
INSERT INTO `yonghu` VALUES (64, '2023-11-18 10:23:14', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/animal/upload/yonghu_touxiang4.jpg', '13823888884', 100);
INSERT INTO `yonghu` VALUES (65, '2023-11-18 10:23:14', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/animal/upload/yonghu_touxiang5.jpg', '13823888885', 100);
INSERT INTO `yonghu` VALUES (66, '2023-11-18 10:23:14', '用户6', '123456', '姓名6', '女', 'http://localhost:8080/animal/upload/yonghu_touxiang6.jpg', '13823888886', 100);
INSERT INTO `yonghu` VALUES (1610761656144, '2023-11-18 10:23:14', '666', '666', '小李', '女', 'http://localhost:8080/animal/upload/yonghu_touxiang1.jpg', '16459878988', 538);

-- ----------------------------
-- Table structure for yonghulingyang
-- ----------------------------
DROP TABLE IF EXISTS `yonghulingyang`;
CREATE TABLE `yonghulingyang`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lingyangbiaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '领养标题',
  `chongwumingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '宠物名称',
  `fenlei` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '分类',
  `chongwuzhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '宠物状态',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `nianling` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '年龄',
  `lingyangfeiyong` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '领养费用',
  `shenqingneirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '申请内容',
  `shenqingriqi` date NULL DEFAULT NULL COMMENT '申请日期',
  `shenqingbeizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '申请备注',
  `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
  `ispay` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1610761908300 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户领养' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of yonghulingyang
-- ----------------------------
INSERT INTO `yonghulingyang` VALUES (81, '2023-11-18 10:23:14', '领养标题1', '宠物名称1', '分类1', '宠物状态1', 'http://localhost:8080/animal/upload/yonghulingyang_tupian1.jpg', '年龄1', '领养费用1', '申请内容1', '2023-11-18', '申请备注1', '用户名1', '手机1', '否', '', '未支付');
INSERT INTO `yonghulingyang` VALUES (82, '2023-11-18 10:23:14', '领养标题2', '宠物名称2', '分类2', '宠物状态2', 'http://localhost:8080/animal/upload/yonghulingyang_tupian2.jpg', '年龄2', '领养费用2', '申请内容2', '2023-11-18', '申请备注2', '用户名2', '手机2', '否', '', '未支付');
INSERT INTO `yonghulingyang` VALUES (83, '2023-11-18 10:23:14', '领养标题3', '宠物名称3', '分类3', '宠物状态3', 'http://localhost:8080/animal/upload/yonghulingyang_tupian3.jpg', '年龄3', '领养费用3', '申请内容3', '2023-11-18', '申请备注3', '用户名3', '手机3', '否', '', '未支付');
INSERT INTO `yonghulingyang` VALUES (84, '2023-11-18 10:23:14', '领养标题4', '宠物名称4', '分类4', '宠物状态4', 'http://localhost:8080/animal/upload/yonghulingyang_tupian4.jpg', '年龄4', '领养费用4', '申请内容4', '2023-11-18', '申请备注4', '用户名4', '手机4', '否', '', '未支付');
INSERT INTO `yonghulingyang` VALUES (85, '2023-11-18 10:23:14', '领养标题5', '宠物名称5', '分类5', '宠物状态5', 'http://localhost:8080/animal/upload/yonghulingyang_tupian5.jpg', '年龄5', '领养费用5', '申请内容5', '2023-11-18', '申请备注5', '用户名5', '手机5', '否', '', '未支付');
INSERT INTO `yonghulingyang` VALUES (86, '2023-11-18 10:23:14', '领养标题6', '宠物名称6', '分类6', '宠物状态6', 'http://localhost:8080/animal/upload/yonghulingyang_tupian6.jpg', '年龄6', '领养费用6', '申请内容6', '2023-11-18', '申请备注6', '用户名6', '手机6', '否', '', '未支付');
INSERT INTO `yonghulingyang` VALUES (1610761908299, '2023-11-18 10:23:14', '宠物领养', '宠物名称1', '宠物狗', '可领养', 'http://localhost:8080/animal/upload/chongwulingyang_tupian1.jpg', '年龄1', '150', '<p>11111</p>', '2023-11-18', '', '666', '16459878982', '是', '收到 同意', '已支付');

SET FOREIGN_KEY_CHECKS = 1;
