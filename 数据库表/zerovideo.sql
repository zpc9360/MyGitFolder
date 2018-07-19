/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 80011
Source Host           : 127.0.0.1:3306
Source Database       : zerovideo

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-06-29 22:12:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for authorities
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `id` bigint(20) NOT NULL,
  `authorityDetail` varchar(255) DEFAULT NULL,
  `authorityName` varchar(255) DEFAULT NULL,
  `roleLevel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of authorities
-- ----------------------------
INSERT INTO `authorities` VALUES ('1', '去注页面', 'toUserRegist', '1');
INSERT INTO `authorities` VALUES ('2', '注册', 'regist', '1');
INSERT INTO `authorities` VALUES ('3', '去登录页面', 'toLogin', '1');
INSERT INTO `authorities` VALUES ('4', '登录', 'login', '1');
INSERT INTO `authorities` VALUES ('5', '去主页', 'index', '1');
INSERT INTO `authorities` VALUES ('52', '去注页面', 'toUserRegist', '1');
INSERT INTO `authorities` VALUES ('53', '注册', 'regist', '1');
INSERT INTO `authorities` VALUES ('54', '去登录页面', 'toLogin', '1');
INSERT INTO `authorities` VALUES ('55', '登录', 'login', '1');
INSERT INTO `authorities` VALUES ('56', '去主页', 'index', '1');
INSERT INTO `authorities` VALUES ('102', '去注页面', 'toUserRegist', '1');
INSERT INTO `authorities` VALUES ('103', '注册', 'regist', '1');
INSERT INTO `authorities` VALUES ('104', '去登录页面', 'toLogin', '1');
INSERT INTO `authorities` VALUES ('105', '登录', 'login', '1');
INSERT INTO `authorities` VALUES ('106', '去主页', 'index', '1');
INSERT INTO `authorities` VALUES ('107', '弹幕', 'danmu', '1');
INSERT INTO `authorities` VALUES ('108', '分类', 'kind', '1');
INSERT INTO `authorities` VALUES ('109', '支付', 'pay', '1');
INSERT INTO `authorities` VALUES ('110', '播放', 'play', '1');
INSERT INTO `authorities` VALUES ('111', '详情', 'video', '1');
INSERT INTO `authorities` VALUES ('112', '主页', 'home', '1');
INSERT INTO `authorities` VALUES ('113', '用户登出', 'logout', '2');
INSERT INTO `authorities` VALUES ('114', '去用户个人信息空间', 'toUserDetail', '2');
INSERT INTO `authorities` VALUES ('115', '用户信息更新', 'userUpdate', '2');
INSERT INTO `authorities` VALUES ('116', '用户头像上传', 'headImgUpload', '2');
INSERT INTO `authorities` VALUES ('117', '去菜单管理页面', 'menuManage', '6');
INSERT INTO `authorities` VALUES ('118', '去菜单添加页面', 'toMenuAdd', '6');
INSERT INTO `authorities` VALUES ('119', '菜单添加', 'menuAdd', '6');
INSERT INTO `authorities` VALUES ('120', '菜单删除', 'menuDelete', '6');
INSERT INTO `authorities` VALUES ('121', '去菜单更新页面', 'toMenuUpdate', '6');
INSERT INTO `authorities` VALUES ('122', '菜单修改', 'menuUpdate', '6');
INSERT INTO `authorities` VALUES ('123', '去角色管理页面', 'roleManage', '6');
INSERT INTO `authorities` VALUES ('124', '去角色添加页面', 'toRoleAdd', '6');
INSERT INTO `authorities` VALUES ('125', '角色添加', 'roleAdd', '6');
INSERT INTO `authorities` VALUES ('126', '角色删除', 'roleDelete', '6');
INSERT INTO `authorities` VALUES ('127', '去角色更新页面', 'toRoleUpdate', '6');
INSERT INTO `authorities` VALUES ('128', '角色修改', 'roleUpdate', '6');

-- ----------------------------
-- Table structure for authorities_id
-- ----------------------------
DROP TABLE IF EXISTS `authorities_id`;
CREATE TABLE `authorities_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of authorities_id
-- ----------------------------
INSERT INTO `authorities_id` VALUES ('201');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL,
  `commentId` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `videoId` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '0', '好看不？', '2018-06-19 20:08:26', '1', '2');
