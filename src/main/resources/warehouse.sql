/*
 Navicat Premium Data Transfer

 Source Server         : apricots
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : warehouse

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 23/08/2018 22:07:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `deptID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deptName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parentId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Isdelete` int(1) DEFAULT NULL,
  `EX1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EX2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EX3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`deptID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('105000010099', '管理员', NULL, '2511工作室', 0, NULL, '张', '1050000100000003');
INSERT INTO `department` VALUES ('105000010199', '管理部', NULL, '2511工作室', 0, NULL, '黄', '1050000100000002');
INSERT INTO `department` VALUES ('105000010399', '用户', NULL, '2511工作室', 0, NULL, '唐', '1050000100000014');
INSERT INTO `department` VALUES ('105000010499', '用户', NULL, '2511工作室', 0, NULL, '李', '1050000100000018');
INSERT INTO `department` VALUES ('105000010799', '用户', NULL, '2511工作室', 0, NULL, '金', '1050000100000042');
INSERT INTO `department` VALUES ('105000010899', '用户', NULL, '2511工作室', 0, NULL, '赵', '1050000100000046');
INSERT INTO `department` VALUES ('105000011099', '用户', NULL, '2511工作室', 0, NULL, 'apr', '1050000100000048');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `emplyeeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `titleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deptId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `deptName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `groupId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Isdelete` int(1) DEFAULT NULL,
  `EX1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EX2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EX3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`emplyeeId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('000001', 'admin', 'admin', '', '1', '105000010199', '管理员', '1', 0, 'admin', NULL, NULL);
INSERT INTO `employee` VALUES ('1050000100000002', '000047', '李安', '', '4', '105000010899', '用户', '1', 0, '123456', '', '');
INSERT INTO `employee` VALUES ('1050000100000003', '000048', 'Left', '', '2', '105000011099', '用户', '1', 0, '123456', '', '');
INSERT INTO `employee` VALUES ('1050000100000014', '000050', 'apr', '', '3', '105000011099', '用户', '1', 0, '123456', '', '');
INSERT INTO `employee` VALUES ('1050000100000018', '000051', '111', '', '2', '105000011099', '用户', '1', 0, '123456', '', '');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `goodid` int(11) NOT NULL AUTO_INCREMENT,
  `goodname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodmodel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodproducer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `warning` int(11) DEFAULT NULL,
  `depodid` int(11) DEFAULT NULL,
  `depodnum` int(11) DEFAULT NULL,
  `spare1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare5` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodnum` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`goodid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES (19, '中性笔', 'v1.0', '晨光科技', '支', 2.00, 50, 2, NULL, NULL, '1', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (20, '桌（张）', 'z1.0', '欧亚达建材家居', '张', 500.00, 10, 2, NULL, NULL, '1', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (21, 'df', 'dsf', 'sfd', 'dfs', 12.00, 0, 12, NULL, NULL, '1', '2', NULL, NULL, NULL, NULL);
INSERT INTO `good` VALUES (22, '复印纸', 'F2002', '亚太森博(广东)纸业有限公司', '件', 29.00, 100, 20, NULL, NULL, '1', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (23, '计算器（个）', 'J1568', '东莞东莞圣采实业有限公司', '个', 20.00, 9, 10, NULL, NULL, '1', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (24, '鼠标（个）', 'J1578', '东莞东莞圣采实业有限公司', '个', 25.00, 30, 5, NULL, NULL, '0', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (25, '复印纸（件）', 'f123', '亚太森博(广东)纸业有限公司', '', 50.00, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (26, '复印纸', 'F234', '', NULL, 40.00, 0, NULL, NULL, NULL, '1', '3', NULL, NULL, NULL, NULL);
INSERT INTO `good` VALUES (27, '复印纸', 'F2001', '亚太森博(广东)纸业有限公司', NULL, 29.00, 0, NULL, NULL, NULL, '1', '3', NULL, NULL, NULL, NULL);
INSERT INTO `good` VALUES (28, '复印纸', 't022', '', NULL, 1.00, 0, NULL, NULL, NULL, '1', '3', NULL, NULL, NULL, NULL);
INSERT INTO `good` VALUES (29, '计算器', 'J2001', '', NULL, NULL, 0, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO `good` VALUES (30, '笔记本', 'B2001', '', NULL, NULL, 0, NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL);
INSERT INTO `good` VALUES (31, '计算器（个）', 'J2001', '晨光科技', '个', NULL, 20, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (32, '笔记本（个）', 'B2001', '晨光科技有限公司', '个', NULL, 30, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, '');
INSERT INTO `good` VALUES (33, '计算器（个）', 'J2002', '晨光科技', '个', 25.00, 20, 5, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL);
INSERT INTO `good` VALUES (34, '桌（张）', 'MZ3020', '欧亚达建材', '张', 500.00, 2, NULL, NULL, NULL, '0', '2', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `goodstype` int(11) DEFAULT NULL,
  `sortnum` int(11) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  `price` float(8, 2) DEFAULT NULL,
  `supplier` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`goodsid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '钢笔', 'G-1', 1, 1, 0, 128.00, '派克');
INSERT INTO `goods` VALUES (2, '铅笔', 'Q-1', 2, NULL, 0, 1.20, '图文公司');
INSERT INTO `goods` VALUES (3, '电话', 'D-1', 1, NULL, 0, 66.00, '电信');
INSERT INTO `goods` VALUES (4, '打印机', 'P-1', 1, NULL, 0, 300.00, '打印公司');
INSERT INTO `goods` VALUES (12, '水杯', 'S-1', 2, NULL, 0, 10.00, '马克');

-- ----------------------------
-- Table structure for goodstype
-- ----------------------------
DROP TABLE IF EXISTS `goodstype`;
CREATE TABLE `goodstype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contents` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sortnum` int(11) DEFAULT NULL,
  `isdelete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goodstype
-- ----------------------------
INSERT INTO `goodstype` VALUES (1, '消耗型', NULL, 1, 0);
INSERT INTO `goodstype` VALUES (2, '功能型', NULL, 2, 0);

-- ----------------------------
-- Table structure for in_depod
-- ----------------------------
DROP TABLE IF EXISTS `in_depod`;
CREATE TABLE `in_depod`  (
  `indepodid` int(11) NOT NULL AUTO_INCREMENT COMMENT '入库ID',
  `goodid` int(11) DEFAULT NULL COMMENT '商品ID',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `indepodtime` datetime(0) DEFAULT NULL COMMENT '入库时间',
  `buyer` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '采购员',
  `depodprincipal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '仓库负责人',
  `spare1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备用',
  `spare2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare4` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare5` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`indepodid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of in_depod
-- ----------------------------
INSERT INTO `in_depod` VALUES (7, 19, '支', 50, '2018-07-01 15:06:25', '张百全', '王永平', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (8, 20, '张', 10, '2018-07-01 15:06:25', '张百全', '王永平', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (9, 21, 'dfs', 12, '2018-07-01 15:27:07', 'vcc', '李江', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (10, 22, '件', 100, '2018-07-01 14:45:59', '李江', '李江', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (11, 23, '个', 20, '2018-07-01 14:45:59', '李江', '李江', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (12, 24, '个', 30, '2018-07-01 17:51:52', 'zhangbaiquan', '李江', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (13, 31, '个', 20, '2018-07-01 09:58:49', '李江', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (14, 32, '个', 30, '2018-07-01 09:58:49', '李江', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (15, 33, '个', 20, '2018-07-01 09:07:11', '黎明', '蔡华', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `in_depod` VALUES (16, 34, '张', 2, '2018-07-01 09:07:11', '黎明', '蔡华', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for m_functioncontrol
-- ----------------------------
DROP TABLE IF EXISTS `m_functioncontrol`;
CREATE TABLE `m_functioncontrol`  (
  `ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PXID` int(11) DEFAULT NULL,
  `NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `IMAGE` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PRI` int(11) DEFAULT NULL,
  `ISLEAF` int(11) DEFAULT NULL,
  `PARA` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ACTIVATE` int(11) DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_functioncontrol
-- ----------------------------
INSERT INTO `m_functioncontrol` VALUES ('1mb6vFAQndtF', 10, '系统设置', '', '0', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('lkAezjHYX9r0', 1, '用户管理', 'user/list.action', '1mb6vFAQndtF', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('2obIp8t4L5u3', 2, '部门管理', 'dept/list.action', '1mb6vFAQndtF', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('dweCXvsDkQbb', 3, '商品管理', 'goods/list.action', '1mb6vFAQndtF', NULL, NULL, NULL, NULL, 0);
INSERT INTO `m_functioncontrol` VALUES ('ey5XM0RIxBFF', 4, '角色管理', 'group/list.action', '1mb6vFAQndtF', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('4Dro6KwnGSxw', 5, '功能树管理', 'func/showIndex.action', '1mb6vFAQndtF', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('KlFFKlRKi6Y3', 7, '仓库管理', '', '0', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('TJUV6TXzDChI', 1, '物品信息', 'good/list.action', 'KlFFKlRKi6Y3', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('CLni69Lj1fp8', 2, '商品入库', 'good/addpage.action', 'KlFFKlRKi6Y3', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('JEORMSxkx1uJ', 3, '商品出库', 'good/delpage.action', 'KlFFKlRKi6Y3', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('VMTZXFpolxQd', 4, '入库信息查询', 'good/indepodList.action', 'KlFFKlRKi6Y3', NULL, NULL, NULL, NULL, 1);
INSERT INTO `m_functioncontrol` VALUES ('q6EFlW5Y1Mkc', 5, '出库信息查询', 'good/outdepodList.action', 'KlFFKlRKi6Y3', NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for m_sys_funcsecurity
-- ----------------------------
DROP TABLE IF EXISTS `m_sys_funcsecurity`;
CREATE TABLE `m_sys_funcsecurity`  (
  `FID` int(11) NOT NULL AUTO_INCREMENT,
  `MIS_USERID` int(50) DEFAULT NULL,
  `FUNCTION_ID` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lock` int(11) DEFAULT NULL,
  PRIMARY KEY (`FID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2189 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of m_sys_funcsecurity
-- ----------------------------
INSERT INTO `m_sys_funcsecurity` VALUES (1686, 4, 'wp12tfNEDaya', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1687, 4, 'l2Wz2HxtVyHq', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1688, 4, 'aLYGRtTvJXCV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1689, 4, 'xvMwJQp43GZZ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1690, 4, 'lCXJ011WfgS3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1691, 4, 'dnGv5UE4jne5', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1692, 4, 'kjNrqaRF04QQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1693, 4, 'QNa9T3hfR2V4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1694, 4, '4ksbvSrbeOcy', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1695, 4, 'JJhh4Cvbzla1', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1696, 4, 'AsOSt2Z6XZID', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1697, 4, 'RLVhdsIpHQ5W', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1698, 4, '30UpylBmhkNF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1699, 4, 'iKRCc59fr4PH', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1700, 4, 'pHNj0Opr4bZ5', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1701, 4, 'OtxfXtIMJmzg', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1702, 4, 'JECBA7IfwOUL', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1703, 4, 'XuxgP7zNwNsf', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1704, 4, 'LhP4aMZoJcA6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1705, 4, '0gs6SJuFf4CQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1706, 4, 'nnWnwRekkbZh', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1707, 4, 'OZbp8bjFWRLE', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1708, 4, 'Pk1LK3ut240W', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1709, 4, 'vXd70MHD6rKz', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1710, 4, 'IYappzdGJuA0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1711, 4, 'ZkeqsrFFlXBI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1712, 4, 'zxNgpGSPOqWM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1713, 4, '4kIkqDfyIqbG', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1714, 4, '9Og8pAiSqX4o', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1715, 4, 'brPXIIQEHi4Z', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1716, 4, 'E4NXrX5tPDHY', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1717, 4, 'ouIB25v6IeIi', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1718, 4, 'iDViQad5XuWV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1719, 4, 'gS6hlX3nKcLc', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1720, 4, 'ViiTmg8C15h4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1721, 4, 'wBFUK0RzaeF0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1722, 4, '8A0Qx1ABOuoF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1723, 4, 'YOIkXRq6ln3w', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1724, 4, 'aFNG9olO1fhF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1725, 4, 'HDpoaLoYeX9g', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1726, 4, '96dd5HoovBau', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1727, 4, 'q9GvGyOjjgF6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1728, 4, 'cbYDvbK8KiCS', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1729, 4, 'ONTmqDZTjMyF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1730, 4, 'EKDKVOEZjdXt', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1731, 4, 'CqKustlbFDKO', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1732, 4, 'KlFFKlRKi6Y3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1733, 4, 'TJUV6TXzDChI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1734, 4, 'CLni69Lj1fp8', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1735, 4, 'JEORMSxkx1uJ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1736, 4, 'VMTZXFpolxQd', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1737, 4, 'q6EFlW5Y1Mkc', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1738, 4, '9RMuz9KclOUI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1739, 4, 'Ha7NQZikx6AM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1740, 4, 'zJTycZxJgWYk', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1741, 4, 'LJJyjRKbClfL', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1742, 4, 'iNYxPdc8pBEO', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1743, 4, 'G3jkZpsm9gFW', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1744, 4, 'Nz44MjZ9bVn0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1745, 4, 'aSuaT3kxSN0a', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1746, 4, 'HL2Fx6zOqLLm', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1747, 4, '6QMLN9WtmFc6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1748, 4, 'AOf8bAZNDkL4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1749, 4, 'X7zL9OOVcPVf', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1750, 4, '1mb6vFAQndtF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1751, 4, 'lkAezjHYX9r0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1752, 4, '2obIp8t4L5u3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1753, 4, 'dweCXvsDkQbb', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1754, 4, 'ey5XM0RIxBFF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1755, 4, '4Dro6KwnGSxw', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1756, 4, 'lZFRSxza6E98', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1757, 4, 'gpjnLICYxzad', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1758, 4, 'zaOEqe82MDjZ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1759, 4, 'BhUOqRnI9Tm1', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1760, 4, 'b7vrPurBymcU', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1761, 4, 'NKPReS96lspD', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1762, 4, 'Fmmq5zePHEGg', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1763, 4, 'WPUzyqS62zYQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1764, 4, 'k8KsKeiUmkkM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1765, 4, 'U7SBikphIOiR', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1766, 4, 'PtQMVHAR7hsw', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1767, 2, 'wp12tfNEDaya', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1768, 2, 'l2Wz2HxtVyHq', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1769, 2, 'aLYGRtTvJXCV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1770, 2, 'xvMwJQp43GZZ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1771, 2, 'lCXJ011WfgS3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1772, 2, 'dnGv5UE4jne5', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1773, 2, 'kjNrqaRF04QQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1774, 2, 'QNa9T3hfR2V4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1775, 2, '4ksbvSrbeOcy', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1776, 2, 'JJhh4Cvbzla1', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1777, 2, 'AsOSt2Z6XZID', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1778, 2, 'RLVhdsIpHQ5W', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1779, 2, '30UpylBmhkNF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1780, 2, 'iKRCc59fr4PH', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1781, 2, 'pHNj0Opr4bZ5', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1782, 2, 'OtxfXtIMJmzg', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1783, 2, 'JECBA7IfwOUL', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1784, 2, 'XuxgP7zNwNsf', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1785, 2, 'LhP4aMZoJcA6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1786, 2, '0gs6SJuFf4CQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1787, 2, 'nnWnwRekkbZh', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1788, 2, 'OZbp8bjFWRLE', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1789, 2, 'Pk1LK3ut240W', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1790, 2, 'vXd70MHD6rKz', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1791, 2, 'IYappzdGJuA0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1792, 2, 'ZkeqsrFFlXBI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1793, 2, 'zxNgpGSPOqWM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1794, 2, '4kIkqDfyIqbG', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1795, 2, '9Og8pAiSqX4o', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1796, 2, 'brPXIIQEHi4Z', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1797, 2, 'E4NXrX5tPDHY', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1798, 2, 'ouIB25v6IeIi', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1799, 2, 'iDViQad5XuWV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1800, 2, 'gS6hlX3nKcLc', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1801, 2, 'ViiTmg8C15h4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1802, 2, 'wBFUK0RzaeF0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1803, 2, '8A0Qx1ABOuoF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1804, 2, 'YOIkXRq6ln3w', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1805, 2, 'aFNG9olO1fhF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1806, 2, 'HDpoaLoYeX9g', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1807, 2, '96dd5HoovBau', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1808, 2, 'q9GvGyOjjgF6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1809, 2, 'cbYDvbK8KiCS', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1810, 2, 'ONTmqDZTjMyF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1811, 2, 'EKDKVOEZjdXt', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1812, 2, 'CqKustlbFDKO', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1813, 2, 'KlFFKlRKi6Y3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1814, 2, 'TJUV6TXzDChI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1815, 2, 'CLni69Lj1fp8', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1816, 2, 'JEORMSxkx1uJ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1817, 2, 'VMTZXFpolxQd', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1818, 2, 'q6EFlW5Y1Mkc', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1819, 2, '9RMuz9KclOUI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1820, 2, 'Ha7NQZikx6AM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1821, 2, 'zJTycZxJgWYk', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1822, 2, 'LJJyjRKbClfL', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1823, 2, 'iNYxPdc8pBEO', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1824, 2, 'G3jkZpsm9gFW', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1825, 2, 'Nz44MjZ9bVn0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1826, 2, 'aSuaT3kxSN0a', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1827, 2, 'HL2Fx6zOqLLm', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1828, 2, '6QMLN9WtmFc6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1829, 2, 'AOf8bAZNDkL4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1830, 2, 'X7zL9OOVcPVf', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1831, 2, '1mb6vFAQndtF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1832, 2, 'lkAezjHYX9r0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1833, 2, '2obIp8t4L5u3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1834, 2, 'dweCXvsDkQbb', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1835, 2, 'ey5XM0RIxBFF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1836, 2, '4Dro6KwnGSxw', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1837, 2, 'lZFRSxza6E98', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1838, 2, 'gpjnLICYxzad', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1839, 2, 'zaOEqe82MDjZ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1840, 2, 'BhUOqRnI9Tm1', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1841, 2, 'b7vrPurBymcU', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1842, 2, 'NKPReS96lspD', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1843, 2, 'Fmmq5zePHEGg', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1844, 2, 'WPUzyqS62zYQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1845, 2, 'k8KsKeiUmkkM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1846, 2, 'U7SBikphIOiR', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (1847, 2, 'PtQMVHAR7hsw', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2004, 3, 'aLYGRtTvJXCV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2005, 3, 'xvMwJQp43GZZ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2006, 3, 'lCXJ011WfgS3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2007, 3, 'QNa9T3hfR2V4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2008, 3, '4ksbvSrbeOcy', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2009, 3, 'JJhh4Cvbzla1', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2010, 3, 'AsOSt2Z6XZID', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2011, 3, 'iKRCc59fr4PH', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2012, 3, 'pHNj0Opr4bZ5', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2013, 3, 'OtxfXtIMJmzg', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2014, 3, '0gs6SJuFf4CQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2015, 3, 'nnWnwRekkbZh', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2016, 3, 'OZbp8bjFWRLE', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2017, 3, '4kIkqDfyIqbG', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2018, 3, '9Og8pAiSqX4o', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2019, 3, 'ouIB25v6IeIi', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2020, 3, 'iDViQad5XuWV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2021, 3, 'HDpoaLoYeX9g', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2022, 3, '96dd5HoovBau', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2023, 3, 'cbYDvbK8KiCS', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2024, 3, '9RMuz9KclOUI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2025, 3, 'zJTycZxJgWYk', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2105, 1, 'wp12tfNEDaya', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2106, 1, 'l2Wz2HxtVyHq', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2107, 1, 'aLYGRtTvJXCV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2108, 1, 'xvMwJQp43GZZ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2109, 1, 'lCXJ011WfgS3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2110, 1, 'dnGv5UE4jne5', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2111, 1, 'kjNrqaRF04QQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2112, 1, 'QNa9T3hfR2V4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2113, 1, '4ksbvSrbeOcy', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2114, 1, 'JJhh4Cvbzla1', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2115, 1, 'AsOSt2Z6XZID', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2116, 1, 'RLVhdsIpHQ5W', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2117, 1, '30UpylBmhkNF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2118, 1, 'OtxfXtIMJmzg', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2119, 1, 'JECBA7IfwOUL', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2120, 1, 'XuxgP7zNwNsf', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2121, 1, 'LhP4aMZoJcA6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2122, 1, '0gs6SJuFf4CQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2123, 1, 'nnWnwRekkbZh', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2124, 1, 'OZbp8bjFWRLE', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2125, 1, 'Pk1LK3ut240W', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2126, 1, 'vXd70MHD6rKz', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2127, 1, 'zxNgpGSPOqWM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2128, 1, '4kIkqDfyIqbG', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2129, 1, '9Og8pAiSqX4o', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2130, 1, 'brPXIIQEHi4Z', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2131, 1, 'E4NXrX5tPDHY', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2132, 1, 'ouIB25v6IeIi', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2133, 1, 'iDViQad5XuWV', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2134, 1, 'gS6hlX3nKcLc', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2135, 1, 'ViiTmg8C15h4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2136, 1, 'wBFUK0RzaeF0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2137, 1, '8A0Qx1ABOuoF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2138, 1, 'YOIkXRq6ln3w', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2139, 1, 'aFNG9olO1fhF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2140, 1, 'HDpoaLoYeX9g', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2141, 1, '96dd5HoovBau', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2142, 1, 'q9GvGyOjjgF6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2143, 1, 'cbYDvbK8KiCS', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2144, 1, 'ONTmqDZTjMyF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2145, 1, 'EKDKVOEZjdXt', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2146, 1, 'CqKustlbFDKO', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2147, 1, 'KlFFKlRKi6Y3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2148, 1, 'TJUV6TXzDChI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2149, 1, 'CLni69Lj1fp8', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2150, 1, 'JEORMSxkx1uJ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2151, 1, 'VMTZXFpolxQd', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2152, 1, 'q6EFlW5Y1Mkc', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2153, 1, '9RMuz9KclOUI', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2154, 1, 'Ha7NQZikx6AM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2155, 1, 'zJTycZxJgWYk', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2156, 1, 'LJJyjRKbClfL', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2157, 1, 'iNYxPdc8pBEO', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2158, 1, 'G3jkZpsm9gFW', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2159, 1, 'Nz44MjZ9bVn0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2160, 1, 'aSuaT3kxSN0a', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2161, 1, 'HL2Fx6zOqLLm', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2162, 1, '6QMLN9WtmFc6', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2163, 1, 'AOf8bAZNDkL4', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2164, 1, 'X7zL9OOVcPVf', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2165, 1, '1mb6vFAQndtF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2166, 1, 'lkAezjHYX9r0', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2167, 1, '2obIp8t4L5u3', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2168, 1, 'dweCXvsDkQbb', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2169, 1, 'ey5XM0RIxBFF', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2170, 1, '4Dro6KwnGSxw', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2171, 1, 'lZFRSxza6E98', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2172, 1, 'gpjnLICYxzad', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2173, 1, 'zaOEqe82MDjZ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2174, 1, 'BhUOqRnI9Tm1', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2175, 1, 'b7vrPurBymcU', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2176, 1, 'NKPReS96lspD', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2177, 1, 'Fmmq5zePHEGg', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2178, 1, 'WPUzyqS62zYQ', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2179, 1, 'k8KsKeiUmkkM', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2180, 1, 'U7SBikphIOiR', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2181, 1, 'PtQMVHAR7hsw', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2186, 5, '', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2187, 6, 'wp12tfNEDaya', 0);
INSERT INTO `m_sys_funcsecurity` VALUES (2188, 6, 'l2Wz2HxtVyHq', 0);

-- ----------------------------
-- Table structure for msgboard
-- ----------------------------
DROP TABLE IF EXISTS `msgboard`;
CREATE TABLE `msgboard`  (
  `msgboardid` int(11) NOT NULL AUTO_INCREMENT,
  `msgboardname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `msgboardtime` datetime(0) DEFAULT NULL,
  `msgboardphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ex1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `ex2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ex3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`msgboardid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for out_depod
-- ----------------------------
DROP TABLE IF EXISTS `out_depod`;
CREATE TABLE `out_depod`  (
  `outdepodid` int(11) NOT NULL AUTO_INCREMENT COMMENT '出库ID',
  `goodid` int(11) DEFAULT NULL COMMENT '商品ID',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位',
  `num` int(11) DEFAULT NULL COMMENT '数量',
  `outdepodtime` datetime(0) DEFAULT NULL COMMENT '出库时间',
  `usedepartment` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '使用部门',
  `responsible` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '责任人',
  `depodprincipal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '仓库负责人',
  `spare1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备用',
  `spare2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare4` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `spare5` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`outdepodid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of out_depod
-- ----------------------------
INSERT INTO `out_depod` VALUES (1, 21, 'dfs', 12, '2018-07-01 14:24:32', '专卖处', '网三', '李江', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `out_depod` VALUES (2, 23, '个', 11, '2018-07-01 16:54:06', '办公室', '曲奇', '李江', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for title
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title`  (
  `titleId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EX1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EX2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EX3` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`titleId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('1', '管理员', NULL, NULL, NULL);
INSERT INTO `title` VALUES ('2', '用户', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for userclassinfo
-- ----------------------------
DROP TABLE IF EXISTS `userclassinfo`;
CREATE TABLE `userclassinfo`  (
  `UserClassID` int(11) NOT NULL AUTO_INCREMENT,
  `UserClassName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ClassNotes` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`UserClassID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of userclassinfo
-- ----------------------------
INSERT INTO `userclassinfo` VALUES (1, '系统管理员', '系统管理员');
INSERT INTO `userclassinfo` VALUES (2, '用户', '用户');

SET FOREIGN_KEY_CHECKS = 1;
