/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : letseat

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-07-19 14:30:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('7bd0fcc5-d711-4476-bc59-93fd1ff790d6', '美食', '简餐便当');
INSERT INTO `category` VALUES ('267a6eac-094a-4a51-8bc4-319f0c2ac7e6', '午餐', '简餐盖饭');
INSERT INTO `category` VALUES ('22552c88-2888-46d2-9b82-eb871d2db29b', '超市便利', '送货上门');
INSERT INTO `category` VALUES ('be4774af-3f90-4749-adac-00e64af8641d', '果蔬生鲜', '时令水果');
INSERT INTO `category` VALUES ('46571003-e33a-4eba-8808-9fbcbced8efd', '甜品饮品', '低糖饮料');
INSERT INTO `category` VALUES ('f934e364-005c-4923-977f-15725de3fbf8', '晚餐', '稀粥馒头');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `store` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `food_key` (`category_id`),
  CONSTRAINT `food_key` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('2e877436-a90e-45d0-88c1-4dbf4ef89a5d', '鱼香肉丝', '一品香', '30', '32fd4623-fb55-447f-9150-033f3dbf4288timg.jpg', '肉丝啊', '267a6eac-094a-4a51-8bc4-319f0c2ac7e6');
INSERT INTO `food` VALUES ('3fe67686-704a-40ad-83fc-ac645f86f883', '红豆粥', '唐食粥语', '6', 'b33c51ef-dae2-468f-964a-ce6aa29bd90dtimg (1).jpg', '喝的啊', '46571003-e33a-4eba-8808-9fbcbced8efd');
INSERT INTO `food` VALUES ('458b3ce1-5f82-4cd5-bc68-6c3a1dfd3b6d', '小龙虾', '干锅居', '88', '6f120ea6-2dd8-495b-b536-dc0b6df1053dtimg (5).jpg', '88有点贵了好像', '7bd0fcc5-d711-4476-bc59-93fd1ff790d6');
INSERT INTO `food` VALUES ('d235c221-b3f5-4ca8-a415-ff1e396bd2c5', '豚骨拉面', '食堂三楼', '13', '7f07ddae-4a40-4063-90d3-7d29b5291fbatimg (4).jpg', '喝碗拉面兄弟！！', 'f934e364-005c-4923-977f-15725de3fbf8');
INSERT INTO `food` VALUES ('dec618a1-b53c-4c89-85c3-a444166f5c1f', '可乐', '楼下小卖部', '3', '6a7e3e05-a951-4f62-85ee-9a96e82b08e0timg (2).jpg', '宅男快乐水', '22552c88-2888-46d2-9b82-eb871d2db29b');
INSERT INTO `food` VALUES ('ffdf9ad8-241b-49fa-8bbb-23a9d73ce632', '水果捞', '财大水果店', '14', '8c21d596-f012-484e-aeaa-536e4d8e3727timg (3).jpg', '水果啥的', 'be4774af-3f90-4749-adac-00e64af8641d');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` varchar(40) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `order_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `food_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `food_id` (`food_id`),
  CONSTRAINT `food_id` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('02846c9b-73f2-44c2-8fce-5c5a5699e4aa', '1', '14', '5d74f5cd-1b3a-4ee0-8226-afd1c5807d21', 'ffdf9ad8-241b-49fa-8bbb-23a9d73ce632');
INSERT INTO `orderitem` VALUES ('283292ea-ded5-4dbb-8bfe-618ffe4258a5', '1', '6', '8412449e-2fcb-4310-902b-d0d5a43dab06', '3fe67686-704a-40ad-83fc-ac645f86f883');
INSERT INTO `orderitem` VALUES ('411ae4b6-4d7c-4006-b6f9-ecf5623d600f', '1', '6', 'c8f03432-0ae6-4d9e-9e6f-d56bd5f2be62', '3fe67686-704a-40ad-83fc-ac645f86f883');
INSERT INTO `orderitem` VALUES ('4a726cbd-d583-4f94-b9eb-ab715867e830', '1', '6', '5e44c148-1b56-4421-996d-7e0191145428', '3fe67686-704a-40ad-83fc-ac645f86f883');
INSERT INTO `orderitem` VALUES ('7d476e35-23dd-4f68-b6ca-a420733b14a3', '1', '30', 'aacaa93a-d281-4904-95d2-06a225e5973f', '2e877436-a90e-45d0-88c1-4dbf4ef89a5d');
INSERT INTO `orderitem` VALUES ('9e224876-7dd7-4822-8ccd-8037ca4cf294', '1', '30', '5e44c148-1b56-4421-996d-7e0191145428', '2e877436-a90e-45d0-88c1-4dbf4ef89a5d');
INSERT INTO `orderitem` VALUES ('afbb1e9d-dfd3-47e0-81a9-d4bfed23abd4', '1', '30', 'c8f03432-0ae6-4d9e-9e6f-d56bd5f2be62', '2e877436-a90e-45d0-88c1-4dbf4ef89a5d');
INSERT INTO `orderitem` VALUES ('be40b50a-41d0-41a6-9a37-d7bca50348de', '1', '6', 'aacaa93a-d281-4904-95d2-06a225e5973f', '3fe67686-704a-40ad-83fc-ac645f86f883');
INSERT INTO `orderitem` VALUES ('c0c942ca-dccd-49f4-bd41-8381adb48439', '1', '88', '5d74f5cd-1b3a-4ee0-8226-afd1c5807d21', '458b3ce1-5f82-4cd5-bc68-6c3a1dfd3b6d');
INSERT INTO `orderitem` VALUES ('e97b77bc-dce9-45d1-805f-14eb098e7c44', '1', '30', '5d74f5cd-1b3a-4ee0-8226-afd1c5807d21', '2e877436-a90e-45d0-88c1-4dbf4ef89a5d');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ordertime` datetime DEFAULT NULL,
  `price` double DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `user_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`) USING BTREE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('5d74f5cd-1b3a-4ee0-8226-afd1c5807d21', '2018-07-12 15:52:42', '132', '1', '2661000e-d711-4072-a8d6-76e1ca6f1bcc');
INSERT INTO `orders` VALUES ('5e44c148-1b56-4421-996d-7e0191145428', '2018-07-12 13:59:15', '36', '1', '2661000e-d711-4072-a8d6-76e1ca6f1bcc');
INSERT INTO `orders` VALUES ('8412449e-2fcb-4310-902b-d0d5a43dab06', '2018-07-12 14:14:36', '6', '0', '2661000e-d711-4072-a8d6-76e1ca6f1bcc');
INSERT INTO `orders` VALUES ('aacaa93a-d281-4904-95d2-06a225e5973f', '2018-07-12 13:57:31', '36', '0', '2661000e-d711-4072-a8d6-76e1ca6f1bcc');
INSERT INTO `orders` VALUES ('c8f03432-0ae6-4d9e-9e6f-d56bd5f2be62', '2018-07-12 13:57:37', '36', '0', '2661000e-d711-4072-a8d6-76e1ca6f1bcc');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `cellphone` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2661000e-d711-4072-a8d6-76e1ca6f1bcc', 'zpc', '123', '13500615010', '1312313', '呼和浩特市内蒙古财经大学', '764222184@qq.com');