INSERT INTO `comments` VALUES ('2', '0', '好看不？', '2018-06-19 20:11:56', '1', '2');
INSERT INTO `comments` VALUES ('52', '0', '好', '2018-06-19 21:26:50', '1', '139');
INSERT INTO `comments` VALUES ('102', '0', '好听哈哈哈哈哈', '2018-06-19 21:48:48', '1', '152');
INSERT INTO `comments` VALUES ('103', '0', '好听哈哈哈哈哈', '2018-06-19 21:48:59', '1', '152');
INSERT INTO `comments` VALUES ('104', '0', '我日，张胖666666', '2018-06-19 21:55:27', '1', '202');
INSERT INTO `comments` VALUES ('105', '0', '妈的，这尼玛叫啥woc', '2018-06-19 21:58:01', '1', '202');
INSERT INTO `comments` VALUES ('106', '0', '个人消息和我的消息报500错误了', '2018-06-19 21:58:42', '52', '202');
INSERT INTO `comments` VALUES ('107', '0', '阿萨德', '2018-06-19 21:58:46', '1', '202');
INSERT INTO `comments` VALUES ('108', '0', '黑洞洞的', '2018-06-19 21:59:40', '52', '203');
INSERT INTO `comments` VALUES ('152', '0', '老板，这台收不见', '2018-06-19 22:00:46', '52', '153');
INSERT INTO `comments` VALUES ('153', '0', '报错就报错了，完了删就行了\n', '2018-06-19 22:00:49', '1', '202');
INSERT INTO `comments` VALUES ('154', '0', '呢你让人咋改头像', '2018-06-19 22:03:06', '52', '202');
INSERT INTO `comments` VALUES ('155', '0', '那砸门完了吧这个播放界面改成封面哇，要是mp3的话\n', '2018-06-19 22:03:53', '1', '203');
INSERT INTO `comments` VALUES ('156', '0', '404 error！', '2018-06-19 22:05:55', '52', '153');
INSERT INTO `comments` VALUES ('157', '0', '你上传的是MP4的文件吗？', '2018-06-19 22:06:14', '1', '153');
INSERT INTO `comments` VALUES ('158', '0', '你特么的上传的是jpg文件\n', '2018-06-19 22:06:53', '1', '153');
INSERT INTO `comments` VALUES ('159', '0', '痛仰的仰错了这是大法官反攻倒算分公司电饭锅\n', '2018-06-19 22:08:09', '52', '202');
INSERT INTO `comments` VALUES ('160', '0', ' 妈的这个都没视频播放量咋还这么多啊', '2018-06-19 22:09:02', '1', '153');
INSERT INTO `comments` VALUES ('161', '0', 'F22太假了。演员。。。。', '2018-06-19 22:09:18', '52', '2');
INSERT INTO `comments` VALUES ('162', '0', '沙发沙发沙发沙发沙发', '2018-06-19 22:10:37', '1', '152');
INSERT INTO `comments` VALUES ('163', '0', '行哇。\".mp3\"后缀的？\n', '2018-06-19 22:10:46', '52', '203');
INSERT INTO `comments` VALUES ('164', '0', '我台式上没有，你下几集传上去！', '2018-06-19 22:11:50', '52', '153');
INSERT INTO `comments` VALUES ('165', '0', '好像成为这个的主角呀', '2018-06-19 22:11:50', '1', '52');
INSERT INTO `comments` VALUES ('166', '0', 'hxcwzgdzjy', '2018-06-19 22:12:14', '1', '52');
INSERT INTO `comments` VALUES ('167', '0', '要第五季最新的，知道不', '2018-06-19 22:12:19', '52', '153');
INSERT INTO `comments` VALUES ('168', '0', '这几天开18大了，捏不让换头像了', '2018-06-19 22:13:25', '1', '202');
INSERT INTO `comments` VALUES ('169', '0', '有个问题，回复的分页呢？\n', '2018-06-19 22:13:26', '52', '153');
INSERT INTO `comments` VALUES ('202', '0', '哇哇哇好看好看好看真好看，这个人挺出名的把哈哈', '2018-06-20 00:25:02', '1', '302');
INSERT INTO `comments` VALUES ('203', '0', '妈也这特么的是神么(⊙ˍ⊙)？?', '2018-06-20 00:30:02', '1', '253');
INSERT INTO `comments` VALUES ('204', '0', '德洛丽丝好漂亮啊真的漂亮，喜欢喜欢', '2018-06-20 00:53:04', '1', '303');
INSERT INTO `comments` VALUES ('205', '0', '回复的分页还没写。。懒得写了', '2018-06-20 01:13:39', '1', '153');
INSERT INTO `comments` VALUES ('252', '0', '好看啊，求第二季，第二季，第二季', '2018-06-20 11:22:58', '1', '303');
INSERT INTO `comments` VALUES ('302', '0', '哈哈哈哈哈哈哈哈哈哈哈好听', '2018-06-20 11:47:15', '1', '302');
INSERT INTO `comments` VALUES ('352', '0', '我是神仙（这个评论必需超过10个字太恶心了）', '2018-06-20 12:22:52', '52', '253');
INSERT INTO `comments` VALUES ('402', '0', '第一集啊这是。。。。。', '2018-06-20 14:39:50', '52', '428');
INSERT INTO `comments` VALUES ('452', '0', '好看好看好看好看好好看', '2018-06-20 16:54:06', '1', '53');

-- ----------------------------
-- Table structure for comments_id
-- ----------------------------
DROP TABLE IF EXISTS `comments_id`;
CREATE TABLE `comments_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comments_id
-- ----------------------------
INSERT INTO `comments_id` VALUES ('551');

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` bigint(20) NOT NULL,
  `fatherId` int(11) NOT NULL,
  `menuDetail` varchar(255) DEFAULT NULL,
  `menuKindId` int(11) NOT NULL,
  `menuName` varchar(255) DEFAULT NULL,
  `menuUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', '0', '电影', '1', 'movie', 'home/movie');
INSERT INTO `menus` VALUES ('2', '0', '电视剧', '1', 'teleplay', 'home/teleplay');
INSERT INTO `menus` VALUES ('3', '0', '动漫', '1', 'anime', 'home/anime');
INSERT INTO `menus` VALUES ('4', '0', '原创', '1', 'original', 'home/original');
INSERT INTO `menus` VALUES ('5', '0', '鬼畜', '1', 'crazy', 'home/crazy');
INSERT INTO `menus` VALUES ('6', '0', '音乐', '1', 'music', 'home/music');
INSERT INTO `menus` VALUES ('7', '0', '菜单管理', '2', 'menuManage', 'menuManage');
INSERT INTO `menus` VALUES ('8', '0', '角色管理', '2', 'roleManage', 'roleManage');
INSERT INTO `menus` VALUES ('9', '0', '权限管理', '2', 'authorityManage', 'authorityManage');
INSERT INTO `menus` VALUES ('10', '7', '菜单首页', '2', 'menuManage', 'menu/menuManage');
INSERT INTO `menus` VALUES ('11', '8', '角色首页', '2', 'roleManage', 'role/roleManage');
INSERT INTO `menus` VALUES ('12', '9', '权限首页', '2', 'authorityManage', 'authority/authorityManage');
INSERT INTO `menus` VALUES ('52', '0', '视频管理', '2', 'videoManage', 'video/videoManage');
INSERT INTO `menus` VALUES ('53', '52', '视频首页', '2', 'videoManage', 'video/videoManage');
INSERT INTO `menus` VALUES ('102', '0', '喜剧', '1', 'joke', 'joke');

-- ----------------------------
-- Table structure for menus_id
-- ----------------------------
DROP TABLE IF EXISTS `menus_id`;
CREATE TABLE `menus_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of menus_id
-- ----------------------------
INSERT INTO `menus_id` VALUES ('201');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `roleLevel` int(11) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '1', '游客');
INSERT INTO `roles` VALUES ('2', '2', '普通用户');
INSERT INTO `roles` VALUES ('3', '3', 'Vip用户');
INSERT INTO `roles` VALUES ('4', '6', '超级管理员');

