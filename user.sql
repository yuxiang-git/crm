/*
 Navicat Premium Data Transfer

 Source Server         : cqrd
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : 172.26.65.1:30299
 Source Schema         : sx5

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : 65001

 Date: 06/12/2019 16:52:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `chinesename` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '中文名称',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `gitaccount` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT 'gitlab账号',
  `score` double(5, 2) NULL DEFAULT NULL COMMENT '成绩',
  `credit` double(5, 2) NULL DEFAULT NULL COMMENT '学分',
  `access` int(20) NULL DEFAULT 2 COMMENT '权限码(1为管理员，2为普通用户)',
  `status` int(20) NULL DEFAULT 0 COMMENT '状态码（1为登录，0为未登录）',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `user_username`(`username`) USING BTREE,
  UNIQUE INDEX `user_email`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`, `email`, `phone`, `gitaccount`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 282 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'liaoxiaosong', 'c642d90d4094711267b8fca74c4d9652', '小一', 'liao1259613704@126.com', '15685459654', 'sx_099001qwe', 98.50, 4.00, 1, 1);
INSERT INTO `user` VALUES (5, 'five', '0005', '小五', '451542@qq.com', '15695874552', 'djkfh_fdsklf', 96.60, 2.00, 2, 0);
INSERT INTO `user` VALUES (10, 'ten', '0010', '小十', '548796@qq.com', '18569783658', 'fds_bvchgn', 89.00, 2.00, 2, 0);
INSERT INTO `user` VALUES (12, 'twelve', '0012', '十二', '784598@qq.com', '15685426550', 'sx_099114qqq', 123.00, 6.00, 2, 0);
INSERT INTO `user` VALUES (24, 'a22222222yuxinyuxin', 'sas', 'asas', 'ooooooooooooo', '54654545454', 'asas', 86.00, 8.00, 2, 0);
INSERT INTO `user` VALUES (25, 'yuxinyuxin', '123456', '喻鑫', '45154124@qq.com', '1234', '啊啊啊', 85.00, 3.00, 1, 0);
INSERT INTO `user` VALUES (38, 'nyl11111', '7937fe7a4adaaa2934682f905cdb6c22', '张三', 'nyl1221@163.com', '15854975220', 'sx_099121112', 89.00, 7.00, 1, 0);
INSERT INTO `user` VALUES (39, 'abc123', '62e058bab4712217e0afdc987457430', '二十', '724812456@qq.com', '15854954880', 'sx_099123333', 80.00, 2.00, 2, 0);
INSERT INTO `user` VALUES (142, 'Majunjie', '8bd582491aae7a712973df8991a79d16', '马俊杰', '3152291341@qq.com', '18896103706', 'sx_099088abc', 87.50, 4.00, 2, 0);
INSERT INTO `user` VALUES (143, 'wangkecen', 'bd4f881f9422e07ed3ee9da1284e4ef3', '汪柯岑', '945340272@qq.com', '18598574478', 'sx_099114qwe', 86.60, 6.00, 1, 0);
INSERT INTO `user` VALUES (159, 'yuxin11', '708a9c84b47404c5524405e5cbd910b8', '刘备', '181812@QQ.COM', '18580492353', 'sx_099111qw', 123.00, 9.00, 2, 0);
INSERT INTO `user` VALUES (174, 'yuxxin111', '481e15d1b6aebca5b99a7be9079ba192', '臭臭', '1212@qq.com', '14580492350', 'sx_qwerewrasa', 89.60, 5.00, 2, 0);
INSERT INTO `user` VALUES (176, 'yuxin22', '481e15d1b6aebca5b99a7be9079ba192', '敏敏', '12312312@qq.com', '18980492213', 'dasda_dsadsadsa', 78.00, 3.00, 2, 0);
INSERT INTO `user` VALUES (237, 'yuxiang', '708a9c84b47404c5524405e5cbd910b8', '宇翔', '1392293581@qq.com', '18580492398', 'dsdd_fdsfds', 98.60, 2.00, 2, 0);
INSERT INTO `user` VALUES (248, 'lalala', '708a9c84b47404c5524405e5cbd910b8', '啦啦啦啦', '1348793581@qq.com', '18580492568', 'fdsf_fshdfjk', 0.00, 0.00, 2, 0);
INSERT INTO `user` VALUES (250, 'admin111', 'bbad8d72c1fac1d081727158807a8798', '管理员', '724812934@qq.com', '15696523880', 'sx_099121212', 99.00, 4.00, 1, 0);
INSERT INTO `user` VALUES (251, 'chenyuxiang', '5d93ceb70e2bf5daa84ec3d0cd2c731a', '陈宇翔', '1342293581@qq.com', '18580492356', 'sx_09911asd', 98.60, 6.00, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
