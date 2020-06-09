/*
MySQL Backup
Source Server Version: 8.0.17
Source Database: react_blog
Date: 2020/6/9 15:44:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `article_content` text NOT NULL,
  `introduce` text,
  `addTime` int(11) DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `typeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderNum` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `admin_user` VALUES ('1','xluobo','123456');
INSERT INTO `article` VALUES ('1','小萝卜的第一篇技术文章','## 欢迎来到小萝卜的个人博客\n` console.log(\'welcome here\')`  \n  \n&nbsp;&nbsp;小萝卜是一名前端技术爱好者，也是一名研究生二年级的计算机系学生，小萝卜要好好学习前端技术！','欢迎来到小萝卜的个人博客','1591632000','1030','9'), ('2','小萝卜的观影分享','## 小萝卜的观影分享\n**悬疑类**的电影是小萝卜的最爱哦  \n推荐 *彗星来的那一夜*  \n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*恐怖游轮*  \n \n下次在交流！','小萝卜喜欢悬疑电影','1591459200','1087','10');
INSERT INTO `type` VALUES ('爱技术','1','1'), ('爱电影','2','2'), ('留言板','3','3');