-- ----------------------------
-- Table structure for roles_id
-- ----------------------------
DROP TABLE IF EXISTS `roles_id`;
CREATE TABLE `roles_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of roles_id
-- ----------------------------
INSERT INTO `roles_id` VALUES ('101');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `headImg` varchar(100) DEFAULT NULL,
  `nickName` varchar(20) DEFAULT NULL,
  `passWord` varchar(50) DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '女', 'resources/imgs/userHeadImg/hxf.jpg', '大佬哈哈哈', '123456', '6', 'hxf');
INSERT INTO `users` VALUES ('52', '男', 'resources/imgs/userHeadImg/zpc.jpg', 'Jason', '123456', '5', 'zpc');

-- ----------------------------
-- Table structure for users_id
-- ----------------------------
DROP TABLE IF EXISTS `users_id`;
CREATE TABLE `users_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_id
-- ----------------------------
INSERT INTO `users_id` VALUES ('151');

-- ----------------------------
-- Table structure for videoplays
-- ----------------------------
DROP TABLE IF EXISTS `videoplays`;
CREATE TABLE `videoplays` (
  `id` bigint(20) NOT NULL,
  `isCharge` int(11) NOT NULL,
  `videoId` bigint(20) NOT NULL,
  `videoName` varchar(255) DEFAULT NULL,
  `videoNo` varchar(255) DEFAULT NULL,
  `videoUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of videoplays
-- ----------------------------
INSERT INTO `videoplays` VALUES ('1', '0', '1', '复仇者联盟1', '01', 'resources/videos/1529407662022/1529408243552.mp4');
INSERT INTO `videoplays` VALUES ('2', '0', '2', '钢铁侠1', '01', 'resources/videos/1529407687555/1529408286593.mp4');
INSERT INTO `videoplays` VALUES ('3', '0', '3', '钢铁侠2', '01', 'resources/videos/1529407716961/1529408317091.mp4');
INSERT INTO `videoplays` VALUES ('4', '0', '4', '黑豹', '01', 'resources/videos/1529407734424/1529408362787.mp4');
INSERT INTO `videoplays` VALUES ('5', '0', '5', '雷神1', '01', 'resources/videos/1529407753062/1529408416103.mp4');
INSERT INTO `videoplays` VALUES ('6', '0', '6', '美国队长', '01', 'resources/videos/1529407774381/1529408482544.mp4');
INSERT INTO `videoplays` VALUES ('7', '0', '7', '无敌浩克（绿巨人）', '01', 'resources/videos/1529407798211/1529408511756.mp4');
INSERT INTO `videoplays` VALUES ('52', '0', '9', 'Re:从零开始的异世界生活', '第 01 集', 'resources/videos/1529407918692/1529409518009.mp4');
INSERT INTO `videoplays` VALUES ('53', '0', '9', 'Re:从零开始的异世界生活', '第 02 集', 'resources/videos/1529407918692/1529409531146.mp4');
INSERT INTO `videoplays` VALUES ('54', '0', '9', 'Re:从零开始的异世界生活', '第 03 集', 'resources/videos/1529407918692/1529409551057.mp4');
INSERT INTO `videoplays` VALUES ('55', '0', '9', 'Re:从零开始的异世界生活', '第 04 集', 'resources/videos/1529407918692/1529409566503.mp4');
INSERT INTO `videoplays` VALUES ('56', '0', '9', 'Re:从零开始的异世界生活', '第 05 集', 'resources/videos/1529407918692/1529409581359.mp4');
INSERT INTO `videoplays` VALUES ('57', '0', '9', 'Re:从零开始的异世界生活', '第 06 集', 'resources/videos/1529407918692/1529409594060.mp4');
INSERT INTO `videoplays` VALUES ('58', '0', '9', 'Re:从零开始的异世界生活', '第 07 集', 'resources/videos/1529407918692/1529409610881.mp4');
INSERT INTO `videoplays` VALUES ('59', '0', '9', 'Re:从零开始的异世界生活', '第 08 集', 'resources/videos/1529407918692/1529409638317.mp4');
INSERT INTO `videoplays` VALUES ('60', '0', '9', 'Re:从零开始的异世界生活', '第 09 集', 'resources/videos/1529407918692/1529409651544.mp4');
INSERT INTO `videoplays` VALUES ('61', '0', '9', 'Re:从零开始的异世界生活', '第 10 集', 'resources/videos/1529407918692/1529409666801.mp4');
INSERT INTO `videoplays` VALUES ('62', '0', '9', 'Re:从零开始的异世界生活', '第 11 集', 'resources/videos/1529407918692/1529409681715.mp4');
INSERT INTO `videoplays` VALUES ('63', '0', '9', 'Re:从零开始的异世界生活', '第 12 集', 'resources/videos/1529407918692/1529409699479.mp4');
INSERT INTO `videoplays` VALUES ('64', '0', '9', 'Re:从零开始的异世界生活', '第 13 集', 'resources/videos/1529407918692/1529409715892.mp4');
INSERT INTO `videoplays` VALUES ('65', '0', '9', 'Re:从零开始的异世界生活', '第 14 集', 'resources/videos/1529407918692/1529409751566.mp4');
INSERT INTO `videoplays` VALUES ('66', '0', '9', 'Re:从零开始的异世界生活', '第 15 集', 'resources/videos/1529407918692/1529409769637.mp4');
INSERT INTO `videoplays` VALUES ('67', '0', '9', 'Re:从零开始的异世界生活', '第 16 集', 'resources/videos/1529407918692/1529409802470.mp4');
INSERT INTO `videoplays` VALUES ('68', '0', '9', 'Re:从零开始的异世界生活', '第 17 集', 'resources/videos/1529407918692/1529409832397.mp4');
INSERT INTO `videoplays` VALUES ('69', '0', '9', 'Re:从零开始的异世界生活', '第 18 集', 'resources/videos/1529407918692/1529409924989.mp4');
INSERT INTO `videoplays` VALUES ('70', '0', '9', 'Re:从零开始的异世界生活', '第 19 集', 'resources/videos/1529407918692/1529409942919.mp4');
INSERT INTO `videoplays` VALUES ('71', '0', '9', 'Re:从零开始的异世界生活', '第 20 集', 'resources/videos/1529407918692/1529409960599.mp4');
INSERT INTO `videoplays` VALUES ('72', '0', '9', 'Re:从零开始的异世界生活', '第 21 集', 'resources/videos/1529407918692/1529409980935.mp4');
INSERT INTO `videoplays` VALUES ('73', '0', '9', 'Re:从零开始的异世界生活', '第 22 集', 'resources/videos/1529407918692/1529410028053.mp4');
INSERT INTO `videoplays` VALUES ('74', '0', '9', 'Re:从零开始的异世界生活', '第 23 集', 'resources/videos/1529407918692/1529410045431.mp4');
INSERT INTO `videoplays` VALUES ('75', '0', '9', 'Re:从零开始的异世界生活', '第 24 集', 'resources/videos/1529407918692/1529410061697.mp4');
INSERT INTO `videoplays` VALUES ('76', '1', '9', 'Re:从零开始的异世界生活', '第 25 集', 'resources/videos/1529407918692/1529410080420.mp4');
INSERT INTO `videoplays` VALUES ('102', '0', '12', '一拳超人', '第 01 集', 'resources/videos/1529407988745/1529412051571.mp4');
INSERT INTO `videoplays` VALUES ('103', '0', '12', '一拳超人', '第 02 集', 'resources/videos/1529407988745/1529412066192.mp4');
INSERT INTO `videoplays` VALUES ('104', '0', '12', '一拳超人', '第 03 集', 'resources/videos/1529407988745/1529412080690.mp4');
INSERT INTO `videoplays` VALUES ('105', '0', '12', '一拳超人', '第 04 集', 'resources/videos/1529407988745/1529412146404.mp4');
INSERT INTO `videoplays` VALUES ('106', '0', '12', '一拳超人', '第 05 集', 'resources/videos/1529407988745/1529412160490.mp4');
INSERT INTO `videoplays` VALUES ('107', '0', '12', '一拳超人', '第 06 集', 'resources/videos/1529407988745/1529412175045.mp4');
INSERT INTO `videoplays` VALUES ('108', '0', '12', '一拳超人', '第 07 集', 'resources/videos/1529407988745/1529412187468.mp4');
INSERT INTO `videoplays` VALUES ('109', '0', '12', '一拳超人', '第 08 集', 'resources/videos/1529407988745/1529412199789.mp4');
INSERT INTO `videoplays` VALUES ('110', '0', '12', '一拳超人', '第 10 集', 'resources/videos/1529407988745/1529412224501.mp4');
INSERT INTO `videoplays` VALUES ('111', '0', '12', '一拳超人', '第 11 集', 'resources/videos/1529407988745/1529412235401.mp4');
INSERT INTO `videoplays` VALUES ('112', '0', '12', '一拳超人', '第 12 集', 'resources/videos/1529407988745/1529412255287.mp4');
INSERT INTO `videoplays` VALUES ('113', '0', '12', '一拳超人', 'OVA 01', 'resources/videos/1529407988745/1529412299297.mp4');
INSERT INTO `videoplays` VALUES ('114', '0', '12', '一拳超人', 'OVA 02', 'resources/videos/1529407988745/1529412327079.mp4');
INSERT INTO `videoplays` VALUES ('115', '0', '12', '一拳超人', 'OVA 03', 'resources/videos/1529407988745/1529412335848.mp4');
INSERT INTO `videoplays` VALUES ('116', '0', '12', '一拳超人', 'OVA 04', 'resources/videos/1529407988745/1529412345560.mp4');
INSERT INTO `videoplays` VALUES ('117', '0', '12', '一拳超人', 'OVA 05', 'resources/videos/1529407988745/1529412355477.mp4');
INSERT INTO `videoplays` VALUES ('118', '0', '12', '一拳超人', 'OVA 06', 'resources/videos/1529407988745/1529412363824.mp4');
INSERT INTO `videoplays` VALUES ('119', '0', '12', '一拳超人', 'OAD 01', 'resources/videos/1529407988745/1529412388753.mp4');
INSERT INTO `videoplays` VALUES ('120', '0', '13', '游戏人生', '第 01 集', 'resources/videos/1529408007487/1529412666069.mp4');
INSERT INTO `videoplays` VALUES ('121', '0', '13', '游戏人生', '第 02 集', 'resources/videos/1529408007487/1529412700867.mp4');
INSERT INTO `videoplays` VALUES ('122', '0', '13', '游戏人生', '第 03 集', 'resources/videos/1529408007487/1529412711876.mp4');
INSERT INTO `videoplays` VALUES ('123', '0', '13', '游戏人生', '第 04 集', 'resources/videos/1529408007487/1529412723416.mp4');
INSERT INTO `videoplays` VALUES ('124', '0', '13', '游戏人生', '第 05 集', 'resources/videos/1529408007487/1529412734444.mp4');
INSERT INTO `videoplays` VALUES ('125', '0', '13', '游戏人生', '第 06 集', 'resources/videos/1529408007487/1529412747163.mp4');
INSERT INTO `videoplays` VALUES ('126', '0', '13', '游戏人生', '第 07 集', 'resources/videos/1529408007487/1529412757907.mp4');
INSERT INTO `videoplays` VALUES ('127', '0', '13', '游戏人生', '第 08 集', 'resources/videos/1529408007487/1529412771080.mp4');
INSERT INTO `videoplays` VALUES ('128', '0', '13', '游戏人生', '第 09 集', 'resources/videos/1529408007487/1529412781893.mp4');
INSERT INTO `videoplays` VALUES ('129', '0', '13', '游戏人生', '第 10 集', 'resources/videos/1529408007487/1529412798973.mp4');
INSERT INTO `videoplays` VALUES ('130', '0', '13', '游戏人生', '第 11 集', 'resources/videos/1529408007487/1529412811411.mp4');
INSERT INTO `videoplays` VALUES ('131', '0', '13', '游戏人生', '第 12 集', 'resources/videos/1529408007487/1529412825509.mp4');
INSERT INTO `videoplays` VALUES ('132', '0', '13', '游戏人生', ' SP 01 ', 'resources/videos/1529408007487/1529412843424.mp4');
INSERT INTO `videoplays` VALUES ('133', '0', '13', '游戏人生', ' SP 02 ', 'resources/videos/1529408007487/1529412857981.mp4');
INSERT INTO `videoplays` VALUES ('134', '0', '13', '游戏人生', ' SP 03 ', 'resources/videos/1529408007487/1529412867706.mp4');
INSERT INTO `videoplays` VALUES ('135', '0', '13', '游戏人生', ' SP 04 ', 'resources/videos/1529408007487/1529412881385.mp4');
INSERT INTO `videoplays` VALUES ('136', '0', '13', '游戏人生', ' SP 05 ', 'resources/videos/1529408007487/1529412890059.mp4');
INSERT INTO `videoplays` VALUES ('137', '0', '13', '游戏人生', ' SP 06 ', 'resources/videos/1529408007487/1529412905429.mp4');
INSERT INTO `videoplays` VALUES ('138', '0', '13', '游戏人生', '  Zero  ', 'resources/videos/1529408007487/1529412933847.mp4');
INSERT INTO `videoplays` VALUES ('139', '0', '52', '网易云', '讲真的', 'resources/videos/1529414348795/1529414459989.mp3');
INSERT INTO `videoplays` VALUES ('152', '0', '102', '解脱', '解脱', 'resources/videos/1529415504912/1529415531553.mp3');
INSERT INTO `videoplays` VALUES ('153', '0', '103', '小猪佩奇', '第 01 集', 'resources/videos/1529415764614/1529467198877.mp4');
INSERT INTO `videoplays` VALUES ('202', '0', '152', '西湖', '西湖', 'resources/videos/1529416111781/1529416173545.mp3');
INSERT INTO `videoplays` VALUES ('203', '0', '153', '纸短情长（试听版）', '纸短情长（试听版）', 'resources/videos/1529416418217/1529416487929.mp3');
INSERT INTO `videoplays` VALUES ('252', '0', '202', '那个人（MV）', '', 'resources/videos/1529419408279/1529419429271.mp4');
INSERT INTO `videoplays` VALUES ('253', '0', '203', '我是神仙', '我是神仙', 'resources/videos/1529419763557/1529419792890.mp4');
INSERT INTO `videoplays` VALUES ('254', '0', '204', 'FEVER', 'FEVER', 'resources/videos/1529420068076/1529420094167.mp4');
INSERT INTO `videoplays` VALUES ('255', '0', '205', '娱乐天空', '', 'resources/videos/1529420374315/1529420410507.mp4');
INSERT INTO `videoplays` VALUES ('302', '0', '252', 'A Sky Full Of Stars（蓝光）', 'A Sky Full Of Stars', 'resources/videos/1529421721498/1529421783648.mp4');
INSERT INTO `videoplays` VALUES ('303', '0', '253', '西部世界', '  S1 01  ', 'resources/videos/1529426639250/1529426739009.mp4');
INSERT INTO `videoplays` VALUES ('304', '0', '253', '西部世界', '  S1 02  ', 'resources/videos/1529426639250/1529426817198.mp4');
INSERT INTO `videoplays` VALUES ('305', '0', '253', '西部世界', '  S1 03  ', 'resources/videos/1529426639250/1529426897142.mp4');
INSERT INTO `videoplays` VALUES ('306', '0', '253', '西部世界', '  S1 04  ', 'resources/videos/1529426639250/1529426984379.mp4');
INSERT INTO `videoplays` VALUES ('307', '0', '253', '西部世界', '  S1 05  ', 'resources/videos/1529426639250/1529427283293.mp4');
INSERT INTO `videoplays` VALUES ('308', '0', '253', '西部世界', '  S1 06  ', 'resources/videos/1529426639250/1529427356644.mp4');
INSERT INTO `videoplays` VALUES ('309', '0', '253', '西部世界', '  S1 07  ', 'resources/videos/1529426639250/1529427443557.mp4');
INSERT INTO `videoplays` VALUES ('310', '0', '253', '西部世界', '  S1 08  ', 'resources/videos/1529426639250/1529427573380.mp4');
INSERT INTO `videoplays` VALUES ('311', '0', '253', '西部世界', '  S1 09  ', 'resources/videos/1529426639250/1529427659519.mp4');
INSERT INTO `videoplays` VALUES ('312', '0', '253', '西部世界', '  S1 10  ', 'resources/videos/1529426639250/1529427778366.mp4');
INSERT INTO `videoplays` VALUES ('352', '0', '10', '东京食尸鬼S3', '第 01 集', 'resources/videos/1529407943696/1529475494077.mp4');
INSERT INTO `videoplays` VALUES ('402', '0', '8', '刀剑神域S1', '第 01 集', 'resources/videos/1529407884697/1529475909522.mp4');
INSERT INTO `videoplays` VALUES ('403', '0', '8', '刀剑神域S1', '第 02 集', 'resources/videos/1529407884697/1529475924792.mp4');
INSERT INTO `videoplays` VALUES ('404', '0', '8', '刀剑神域S1', '第 03 集', 'resources/videos/1529407884697/1529475941313.mp4');
INSERT INTO `videoplays` VALUES ('405', '0', '8', '刀剑神域S1', '第 04 集', 'resources/videos/1529407884697/1529475956100.mp4');
INSERT INTO `videoplays` VALUES ('406', '0', '8', '刀剑神域S1', '第 05 集', 'resources/videos/1529407884697/1529475972132.mp4');
INSERT INTO `videoplays` VALUES ('407', '0', '8', '刀剑神域S1', '第 06 集', 'resources/videos/1529407884697/1529475987614.mp4');
INSERT INTO `videoplays` VALUES ('408', '0', '8', '刀剑神域S1', '第 07 集', 'resources/videos/1529407884697/1529476005039.mp4');
INSERT INTO `videoplays` VALUES ('409', '0', '8', '刀剑神域S1', '第 08 集', 'resources/videos/1529407884697/1529476020211.mp4');
INSERT INTO `videoplays` VALUES ('410', '0', '8', '刀剑神域S1', '第 09 集', 'resources/videos/1529407884697/1529476034254.mp4');
INSERT INTO `videoplays` VALUES ('411', '0', '8', '刀剑神域S1', '第 10 集', 'resources/videos/1529407884697/1529476043293.mp4');
INSERT INTO `videoplays` VALUES ('412', '0', '8', '刀剑神域S1', '第 11 集', 'resources/videos/1529407884697/1529476057300.mp4');
INSERT INTO `videoplays` VALUES ('413', '0', '8', '刀剑神域S1', '第 12 集', 'resources/videos/1529407884697/1529476077051.mp4');
INSERT INTO `videoplays` VALUES ('414', '0', '8', '刀剑神域S1', '第 13 集', 'resources/videos/1529407884697/1529476092094.mp4');
INSERT INTO `videoplays` VALUES ('415', '0', '8', '刀剑神域S1', '第 14 集', 'resources/videos/1529407884697/1529476109723.mp4');
INSERT INTO `videoplays` VALUES ('416', '0', '10', '东京食尸鬼S3', '第 02 集', 'resources/videos/1529407943696/1529476133079.mp4');
INSERT INTO `videoplays` VALUES ('417', '0', '10', '东京食尸鬼S3', '第 03 集', 'resources/videos/1529407943696/1529476143601.mp4');
INSERT INTO `videoplays` VALUES ('418', '0', '10', '东京食尸鬼S3', '第 04 集', 'resources/videos/1529407943696/1529476154821.mp4');
INSERT INTO `videoplays` VALUES ('419', '0', '10', '东京食尸鬼S3', '第 05 集', 'resources/videos/1529407943696/1529476166403.mp4');
INSERT INTO `videoplays` VALUES ('420', '0', '10', '东京食尸鬼S3', '第 06 集', 'resources/videos/1529407943696/1529476177551.mp4');
INSERT INTO `videoplays` VALUES ('421', '0', '10', '东京食尸鬼S3', '第 07 集', 'resources/videos/1529407943696/1529476185847.mp4');
INSERT INTO `videoplays` VALUES ('422', '0', '10', '东京食尸鬼S3', '第 08 集', 'resources/videos/1529407943696/1529476195959.mp4');
INSERT INTO `videoplays` VALUES ('423', '0', '10', '东京食尸鬼S3', '第 09 集', 'resources/videos/1529407943696/1529476206705.mp4');
INSERT INTO `videoplays` VALUES ('424', '0', '10', '东京食尸鬼S3', '第 10 集', 'resources/videos/1529407943696/1529476217469.mp4');
INSERT INTO `videoplays` VALUES ('425', '0', '10', '东京食尸鬼S3', '第 11 集', 'resources/videos/1529407943696/1529476228493.mp4');
INSERT INTO `videoplays` VALUES ('426', '0', '10', '东京食尸鬼S3', '第 12 集', 'resources/videos/1529407943696/1529476238993.mp4');
INSERT INTO `videoplays` VALUES ('427', '0', '10', '东京食尸鬼S3', '第 13 集', 'resources/videos/1529407943696/1529476249185.mp4');
INSERT INTO `videoplays` VALUES ('428', '0', '11', '进击的巨人S1', '第 01 集', 'resources/videos/1529407964031/1529476637249.mp4');
INSERT INTO `videoplays` VALUES ('429', '0', '11', '进击的巨人S1', '第 02 集', 'resources/videos/1529407964031/1529476651693.mp4');
INSERT INTO `videoplays` VALUES ('430', '0', '11', '进击的巨人S1', '第 03 集', 'resources/videos/1529407964031/1529476665470.mp4');
INSERT INTO `videoplays` VALUES ('431', '0', '11', '进击的巨人S1', '第 04 集', 'resources/videos/1529407964031/1529476679703.mp4');
INSERT INTO `videoplays` VALUES ('432', '0', '11', '进击的巨人S1', '第 05 集', 'resources/videos/1529407964031/1529476692979.mp4');
INSERT INTO `videoplays` VALUES ('433', '0', '11', '进击的巨人S1', '第 06 集', 'resources/videos/1529407964031/1529476709397.mp4');
INSERT INTO `videoplays` VALUES ('434', '0', '11', '进击的巨人S1', '第 07 集', 'resources/videos/1529407964031/1529476725777.mp4');
INSERT INTO `videoplays` VALUES ('435', '0', '11', '进击的巨人S1', '第 08 集', 'resources/videos/1529407964031/1529476738475.mp4');
INSERT INTO `videoplays` VALUES ('436', '0', '11', '进击的巨人S1', '第 09 集', 'resources/videos/1529407964031/1529476756865.mp4');

-- ----------------------------
-- Table structure for videoplays_id
-- ----------------------------
DROP TABLE IF EXISTS `videoplays_id`;
CREATE TABLE `videoplays_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of videoplays_id
-- ----------------------------
INSERT INTO `videoplays_id` VALUES ('501');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` bigint(20) NOT NULL,
  `videoAbstract` varchar(255) DEFAULT NULL,
  `videoActs` varchar(255) DEFAULT NULL,
  `videoFilesrUrl` varchar(255) DEFAULT NULL,
  `videoMaker` varchar(255) DEFAULT NULL,
  `videoMenu` varchar(255) DEFAULT NULL,
  `videoName` varchar(255) DEFAULT NULL,
  `videoPhotoUrl` varchar(255) DEFAULT NULL,
  `videoPlayId` bigint(20) NOT NULL,
  `videoPlaySum` int(11) NOT NULL,
  `videoViewSum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES ('1', '一股突如其来的强大邪恶势力对地球造成致命威胁，没有任何一个超级英雄能够单独抵挡。长期致力于保护全球安危的神盾局感到措手不及，其指挥官“独眼侠”尼克·弗瑞（塞缪尔·杰克逊 饰）意识到他必须创建一个“史上最强”的联盟组织，云集各方超级英雄一起发威，才能拯救世界于水深火热，抵御黑暗势力的侵袭。', '钢铁侠（小罗伯特·唐尼 饰）、美国队长（克里斯·埃文斯 饰）、雷神（克里斯·海姆斯沃斯 饰）、绿巨人（马克·鲁弗洛 饰）、黑寡妇（斯嘉丽·约翰逊 饰）和鹰眼侠（杰瑞米·雷纳 饰）', 'resources/videos/1529407662022', '乔斯·韦登', 'movie', '复仇者联盟1', 'resources/videos/1529407662022/cover.jpg', '0', '1', '1');
INSERT INTO `videos` VALUES ('2', '托尼·史塔克（小罗伯特·唐尼饰）出生在纽约一个富豪家庭，从小衣来伸手饭来张口的他，并未像所有的纨绔子弟那般只知道享乐胡闹。天生聪慧的史塔克却是个出奇的天才，17岁毕业于麻省理工大学电力工程系，并以傲人的成绩成功找到了自己的社会定位——其家族企业史塔克军火公司的新老板。', '小罗伯特唐尼', 'resources/videos/1529407687555', '乔恩·费儒', 'movie', '钢铁侠1', 'resources/videos/1529407687555/cover.jpg', '0', '1', '2');
INSERT INTO `videos` VALUES ('3', '故事讲述小罗伯特·唐尼 剧照 剧照 扮演的亿万富翁发明家托尼·斯塔克，因为公布了自己钢铁侠的身份，造成许多混乱，导致媒体、舆论和政府各界不断施压，希望能释出他的专业军事技术。但唐尼为避免公开钢铁侠秘密后，会遭不肖人士利用。于是，唐尼凭借小辣椒波兹（格温妮丝·帕特洛饰）以及罗德上校（唐·钱德尔饰）的协助，合力对抗由米基·洛克扮演的强大新兴恶势力。', '小罗伯特·唐尼，米基·洛克，斯嘉丽·约翰逊，格温妮斯·帕特洛，山姆·洛克威尔，唐·钱德尔，塞缪尔·杰克逊，乔恩·费儒', 'resources/videos/1529407716961', '乔恩·费儒', 'movie', '钢铁侠2', 'resources/videos/1529407716961/cover.jpg', '0', '1', '4');
INSERT INTO `videos` VALUES ('4', '黑豹回到家乡，那个与世隔绝、技术先进的非洲国家瓦坎达。多年前因为一块巨大的陨石坠落到瓦坎达，从而为这个国家带来了稀有的吸音金属，这种有军事作用的金属矿藏吸引了众多外国匪徒前来掠夺，特查拉在危急时刻就会化身超级英雄黑豹保护自己的国家，正邪之战永远不会停息，他将顶替去世的父亲成为国王，但是，无论作为黑豹还是国王，特查拉的勇气都遭遇了考验，他也被卷入了一场将瓦坎达和整个世界置于险境的冲突之中 ', '查德维克·博斯曼，迈克尔·B·乔丹，露皮塔·尼永奥，达娜·古瑞拉，马丁·弗瑞曼，丹尼尔·卡卢亚，莱蒂希娅·赖特', 'resources/videos/1529407734424', '瑞恩·库格勒', 'movie', '黑豹', 'resources/videos/1529407734424/cover.jpg', '0', '1', '1');
INSERT INTO `videos` VALUES ('5', '《雷神》的故事发生在现今的地球以及艾斯卡的奇幻世界。故事的中心人物是拥有强大神力的雷神托尔（Thor），但是他自大鲁莽的行为掀起了一场古老的战争，他也因此被贬入凡间作为惩罚，被迫与人类一同生活。托尔必须学会如何成为一个真正的英雄，才能对抗来自神界的强大黑暗势力。《雷神》一片探讨一个人的传奇冒险，他从一个傲慢自大的神界王位继承人被贬入凡间，他必须成为一名超级英雄才能登上王位。', '克里斯·海姆斯沃斯，汤姆·希德勒斯顿，娜塔丽·波特曼，安东尼·霍普金斯', 'resources/videos/1529407753062', '肯尼思·布拉纳', 'movie', '雷神1', 'resources/videos/1529407753062/cover.jpg', '0', '1', '1');
INSERT INTO `videos` VALUES ('6', '该片改编自同名漫画作品，以二战时期为背景，讲述了一个叫做史蒂夫·罗杰斯的年轻人参加美军秘密试验，在被注射了超级士兵的血清后成为“美国队长”，与纳粹展开对抗的故事', '克里斯·埃文斯，海莉·阿特维尔，塞巴斯蒂安·斯坦，雨果·维文', 'resources/videos/1529407774381', '乔·庄斯顿', 'movie', '美国队长', 'resources/videos/1529407774381/cover.jpg', '0', '1', '1');
INSERT INTO `videos` VALUES ('7', '故事讲述科学家布鲁斯·班纳（爱德华·诺顿饰）继续绝望地寻找能治愈他那被γ辐射毒害的体内细胞之疗法，以及解除那蕴藏体内、不受约束的另一个自己──绿巨人。 无敌浩克的剧照 无敌浩克的剧照(20张) 活在孤独及没有爱人的阴霾之下，布斯在治疗过程中还需过五关斩六将，一方面需逃避不断找寻他、扰人的复仇者霹雳将军罗斯（威廉·赫特饰）；另一方面要逃离一直欲捉拿他、利用他的异能之残暴军方。', '爱德华·诺顿', 'resources/videos/1529407798211', '路易斯·莱特里尔', 'movie', '无敌浩克（绿巨人）', 'resources/videos/1529407798211/cover.jpg', '0', '1', '1');
INSERT INTO `videos` VALUES ('8', '“这虽然是游戏，但可不是闹着玩的。”——“刀剑神域（Sword Art Online）”设计者茅场晶彦。', '你知道的！', 'resources/videos/1529407884697', '川原砾', 'anime', '刀剑神域S1', 'resources/videos/1529407884697/cover.jpg', '0', '14', '3');
INSERT INTO `videos` VALUES ('9', '在从便利商店回家的路上，突然被异世界召唤的少年菜月昴。在无法依靠任何东西的异世界，无力的少年手唯一的力量……那是“死去然后重新开始”的力量。为了守护最重要的人们，为了取回确实存在着又无可替代的时间，少年抗拒着绝望，勇敢地面对着残酷的命运。', '菜月昴', 'resources/videos/1529407918692', '渡边政治', 'anime', 'Re:从零开始的异世界生活', 'resources/videos/1529407918692/cover.jpg', '0', '25', '9');
INSERT INTO `videos` VALUES ('10', '在漫画第一部故事发生时的很久存在喰种组织。来源于3区，后漫延到4区。最后牵连到整个东京。当年的壁虎(大守八云)就是因为了解有关这个组织的一些事情所以被活捉，关进收容所被那个变态搜查官虐待拷问的。', '很多 你说那个？', 'resources/videos/1529407943696', 'Commission of Counter Ghoul', 'anime', '东京食尸鬼S3', 'resources/videos/1529407943696/cover.jpg', '0', '13', '0');
INSERT INTO `videos` VALUES ('11', '107年前（743年），世界上突然出现了人类的天敌“巨人”。面临着生存 单行本封面 单行本封面(13张)  危机而残存下来的人类逃到了一个地方，盖起了三重巨大的城墙。人们在这隔绝的环境里享受了一百多年的和平，直到艾伦·耶格尔十岁那年，60米高的“超大型巨人”突然出现', '艾伦·耶格尔', 'resources/videos/1529407964031', '谏山创', 'anime', '进击的巨人S1', 'resources/videos/1529407964031/cover.jpg', '0', '9', '4');
INSERT INTO `videos` VALUES ('12', '三年前的一天偶然遇到了要对淘气少年下杀手的异变螃蟹人后，回忆起年少年时“想要成为英雄”的梦想，最终拼尽全力救下了淘气少年。重拾对于成为英雄的兴趣之后，通过拼命锻炼，埼玉终于脱胎换骨获得了最强的力量，但同时失去了头发成了光头，似乎还失去了某些感情。', '公埼玉', 'resources/videos/1529407988745', '村田雄介', 'anime', '一拳超人', 'resources/videos/1529407988745/cover.jpg', '0', '18', '2');
INSERT INTO `videos` VALUES ('13', '描述一对在网络上被尊称为“空白”，甚至被认为是都市传说的天才游戏玩家兄妹“空”与“白”。由于不适应名为“人生”这个现实游戏，成为家 里蹲并拥有人群恐惧症的他们，某日收到了来自其他世界，自称是“神”的少年挑衅并被召唤到异世界。那是个战争和暴力皆被神所禁止，由“游戏”决定一切的世 界。', ' 空、白（そら）', 'resources/videos/1529408007487', '榎宫祐', 'anime', '游戏人生', 'resources/videos/1529408007487/cover.jpg', '0', '19', '6');
INSERT INTO `videos` VALUES ('14', '2029年，日本因突然爆发的”Apocalypse Virus（天启病毒）“的蔓延而陷入了混乱之中。处于无政府状态的日本，受到了由超国家之间所组织成的名为“GHQ”的组织的武力介入并接受其统治，东京的六本木更成为被封锁的地区。', ' 樱满集', 'resources/videos/1529408024249', '荒木哲郎', 'anime', '罪恶王冠', 'resources/videos/1529408024249/cover.jpg', '0', '0', '0');
INSERT INTO `videos` VALUES ('103', '这片儿还用我简介？自己看！', '', 'resources/videos/1529415764614', '', 'teleplay', '小猪佩奇', 'resources/videos/1529415764614/cover.jpg', '0', '1', '27');
INSERT INTO `videos` VALUES ('102', '', '李玖哲', 'resources/videos/1529415504912', '', 'music', '解脱', 'resources/videos/1529415504912/cover.jpg', '0', '1', '25');
INSERT INTO `videos` VALUES ('152', '', '痛痒乐队', 'resources/videos/1529416111781', '', 'music', '西湖', 'resources/videos/1529416111781/cover.jpg', '0', '1', '21');
INSERT INTO `videos` VALUES ('153', '', '烟把儿', 'resources/videos/1529416418217', '', 'music', '纸短情长（试听版）', 'resources/videos/1529416418217/cover.jpg', '0', '1', '14');
INSERT INTO `videos` VALUES ('202', '', '周延英', 'resources/videos/1529419408279', '', 'music', '那个人（MV）', 'resources/videos/1529419408279/cover.jpg', '0', '1', '3');
INSERT INTO `videos` VALUES ('203', '', '马融', 'resources/videos/1529419763557', '', 'music', '我是神仙（MV）', 'resources/videos/1529419763557/cover.jpg', '0', '1', '6');
INSERT INTO `videos` VALUES ('204', '', 'THE BLACK KEYS', 'resources/videos/1529420068076', '', 'music', 'FEVER（MV）', 'resources/videos/1529420068076/cover.jpg', '0', '1', '5');
INSERT INTO `videos` VALUES ('205', 'Eason', 'Eason', 'resources/videos/1529420374315', '', 'music', '娱乐天空（MV FHD）', 'resources/videos/1529420374315/cover.jpg', '0', '1', '5');
INSERT INTO `videos` VALUES ('252', '超好看', 'Coldplay', 'resources/videos/1529421721498', '', 'music', 'A Sky Full Of Stars（蓝光）', 'resources/videos/1529421721498/cover.jpg', '0', '1', '6');
INSERT INTO `videos` VALUES ('253', '...', '...', 'resources/videos/1529426639250', '...', 'teleplay', '西部世界', 'resources/videos/1529426639250/cover.jpg', '0', '10', '152');

-- ----------------------------
-- Table structure for videos_id
-- ----------------------------
DROP TABLE IF EXISTS `videos_id`;
CREATE TABLE `videos_id` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of videos_id
-- ----------------------------
INSERT INTO `videos_id` VALUES ('351');
