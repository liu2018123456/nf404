/*
 Navicat Premium Data Transfer

 Source Server         : CouldServer
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : 120.24.186.116:3306
 Source Schema         : slide

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 16/05/2018 10:07:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `anwser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('100001', '17866625604', '10086', '中国首都在哪', '北京');
INSERT INTO `account` VALUES ('100009', '15689914928', '123456', '我是谁', '你爸爸');
INSERT INTO `account` VALUES ('100012', '17806236033', '10086', '我的女儿', '魏雨珊');
INSERT INTO `account` VALUES ('100013', '17864280179', '123456', '名称', '从');
INSERT INTO `account` VALUES ('100014', '13595730586', '520423', '苟利国家生死以', '岂因祸福避趋之');
INSERT INTO `account` VALUES ('100015', '17864293685', 'tao', '姓名', '王海涛');
INSERT INTO `account` VALUES ('100016', '17857091534', '112130', '我是谁', '张娜');
INSERT INTO `account` VALUES ('100017', '13092525991', 'xwq159266', '儿时同伴', '聂');
INSERT INTO `account` VALUES ('100018', '15111219806', 'hfr1997', '我叫什么名字', 'Fanry');
INSERT INTO `account` VALUES ('100019', '17806243305', '2336557qs', '我的名字', '王玲');
INSERT INTO `account` VALUES ('100020', '10086', '10086', '12345', '上山打老虎');
INSERT INTO `account` VALUES ('100021', '18300595221', '123456789', '1+1=', '王');
INSERT INTO `account` VALUES ('100022', '18354276717', '123456', '啊', '啊');
INSERT INTO `account` VALUES ('100023', '12306', '12306', '官方测试账号', '测试');
INSERT INTO `account` VALUES ('100024', '--------------', '比赛前', '分界线', '--------------');
INSERT INTO `account` VALUES ('100025', '17805429457', '123456', '111', '111');
INSERT INTO `account` VALUES ('100026', '17864280175', '123', '第四次', '的是');

-- ----------------------------
-- Table structure for slides
-- ----------------------------
DROP TABLE IF EXISTS `slides`;
CREATE TABLE `slides`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slideId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userId`, `slideId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slides
-- ----------------------------
INSERT INTO `slides` VALUES ('100001', '100009', '', '宋词');
INSERT INTO `slides` VALUES ('100001', '100010', '', 'nf4简介');
INSERT INTO `slides` VALUES ('100001', '100013', '', '引言');
INSERT INTO `slides` VALUES ('100009', '100009', '', '宋词');
INSERT INTO `slides` VALUES ('100009', '100011', '', 'JDBC');
INSERT INTO `slides` VALUES ('100012', '100002', '', '我的第一个PPT');
INSERT INTO `slides` VALUES ('100012', '100009', '', '宋词');
INSERT INTO `slides` VALUES ('100012', '100010', '', '我的第二个PPT');
INSERT INTO `slides` VALUES ('100012', '100013', '', '在线编辑演示');
INSERT INTO `slides` VALUES ('100013', '100002', '', 'Hh ');
INSERT INTO `slides` VALUES ('100013', '100003', '', '奔跑吧青春');
INSERT INTO `slides` VALUES ('100013', '100004', '', '花卉');
INSERT INTO `slides` VALUES ('100013', '100005', '', '花');
INSERT INTO `slides` VALUES ('100013', '100006', '', '新导入幻灯片');
INSERT INTO `slides` VALUES ('100013', '100007', '', '新导入幻灯片');
INSERT INTO `slides` VALUES ('100014', '100002', '', '巴厘岛');
INSERT INTO `slides` VALUES ('100014', '100003', '', 'nf4简介');
INSERT INTO `slides` VALUES ('100015', '100001', '', 'NF4 园丁助手-介绍');
INSERT INTO `slides` VALUES ('100015', '100002', '', '宋词-示例');
INSERT INTO `slides` VALUES ('100015', '100003', '', '唐诗');
INSERT INTO `slides` VALUES ('100015', '100004', '', 'Life is ...');
INSERT INTO `slides` VALUES ('100015', '100005', '', '小米 XiaoMi');
INSERT INTO `slides` VALUES ('100015', '100006', '', 'Android 开发环境');
INSERT INTO `slides` VALUES ('100015', '100007', '', '操作系统');
INSERT INTO `slides` VALUES ('100015', '100008', '', '计算机网络');
INSERT INTO `slides` VALUES ('100016', '100001', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100016', '100002', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100016', '100003', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100018', '100003', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100019', '100001', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100019', '100002', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100019', '100003', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100020', '100001', '', 'NF4园丁助手');
INSERT INTO `slides` VALUES ('100020', '100002', '', '宋词-示例');
INSERT INTO `slides` VALUES ('100020', '100003', '', '唐诗');
INSERT INTO `slides` VALUES ('100020', '100004', '', 'Life is ...');
INSERT INTO `slides` VALUES ('100020', '100005', '', '小米 XiaoMi');
INSERT INTO `slides` VALUES ('100020', '100006', '', 'Android 开发环境');
INSERT INTO `slides` VALUES ('100020', '100007', '', '操作系统');
INSERT INTO `slides` VALUES ('100020', '100008', '', '计算机网络');
INSERT INTO `slides` VALUES ('100020', '100009', '', '新导入幻灯片');
INSERT INTO `slides` VALUES ('100020', '100010', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100020', '100011', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100020', '100012', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100021', '100001', '', '新建幻灯片');
INSERT INTO `slides` VALUES ('100023', '100001', '', 'NF4 园丁助手-介绍');
INSERT INTO `slides` VALUES ('100023', '100002', '', '宋词-示例');
INSERT INTO `slides` VALUES ('100023', '100003', '', '唐诗');
INSERT INTO `slides` VALUES ('100023', '100004', '', 'Life is ...');
INSERT INTO `slides` VALUES ('100023', '100005', '', '小米 XiaoMi');
INSERT INTO `slides` VALUES ('100023', '100006', '', 'Android 开发环境');
INSERT INTO `slides` VALUES ('100023', '100007', '', '操作系统');
INSERT INTO `slides` VALUES ('100023', '100008', '', '计算机网络');

SET FOREIGN_KEY_CHECKS = 1;
