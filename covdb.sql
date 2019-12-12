/*
 Navicat Premium Data Transfer

 Source Server         : 王敏阿里云
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : 47.102.128.138:3306
 Source Schema         : covdb

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 12/12/2019 10:21:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for event
-- ----------------------------
DROP TABLE IF EXISTS `event`;
CREATE TABLE `event`  (
  `event_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动id',
  `event_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '活动的图片链接',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '活动开始时间',
  `title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '活动标题',
  `location` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '活动地点',
  `user_id` int(32) NULL DEFAULT NULL COMMENT '发起人',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '活动介绍',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '活动结束时间',
  `event_score` int(11) NULL DEFAULT NULL COMMENT '积分',
  `supply_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '举办方',
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '状态 报名中/进行中/已结束',
  `maxnum` int(11) NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `event_summary` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '活动总结',
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '志愿者活动表 ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event
-- ----------------------------
INSERT INTO `event` VALUES (1, 'http://47.102.128.138:8888/images/1.jpg', '2019-07-04 12:47:19', '走进老人，温暖老人心', '东山敬老院', 1, '帮助老人们', '2019-07-05 12:48:13', 2, '南京工程学院', '已过期', 3, '校级;敬老院', NULL);
INSERT INTO `event` VALUES (2, 'http://47.102.128.138:8888/images/4.jpg', '2019-07-05 12:49:32', '第六周机房打扫', '南京工程学院信息楼', 1, '机房打扫', '2019-07-12 12:50:26', 2, '南京工程学院', '已结束', 5, '校级;机房打扫', '为人民服务');
INSERT INTO `event` VALUES (3, 'http://47.102.128.138:8888/images/act-logo.jpg', '2019-07-11 12:51:03', '地铁站志愿引导', '天印大道地铁站', 1, '地铁招募志愿者', '2019-07-04 12:52:09', 2, '南京工程学院', '已结束', 5, '校级;地铁站', NULL);
INSERT INTO `event` VALUES (4, 'http://47.102.128.138:8888/images/5.jpg', '2019-07-18 22:37:07', '社区幼儿园辅导', '江宁区', 1, '这里是活动介绍', '2019-07-18 22:38:00', 2, '东区大学生活动中心', '已结束', 5, '校级;机房打扫', '教小朋友画画，真有意思');
INSERT INTO `event` VALUES (5, 'http://47.102.128.138:8888/images/4.jpg', '2019-07-03 22:41:40', '北大活爱心义卖', '北区大学生活动中心', 1, '感恩的心感谢有你', '2019-07-31 22:42:41', 2, '东区大学生活动中心', '已结束', 5, '校级;机房打扫', NULL);
INSERT INTO `event` VALUES (6, 'http://47.102.128.138:8888/images/3.jpg', '2019-07-04 14:49:49', '走进老人，温暖老人心', '东山敬老院', 1, '活动介绍', '2019-07-27 14:50:19', 2, '东区大学生活动中心', '已结束', 5, '校级;机房打扫', NULL);
INSERT INTO `event` VALUES (7, 'http://47.102.128.138:8888/images/4.jpg', '2019-07-01 00:00:00', '机房打扫', '东山敬老院', 1, '第六周机房打扫', '2019-07-31 00:00:00', 2, '南京工程学院', '已过期', 3, '校级;机房打扫', NULL);
INSERT INTO `event` VALUES (8, 'http://47.102.128.138:8888/images/4.jpg', '2019-07-01 00:00:00', '机房打扫', '机房', 4, '第六周机房打扫', '2019-07-31 00:00:00', 2, '南京工程学院', '已过期', 3, '校级;机房打扫', NULL);
INSERT INTO `event` VALUES (9, 'http://47.102.128.138:8888/images/4.jpg', '2019-07-01 00:00:00', '机房打扫', '机房', 7, '第六周机房打扫', '2019-07-31 00:00:00', 2, '南京工程学院', '已过期', 3, '校级;机房打扫', NULL);
INSERT INTO `event` VALUES (10, 'http://47.102.128.138:8888/images/3.jpg', '2019-09-05 00:00:00', '第三周机房打扫', '信息楼机房', 1, '机房打扫', '2019-09-06 00:00:00', 2, '计算机青志部', '已过期', 5, '校级;机房打扫', '清扫机房，为同学们提供更舒适的学习环境。');
INSERT INTO `event` VALUES (11, 'http://47.102.128.138:8888/images/3.jpg', '2019-09-05 00:00:00', '第三周机房打扫', '信息楼机房', 1, '机房打扫', '2019-09-06 00:00:00', 2, '计算机青志部', '已过期', 5, '校级;机房打扫', NULL);
INSERT INTO `event` VALUES (12, 'http://47.102.128.138:8888/images/2.jpg', '2019-09-05 00:00:00', '第三周机房打扫', '信息楼机房', 8, '机房打扫', '2019-09-06 00:00:00', 2, '计算机青志部', '已过期', 5, '校级;机房打扫', NULL);
INSERT INTO `event` VALUES (13, 'http://47.102.128.138:8888/images/2.jpg', '2019-10-03 11:23:51', '给鲨鱼洗澡', '大海', 1, '保护海洋环境，关爱动物', '2019-10-26 11:24:44', 2, '江苏海洋协会', '已过期', 5, '省级;环保', NULL);
INSERT INTO `event` VALUES (14, 'http://47.102.128.138:8888/images/2.jpg', '2019-10-03 11:27:06', '植树节植树', '方山', 1, '三月植树节', '2019-10-27 11:27:51', 2, '方山风景区', '已过期', 5, '省级;环保', '这是一次非常有意义的活动，通过这次活动我们对保护环境有了更深刻的认识，保护环境人人有责。');
INSERT INTO `event` VALUES (15, 'http://47.102.128.138:8888/images/7e65fef2-bd9b-4bdf-95ed-9f49c0a36e53.jpg', '2019-10-20 00:00:00', '世界保护牙齿日', '南京工程学院', 6, '牙牙乐', '2019-10-31 00:00:00', 3, '电力工程学院', '已过期', 5, NULL, '结束活动');
INSERT INTO `event` VALUES (16, 'http://47.102.128.138:8888/images/cd651ea9-1247-466e-a9c8-b251f769d6da.jpg', '2019-10-20 00:00:00', '关心社区孩子', '南京工程学院', 6, '和社区孩子做游戏，画画', '2019-10-31 00:00:00', 3, '电力工程学院', '已过期', 4, NULL, '结束活动');
INSERT INTO `event` VALUES (17, 'http://47.102.128.138:8888/images/bb16f5e7-bce8-422c-8f76-91f52d20c553.jpg', '2019-10-18 08:00:00', '图书馆整理', '江宁图书馆', 1, '一起来为图书馆整理书籍吧', '2019-10-18 10:00:00', 2, '计算机工程学院', '已过期', 5, NULL, NULL);
INSERT INTO `event` VALUES (18, 'http://47.102.128.138:8888/images/58d09ef2-70b9-4e24-87a1-136d2231bfdc.jpg', '2019-10-18 06:00:00', '快来玩啊', '极客营', 1, '安抚程序员', '2019-10-18 16:00:00', 2, '计算机工程学院', '已过期', 2, NULL, NULL);
INSERT INTO `event` VALUES (19, 'http://47.102.128.138:8888/images/004ebcf5-abc5-49ee-b7bd-4d4f24ab1d17.jpg', '2019-10-21 08:00:00', '社区幼儿园辅导', '秣陵社区', 6, '辅导社区儿童家庭作业', '2019-10-21 11:00:00', 1, '计算机工程学院', '已过期', 1, '儿童', '完结');
INSERT INTO `event` VALUES (20, 'http://47.102.128.138:8888/images/fa463c90-1051-4c62-aea8-808015aeeec1.jpg', '2019-10-19 14:00:00', '2019秋季校园招聘会', '体育馆', 1, '维持招聘会现场秩序，协助校青协布置布置场地，为参展单位解决问题。', '2019-10-19 18:00:00', 4, '校青协', '已过期', 20, '', NULL);
INSERT INTO `event` VALUES (21, 'http://47.102.128.138:8888/images/8975cec7-435e-4617-a360-4fd1f2c1b0e3.jpg', '2019-10-20 08:00:00', '运动会后勤服务', '体育中心', 1, '维持运动会秩序，为运动会提供后勤服务。', '2019-10-20 17:00:00', 9, '校青协', '已过期', 20, '', NULL);
INSERT INTO `event` VALUES (22, 'http://47.102.128.138:8888/images/7b0dffb4-6900-40b9-9077-10e6e7a5f39f.jpg', '2019-10-22 08:00:00', '第十周地铁站志愿服务', '龙眠大道地铁站', 1, '维护地铁站秩序，帮助需要乘客。', '2019-10-22 11:00:00', 3, '计算机工程学院', '已过期', 5, '地铁站', NULL);
INSERT INTO `event` VALUES (23, 'http://47.102.128.138:8888/images/c62d0373-18db-493e-b7de-95b695926694.jpg', '2019-11-04 08:00:00', '11月国家电网招聘', '北区大学生活动中心', 1, '为国家电网招聘会的工作人员以及应聘人员进行引导', '2019-11-04 11:00:00', 3, '电力工程学院', '已过期', 6, '', NULL);
INSERT INTO `event` VALUES (24, 'http://47.102.128.138:8888/images/0b02d2c2-7cf3-423b-b2bd-5427be8dd59a.png', '2019-11-05 00:00:00', 'test01_云消', '南京工程学院', 1, 'test', '2019-11-08 00:00:00', 1, '计算机工程学院', '已结束', 10, '敬老院', 'nice');
INSERT INTO `event` VALUES (25, 'http://47.102.128.138:8888/images/aa63d1a1-db94-4cfb-b6fb-845c5810e804.png', '2019-11-05 00:00:00', 'test02_云消', '南京工程学院', 1, 'test', '2019-11-01 00:00:00', 2, '计算机工程学院', '已过期', 1, '儿童', NULL);
INSERT INTO `event` VALUES (26, 'http://47.102.128.138:8888/images/87b27c4e-de34-4c1b-ade6-b46d60235086.png', '2010-10-14 00:00:00', 'test03_云消', '南京工程学院', 1, 'test', '2018-11-09 00:00:00', 1, '计算机工程学院', '已过期', 1, '敬老院', NULL);
INSERT INTO `event` VALUES (27, 'http://47.102.128.138:8888/images/90992e61-1c33-468a-9c6a-9dbcbb3f0c02.png', '2019-11-04 01:03:00', 'test04_云消', '南京工程学院', 1, 'test', '2018-11-09 00:00:00', 1, '计算机工程学院', '已过期', 1, '敬老院', NULL);
INSERT INTO `event` VALUES (28, 'http://47.102.128.138:8888/images/006aa5e0-0511-4117-816c-30a1268e4e39.jpg', '2019-11-05 00:00:00', '第十周社区服务', '秣陵社区', 1, '社区服务', '2019-11-06 00:00:00', 4, '艺术与设计学院', '已过期', 8, '敬老院', NULL);
INSERT INTO `event` VALUES (29, 'http://47.102.128.138:8888/images/84b36148-50c7-410e-b38c-966ee5d21ace.png', '2019-11-04 00:00:00', '北区大扫除', '北区', 6, '大扫除，戒掉男生惰性', '2019-11-06 00:00:00', 2, '电力工程学院', '已过期', 10, '敬老院,地铁站', NULL);
INSERT INTO `event` VALUES (30, 'http://47.102.128.138:8888/images/d102a7d9-c0b0-4ddc-96d9-13102481e3c2.jpg', '2019-11-05 08:00:00', '整理校园共享单车', '南京工程学院校园', 1, '排列校园自行车', '2019-11-05 12:00:00', 2, '能源与动力工程学院', '已过期', 10, '', NULL);
INSERT INTO `event` VALUES (31, 'http://47.102.128.138:8888/images/aa947d9a-144d-4257-9e9b-3b848b2607de.jpg', '2019-11-05 00:00:00', '123', '123', 1, '123', '2019-11-30 00:00:00', 2, '机械工程学院', '已过期', 2, '敬老院,儿童', NULL);
INSERT INTO `event` VALUES (32, 'http://47.102.128.138:8888/images/b97e1a51-0f8e-48b5-b842-ee9bb10a74fe.jpg', '2019-11-07 08:00:00', '第十五周机房打扫活动', '信息楼', 1, '打扫机房，整理网线，美化机房环境', '2019-11-30 10:00:00', 2, '计算机工程学院', '已过期', 6, '机房,院级', NULL);
INSERT INTO `event` VALUES (33, 'http://47.102.128.138:8888/images/7eed2604-ba23-4d0e-abb8-e73b663a5518.jpg', '2019-11-07 11:30:00', '第十五周敬老院活动', '东山敬老院', 1, '走近老人，温暖老人心。', '2019-11-07 16:00:00', 6, '计算机工程学院', '已结束', 8, '敬老院,院级', '陪伴老人，关爱老人，真有意义。');
INSERT INTO `event` VALUES (34, 'http://47.102.128.138:8888/images/fd97cdef-6336-4a4c-9d93-e0a56a5c2897.jpg', '2019-11-07 14:25:00', '第十五周幼儿园辅导', '江宁幼儿园', 1, '带领社区幼儿园小朋友画画，做手工', '2019-11-07 16:30:00', 2, '艺术与设计学院', '已结束', 5, '儿童,院级', '小朋友们真调皮');
INSERT INTO `event` VALUES (35, 'http://47.102.128.138:8888/images/f79d5ae4-9df0-460c-be1f-3468abfd7e51.jpg', '2019-11-07 15:00:00', '一起找bug', '极客营', 1, '找bug', '2019-11-07 20:00:00', 10, '计算机工程学院', '已结束', 4, '', '找bug一时爽，找完bug火葬场');
INSERT INTO `event` VALUES (36, 'http://47.102.128.138:8888/images/76ab1b51-0f73-4d1d-84fc-8f7e4400a89f.png', '2019-11-07 18:58:00', '撸猫之旅', '极客营', 1, '极客营好多猫，快来撸吧', '2019-11-07 19:30:00', 2, '计算机工程学院', '已结束', 10, '', '撸秃了，真好撸');
INSERT INTO `event` VALUES (37, 'http://47.102.128.138:8888/images/baa556b0-e02c-42ea-aafa-2f7626972d8a.jpg', '2019-11-07 19:35:00', '我爱大海之给鲨鱼起名字', '极客人才学院', 1, '我爱大海', '2019-11-30 19:40:00', 5, '计算机工程学院', '已过期', 5, '学校', '');
INSERT INTO `event` VALUES (38, 'http://47.102.128.138:8888/images/3b7ec721-34b2-42af-8dc8-47d2d6b13702.png', '2019-11-07 19:55:00', '我爱蓝天之给小鸟起名字', '极客人才学院', 1, '我爱蓝天', '2019-11-17 20:10:00', 10, '计算机工程学院', '已过期', 10, '校级', '');
INSERT INTO `event` VALUES (39, 'http://47.102.128.138:8888/images/504b59b4-04ca-488c-b6a0-bec9a67d20e7.jpg', '2019-11-15 09:10:00', '第十四周机房打扫活动', '信息楼', 1, '清扫机房，整理网线，美化机房环境', '2019-11-24 12:00:00', 3, '计算机工程学院', '已过期', 5, '院级,机房', NULL);
INSERT INTO `event` VALUES (40, 'http://47.102.128.138:8888/images/c151f534-e918-4b33-9e2a-75fedc42773c.jpg', '2019-11-16 09:10:00', '第十四周地铁站服务', '天龙寺地铁站', 1, '维持地铁站秩序，引导人流，帮助乘客。', '2019-11-16 12:00:00', 3, '计算机工程学院', '已过期', 6, '院级,地铁站', NULL);
INSERT INTO `event` VALUES (41, 'http://47.102.128.138:8888/images/d51f32ae-6cd0-441c-b8de-f8b46ee4f0f8.jpg', '2019-11-16 09:10:00', '第十五周图书馆志愿服务', '江宁图书馆', 1, '整理图书，清扫图书馆。', '2019-11-16 12:00:00', 2, '经济与管理学院', '已过期', 6, '院级,图书馆', NULL);
INSERT INTO `event` VALUES (42, 'http://47.102.128.138:8888/images/c5effdf1-d72f-4666-880a-d141c91835bc.jpg', '2019-11-15 09:10:00', '社区幼儿园志愿活动', '东山幼儿园', 1, '带领孩子们做科学小实验。', '2019-11-16 12:00:00', 3, '艺术与设计学院', '已过期', 6, '儿童,校级', NULL);
INSERT INTO `event` VALUES (43, 'http://47.102.128.138:8888/images/6d6d8b95-fca1-4caa-966f-d4e68ce64033.jpg', '2019-11-15 09:15:00', '走近老人，温暖老人心', '东山敬老院', 1, '看望敬老院老人。', '2019-11-16 11:30:00', 2, '计算机工程学院', '已过期', 7, '敬老院,院级', NULL);

-- ----------------------------
-- Table structure for event_apply
-- ----------------------------
DROP TABLE IF EXISTS `event_apply`;
CREATE TABLE `event_apply`  (
  `event_apply_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '申请人的id',
  `event_id` int(11) NULL DEFAULT NULL COMMENT '活动的id',
  `apply_status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '申请状态',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`event_apply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '活动申请表 ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event_apply
-- ----------------------------
INSERT INTO `event_apply` VALUES (1, 3, 1, '已签到', '2019-07-06 14:04:08');
INSERT INTO `event_apply` VALUES (2, 8, 1, '已签到', '2019-07-06 14:04:24');
INSERT INTO `event_apply` VALUES (3, 1, 6, '报名中', '2019-07-27 15:40:36');
INSERT INTO `event_apply` VALUES (4, 1, 7, '报名中', '2019-07-27 18:10:45');
INSERT INTO `event_apply` VALUES (5, 3, 1, '已签到', '2019-07-27 18:42:02');
INSERT INTO `event_apply` VALUES (6, 1, 8, '已签到', '2019-07-27 23:54:50');
INSERT INTO `event_apply` VALUES (7, 2, 8, '已签到', '2019-07-27 00:11:49');
INSERT INTO `event_apply` VALUES (8, 7, 8, '已签到', '2019-07-28 00:14:19');
INSERT INTO `event_apply` VALUES (9, 6, 7, '报名中', '2019-09-07 16:02:50');
INSERT INTO `event_apply` VALUES (10, 6, 4, '报名中', '2019-09-07 16:03:04');
INSERT INTO `event_apply` VALUES (11, 6, 19, '已签到', '2019-10-19 19:51:11');
INSERT INTO `event_apply` VALUES (12, 5, 21, '报名通过', '2019-10-20 17:26:05');
INSERT INTO `event_apply` VALUES (13, 4, 22, '报名通过', '2019-10-20 20:05:32');
INSERT INTO `event_apply` VALUES (14, 5, 22, '报名通过', '2019-10-20 20:05:51');
INSERT INTO `event_apply` VALUES (15, 4, 21, '报名通过', '2019-10-20 21:29:47');
INSERT INTO `event_apply` VALUES (16, 4, 24, '报名通过', '2019-11-04 15:14:23');
INSERT INTO `event_apply` VALUES (17, 4, 28, '报名通过', '2019-11-04 15:14:32');
INSERT INTO `event_apply` VALUES (18, 4, 27, '报名通过', '2019-11-04 15:14:40');
INSERT INTO `event_apply` VALUES (19, 4, 26, '报名通过', '2019-11-04 15:15:11');
INSERT INTO `event_apply` VALUES (20, 7, 24, '报名通过', '2019-11-04 15:41:34');
INSERT INTO `event_apply` VALUES (21, 7, 25, '报名通过', '2019-11-04 15:41:38');
INSERT INTO `event_apply` VALUES (22, 7, 28, '报名通过', '2019-11-04 15:41:42');
INSERT INTO `event_apply` VALUES (23, 7, 23, '报名通过', '2019-11-04 15:41:46');
INSERT INTO `event_apply` VALUES (24, 6, 24, '报名通过', '2019-11-04 15:42:05');
INSERT INTO `event_apply` VALUES (25, 6, 28, '报名通过', '2019-11-04 15:42:11');
INSERT INTO `event_apply` VALUES (26, 6, 23, '报名通过', '2019-11-04 15:42:15');
INSERT INTO `event_apply` VALUES (27, 4, 23, '报名通过', '2019-11-04 16:21:35');
INSERT INTO `event_apply` VALUES (28, 17, 23, '报名通过', '2019-11-04 16:24:39');
INSERT INTO `event_apply` VALUES (29, 5, 29, '报名通过', '2019-11-05 14:04:50');
INSERT INTO `event_apply` VALUES (30, 1, 29, '报名通过', '2019-11-05 14:05:38');
INSERT INTO `event_apply` VALUES (31, 4, 30, '已签到', '2019-11-05 14:11:25');
INSERT INTO `event_apply` VALUES (32, 5, 30, '报名通过', '2019-11-05 14:12:01');
INSERT INTO `event_apply` VALUES (33, 5, 31, '报名通过', '2019-11-05 15:04:56');
INSERT INTO `event_apply` VALUES (34, 4, 29, '报名通过', '2019-11-05 19:01:41');
INSERT INTO `event_apply` VALUES (35, 5, 32, '报名通过', '2019-11-07 10:35:10');
INSERT INTO `event_apply` VALUES (36, 4, 32, '已签到', '2019-11-07 10:35:39');
INSERT INTO `event_apply` VALUES (37, 7, 32, '报名通过', '2019-11-07 10:36:00');
INSERT INTO `event_apply` VALUES (38, 4, 33, '已签到', '2019-11-07 11:28:59');
INSERT INTO `event_apply` VALUES (39, 5, 33, '已签到', '2019-11-07 11:29:13');
INSERT INTO `event_apply` VALUES (40, 7, 34, '已签到', '2019-11-07 14:22:06');
INSERT INTO `event_apply` VALUES (41, 5, 34, '已签到', '2019-11-07 14:22:22');
INSERT INTO `event_apply` VALUES (42, 4, 34, '报名通过', '2019-11-07 14:22:37');
INSERT INTO `event_apply` VALUES (43, 12, 34, '已签到', '2019-11-07 14:23:31');
INSERT INTO `event_apply` VALUES (44, 4, 35, '报名未通过', '2019-11-07 14:36:52');
INSERT INTO `event_apply` VALUES (45, 7, 35, '报名未通过', '2019-11-07 15:09:27');
INSERT INTO `event_apply` VALUES (46, 5, 35, '报名通过', '2019-11-07 15:11:30');
INSERT INTO `event_apply` VALUES (47, 4, 36, '已签到', '2019-11-07 19:01:25');
INSERT INTO `event_apply` VALUES (48, 17, 32, '报名通过', '2019-11-07 19:36:21');
INSERT INTO `event_apply` VALUES (49, 17, 38, '已签到', '2019-11-07 19:42:08');
INSERT INTO `event_apply` VALUES (50, 4, 43, '报名通过', '2019-11-09 09:04:18');
INSERT INTO `event_apply` VALUES (51, 4, 42, '报名通过', '2019-11-09 09:04:22');
INSERT INTO `event_apply` VALUES (52, 4, 41, '已签到', '2019-11-09 09:04:25');
INSERT INTO `event_apply` VALUES (53, 4, 40, '报名通过', '2019-11-09 09:04:29');
INSERT INTO `event_apply` VALUES (54, 4, 39, '已签到', '2019-11-09 09:04:34');
INSERT INTO `event_apply` VALUES (55, 5, 39, '已签到', '2019-11-09 09:07:26');
INSERT INTO `event_apply` VALUES (56, 7, 39, '已签到', '2019-11-09 09:07:41');
INSERT INTO `event_apply` VALUES (57, 4, 37, '报名通过', '2019-11-18 09:23:13');

-- ----------------------------
-- Table structure for event_comment
-- ----------------------------
DROP TABLE IF EXISTS `event_comment`;
CREATE TABLE `event_comment`  (
  `ec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ec_id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `comment` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '评论内容',
  `rate` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '评分',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `event_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ec_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '活动评价表 ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event_comment
-- ----------------------------
INSERT INTO `event_comment` VALUES (1, 1, '评论', '评分', '2019-09-05 00:19:43', 6);
INSERT INTO `event_comment` VALUES (2, 1, '这个活动好好啊', '非常满意', '2019-09-05 09:03:54', 5);
INSERT INTO `event_comment` VALUES (3, 1, '这个活动好好啊', '非常满意', '2019-09-05 23:49:17', 5);
INSERT INTO `event_comment` VALUES (4, 1, '这个活动好好啊', '非常满意', '2019-09-05 23:50:20', 3);
INSERT INTO `event_comment` VALUES (5, 1, '走进老人，倾听老人，真是一次有意义的志愿活动。', '非常满意', '2019-09-06 21:44:23', 3);
INSERT INTO `event_comment` VALUES (6, 7, '劳动最光荣', '非常满意', '2019-10-18 16:01:22', 8);
INSERT INTO `event_comment` VALUES (7, 4, '好', '非常满意', '2019-10-20 21:19:14', 22);
INSERT INTO `event_comment` VALUES (8, 17, '不错', '非常满意', '2019-11-04 16:24:59', 23);
INSERT INTO `event_comment` VALUES (9, 4, '在欢声笑语中给老人带去一些关爱，是一次很有意义的活动！', '非常满意', '2019-11-07 11:38:23', 33);
INSERT INTO `event_comment` VALUES (10, 5, '小孩是魔鬼啊啊啊啊', '比较不满意', '2019-11-07 15:16:17', 34);
INSERT INTO `event_comment` VALUES (11, 5, '活动真有意义', '非常满意', '2019-11-07 15:31:21', 33);
INSERT INTO `event_comment` VALUES (12, 5, '找bug好玩啊', '比较满意', '2019-11-07 16:57:27', 35);
INSERT INTO `event_comment` VALUES (13, 4, '小猫咪好凶哦', '非常满意', '2019-11-07 19:09:43', 36);

-- ----------------------------
-- Table structure for event_like
-- ----------------------------
DROP TABLE IF EXISTS `event_like`;
CREATE TABLE `event_like`  (
  `event_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NULL DEFAULT NULL,
  `et_like_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`et_like_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event_like
-- ----------------------------
INSERT INTO `event_like` VALUES (1, 1, 5, '00A', '2019-09-05 00:50:03');
INSERT INTO `event_like` VALUES (4, 1, 6, '00A', '2019-09-07 08:58:02');
INSERT INTO `event_like` VALUES (3, 1, 7, '00A', '2019-09-07 10:00:22');
INSERT INTO `event_like` VALUES (2, 1, 8, '00A', '2019-10-18 10:33:15');
INSERT INTO `event_like` VALUES (5, 1, 9, '00A', '2019-10-18 10:33:32');
INSERT INTO `event_like` VALUES (2, 4, 10, '00A', '2019-10-18 15:59:19');
INSERT INTO `event_like` VALUES (3, 4, 11, '00A', '2019-10-18 15:59:23');
INSERT INTO `event_like` VALUES (3, 6, 12, '00A', '2019-10-18 16:00:29');
INSERT INTO `event_like` VALUES (4, 7, 13, '00A', '2019-10-18 16:00:44');
INSERT INTO `event_like` VALUES (6, 7, 14, '00A', '2019-10-18 16:00:51');
INSERT INTO `event_like` VALUES (2, 7, 15, '00A', '2019-10-18 16:01:43');
INSERT INTO `event_like` VALUES (14, 1, 16, '00X', '2019-10-18 17:06:30');
INSERT INTO `event_like` VALUES (6, 1, 17, '00A', '2019-10-18 19:42:05');
INSERT INTO `event_like` VALUES (2, 6, 18, '00X', '2019-10-19 20:55:16');
INSERT INTO `event_like` VALUES (14, 6, 19, '00A', '2019-10-19 20:55:33');
INSERT INTO `event_like` VALUES (4, 6, 20, '00X', '2019-10-19 20:57:22');
INSERT INTO `event_like` VALUES (19, 1, 21, '00X', '2019-10-20 14:55:22');
INSERT INTO `event_like` VALUES (10, 4, 22, '00A', '2019-10-20 16:53:24');
INSERT INTO `event_like` VALUES (1, 4, 23, '00A', '2019-10-20 16:53:38');
INSERT INTO `event_like` VALUES (4, 4, 24, '00A', '2019-10-20 21:33:10');
INSERT INTO `event_like` VALUES (4, 17, 25, '00A', '2019-11-04 16:25:17');
INSERT INTO `event_like` VALUES (6, 17, 26, '00A', '2019-11-04 16:25:57');
INSERT INTO `event_like` VALUES (6, 4, 27, '00A', '2019-11-05 14:18:37');
INSERT INTO `event_like` VALUES (5, 4, 28, '00A', '2019-11-05 14:18:44');
INSERT INTO `event_like` VALUES (5, 4, 29, '00A', '2019-11-05 14:18:44');
INSERT INTO `event_like` VALUES (33, 4, 30, '00A', '2019-11-07 11:38:46');
INSERT INTO `event_like` VALUES (35, 5, 31, '00A', '2019-11-07 15:32:07');
INSERT INTO `event_like` VALUES (34, 5, 32, '00A', '2019-11-07 15:32:17');
INSERT INTO `event_like` VALUES (33, 5, 33, '00A', '2019-11-07 15:46:26');
INSERT INTO `event_like` VALUES (34, 4, 34, '00A', '2019-11-07 19:10:16');
INSERT INTO `event_like` VALUES (36, 4, 35, '00A', '2019-11-07 19:11:17');
INSERT INTO `event_like` VALUES (36, 17, 36, '00A', '2019-11-07 19:36:13');
INSERT INTO `event_like` VALUES (37, 1, 37, '00A', '2019-11-08 19:16:00');
INSERT INTO `event_like` VALUES (41, 4, 38, '00A', '2019-11-12 15:26:49');

-- ----------------------------
-- Table structure for event_picture
-- ----------------------------
DROP TABLE IF EXISTS `event_picture`;
CREATE TABLE `event_picture`  (
  `ep_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长用户标签名',
  `event_id` int(11) NULL DEFAULT NULL COMMENT '标签名',
  `img_url` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ep_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '活动标签表 ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event_picture
-- ----------------------------
INSERT INTO `event_picture` VALUES (11, 1, 'http://47.102.128.138:8888/images/ceshi/%E6%95%AC%E8%80%81%E9%99%A2.jpg');
INSERT INTO `event_picture` VALUES (12, 1, 'http://47.102.128.138:8888/images/ceshi/jing1.jpg');
INSERT INTO `event_picture` VALUES (13, 1, 'http://47.102.128.138:8888/images/ceshi/jing2.jpg');
INSERT INTO `event_picture` VALUES (14, 2, 'http://47.102.128.138:8888/images/ceshi/ji1.jpg');
INSERT INTO `event_picture` VALUES (15, 2, 'http://47.102.128.138:8888/images/ceshi/ji2.jpg');
INSERT INTO `event_picture` VALUES (16, 2, 'http://47.102.128.138:8888/images/ceshi/ji3.jpg');
INSERT INTO `event_picture` VALUES (17, 3, 'http://47.102.128.138:8888/images/ceshi/di1.jpg');
INSERT INTO `event_picture` VALUES (18, 3, 'http://47.102.128.138:8888/images/ceshi/di2.jpg');
INSERT INTO `event_picture` VALUES (19, 3, 'http://47.102.128.138:8888/images/ceshi/di3.jpg');
INSERT INTO `event_picture` VALUES (20, 3, 'http://47.102.128.138:8888/images/ceshi/di4.jpg');
INSERT INTO `event_picture` VALUES (21, 4, 'http://47.102.128.138:8888/images/ceshi/child1.jpg');
INSERT INTO `event_picture` VALUES (22, 4, 'http://47.102.128.138:8888/images/ceshi/child2.jpg');
INSERT INTO `event_picture` VALUES (23, 4, 'http://47.102.128.138:8888/images/ceshi/child2.jpg');
INSERT INTO `event_picture` VALUES (24, 5, 'http://47.102.128.138:8888/images/ceshi/child2.jpg');
INSERT INTO `event_picture` VALUES (25, 6, 'http://47.102.128.138:8888/images/ceshi/jing1.jpg');
INSERT INTO `event_picture` VALUES (26, 7, 'http://47.102.128.138:8888/images/ceshi/ji3.jpg');
INSERT INTO `event_picture` VALUES (27, 8, 'http://47.102.128.138:8888/images/ceshi/ji3.jpg');
INSERT INTO `event_picture` VALUES (28, 9, 'http://47.102.128.138:8888/images/ceshi/ji3.jpg');
INSERT INTO `event_picture` VALUES (29, 19, 'http://47.102.128.138:8888/images/ceshi/ji3.jpg');
INSERT INTO `event_picture` VALUES (30, 19, 'http://47.102.128.138:8888/images/ceshi/ji3.jpg');
INSERT INTO `event_picture` VALUES (31, 24, 'http://47.102.128.138:8888/images/b62d8962-f464-4919-945c-d50d9a9ea2b8.jpg');
INSERT INTO `event_picture` VALUES (32, 33, 'http://47.102.128.138:8888/images/0254963b-2338-4906-aa55-6878aa5b6e4e.jpg');
INSERT INTO `event_picture` VALUES (33, 33, 'http://47.102.128.138:8888/images/cd5ca7af-3d69-4e58-a049-5dc445b3c232.jpg');
INSERT INTO `event_picture` VALUES (34, 34, 'http://47.102.128.138:8888/images/f7a8ec74-71c1-4605-97cf-97baeb11fde4.jpg');
INSERT INTO `event_picture` VALUES (35, 34, 'http://47.102.128.138:8888/images/2a3d404e-e388-4671-afa3-25a2abd9f239.jpg');
INSERT INTO `event_picture` VALUES (36, 34, 'http://47.102.128.138:8888/images/3df99a2b-a75c-4703-ae45-e78059ec3fc6.jpg');
INSERT INTO `event_picture` VALUES (37, 35, 'http://47.102.128.138:8888/images/9ce2d5a5-5463-457d-b680-1601bccb0919.jpg');
INSERT INTO `event_picture` VALUES (38, 36, 'http://47.102.128.138:8888/images/47bb1048-550e-47cb-894b-54e9a7e019f8.jpg');
INSERT INTO `event_picture` VALUES (39, 36, 'http://47.102.128.138:8888/images/8dd7180c-1250-4b7b-9bec-63b94c8f1b0d.jpg');
INSERT INTO `event_picture` VALUES (40, 36, 'http://47.102.128.138:8888/images/b7d2860c-98f3-4286-8899-fb921a92f723.jpg');
INSERT INTO `event_picture` VALUES (41, 38, 'http://47.102.128.138:8888/images/6b94b676-06bd-4d83-9832-0a3faf553d19.jpg');
INSERT INTO `event_picture` VALUES (42, 38, 'http://47.102.128.138:8888/images/4f63a32a-f465-48cc-bc5a-bbe4fc93e3a0.jpg');
INSERT INTO `event_picture` VALUES (43, 38, 'http://47.102.128.138:8888/images/654f7202-1857-4a66-bb41-347482746437.jpg');
INSERT INTO `event_picture` VALUES (44, 38, 'http://47.102.128.138:8888/images/6a22028a-a446-4bed-9a39-ff8a8b35e985.jpg');
INSERT INTO `event_picture` VALUES (45, 38, 'http://47.102.128.138:8888/images/c9e7f799-4079-4855-8a1a-683e08daab74.jpg');
INSERT INTO `event_picture` VALUES (46, 38, 'http://47.102.128.138:8888/images/9f7b7131-8fc8-4c86-abb7-02fd3744c641.jpg');
INSERT INTO `event_picture` VALUES (47, 38, 'http://47.102.128.138:8888/images/5e74dae8-640d-47d5-80a3-e37e03cce573.png');
INSERT INTO `event_picture` VALUES (48, 38, 'http://47.102.128.138:8888/images/997a5e23-4833-45a1-921d-d188d08ea1ca.png');
INSERT INTO `event_picture` VALUES (49, 37, 'http://47.102.128.138:8888/images/d636d6d0-cd07-40ab-9bbb-4175e208e19f.png');
INSERT INTO `event_picture` VALUES (50, 40, 'http://47.102.128.138:8888/images/c74e18bd-80e5-4398-bf63-d93063c49be0.jpg');
INSERT INTO `event_picture` VALUES (51, 41, 'http://47.102.128.138:8888/images/94390bd6-2eaf-4f25-b27b-df1ca7e3015f.jpg');
INSERT INTO `event_picture` VALUES (52, 41, 'http://47.102.128.138:8888/images/9ec4b205-aadd-42fe-9cae-f92024b7ee55.jpg');
INSERT INTO `event_picture` VALUES (53, 41, 'http://47.102.128.138:8888/images/4a23568b-13d2-433d-8a7c-e632be179e37.jpg');

-- ----------------------------
-- Table structure for event_picture_slider
-- ----------------------------
DROP TABLE IF EXISTS `event_picture_slider`;
CREATE TABLE `event_picture_slider`  (
  `eps_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `img_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '图片链接',
  `show_priority` int(11) NULL DEFAULT NULL COMMENT '展示优先级 数字越小，优先级越高',
  `created_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`eps_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '图片轮播图 首页展示的图片，展示优先级' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of event_picture_slider
-- ----------------------------
INSERT INTO `event_picture_slider` VALUES (1, 'http://47.102.128.138:8888/images/001.jpg', 1, '2019-09-10 15:07:31');
INSERT INTO `event_picture_slider` VALUES (2, 'http://47.102.128.138:8888/images/002.jpg', 2, '2019-09-10 15:20:11');
INSERT INTO `event_picture_slider` VALUES (3, 'http://47.102.128.138:8888/images/003.jpg', 0, '2019-09-10 15:23:30');
INSERT INTO `event_picture_slider` VALUES (4, 'http://47.102.128.138:8888/images/004.jpg', 0, '2019-09-10 15:40:33');
INSERT INTO `event_picture_slider` VALUES (5, 'http://47.102.128.138:8888/images/kindergarten.jpg', 0, '2019-10-19 22:29:19');
INSERT INTO `event_picture_slider` VALUES (6, 'http://47.102.128.138:8888/images/jing5.jpg', 1, '2019-10-19 22:29:37');
INSERT INTO `event_picture_slider` VALUES (7, 'http://47.102.128.138:8888/images/12.jpg', 0, '2019-10-20 21:00:21');
INSERT INTO `event_picture_slider` VALUES (8, 'http://47.102.128.138:8888/images/星火logo.png', 0, '2019-11-04 12:46:11');
INSERT INTO `event_picture_slider` VALUES (9, 'http://47.102.128.138:8888/images/校徽红色.png', 0, '2019-11-04 12:58:09');
INSERT INTO `event_picture_slider` VALUES (10, 'http://47.102.128.138:8888/images/kindergarten.jpg', 0, '2019-11-04 15:27:45');
INSERT INTO `event_picture_slider` VALUES (11, 'http://47.102.128.138:8888/images/di4.jpg', 0, '2019-11-04 15:28:02');
INSERT INTO `event_picture_slider` VALUES (12, 'http://47.102.128.138:8888/images/di4.jpg', 0, '2019-11-04 15:28:05');
INSERT INTO `event_picture_slider` VALUES (13, 'http://47.102.128.138:8888/images/child2.jpg', 0, '2019-11-04 15:28:13');
INSERT INTO `event_picture_slider` VALUES (14, 'http://47.102.128.138:8888/images/di4.jpg', 0, '2019-11-04 15:28:22');
INSERT INTO `event_picture_slider` VALUES (15, 'http://47.102.128.138:8888/images/child2.jpg', 0, '2019-11-07 10:24:31');
INSERT INTO `event_picture_slider` VALUES (16, 'http://47.102.128.138:8888/images/kindergarten.jpg', 0, '2019-11-07 10:24:56');
INSERT INTO `event_picture_slider` VALUES (17, 'http://47.102.128.138:8888/images/di4.jpg', 0, '2019-11-07 10:27:34');
INSERT INTO `event_picture_slider` VALUES (18, 'http://47.102.128.138:8888/images/6fe302d11d9defbd84cb5aea9ce0765345d6acaa267a6-8PJz3i_fw658.jpg', 0, '2019-11-07 19:14:17');
INSERT INTO `event_picture_slider` VALUES (19, 'http://47.102.128.138:8888/images/psb (9).jpg', 0, '2019-11-09 08:55:21');
INSERT INTO `event_picture_slider` VALUES (20, 'http://47.102.128.138:8888/images/psb (16).jpg', 0, '2019-11-09 08:55:37');
INSERT INTO `event_picture_slider` VALUES (21, 'http://47.102.128.138:8888/images/child2.jpg', 0, '2019-11-09 08:56:13');
INSERT INTO `event_picture_slider` VALUES (22, 'http://47.102.128.138:8888/images/1.jpg', 0, '2019-11-18 20:02:57');

-- ----------------------------
-- Table structure for qrcode
-- ----------------------------
DROP TABLE IF EXISTS `qrcode`;
CREATE TABLE `qrcode`  (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `q_code_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`q_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of qrcode
-- ----------------------------
INSERT INTO `qrcode` VALUES (4, 13, 'http://47.102.128.138:8888/images/qrcode/f59bbfc8-3620-4451-926d-162afc6bf3e2.jpg');
INSERT INTO `qrcode` VALUES (5, 4, 'http://47.102.128.138:8888/images/qrcode/f51349c4-53be-4027-b1ad-c8ac50ead8ed.jpg');
INSERT INTO `qrcode` VALUES (6, 7, 'http://47.102.128.138:8888/images/qrcode/9fe4e1a4-6332-46ec-b320-db8fe4c9e6d3.jpg');
INSERT INTO `qrcode` VALUES (7, 1, 'http://47.102.128.138:8888/images/qrcode/e80e66c9-ae32-4afd-b48f-ee62bcacc571.jpg');
INSERT INTO `qrcode` VALUES (8, 5, 'http://47.102.128.138:8888/images/qrcode/0710f6bc-b07d-4b29-b09d-0d99c812795c.jpg');
INSERT INTO `qrcode` VALUES (9, 12, 'http://47.102.128.138:8888/images/qrcode/e86cbcbf-b096-4589-b6c2-f04369f466db.jpg');
INSERT INTO `qrcode` VALUES (10, 17, 'http://47.102.128.138:8888/images/qrcode/7a9cfb7c-a173-4660-aede-860f4ba041fe.jpg');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '班级',
  `user_school` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学院',
  `user_avator` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户头像 头像路径',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户姓名',
  `user_score` int(11) NULL DEFAULT NULL COMMENT '用户积分 100~0',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户密码 des加密数据(可逆加密)',
  `stu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '学号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `role` int(11) NULL DEFAULT NULL,
  `user_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '用户信息表 ' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, '数嵌161', '计算机工程学院', 'http://47.102.128.138:8888/images/ceshi/avatar1.jpg', '测试1', 189, 'E10ADC3949BA59ABBE56E057F20F883E', '202160501', '2019-07-20 10:20:28', 1, '15189801203');
INSERT INTO `user_info` VALUES (3, '班级', '学院', 'http://47.102.128.138:8888/images/ceshi/avatar2.jpg', '张三', 104, '202CB962AC59075B964B07152D234B70', '202160521', '2019-07-20 13:16:57', 1, '123456');
INSERT INTO `user_info` VALUES (4, '数嵌161', '计算机工程学院', 'http://47.102.128.138:8888/images/ceshi/avatar3.jpg', '王敏', 106, 'E10ADC3949BA59ABBE56E057F20F883E', '202160511', '2019-07-21 21:11:01', 0, '123456');
INSERT INTO `user_info` VALUES (5, '数字媒体技术嵌入式161', '计算机', 'http://47.102.128.138:8888/images/ceshi/avatar4.jpg', '尚思', 98, 'E10ADC3949BA59ABBE56E057F20F883E', '202160509', '2019-07-21 21:25:15', 0, '123456');
INSERT INTO `user_info` VALUES (6, '数嵌161', '南京工程学院', 'http://47.102.128.138:8888/images/ceshi/avatar5.jpg', '末流本一工程哥', 115, 'E10ADC3949BA59ABBE56E057F20F883E', '202160507', '2019-07-28 01:08:18', 1, '123456');
INSERT INTO `user_info` VALUES (7, '数嵌161', '南京工程学院', 'http://47.102.128.138:8888/images/ceshi/avatar1.jpg', '蔡徐坤', 101, 'E10ADC3949BA59ABBE56E057F20F883E', '202160508', '2019-07-28 01:08:35', 1, '123456');
INSERT INTO `user_info` VALUES (8, '数嵌161', '南京工程学院', 'http://47.102.128.138:8888/images/ceshi/avatar2.jpg', '海螺', 102, 'E10ADC3949BA59ABBE56E057F20F883E', '202160520', '2019-07-28 01:09:27', 1, '123456');
INSERT INTO `user_info` VALUES (11, '数字161', '计算机院', 'http://47.102.128.138:8888/images/ceshi/avatar2.jpg', '海旭', 100, 'E10ADC3949BA59ABBE56E057F20F883E', '202160522', '2019-09-07 17:07:15', 1, '123456');
INSERT INTO `user_info` VALUES (12, '计算机161', '计算机院', 'http://47.102.128.138:8888/images/ceshi/avatar2.jpg', '贺光银', 102, 'E10ADC3949BA59ABBE56E057F20F883E', '202160523', '2019-09-07 17:16:45', 1, '123456');
INSERT INTO `user_info` VALUES (13, '计算机666', '666', 'http://47.102.128.138:8888/images/ceshi/avatar2.jpg', '666', 100, 'E10ADC3949BA59ABBE56E057F20F883E', '202160666', '2019-09-07 17:22:08', 1, '15189801203');
INSERT INTO `user_info` VALUES (14, '数嵌161', '通信院', 'http://47.102.128.138:8888/images/ceshi/avatar2.jpg', '伏海旭', 100, 'E10ADC3949BA59ABBE56E057F20F883E', '202160777', '2019-09-07 17:23:52', 1, '15189801203');
INSERT INTO `user_info` VALUES (15, '数嵌161', '计算机院', 'http://47.102.128.138:8888/images/ceshi/avatar2.jpg', '测试588', 100, 'E10ADC3949BA59ABBE56E057F20F883E', '202160588', '2019-10-21 21:04:35', 1, '15189801203');
INSERT INTO `user_info` VALUES (16, '数钱161', '计算机院', 'http://47.102.128.138:8888/images/ceshi/avatar3.jpg', '测试用户599', 100, 'E10ADC3949BA59ABBE56E057F20F883E', '202160599', '2019-10-21 21:07:15', 0, '15189801203');
INSERT INTO `user_info` VALUES (17, '数嵌161', '计算机工程学院', 'http://47.102.128.138:8888/images/ceshi/avatar4.jpg', '周杰伦', 70, '25D55AD283AA400AF464C76D713C07AD', '202160512', '2019-11-04 16:24:00', 0, '15195893332');

SET FOREIGN_KEY_CHECKS = 1;
