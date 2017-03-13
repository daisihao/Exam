/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : cyexam

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2016-03-18 15:17:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_card
-- ----------------------------
DROP TABLE IF EXISTS `t_card`;
CREATE TABLE `t_card` (
  `CARD_ID` int(11) NOT NULL auto_increment COMMENT '答题卡ID',
  `PAPER_ID` int(11) default NULL COMMENT '试卷编号',
  `STUDENT_ID` int(11) default NULL COMMENT '学生编号',
  `TEACHER_ID` int(11) default NULL COMMENT '阅卷老师ID',
  `CARD_STATUS` int(11) default NULL COMMENT '是否舞弊',
  `CARD_SCORE` int(11) default NULL COMMENT '分数',
  `CARD_BAK1` int(11) default NULL,
  `CARD_BAK2` varchar(255) default NULL,
  `CARD_BAK3` datetime default NULL,
  PRIMARY KEY  (`CARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_card
-- ----------------------------
INSERT INTO `t_card` VALUES ('310', '93', '20', '14', '0', '16', '0', null, null);
INSERT INTO `t_card` VALUES ('312', '93', '30', '14', '0', '48', '0', null, null);
INSERT INTO `t_card` VALUES ('313', '97', '37', '14', '0', '24', '0', null, null);
INSERT INTO `t_card` VALUES ('314', '97', '28', '14', '0', '20', '0', null, null);
INSERT INTO `t_card` VALUES ('315', '97', '36', '14', '0', '26', '0', null, null);
INSERT INTO `t_card` VALUES ('316', '98', '30', '14', '0', '46', '0', null, null);
INSERT INTO `t_card` VALUES ('317', '99', '20', '14', '0', '22', '0', null, null);
INSERT INTO `t_card` VALUES ('318', '100', '37', '14', '0', '22', '0', null, null);
INSERT INTO `t_card` VALUES ('319', '100', '36', '14', '0', '32', '0', null, null);
INSERT INTO `t_card` VALUES ('320', '101', '27', '14', '0', '20', '0', null, null);
INSERT INTO `t_card` VALUES ('321', '105', '37', '14', '0', '36', '0', null, null);
INSERT INTO `t_card` VALUES ('322', '106', '36', '5', '0', '40', '0', null, null);
INSERT INTO `t_card` VALUES ('323', '106', '37', '5', '0', '30', '0', null, null);
INSERT INTO `t_card` VALUES ('324', '109', '30', '14', '0', '36', '0', null, null);

-- ----------------------------
-- Table structure for t_card_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_card_detail`;
CREATE TABLE `t_card_detail` (
  `card_detail_id` int(11) NOT NULL auto_increment,
  `card_id` int(11) default NULL,
  `card_answer` varchar(255) default NULL,
  `true_answer` varchar(255) default NULL,
  PRIMARY KEY  (`card_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_card_detail
-- ----------------------------
INSERT INTO `t_card_detail` VALUES ('706', '310', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('707', '310', 'BC', 'ABCD');
INSERT INTO `t_card_detail` VALUES ('708', '310', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('709', '310', 'B', 'BCD');
INSERT INTO `t_card_detail` VALUES ('710', '310', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('711', '310', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('712', '310', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('713', '310', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('714', '310', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('715', '310', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('716', '310', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('717', '310', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('718', '310', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('719', '310', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('720', '310', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('721', '310', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('722', '310', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('723', '310', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('724', '310', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('725', '310', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('726', '310', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('727', '310', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('728', '310', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('729', '310', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('730', '310', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('731', '310', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('732', '312', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('733', '312', 'C', 'BCD');
INSERT INTO `t_card_detail` VALUES ('734', '312', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('735', '312', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('736', '312', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('737', '312', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('738', '312', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('739', '312', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('740', '312', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('741', '312', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('742', '312', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('743', '312', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('744', '312', 'B', 'ABCD');
INSERT INTO `t_card_detail` VALUES ('745', '312', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('746', '312', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('747', '312', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('748', '312', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('749', '312', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('750', '312', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('751', '312', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('752', '312', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('753', '312', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('754', '312', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('755', '312', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('756', '312', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('757', '312', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('758', '313', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('759', '313', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('760', '313', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('761', '313', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('762', '313', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('763', '313', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('764', '313', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('765', '313', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('766', '313', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('767', '313', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('768', '313', 'AB', 'AB');
INSERT INTO `t_card_detail` VALUES ('769', '313', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('770', '313', 'ABC', 'BCD');
INSERT INTO `t_card_detail` VALUES ('771', '313', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('772', '313', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('773', '313', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('774', '313', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('775', '313', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('776', '313', 'AB', 'AB');
INSERT INTO `t_card_detail` VALUES ('777', '313', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('778', '313', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('779', '313', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('780', '313', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('781', '313', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('782', '313', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('783', '313', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('784', '314', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('785', '314', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('786', '314', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('787', '314', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('788', '314', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('789', '314', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('790', '314', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('791', '314', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('792', '314', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('793', '314', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('794', '314', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('795', '314', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('796', '314', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('797', '314', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('798', '314', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('799', '314', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('800', '314', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('801', '314', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('802', '314', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('803', '314', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('804', '314', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('805', '314', 'BC', 'BCD');
INSERT INTO `t_card_detail` VALUES ('806', '314', 'CD', 'AB');
INSERT INTO `t_card_detail` VALUES ('807', '314', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('808', '314', 'ABC', 'AB');
INSERT INTO `t_card_detail` VALUES ('809', '314', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('810', '315', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('811', '315', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('812', '315', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('813', '315', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('814', '315', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('815', '315', 'BC', 'AB');
INSERT INTO `t_card_detail` VALUES ('816', '315', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('817', '315', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('818', '315', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('819', '315', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('820', '315', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('821', '315', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('822', '315', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('823', '315', 'BC', 'BCD');
INSERT INTO `t_card_detail` VALUES ('824', '315', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('825', '315', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('826', '315', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('827', '315', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('828', '315', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('829', '315', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('830', '315', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('831', '315', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('832', '315', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('833', '315', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('834', '315', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('835', '315', 'ABD', 'AB');
INSERT INTO `t_card_detail` VALUES ('836', '316', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('837', '316', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('838', '316', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('839', '316', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('840', '316', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('841', '316', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('842', '316', 'D', 'D');
INSERT INTO `t_card_detail` VALUES ('843', '316', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('844', '316', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('845', '316', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('846', '316', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('847', '316', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('848', '316', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('849', '316', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('850', '316', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('851', '316', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('852', '316', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('853', '316', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('854', '316', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('855', '316', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('856', '316', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('857', '316', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('858', '316', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('859', '316', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('860', '316', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('861', '316', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('862', '317', 'ABD', 'ABC');
INSERT INTO `t_card_detail` VALUES ('863', '317', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('864', '317', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('865', '317', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('866', '317', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('867', '317', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('868', '317', 'B', '');
INSERT INTO `t_card_detail` VALUES ('869', '317', 'BC', 'AB');
INSERT INTO `t_card_detail` VALUES ('870', '317', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('871', '317', 'ABD', 'AD');
INSERT INTO `t_card_detail` VALUES ('872', '317', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('873', '317', 'ABC', 'BCD');
INSERT INTO `t_card_detail` VALUES ('874', '317', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('875', '317', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('876', '317', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('877', '317', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('878', '317', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('879', '317', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('880', '317', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('881', '317', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('882', '317', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('883', '317', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('884', '317', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('885', '317', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('886', '317', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('887', '317', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('888', '318', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('889', '318', 'AB', 'ABCD');
INSERT INTO `t_card_detail` VALUES ('890', '318', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('891', '318', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('892', '318', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('893', '318', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('894', '318', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('895', '318', 'AB', 'ABC');
INSERT INTO `t_card_detail` VALUES ('896', '318', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('897', '318', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('898', '318', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('899', '318', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('900', '318', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('901', '318', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('902', '318', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('903', '318', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('904', '318', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('905', '318', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('906', '318', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('907', '318', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('908', '318', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('909', '318', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('910', '318', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('911', '318', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('912', '318', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('913', '318', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('914', '319', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('915', '319', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('916', '319', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('917', '319', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('918', '319', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('919', '319', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('920', '319', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('921', '319', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('922', '319', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('923', '319', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('924', '319', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('925', '319', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('926', '319', 'ABC', 'ABCD');
INSERT INTO `t_card_detail` VALUES ('927', '319', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('928', '319', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('929', '319', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('930', '319', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('931', '319', 'D', 'D');
INSERT INTO `t_card_detail` VALUES ('932', '319', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('933', '319', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('934', '319', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('935', '319', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('936', '319', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('937', '319', 'BCD', 'ABC');
INSERT INTO `t_card_detail` VALUES ('938', '319', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('939', '319', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('940', '320', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('941', '320', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('942', '320', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('943', '320', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('944', '320', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('945', '320', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('946', '320', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('947', '320', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('948', '320', 'BC', 'AD');
INSERT INTO `t_card_detail` VALUES ('949', '320', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('950', '320', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('951', '320', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('952', '320', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('953', '320', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('954', '320', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('955', '320', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('956', '320', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('957', '320', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('958', '320', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('959', '320', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('960', '320', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('961', '320', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('962', '320', 'CD', 'BCD');
INSERT INTO `t_card_detail` VALUES ('963', '320', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('964', '320', 'D', 'B');
INSERT INTO `t_card_detail` VALUES ('965', '320', 'D', 'B');
INSERT INTO `t_card_detail` VALUES ('966', '321', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('967', '321', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('968', '321', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('969', '321', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('970', '321', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('971', '321', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('972', '321', 'AB', 'AB');
INSERT INTO `t_card_detail` VALUES ('973', '321', 'B', 'A  ');
INSERT INTO `t_card_detail` VALUES ('974', '321', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('975', '321', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('976', '321', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('977', '321', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('978', '321', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('979', '321', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('980', '321', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('981', '321', 'A', 'A  ');
INSERT INTO `t_card_detail` VALUES ('982', '321', 'A', 'A  ');
INSERT INTO `t_card_detail` VALUES ('983', '321', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('984', '321', 'ABC', 'ABC');
INSERT INTO `t_card_detail` VALUES ('985', '321', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('986', '321', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('987', '321', 'AB', 'AB');
INSERT INTO `t_card_detail` VALUES ('988', '321', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('989', '321', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('990', '321', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('991', '321', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('992', '322', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('993', '322', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('994', '322', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('995', '322', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('996', '322', 'BCD', 'CD');
INSERT INTO `t_card_detail` VALUES ('997', '322', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('998', '322', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('999', '322', 'ABC', 'D');
INSERT INTO `t_card_detail` VALUES ('1000', '322', 'B', 'AD');
INSERT INTO `t_card_detail` VALUES ('1001', '322', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('1002', '322', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('1003', '322', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('1004', '322', 'D', 'B');
INSERT INTO `t_card_detail` VALUES ('1005', '322', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('1006', '322', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('1007', '322', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('1008', '322', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('1009', '322', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('1010', '322', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('1011', '322', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('1012', '322', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('1013', '322', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('1014', '322', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('1015', '322', 'AC', 'D');
INSERT INTO `t_card_detail` VALUES ('1016', '322', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('1017', '322', 'D', 'ACD');
INSERT INTO `t_card_detail` VALUES ('1018', '323', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('1019', '323', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('1020', '323', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('1021', '323', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('1022', '323', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('1023', '323', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('1024', '323', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('1025', '323', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('1026', '323', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('1027', '323', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('1028', '323', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('1029', '323', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('1030', '323', 'BC', 'D');
INSERT INTO `t_card_detail` VALUES ('1031', '323', 'B', 'ACD');
INSERT INTO `t_card_detail` VALUES ('1032', '323', 'C', 'C');
INSERT INTO `t_card_detail` VALUES ('1033', '323', 'BC', 'C');
INSERT INTO `t_card_detail` VALUES ('1034', '323', 'B', 'CD');
INSERT INTO `t_card_detail` VALUES ('1035', '323', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('1036', '323', 'D', 'D');
INSERT INTO `t_card_detail` VALUES ('1037', '323', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('1038', '323', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('1039', '323', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('1040', '323', 'C', 'A');
INSERT INTO `t_card_detail` VALUES ('1041', '323', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('1042', '323', 'BC', 'B');
INSERT INTO `t_card_detail` VALUES ('1043', '323', 'D', 'B');
INSERT INTO `t_card_detail` VALUES ('1044', '324', 'A', 'A');
INSERT INTO `t_card_detail` VALUES ('1045', '324', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('1046', '324', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('1047', '324', 'A', 'D');
INSERT INTO `t_card_detail` VALUES ('1048', '324', 'B', 'A');
INSERT INTO `t_card_detail` VALUES ('1049', '324', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('1050', '324', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('1051', '324', 'A', 'C');
INSERT INTO `t_card_detail` VALUES ('1052', '324', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('1053', '324', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('1054', '324', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('1055', '324', 'B', 'B');
INSERT INTO `t_card_detail` VALUES ('1056', '324', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('1057', '324', 'A', 'B');
INSERT INTO `t_card_detail` VALUES ('1058', '324', 'B', 'C');
INSERT INTO `t_card_detail` VALUES ('1059', '324', 'B', 'D');
INSERT INTO `t_card_detail` VALUES ('1060', '324', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('1061', '324', 'C', 'B');
INSERT INTO `t_card_detail` VALUES ('1062', '324', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('1063', '324', 'D', 'A');
INSERT INTO `t_card_detail` VALUES ('1064', '324', 'D', 'D');
INSERT INTO `t_card_detail` VALUES ('1065', '324', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('1066', '324', 'D', 'B');
INSERT INTO `t_card_detail` VALUES ('1067', '324', 'C', 'D');
INSERT INTO `t_card_detail` VALUES ('1068', '324', 'D', 'C');
INSERT INTO `t_card_detail` VALUES ('1069', '324', 'D', 'D');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `DEPARTMENT_ID` int(11) NOT NULL auto_increment,
  `DEPARTMENT_NAME` varchar(255) default NULL,
  `DEPARTMENT_ADDRESS` varchar(255) default NULL,
  `DEPARTMENT_MGR` int(11) default NULL,
  `DEPARTMENT_TELPHONE` varchar(255) default NULL,
  `DEPARTMENT_BAK1` int(11) default NULL,
  `DEPARTMENT_BAK2` varchar(255) default NULL,
  `DEPARTMENT_BAK3` datetime default NULL,
  PRIMARY KEY  (`DEPARTMENT_ID`),
  KEY `FK_MGR_TEACHER_ID` USING BTREE (`DEPARTMENT_MGR`),
  CONSTRAINT `t_department_ibfk_1` FOREIGN KEY (`DEPARTMENT_MGR`) REFERENCES `t_teacher` (`TEACHER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('1', '蓝桥杯软件学院', '北京市大兴区大族企业园', '14', '010-68683665', null, null, null);

-- ----------------------------
-- Table structure for t_examinee
-- ----------------------------
DROP TABLE IF EXISTS `t_examinee`;
CREATE TABLE `t_examinee` (
  `EXAMINEE_ID` int(11) NOT NULL auto_increment,
  `STUDENT_ID` int(11) default NULL,
  `PAPER_ID` int(11) default NULL,
  PRIMARY KEY  (`EXAMINEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_examinee
-- ----------------------------
INSERT INTO `t_examinee` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for t_major
-- ----------------------------
DROP TABLE IF EXISTS `t_major`;
CREATE TABLE `t_major` (
  `MAJOR_ID` int(11) NOT NULL auto_increment COMMENT '专业ID',
  `MAJOR_NAME` varchar(100) default NULL COMMENT '专业名称',
  `MAJOR_DESCRIBE` varchar(255) default '' COMMENT '专业描述',
  `MAJOR_DEPARTMENT` int(255) default NULL COMMENT '专业所属院系',
  `MAJOR_BAK1` int(11) default NULL COMMENT '备用字段',
  `MAJOR_BAK2` varchar(255) default NULL COMMENT '备用字段',
  `MAJOR_BAK3` datetime default NULL COMMENT '备用字段',
  PRIMARY KEY  (`MAJOR_ID`),
  KEY `FK_MAJOR_DEPARTMENT_ID` USING BTREE (`MAJOR_DEPARTMENT`),
  CONSTRAINT `t_major_ibfk_1` FOREIGN KEY (`MAJOR_DEPARTMENT`) REFERENCES `t_department` (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_major
-- ----------------------------
INSERT INTO `t_major` VALUES ('1', '软工1201班', null, null, null, null, null);
INSERT INTO `t_major` VALUES ('2', '软工1202班', null, null, null, null, null);
INSERT INTO `t_major` VALUES ('3', '软件1311班', null, null, null, null, null);
INSERT INTO `t_major` VALUES ('4', '电科1201班', '', null, null, null, null);
INSERT INTO `t_major` VALUES ('5', '计科1202班', '', null, null, null, null);
INSERT INTO `t_major` VALUES ('6', '嵌入1311班', '', null, null, null, null);
INSERT INTO `t_major` VALUES ('7', '电信1201班', '', null, null, null, null);
INSERT INTO `t_major` VALUES ('8', '教技1201班', '', null, null, null, null);
INSERT INTO `t_major` VALUES ('9', '网工1201班', '', null, null, null, null);
INSERT INTO `t_major` VALUES ('10', '软件1301班', '', null, null, null, null);

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` int(11) NOT NULL auto_increment COMMENT '菜单编号',
  `MENU_NAME` varchar(45) default NULL COMMENT '菜单名',
  `MENU_P_ID` int(11) default NULL COMMENT '父菜单号',
  `MENU_ACTION` varchar(127) default NULL COMMENT '菜单动作',
  `MENU_ICON` varchar(127) default NULL COMMENT '菜单图标',
  `MENU_DISPALY` varchar(45) default NULL COMMENT '菜单显示（显示、隐藏）',
  `MENU_SORT` int(11) default NULL,
  `MENU_BAK1` int(255) default NULL,
  `MENU_BAK2` varchar(255) default NULL,
  `MENU_BAK3` datetime default NULL,
  PRIMARY KEY  (`MENU_ID`),
  KEY `FK_MENU_PID` USING BTREE (`MENU_P_ID`),
  CONSTRAINT `t_menu_ibfk_1` FOREIGN KEY (`MENU_P_ID`) REFERENCES `t_menu` (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '系统后台', null, '/admin/default', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('2', '学生管理', '1', '/admin/student', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('3', '考生管理', '1', '/admin/examinee', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('4', '题库管理                      ', '1', '/admin/question', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('5', '试卷管理', '1', '/admin/paper', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('6', '阅卷管理', '1', '/admin/test', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('7', '教师管理', '1', '/admin/teacher', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('8', '系统设置', '1', '/admin/system', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('9', '修改密码', '8', '/admin/system/xgmm', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('10', '退出系统', '8', '/admin/system/exit', null, '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('11', '添加题库', '4', '/admin/question/add', null, '1', null, null, null, null);

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper` (
  `PAPER_ID` int(4) NOT NULL auto_increment COMMENT '主键',
  `PAPER_NO` varchar(255) default NULL COMMENT '试卷编号',
  `PAPER_BEGIN_DATE` datetime default NULL COMMENT '考试日期',
  `PAPER_BEGIN_TIME` datetime default NULL COMMENT '考试开始时间，例如：9',
  `PAPER_TOTAL_SCORE` int(11) default '100' COMMENT '考试总分数',
  `PAPER_TOTAL_TIME` int(11) default NULL COMMENT '考试时长，单位秒',
  `PAPER_DIFFICULTY` varchar(20) default NULL COMMENT '试卷难易度，低·中·高',
  `PAPER_TYPE` varchar(45) default NULL COMMENT '试卷类型,机试、笔试',
  `PAPER_DECLARE_RULE` text COMMENT '考场规则',
  `PAPER_STATUS` int(11) default '1' COMMENT '1可用 0 禁用',
  `TEACHER_ID` int(4) default NULL COMMENT '出题者ID，来自老师表',
  `PAPER_CREATE_TIME` datetime default NULL COMMENT '试卷生成日期',
  `PAPER_BAK1` int(4) default NULL COMMENT '备用字段1',
  `PAPER_BAK2` varchar(45) default NULL COMMENT '备用字段2',
  `PAPER_BAK3` datetime default NULL COMMENT '备用字段3',
  PRIMARY KEY  (`PAPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES ('93', '20150815203613', '2015-08-15 21:04:00', null, '100', '90', '中', '机试', 'java', '1', '14', '2015-08-15 00:00:00', '2', '23:40:58', null);
INSERT INTO `t_paper` VALUES ('94', '20150816075240', '2015-08-16 00:00:00', null, '100', '90', '低', '机试', '考试A', '1', '14', '2015-08-16 00:00:00', '1', '07:00:00', null);
INSERT INTO `t_paper` VALUES ('95', '20150816075321', '2015-08-16 00:00:00', null, '100', '90', '低', '机试', '考试B', '1', '14', '2015-08-16 00:00:00', '1', '07:48:55', null);
INSERT INTO `t_paper` VALUES ('96', '20150816075746', '2015-08-16 00:00:00', null, '100', '90', '低', '机试', '考试A', '1', '14', '2015-08-16 00:00:00', '2', '12:42:00', null);
INSERT INTO `t_paper` VALUES ('97', '20150816075819', '2015-08-16 00:00:00', null, '100', '90', '低', '机试', '考试B', '1', '14', '2015-08-16 00:00:00', '2', '07:53:00', null);
INSERT INTO `t_paper` VALUES ('98', '20150816084755', '2015-08-16 00:00:00', null, '100', '90', '低', '机试', '测试A', '1', '14', '2015-08-16 00:00:00', '2', '08:45:18', null);
INSERT INTO `t_paper` VALUES ('99', '20150816102045', '2015-08-16 00:00:00', null, '100', '90', '低', '机试', 'java111', '1', '14', '2015-08-16 00:00:00', '2', '10:19:48', null);
INSERT INTO `t_paper` VALUES ('100', '20150816152943', '2015-08-16 00:00:00', null, '100', '90', '中', '机试', '试卷测试', '1', '14', '2015-08-16 00:00:00', '2', '15:30:00', null);
INSERT INTO `t_paper` VALUES ('101', '20150816170943', '2015-08-16 00:00:00', null, '100', '90', '低', '机试', 'jsp期末考试', '1', '14', '2015-08-16 00:00:00', '1', '17:09:15', null);
INSERT INTO `t_paper` VALUES ('102', '20150817195605', '2015-08-17 00:00:00', null, '100', '90', '低', '机试', '瞅你咋滴', '1', '14', '2015-08-17 00:00:00', '2', '19:40:36', null);
INSERT INTO `t_paper` VALUES ('103', '20150817195639', '2015-08-18 00:00:00', null, '100', '90', '低', '机试', '再瞅试试', '1', '14', '2015-08-17 00:00:00', '2', '11:40:36', null);
INSERT INTO `t_paper` VALUES ('104', '20150817195706', '2015-08-17 00:00:00', null, '100', '90', '低', '机试', '试试就试试', '1', '14', '2015-08-17 00:00:00', '2', '19:56:55', null);
INSERT INTO `t_paper` VALUES ('105', '20150817202854', '2015-08-17 00:00:00', null, '100', '90', '低', '机试', '完工', '1', '14', '2015-08-17 00:00:00', '2', '20:28:43', null);
INSERT INTO `t_paper` VALUES ('106', '20150819131006', '2015-08-19 00:00:00', null, '100', '90', '低', '机试', '2014-2015学期期末考试', '1', '5', '2015-08-19 00:00:00', '2', '13:17:00', null);
INSERT INTO `t_paper` VALUES ('107', '20150821154014', '2015-08-21 00:00:00', null, '100', '90', '中', '机试', 'Oracle', '1', '14', '2015-08-21 00:00:00', '2', '15:00:42', null);
INSERT INTO `t_paper` VALUES ('108', '20150821154154', '2015-08-21 00:00:00', null, '100', '90', '低', '机试', 'JAVA模拟', '1', '14', '2015-08-21 00:00:00', '2', '16:41:36', null);
INSERT INTO `t_paper` VALUES ('109', '20150821154330', '2015-08-21 00:00:00', null, '100', '90', '低', '机试', 'JAVA期末考试', '1', '14', '2015-08-21 00:00:00', '2', '15:43:18', null);
INSERT INTO `t_paper` VALUES ('110', '20150824090525', '2015-08-24 00:00:00', null, '100', '90', '低', '机试', 'java', '1', '14', '2015-08-24 00:00:00', '2', '09:04:50', null);

-- ----------------------------
-- Table structure for t_paper_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_paper_detail`;
CREATE TABLE `t_paper_detail` (
  `PAPER_DETAIL_ID` int(11) NOT NULL auto_increment,
  `PAPER_ID` int(11) default NULL,
  `QUESTION_ID` int(11) default NULL,
  PRIMARY KEY  (`PAPER_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paper_detail
-- ----------------------------
INSERT INTO `t_paper_detail` VALUES ('2333', '93', '1302');
INSERT INTO `t_paper_detail` VALUES ('2334', '93', '1303');
INSERT INTO `t_paper_detail` VALUES ('2335', '93', '1304');
INSERT INTO `t_paper_detail` VALUES ('2336', '93', '1305');
INSERT INTO `t_paper_detail` VALUES ('2337', '93', '1306');
INSERT INTO `t_paper_detail` VALUES ('2338', '93', '1307');
INSERT INTO `t_paper_detail` VALUES ('2339', '93', '1308');
INSERT INTO `t_paper_detail` VALUES ('2340', '93', '1309');
INSERT INTO `t_paper_detail` VALUES ('2341', '93', '1310');
INSERT INTO `t_paper_detail` VALUES ('2342', '93', '1311');
INSERT INTO `t_paper_detail` VALUES ('2343', '93', '187');
INSERT INTO `t_paper_detail` VALUES ('2344', '93', '188');
INSERT INTO `t_paper_detail` VALUES ('2345', '93', '189');
INSERT INTO `t_paper_detail` VALUES ('2346', '93', '191');
INSERT INTO `t_paper_detail` VALUES ('2347', '93', '192');
INSERT INTO `t_paper_detail` VALUES ('2348', '93', '193');
INSERT INTO `t_paper_detail` VALUES ('2349', '93', '194');
INSERT INTO `t_paper_detail` VALUES ('2350', '93', '195');
INSERT INTO `t_paper_detail` VALUES ('2351', '93', '949');
INSERT INTO `t_paper_detail` VALUES ('2352', '93', '951');
INSERT INTO `t_paper_detail` VALUES ('2353', '93', '962');
INSERT INTO `t_paper_detail` VALUES ('2354', '93', '965');
INSERT INTO `t_paper_detail` VALUES ('2355', '93', '972');
INSERT INTO `t_paper_detail` VALUES ('2356', '93', '995');
INSERT INTO `t_paper_detail` VALUES ('2357', '93', '997');
INSERT INTO `t_paper_detail` VALUES ('2358', '93', '1019');
INSERT INTO `t_paper_detail` VALUES ('2359', '94', '513');
INSERT INTO `t_paper_detail` VALUES ('2360', '94', '514');
INSERT INTO `t_paper_detail` VALUES ('2361', '94', '515');
INSERT INTO `t_paper_detail` VALUES ('2362', '94', '516');
INSERT INTO `t_paper_detail` VALUES ('2363', '94', '517');
INSERT INTO `t_paper_detail` VALUES ('2364', '94', '518');
INSERT INTO `t_paper_detail` VALUES ('2365', '94', '519');
INSERT INTO `t_paper_detail` VALUES ('2366', '94', '520');
INSERT INTO `t_paper_detail` VALUES ('2367', '94', '521');
INSERT INTO `t_paper_detail` VALUES ('2368', '94', '522');
INSERT INTO `t_paper_detail` VALUES ('2369', '94', '1294');
INSERT INTO `t_paper_detail` VALUES ('2370', '94', '1295');
INSERT INTO `t_paper_detail` VALUES ('2371', '94', '1296');
INSERT INTO `t_paper_detail` VALUES ('2372', '94', '1297');
INSERT INTO `t_paper_detail` VALUES ('2373', '94', '1318');
INSERT INTO `t_paper_detail` VALUES ('2374', '94', '1319');
INSERT INTO `t_paper_detail` VALUES ('2375', '94', '1320');
INSERT INTO `t_paper_detail` VALUES ('2376', '94', '1321');
INSERT INTO `t_paper_detail` VALUES ('2377', '94', '436');
INSERT INTO `t_paper_detail` VALUES ('2378', '94', '450');
INSERT INTO `t_paper_detail` VALUES ('2379', '94', '451');
INSERT INTO `t_paper_detail` VALUES ('2380', '94', '472');
INSERT INTO `t_paper_detail` VALUES ('2381', '94', '474');
INSERT INTO `t_paper_detail` VALUES ('2382', '94', '475');
INSERT INTO `t_paper_detail` VALUES ('2383', '94', '485');
INSERT INTO `t_paper_detail` VALUES ('2384', '94', '486');
INSERT INTO `t_paper_detail` VALUES ('2385', '95', '1140');
INSERT INTO `t_paper_detail` VALUES ('2386', '95', '1141');
INSERT INTO `t_paper_detail` VALUES ('2387', '95', '1142');
INSERT INTO `t_paper_detail` VALUES ('2388', '95', '1143');
INSERT INTO `t_paper_detail` VALUES ('2389', '95', '1144');
INSERT INTO `t_paper_detail` VALUES ('2390', '95', '1145');
INSERT INTO `t_paper_detail` VALUES ('2391', '95', '1146');
INSERT INTO `t_paper_detail` VALUES ('2392', '95', '1147');
INSERT INTO `t_paper_detail` VALUES ('2393', '95', '1148');
INSERT INTO `t_paper_detail` VALUES ('2394', '95', '1149');
INSERT INTO `t_paper_detail` VALUES ('2395', '95', '210');
INSERT INTO `t_paper_detail` VALUES ('2396', '95', '221');
INSERT INTO `t_paper_detail` VALUES ('2397', '95', '222');
INSERT INTO `t_paper_detail` VALUES ('2398', '95', '225');
INSERT INTO `t_paper_detail` VALUES ('2399', '95', '229');
INSERT INTO `t_paper_detail` VALUES ('2400', '95', '230');
INSERT INTO `t_paper_detail` VALUES ('2401', '95', '234');
INSERT INTO `t_paper_detail` VALUES ('2402', '95', '238');
INSERT INTO `t_paper_detail` VALUES ('2403', '95', '357');
INSERT INTO `t_paper_detail` VALUES ('2404', '95', '358');
INSERT INTO `t_paper_detail` VALUES ('2405', '95', '359');
INSERT INTO `t_paper_detail` VALUES ('2406', '95', '381');
INSERT INTO `t_paper_detail` VALUES ('2407', '95', '386');
INSERT INTO `t_paper_detail` VALUES ('2408', '95', '391');
INSERT INTO `t_paper_detail` VALUES ('2409', '95', '392');
INSERT INTO `t_paper_detail` VALUES ('2410', '95', '393');
INSERT INTO `t_paper_detail` VALUES ('2411', '96', '489');
INSERT INTO `t_paper_detail` VALUES ('2412', '96', '490');
INSERT INTO `t_paper_detail` VALUES ('2413', '96', '491');
INSERT INTO `t_paper_detail` VALUES ('2414', '96', '492');
INSERT INTO `t_paper_detail` VALUES ('2415', '96', '495');
INSERT INTO `t_paper_detail` VALUES ('2416', '96', '497');
INSERT INTO `t_paper_detail` VALUES ('2417', '96', '498');
INSERT INTO `t_paper_detail` VALUES ('2418', '96', '499');
INSERT INTO `t_paper_detail` VALUES ('2419', '96', '500');
INSERT INTO `t_paper_detail` VALUES ('2420', '96', '501');
INSERT INTO `t_paper_detail` VALUES ('2421', '96', '684');
INSERT INTO `t_paper_detail` VALUES ('2422', '96', '686');
INSERT INTO `t_paper_detail` VALUES ('2423', '96', '687');
INSERT INTO `t_paper_detail` VALUES ('2424', '96', '689');
INSERT INTO `t_paper_detail` VALUES ('2425', '96', '690');
INSERT INTO `t_paper_detail` VALUES ('2426', '96', '691');
INSERT INTO `t_paper_detail` VALUES ('2427', '96', '702');
INSERT INTO `t_paper_detail` VALUES ('2428', '96', '708');
INSERT INTO `t_paper_detail` VALUES ('2429', '96', '962');
INSERT INTO `t_paper_detail` VALUES ('2430', '96', '965');
INSERT INTO `t_paper_detail` VALUES ('2431', '96', '972');
INSERT INTO `t_paper_detail` VALUES ('2432', '96', '995');
INSERT INTO `t_paper_detail` VALUES ('2433', '96', '997');
INSERT INTO `t_paper_detail` VALUES ('2434', '96', '1019');
INSERT INTO `t_paper_detail` VALUES ('2435', '96', '1022');
INSERT INTO `t_paper_detail` VALUES ('2436', '96', '1034');
INSERT INTO `t_paper_detail` VALUES ('2437', '97', '631');
INSERT INTO `t_paper_detail` VALUES ('2438', '97', '633');
INSERT INTO `t_paper_detail` VALUES ('2439', '97', '635');
INSERT INTO `t_paper_detail` VALUES ('2440', '97', '636');
INSERT INTO `t_paper_detail` VALUES ('2441', '97', '637');
INSERT INTO `t_paper_detail` VALUES ('2442', '97', '638');
INSERT INTO `t_paper_detail` VALUES ('2443', '97', '639');
INSERT INTO `t_paper_detail` VALUES ('2444', '97', '640');
INSERT INTO `t_paper_detail` VALUES ('2445', '97', '641');
INSERT INTO `t_paper_detail` VALUES ('2446', '97', '642');
INSERT INTO `t_paper_detail` VALUES ('2447', '97', '1343');
INSERT INTO `t_paper_detail` VALUES ('2448', '97', '1344');
INSERT INTO `t_paper_detail` VALUES ('2449', '97', '1345');
INSERT INTO `t_paper_detail` VALUES ('2450', '97', '1346');
INSERT INTO `t_paper_detail` VALUES ('2451', '97', '1347');
INSERT INTO `t_paper_detail` VALUES ('2452', '97', '1348');
INSERT INTO `t_paper_detail` VALUES ('2453', '97', '1349');
INSERT INTO `t_paper_detail` VALUES ('2454', '97', '1350');
INSERT INTO `t_paper_detail` VALUES ('2455', '97', '949');
INSERT INTO `t_paper_detail` VALUES ('2456', '97', '951');
INSERT INTO `t_paper_detail` VALUES ('2457', '97', '962');
INSERT INTO `t_paper_detail` VALUES ('2458', '97', '965');
INSERT INTO `t_paper_detail` VALUES ('2459', '97', '972');
INSERT INTO `t_paper_detail` VALUES ('2460', '97', '995');
INSERT INTO `t_paper_detail` VALUES ('2461', '97', '997');
INSERT INTO `t_paper_detail` VALUES ('2462', '97', '1019');
INSERT INTO `t_paper_detail` VALUES ('2463', '98', '224');
INSERT INTO `t_paper_detail` VALUES ('2464', '98', '227');
INSERT INTO `t_paper_detail` VALUES ('2465', '98', '228');
INSERT INTO `t_paper_detail` VALUES ('2466', '98', '231');
INSERT INTO `t_paper_detail` VALUES ('2467', '98', '232');
INSERT INTO `t_paper_detail` VALUES ('2468', '98', '233');
INSERT INTO `t_paper_detail` VALUES ('2469', '98', '235');
INSERT INTO `t_paper_detail` VALUES ('2470', '98', '236');
INSERT INTO `t_paper_detail` VALUES ('2471', '98', '237');
INSERT INTO `t_paper_detail` VALUES ('2472', '98', '239');
INSERT INTO `t_paper_detail` VALUES ('2473', '98', '97');
INSERT INTO `t_paper_detail` VALUES ('2474', '98', '1');
INSERT INTO `t_paper_detail` VALUES ('2475', '98', '99');
INSERT INTO `t_paper_detail` VALUES ('2476', '98', '100');
INSERT INTO `t_paper_detail` VALUES ('2477', '98', '101');
INSERT INTO `t_paper_detail` VALUES ('2478', '98', '102');
INSERT INTO `t_paper_detail` VALUES ('2479', '98', '103');
INSERT INTO `t_paper_detail` VALUES ('2480', '98', '104');
INSERT INTO `t_paper_detail` VALUES ('2481', '98', '90');
INSERT INTO `t_paper_detail` VALUES ('2482', '98', '123');
INSERT INTO `t_paper_detail` VALUES ('2483', '98', '128');
INSERT INTO `t_paper_detail` VALUES ('2484', '98', '183');
INSERT INTO `t_paper_detail` VALUES ('2485', '98', '200');
INSERT INTO `t_paper_detail` VALUES ('2486', '98', '223');
INSERT INTO `t_paper_detail` VALUES ('2487', '98', '226');
INSERT INTO `t_paper_detail` VALUES ('2488', '98', '255');
INSERT INTO `t_paper_detail` VALUES ('2489', '99', '11');
INSERT INTO `t_paper_detail` VALUES ('2490', '99', '636');
INSERT INTO `t_paper_detail` VALUES ('2491', '99', '637');
INSERT INTO `t_paper_detail` VALUES ('2492', '99', '638');
INSERT INTO `t_paper_detail` VALUES ('2493', '99', '639');
INSERT INTO `t_paper_detail` VALUES ('2494', '99', '640');
INSERT INTO `t_paper_detail` VALUES ('2495', '99', '641');
INSERT INTO `t_paper_detail` VALUES ('2496', '99', '642');
INSERT INTO `t_paper_detail` VALUES ('2497', '99', '643');
INSERT INTO `t_paper_detail` VALUES ('2498', '99', '644');
INSERT INTO `t_paper_detail` VALUES ('2499', '99', '1292');
INSERT INTO `t_paper_detail` VALUES ('2500', '99', '1293');
INSERT INTO `t_paper_detail` VALUES ('2501', '99', '1294');
INSERT INTO `t_paper_detail` VALUES ('2502', '99', '1295');
INSERT INTO `t_paper_detail` VALUES ('2503', '99', '1296');
INSERT INTO `t_paper_detail` VALUES ('2504', '99', '1297');
INSERT INTO `t_paper_detail` VALUES ('2505', '99', '1318');
INSERT INTO `t_paper_detail` VALUES ('2506', '99', '1319');
INSERT INTO `t_paper_detail` VALUES ('2507', '99', '1078');
INSERT INTO `t_paper_detail` VALUES ('2508', '99', '1079');
INSERT INTO `t_paper_detail` VALUES ('2509', '99', '1095');
INSERT INTO `t_paper_detail` VALUES ('2510', '99', '1098');
INSERT INTO `t_paper_detail` VALUES ('2511', '99', '1159');
INSERT INTO `t_paper_detail` VALUES ('2512', '99', '1207');
INSERT INTO `t_paper_detail` VALUES ('2513', '99', '1378');
INSERT INTO `t_paper_detail` VALUES ('2514', '99', '1379');
INSERT INTO `t_paper_detail` VALUES ('2515', '100', '1003');
INSERT INTO `t_paper_detail` VALUES ('2516', '100', '1004');
INSERT INTO `t_paper_detail` VALUES ('2517', '100', '1005');
INSERT INTO `t_paper_detail` VALUES ('2518', '100', '1006');
INSERT INTO `t_paper_detail` VALUES ('2519', '100', '1007');
INSERT INTO `t_paper_detail` VALUES ('2520', '100', '1008');
INSERT INTO `t_paper_detail` VALUES ('2521', '100', '1009');
INSERT INTO `t_paper_detail` VALUES ('2522', '100', '1010');
INSERT INTO `t_paper_detail` VALUES ('2523', '100', '1011');
INSERT INTO `t_paper_detail` VALUES ('2524', '100', '1012');
INSERT INTO `t_paper_detail` VALUES ('2525', '100', '882');
INSERT INTO `t_paper_detail` VALUES ('2526', '100', '893');
INSERT INTO `t_paper_detail` VALUES ('2527', '100', '894');
INSERT INTO `t_paper_detail` VALUES ('2528', '100', '895');
INSERT INTO `t_paper_detail` VALUES ('2529', '100', '896');
INSERT INTO `t_paper_detail` VALUES ('2530', '100', '897');
INSERT INTO `t_paper_detail` VALUES ('2531', '100', '898');
INSERT INTO `t_paper_detail` VALUES ('2532', '100', '900');
INSERT INTO `t_paper_detail` VALUES ('2533', '100', '542');
INSERT INTO `t_paper_detail` VALUES ('2534', '100', '543');
INSERT INTO `t_paper_detail` VALUES ('2535', '100', '550');
INSERT INTO `t_paper_detail` VALUES ('2536', '100', '576');
INSERT INTO `t_paper_detail` VALUES ('2537', '100', '577');
INSERT INTO `t_paper_detail` VALUES ('2538', '100', '599');
INSERT INTO `t_paper_detail` VALUES ('2539', '100', '600');
INSERT INTO `t_paper_detail` VALUES ('2540', '100', '656');
INSERT INTO `t_paper_detail` VALUES ('2541', '101', '46');
INSERT INTO `t_paper_detail` VALUES ('2542', '101', '47');
INSERT INTO `t_paper_detail` VALUES ('2543', '101', '48');
INSERT INTO `t_paper_detail` VALUES ('2544', '101', '49');
INSERT INTO `t_paper_detail` VALUES ('2545', '101', '50');
INSERT INTO `t_paper_detail` VALUES ('2546', '101', '51');
INSERT INTO `t_paper_detail` VALUES ('2547', '101', '52');
INSERT INTO `t_paper_detail` VALUES ('2548', '101', '55');
INSERT INTO `t_paper_detail` VALUES ('2549', '101', '56');
INSERT INTO `t_paper_detail` VALUES ('2550', '101', '57');
INSERT INTO `t_paper_detail` VALUES ('2551', '101', '1338');
INSERT INTO `t_paper_detail` VALUES ('2552', '101', '1339');
INSERT INTO `t_paper_detail` VALUES ('2553', '101', '1340');
INSERT INTO `t_paper_detail` VALUES ('2554', '101', '1341');
INSERT INTO `t_paper_detail` VALUES ('2555', '101', '1342');
INSERT INTO `t_paper_detail` VALUES ('2556', '101', '1343');
INSERT INTO `t_paper_detail` VALUES ('2557', '101', '1344');
INSERT INTO `t_paper_detail` VALUES ('2558', '101', '1345');
INSERT INTO `t_paper_detail` VALUES ('2559', '101', '656');
INSERT INTO `t_paper_detail` VALUES ('2560', '101', '657');
INSERT INTO `t_paper_detail` VALUES ('2561', '101', '664');
INSERT INTO `t_paper_detail` VALUES ('2562', '101', '667');
INSERT INTO `t_paper_detail` VALUES ('2563', '101', '688');
INSERT INTO `t_paper_detail` VALUES ('2564', '101', '692');
INSERT INTO `t_paper_detail` VALUES ('2565', '101', '735');
INSERT INTO `t_paper_detail` VALUES ('2566', '101', '739');
INSERT INTO `t_paper_detail` VALUES ('2567', '102', '431');
INSERT INTO `t_paper_detail` VALUES ('2568', '102', '432');
INSERT INTO `t_paper_detail` VALUES ('2569', '102', '437');
INSERT INTO `t_paper_detail` VALUES ('2570', '102', '438');
INSERT INTO `t_paper_detail` VALUES ('2571', '102', '439');
INSERT INTO `t_paper_detail` VALUES ('2572', '102', '440');
INSERT INTO `t_paper_detail` VALUES ('2573', '102', '441');
INSERT INTO `t_paper_detail` VALUES ('2574', '102', '442');
INSERT INTO `t_paper_detail` VALUES ('2575', '102', '443');
INSERT INTO `t_paper_detail` VALUES ('2576', '102', '444');
INSERT INTO `t_paper_detail` VALUES ('2577', '102', '5');
INSERT INTO `t_paper_detail` VALUES ('2578', '102', '6');
INSERT INTO `t_paper_detail` VALUES ('2579', '102', '7');
INSERT INTO `t_paper_detail` VALUES ('2580', '102', '8');
INSERT INTO `t_paper_detail` VALUES ('2581', '102', '9');
INSERT INTO `t_paper_detail` VALUES ('2582', '102', '10');
INSERT INTO `t_paper_detail` VALUES ('2583', '102', '22');
INSERT INTO `t_paper_detail` VALUES ('2584', '102', '23');
INSERT INTO `t_paper_detail` VALUES ('2585', '102', '542');
INSERT INTO `t_paper_detail` VALUES ('2586', '102', '543');
INSERT INTO `t_paper_detail` VALUES ('2587', '102', '550');
INSERT INTO `t_paper_detail` VALUES ('2588', '102', '576');
INSERT INTO `t_paper_detail` VALUES ('2589', '102', '577');
INSERT INTO `t_paper_detail` VALUES ('2590', '102', '599');
INSERT INTO `t_paper_detail` VALUES ('2591', '102', '600');
INSERT INTO `t_paper_detail` VALUES ('2592', '102', '656');
INSERT INTO `t_paper_detail` VALUES ('2593', '103', '1213');
INSERT INTO `t_paper_detail` VALUES ('2594', '103', '1214');
INSERT INTO `t_paper_detail` VALUES ('2595', '103', '1215');
INSERT INTO `t_paper_detail` VALUES ('2596', '103', '1216');
INSERT INTO `t_paper_detail` VALUES ('2597', '103', '1217');
INSERT INTO `t_paper_detail` VALUES ('2598', '103', '1218');
INSERT INTO `t_paper_detail` VALUES ('2599', '103', '1219');
INSERT INTO `t_paper_detail` VALUES ('2600', '103', '1220');
INSERT INTO `t_paper_detail` VALUES ('2601', '103', '1221');
INSERT INTO `t_paper_detail` VALUES ('2602', '103', '1222');
INSERT INTO `t_paper_detail` VALUES ('2603', '103', '1117');
INSERT INTO `t_paper_detail` VALUES ('2604', '103', '1118');
INSERT INTO `t_paper_detail` VALUES ('2605', '103', '1158');
INSERT INTO `t_paper_detail` VALUES ('2606', '103', '1160');
INSERT INTO `t_paper_detail` VALUES ('2607', '103', '1161');
INSERT INTO `t_paper_detail` VALUES ('2608', '103', '1162');
INSERT INTO `t_paper_detail` VALUES ('2609', '103', '1163');
INSERT INTO `t_paper_detail` VALUES ('2610', '103', '1164');
INSERT INTO `t_paper_detail` VALUES ('2611', '103', '294');
INSERT INTO `t_paper_detail` VALUES ('2612', '103', '295');
INSERT INTO `t_paper_detail` VALUES ('2613', '103', '296');
INSERT INTO `t_paper_detail` VALUES ('2614', '103', '297');
INSERT INTO `t_paper_detail` VALUES ('2615', '103', '298');
INSERT INTO `t_paper_detail` VALUES ('2616', '103', '299');
INSERT INTO `t_paper_detail` VALUES ('2617', '103', '300');
INSERT INTO `t_paper_detail` VALUES ('2618', '103', '321');
INSERT INTO `t_paper_detail` VALUES ('2619', '104', '323');
INSERT INTO `t_paper_detail` VALUES ('2620', '104', '329');
INSERT INTO `t_paper_detail` VALUES ('2621', '104', '331');
INSERT INTO `t_paper_detail` VALUES ('2622', '104', '332');
INSERT INTO `t_paper_detail` VALUES ('2623', '104', '335');
INSERT INTO `t_paper_detail` VALUES ('2624', '104', '336');
INSERT INTO `t_paper_detail` VALUES ('2625', '104', '337');
INSERT INTO `t_paper_detail` VALUES ('2626', '104', '338');
INSERT INTO `t_paper_detail` VALUES ('2627', '104', '339');
INSERT INTO `t_paper_detail` VALUES ('2628', '104', '340');
INSERT INTO `t_paper_detail` VALUES ('2629', '104', '325');
INSERT INTO `t_paper_detail` VALUES ('2630', '104', '330');
INSERT INTO `t_paper_detail` VALUES ('2631', '104', '333');
INSERT INTO `t_paper_detail` VALUES ('2632', '104', '334');
INSERT INTO `t_paper_detail` VALUES ('2633', '104', '351');
INSERT INTO `t_paper_detail` VALUES ('2634', '104', '355');
INSERT INTO `t_paper_detail` VALUES ('2635', '104', '356');
INSERT INTO `t_paper_detail` VALUES ('2636', '104', '365');
INSERT INTO `t_paper_detail` VALUES ('2637', '104', '1078');
INSERT INTO `t_paper_detail` VALUES ('2638', '104', '1079');
INSERT INTO `t_paper_detail` VALUES ('2639', '104', '1095');
INSERT INTO `t_paper_detail` VALUES ('2640', '104', '1098');
INSERT INTO `t_paper_detail` VALUES ('2641', '104', '1159');
INSERT INTO `t_paper_detail` VALUES ('2642', '104', '1207');
INSERT INTO `t_paper_detail` VALUES ('2643', '104', '1378');
INSERT INTO `t_paper_detail` VALUES ('2644', '104', '1379');
INSERT INTO `t_paper_detail` VALUES ('2645', '105', '1362');
INSERT INTO `t_paper_detail` VALUES ('2646', '105', '1363');
INSERT INTO `t_paper_detail` VALUES ('2647', '105', '1364');
INSERT INTO `t_paper_detail` VALUES ('2648', '105', '1365');
INSERT INTO `t_paper_detail` VALUES ('2649', '105', '1366');
INSERT INTO `t_paper_detail` VALUES ('2650', '105', '1367');
INSERT INTO `t_paper_detail` VALUES ('2651', '105', '1368');
INSERT INTO `t_paper_detail` VALUES ('2652', '105', '1369');
INSERT INTO `t_paper_detail` VALUES ('2653', '105', '1370');
INSERT INTO `t_paper_detail` VALUES ('2654', '105', '1371');
INSERT INTO `t_paper_detail` VALUES ('2655', '105', '723');
INSERT INTO `t_paper_detail` VALUES ('2656', '105', '724');
INSERT INTO `t_paper_detail` VALUES ('2657', '105', '725');
INSERT INTO `t_paper_detail` VALUES ('2658', '105', '726');
INSERT INTO `t_paper_detail` VALUES ('2659', '105', '738');
INSERT INTO `t_paper_detail` VALUES ('2660', '105', '741');
INSERT INTO `t_paper_detail` VALUES ('2661', '105', '754');
INSERT INTO `t_paper_detail` VALUES ('2662', '105', '755');
INSERT INTO `t_paper_detail` VALUES ('2663', '105', '543');
INSERT INTO `t_paper_detail` VALUES ('2664', '105', '550');
INSERT INTO `t_paper_detail` VALUES ('2665', '105', '576');
INSERT INTO `t_paper_detail` VALUES ('2666', '105', '577');
INSERT INTO `t_paper_detail` VALUES ('2667', '105', '599');
INSERT INTO `t_paper_detail` VALUES ('2668', '105', '600');
INSERT INTO `t_paper_detail` VALUES ('2669', '105', '656');
INSERT INTO `t_paper_detail` VALUES ('2670', '105', '657');
INSERT INTO `t_paper_detail` VALUES ('2671', '106', '1133');
INSERT INTO `t_paper_detail` VALUES ('2672', '106', '1134');
INSERT INTO `t_paper_detail` VALUES ('2673', '106', '1135');
INSERT INTO `t_paper_detail` VALUES ('2674', '106', '1136');
INSERT INTO `t_paper_detail` VALUES ('2675', '106', '1137');
INSERT INTO `t_paper_detail` VALUES ('2676', '106', '1138');
INSERT INTO `t_paper_detail` VALUES ('2677', '106', '1139');
INSERT INTO `t_paper_detail` VALUES ('2678', '106', '1140');
INSERT INTO `t_paper_detail` VALUES ('2679', '106', '1141');
INSERT INTO `t_paper_detail` VALUES ('2680', '106', '1142');
INSERT INTO `t_paper_detail` VALUES ('2681', '106', '453');
INSERT INTO `t_paper_detail` VALUES ('2682', '106', '456');
INSERT INTO `t_paper_detail` VALUES ('2683', '106', '470');
INSERT INTO `t_paper_detail` VALUES ('2684', '106', '471');
INSERT INTO `t_paper_detail` VALUES ('2685', '106', '473');
INSERT INTO `t_paper_detail` VALUES ('2686', '106', '483');
INSERT INTO `t_paper_detail` VALUES ('2687', '106', '484');
INSERT INTO `t_paper_detail` VALUES ('2688', '106', '493');
INSERT INTO `t_paper_detail` VALUES ('2689', '106', '357');
INSERT INTO `t_paper_detail` VALUES ('2690', '106', '358');
INSERT INTO `t_paper_detail` VALUES ('2691', '106', '359');
INSERT INTO `t_paper_detail` VALUES ('2692', '106', '381');
INSERT INTO `t_paper_detail` VALUES ('2693', '106', '386');
INSERT INTO `t_paper_detail` VALUES ('2694', '106', '391');
INSERT INTO `t_paper_detail` VALUES ('2695', '106', '392');
INSERT INTO `t_paper_detail` VALUES ('2696', '106', '393');
INSERT INTO `t_paper_detail` VALUES ('2697', '107', '1218');
INSERT INTO `t_paper_detail` VALUES ('2698', '107', '1219');
INSERT INTO `t_paper_detail` VALUES ('2699', '107', '1220');
INSERT INTO `t_paper_detail` VALUES ('2700', '107', '1221');
INSERT INTO `t_paper_detail` VALUES ('2701', '107', '1222');
INSERT INTO `t_paper_detail` VALUES ('2702', '107', '1223');
INSERT INTO `t_paper_detail` VALUES ('2703', '107', '1224');
INSERT INTO `t_paper_detail` VALUES ('2704', '107', '1225');
INSERT INTO `t_paper_detail` VALUES ('2705', '107', '1226');
INSERT INTO `t_paper_detail` VALUES ('2706', '107', '1227');
INSERT INTO `t_paper_detail` VALUES ('2707', '107', '378');
INSERT INTO `t_paper_detail` VALUES ('2708', '107', '382');
INSERT INTO `t_paper_detail` VALUES ('2709', '107', '383');
INSERT INTO `t_paper_detail` VALUES ('2710', '107', '384');
INSERT INTO `t_paper_detail` VALUES ('2711', '107', '385');
INSERT INTO `t_paper_detail` VALUES ('2712', '107', '387');
INSERT INTO `t_paper_detail` VALUES ('2713', '107', '388');
INSERT INTO `t_paper_detail` VALUES ('2714', '107', '389');
INSERT INTO `t_paper_detail` VALUES ('2715', '107', '258');
INSERT INTO `t_paper_detail` VALUES ('2716', '107', '263');
INSERT INTO `t_paper_detail` VALUES ('2717', '107', '288');
INSERT INTO `t_paper_detail` VALUES ('2718', '107', '291');
INSERT INTO `t_paper_detail` VALUES ('2719', '107', '292');
INSERT INTO `t_paper_detail` VALUES ('2720', '107', '293');
INSERT INTO `t_paper_detail` VALUES ('2721', '107', '294');
INSERT INTO `t_paper_detail` VALUES ('2722', '107', '295');
INSERT INTO `t_paper_detail` VALUES ('2723', '108', '468');
INSERT INTO `t_paper_detail` VALUES ('2724', '108', '469');
INSERT INTO `t_paper_detail` VALUES ('2725', '108', '476');
INSERT INTO `t_paper_detail` VALUES ('2726', '108', '477');
INSERT INTO `t_paper_detail` VALUES ('2727', '108', '478');
INSERT INTO `t_paper_detail` VALUES ('2728', '108', '479');
INSERT INTO `t_paper_detail` VALUES ('2729', '108', '480');
INSERT INTO `t_paper_detail` VALUES ('2730', '108', '481');
INSERT INTO `t_paper_detail` VALUES ('2731', '108', '482');
INSERT INTO `t_paper_detail` VALUES ('2732', '108', '488');
INSERT INTO `t_paper_detail` VALUES ('2733', '108', '802');
INSERT INTO `t_paper_detail` VALUES ('2734', '108', '804');
INSERT INTO `t_paper_detail` VALUES ('2735', '108', '807');
INSERT INTO `t_paper_detail` VALUES ('2736', '108', '810');
INSERT INTO `t_paper_detail` VALUES ('2737', '108', '823');
INSERT INTO `t_paper_detail` VALUES ('2738', '108', '825');
INSERT INTO `t_paper_detail` VALUES ('2739', '108', '826');
INSERT INTO `t_paper_detail` VALUES ('2740', '108', '827');
INSERT INTO `t_paper_detail` VALUES ('2741', '108', '294');
INSERT INTO `t_paper_detail` VALUES ('2742', '108', '295');
INSERT INTO `t_paper_detail` VALUES ('2743', '108', '296');
INSERT INTO `t_paper_detail` VALUES ('2744', '108', '297');
INSERT INTO `t_paper_detail` VALUES ('2745', '108', '298');
INSERT INTO `t_paper_detail` VALUES ('2746', '108', '299');
INSERT INTO `t_paper_detail` VALUES ('2747', '108', '300');
INSERT INTO `t_paper_detail` VALUES ('2748', '108', '321');
INSERT INTO `t_paper_detail` VALUES ('2749', '109', '982');
INSERT INTO `t_paper_detail` VALUES ('2750', '109', '984');
INSERT INTO `t_paper_detail` VALUES ('2751', '109', '985');
INSERT INTO `t_paper_detail` VALUES ('2752', '109', '986');
INSERT INTO `t_paper_detail` VALUES ('2753', '109', '987');
INSERT INTO `t_paper_detail` VALUES ('2754', '109', '989');
INSERT INTO `t_paper_detail` VALUES ('2755', '109', '991');
INSERT INTO `t_paper_detail` VALUES ('2756', '109', '992');
INSERT INTO `t_paper_detail` VALUES ('2757', '109', '994');
INSERT INTO `t_paper_detail` VALUES ('2758', '109', '996');
INSERT INTO `t_paper_detail` VALUES ('2759', '109', '253');
INSERT INTO `t_paper_detail` VALUES ('2760', '109', '254');
INSERT INTO `t_paper_detail` VALUES ('2761', '109', '257');
INSERT INTO `t_paper_detail` VALUES ('2762', '109', '260');
INSERT INTO `t_paper_detail` VALUES ('2763', '109', '262');
INSERT INTO `t_paper_detail` VALUES ('2764', '109', '264');
INSERT INTO `t_paper_detail` VALUES ('2765', '109', '267');
INSERT INTO `t_paper_detail` VALUES ('2766', '109', '268');
INSERT INTO `t_paper_detail` VALUES ('2767', '109', '123');
INSERT INTO `t_paper_detail` VALUES ('2768', '109', '128');
INSERT INTO `t_paper_detail` VALUES ('2769', '109', '183');
INSERT INTO `t_paper_detail` VALUES ('2770', '109', '200');
INSERT INTO `t_paper_detail` VALUES ('2771', '109', '223');
INSERT INTO `t_paper_detail` VALUES ('2772', '109', '226');
INSERT INTO `t_paper_detail` VALUES ('2773', '109', '255');
INSERT INTO `t_paper_detail` VALUES ('2774', '109', '258');
INSERT INTO `t_paper_detail` VALUES ('2775', '110', '11');
INSERT INTO `t_paper_detail` VALUES ('2776', '110', '1072');
INSERT INTO `t_paper_detail` VALUES ('2777', '110', '1073');
INSERT INTO `t_paper_detail` VALUES ('2778', '110', '1080');
INSERT INTO `t_paper_detail` VALUES ('2779', '110', '1082');
INSERT INTO `t_paper_detail` VALUES ('2780', '110', '1083');
INSERT INTO `t_paper_detail` VALUES ('2781', '110', '1084');
INSERT INTO `t_paper_detail` VALUES ('2782', '110', '1085');
INSERT INTO `t_paper_detail` VALUES ('2783', '110', '1086');
INSERT INTO `t_paper_detail` VALUES ('2784', '110', '1087');
INSERT INTO `t_paper_detail` VALUES ('2785', '110', '208');
INSERT INTO `t_paper_detail` VALUES ('2786', '110', '209');
INSERT INTO `t_paper_detail` VALUES ('2787', '110', '210');
INSERT INTO `t_paper_detail` VALUES ('2788', '110', '221');
INSERT INTO `t_paper_detail` VALUES ('2789', '110', '222');
INSERT INTO `t_paper_detail` VALUES ('2790', '110', '225');
INSERT INTO `t_paper_detail` VALUES ('2791', '110', '229');
INSERT INTO `t_paper_detail` VALUES ('2792', '110', '230');
INSERT INTO `t_paper_detail` VALUES ('2793', '110', '1060');
INSERT INTO `t_paper_detail` VALUES ('2794', '110', '1078');
INSERT INTO `t_paper_detail` VALUES ('2795', '110', '1079');
INSERT INTO `t_paper_detail` VALUES ('2796', '110', '1095');
INSERT INTO `t_paper_detail` VALUES ('2797', '110', '1098');
INSERT INTO `t_paper_detail` VALUES ('2798', '110', '1159');
INSERT INTO `t_paper_detail` VALUES ('2799', '110', '1207');
INSERT INTO `t_paper_detail` VALUES ('2800', '110', '1378');

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
DROP TABLE IF EXISTS `t_question`;
CREATE TABLE `t_question` (
  `QUESTION_ID` int(11) NOT NULL auto_increment COMMENT '题目ID',
  `SUB_ID` int(11) default NULL COMMENT '课程id，来自课程表',
  `QUESTION_TYPE_ID` int(11) default NULL COMMENT '题目类型id，来自题目类型表',
  `QUESTION_DIFFICULTY` varchar(255) default NULL COMMENT '难易度，1低，2中，3高',
  `QUESTION_STEM` varchar(1000) default NULL COMMENT '题干',
  `QUESTION_ANSWERA` varchar(255) default NULL COMMENT '选项A',
  `QUESTION_ANSWERB` varchar(255) default NULL COMMENT '选项B',
  `QUESTION_ANSWERC` varchar(255) default NULL COMMENT '选项C',
  `QUESTION_ANSWERD` varchar(255) default NULL COMMENT '选项D',
  `QUESTION_ANSWERE` varchar(255) default NULL COMMENT '选项E',
  `QUESTION_RIGHTANSWER` varchar(255) default NULL COMMENT '正确答案',
  `QUESTION_SCORE` int(11) default NULL COMMENT '题目分值',
  `QUESTION_ISAUDITED` int(11) default NULL COMMENT '是否审核',
  `QUESTION_AUTHOR` varchar(255) default NULL COMMENT '出题人',
  `QUESTION_AUDITOR` varchar(255) default NULL COMMENT '审核人',
  `QUESTION_AUDITDATE` datetime default NULL COMMENT '审核时间',
  `QUESTION_SETDATE` datetime default NULL COMMENT '出题时间',
  `QUESTION_MEDIA` varchar(255) default NULL COMMENT '图片，视频',
  `QUESTION_BAK1` int(11) default NULL COMMENT '备用字段',
  `QUESTION_BAK2` varchar(255) default NULL,
  `QUESTION_BAK3` datetime default NULL,
  PRIMARY KEY  (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_question
-- ----------------------------
INSERT INTO `t_question` VALUES ('1', '1', '1', '中', '以下的选项中能正确表示Java语言中的一个整型常量的是下列那一项？', 'A:12', 'B:-20', 'C:1000', 'D:4 5 6', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2011-08-05 00:00:00', '2010-08-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('2', '1', '1', '中', '下列的变量定义中，错误的是', 'A:int 6_a;', 'B:float a;', 'C:int i=Integer.MAX_VALUE;', 'D:static int i=100;', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2011-08-06 00:00:00', '2010-08-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('3', '1', '1', '中', '以下的选项中能正确表示Java语言中的一个整型常量的是', 'A:Integer.MAX_VALUE', 'B:8.8F', 'C:2.0E16', 'D:true', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2011-08-07 00:00:00', '2010-08-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('4', '1', '1', '中', '下列最终属性（常量）i 的定义中，正确的是', 'A:static final double  i;', 'B:abstract final int i=8;', 'C:final double  i=3.14159;', 'D:float i=1.2f;', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2011-08-08 00:00:00', '2010-08-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('5', '1', '1', '中', '以下的选项中能正确表示Java语言中的一个double型常量的是', 'A:Float.MIN_VALUE', 'B:1.8e-6F', 'C:2.0', 'D:’abcf’', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2011-08-09 00:00:00', '2010-08-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('6', '1', '1', '中', '设&nbsp;i,&nbsp;j,&nbsp;k,&nbsp;m为已赋值的&nbsp;int&nbsp;型变量，下列表达式的结果属于逻辑值的是', 'A:i==k & j+k >=m', 'B:i+k', 'C:m++', 'D:m=i+j', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2011-08-10 00:00:00', '2010-08-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('7', '1', '1', '中', '设a、b、c、d 为已赋值的 int 型变量，下列表达式的结果属于非逻辑值的是', 'A:a!=b & c%d < a', 'B:a++ = =a+b+c+d', 'C:++a*b--+d', 'D:a+b>=c+d', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2011-08-11 00:00:00', '2010-08-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('8', '1', '1', '中', '设a、b、c、d 为已赋值的 int 型变量，下列表达式的结果属于非逻辑值的是', 'A:a!=b & c%d < a', 'B:a++ = =a+b+c+d', 'C:++a*b--+d', 'D:a+b>=c+d', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2011-08-12 00:00:00', '2010-08-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('9', '1', '1', '中', '下面语句序列执行后，a的值是()\nint a=13;a%=a/5;', 'A:3', 'B:13', 'C:169', 'D:1', 'E：', 'D', '4', '1', '段翔翔', '段翔翔', '2011-08-13 00:00:00', '2010-08-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('10', '1', '1', '中', '执行下列程序段后，m,x,y的值分别是()int x=2,y=4;booleanm;m=++x>y--;', 'A:true , 2,4', 'B:false , 3,3', 'C:true, 3,3', 'D:false, 2,4', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2011-08-14 00:00:00', '2010-08-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('11', '1', '1', '低', '使用Java语言编写的源程序保存时的文件扩展名是（）', 'A:.class ', 'B：.java', 'C：.cpp ', 'D：.txt', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2011-08-15 00:00:00', '2010-08-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('12', '1', '1', '中', 'int a=-2，则表达式a>>>3的值为（）', 'A:0', 'B：3', 'C:8', 'D:-1', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2011-08-16 00:00:00', '2010-08-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('13', '1', '1', '高', '设有数组的定义int[] a = new int[3]，则下面对数组元素的引用错误的是（）', 'A:a[0]', 'B:a[a.length-1]', 'C:a[3]', 'D:int i=1； a[i]', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2011-08-17 00:00:00', '2010-08-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('14', '1', '1', '低', '一个栈的输入序列为1 2 3 4 5，则下列序列中不可能是栈得输出序列的是（ ）', 'A:5 4 1 3 2 ', 'B:2 3 4 1 5', 'C:1 5 4 3 2 ', 'D:2 3 1 4 5', 'E：', 'A', '2', '1', '陈琰', '陈琰', '2011-08-18 00:00:00', '2010-08-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('15', '1', '1', '低', '为AB类的一个无形式参数无返回值的方法method书写方法头，使得使用类名AB作为前缀就可以调用它，该方法头的形式为( )', 'A:static  void  method( )', 'B:public  void  method( )', 'C:final  void  method( )', 'D:abstract  void  method( )', 'E：', 'A', '2', '1', '陈琰', '陈琰', '2011-08-19 00:00:00', '2010-08-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('16', '1', '1', '低', 'Java的字符类型采用的是Unicode编码方案，每个Unicode码占用（ ）个比特位', 'A:8', 'B:16', 'C:32', 'D:64', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2011-08-20 00:00:00', '2010-08-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('17', '1', '1', '低', '在编写Java  Application程序时，若需要使用到标准输入输出语句，必须在程序的开头写上(       )语句', 'A:import   java.awt.* ', 'B:import   java.applet.Applet', 'C:import   java.io.* ;', 'D:import   java.awt.Graphics ;', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2011-08-21 00:00:00', '2010-08-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('18', '1', '1', '低', '下面关于Applet的说法正确的是 （   ）', 'A:Applet也需要main方法', 'B:Applet必须继承自java.awt.Applet ', 'C:Applet能访问本地文件 ', 'D: Applet程序不需要编译', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2011-08-22 00:00:00', '2010-08-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('19', '1', '1', '低', '下列哪些语句关于内存回收的说明是正确的?', 'A:程序员必须创建一个线程来释放内存；', 'B:内存回收程序负责释放无用内存', 'C:内存回收程序允许程序员直接释放内存', 'D:内存回收程序可以在指定的时间释放内存对象 ', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2011-08-23 00:00:00', '2010-08-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('20', '1', '1', '低', '指出正确的表达式 （   ）', 'A: byte=128; ', 'B:Boolean=null;', 'C:long l=0xfffL; ', 'D:double=0.9239d; ', 'E：', 'D', '2', '1', '陈琰', '陈琰', '2011-08-24 00:00:00', '2010-08-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('21', '1', '1', '低', '下列哪个是Java语言中正确的标识符?', 'A:3com', 'B：import', 'C:that', 'D:this', 'E：', 'C', '2', '1', '蔡志钢', '段翔翔', '2011-08-25 00:00:00', '2010-08-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('22', '1', '1', '中', '下述概念中属于面向对象的是?', 'A:过程调用', 'B:消息', 'C.函数', 'D.封装', 'E：', 'D', '4', '1', '蔡志钢', '段翔翔', '2011-08-26 00:00:00', '2010-08-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('23', '1', '1', '高', '声明抽象方法的关键字是?', 'A:abstract', 'B:interface', 'C:method', 'D:void', 'E：', 'A', '4', '1', '蔡志钢', '段翔翔', '2011-08-27 00:00:00', '2010-08-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('24', '1', '1', '中', '下列哪个用户图形界面组件在软件安装程序中是常见的?', 'A:滑块', 'B:进度条', 'C:按钮', 'D:标签', 'E：', 'C', '2', '1', '蔡志钢', '段翔翔', '2011-08-28 00:00:00', '2010-08-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('25', '1', '1', '中', 'Java中哪个类提供了访问文件的功能?', 'A:RandomAccessFile类', 'B:File类', 'C:Random类', 'D:Access类', 'E：', 'A', '2', '1', '蔡志钢', '段翔翔', '2011-08-29 00:00:00', '2010-08-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('26', '1', '1', '中', '用类获取Scoket输入流的方法是?', 'A:getInput()', 'B:getInputStream()', 'C:getMoney()', 'D:getStream()', 'E：', 'B', '6', '1', '蔡志钢', '段翔翔', '2011-08-30 00:00:00', '2010-08-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('27', '1', '1', '中', '实例化一个类的关键字是?', 'A:get', 'B:new', 'C:this', 'D:set', 'E：', 'B', '2', '1', '蔡志钢', '段翔翔', '2011-08-31 00:00:00', '2010-08-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('28', '1', '1', '中', '哪个关键字可以抛出异常?', 'A:transient', 'B:static', 'C:final', 'D:throw', 'E：', 'D', '4', '1', '蔡志钢', '段翔翔', '2011-09-01 00:00:00', '2010-08-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('29', '1', '1', '中', '包权限的访问控制符是?', 'A:no modifier', 'B:private', 'C:public', 'D:protected', 'E：', 'D', '2', '1', '蔡志钢', '段翔翔', '2011-09-02 00:00:00', '2010-09-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('30', '1', '1', '中', '下列那个词反应了Java的并行机制?', 'A:跨平台', 'B:可移植', 'C:安全性', 'D:多线程', 'E：', 'D', '4', '1', '蔡志钢', '段翔翔', '2011-09-03 00:00:00', '2010-09-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('31', '1', '1', '低', 'int类型在内存中所占的位数为', 'A：8', 'B：16', 'C：32', 'D:64', 'E：', 'C', '2', '1', '王琦志', '段翔翔', '2011-09-04 00:00:00', '2010-09-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('32', '1', '1', '低', 'AWT中创建一个标识有“确定”按钮的语句是 ', 'A：TextField b = new TextField(“确定”);', 'B：Checkbox b = new Checkbox(“确定”);', 'C：Buttn b = new Button(“确定”);', 'D:Label b = new Label(“确定”);', 'E：', 'C', '2', '1', '王琦志', '段翔翔', '2011-09-05 00:00:00', '2010-09-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('33', '1', '1', '中', '表达式(11+3*8)/4%3的值是', 'A：31', 'B：0', 'C：1', 'D:2', 'E：', 'D', '4', '1', '王琦志', '段翔翔', '2011-09-06 00:00:00', '2010-09-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('34', '1', '1', '中', '下列值不为true的表达式有', 'A：\"john\" = = \"john\"', 'B： \"john\".equals(\"john\") ', 'C： \"john\".equals(\"john\") ', 'D: \"john\".equals(new String(\"john\"))', 'E：', 'C', '4', '1', '王琦志', '段翔翔', '2011-09-07 00:00:00', '2010-09-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('35', '1', '2', '低', '关于类的描叙正确的是', 'A：在类中定义的变量称为类的成员变量，在别的类中可以直接使用 ', 'B：局部变量的作用范围仅仅在定义它的方法内，或者是在定义它的控制流块中', 'C：使用别的类的方法仅仅需要引用方法的名字即可', 'D:一个类的方法使用该类的另一个方法时可以直接引用方法名', '', 'BD', '2', '1', '王琦志', '段翔翔', '2011-09-08 00:00:00', '2010-09-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('36', '1', '2', '低', '下面关于数组的说法中，错误的是', 'A：在类中声明一个整数数组作为成员变量，如果没有给它赋值，数值元素值为空 ', 'B：数组可以在内存空间连续存储任意一组数据', 'C：数组必须先声明，然后才能使用', 'D:数组本身是一个对象', '', 'AB', '2', '1', '王琦志', '段翔翔', '2011-09-09 00:00:00', '2010-09-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('37', '1', '1', '低', '在Java中，如果构造函数不带任何参数，那么构造函数的名称和类名可以不同', 'A：true', 'B：false', '', '', 'E：', 'B', '2', '1', '王琦志', '段翔翔', '2011-09-10 00:00:00', '2010-09-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('38', '1', '1', '低', '一个类可以具有多个子类', 'A：true', 'B：false', '', '', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2011-09-11 00:00:00', '2010-09-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('39', '1', '1', '低', '封装就是将属性私有化，提供共有的方法访问私有属性', 'A：true', 'B：false', '', '', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2011-09-12 00:00:00', '2010-09-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('40', '1', '1', '低', ' this关键字可以在类中的任何位置使用', 'A：true', 'B：false', '', '', 'E：', 'B', '2', '1', '王琦志', '段翔翔', '2011-09-13 00:00:00', '2010-09-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('41', '1', '1', '低', '下列选项中，不属于Java语言特点的一项是', 'A:分布式', ' B:安全性', ' C:编译执行', ' D:面向对象', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2011-09-14 00:00:00', '2010-09-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('42', '1', '1', '中', 'Java语言的特点与 C/C+ +语言的比较中说法错误的是', 'A：简单性Java继承了 C/C+ +的语法 ,丢弃了其中不常用又容易引起混淆的功能。', 'B：Java是一种纯面向对象的语言 ,具有封装、继承\n ( Inheritance)和多态( Polymorphism)的特点。', 'C：Java应用程序可凭借URL\n打开并访问网络上的对象。', 'D：解释型Java写成的源代码需\n要被编译成高阶的字节码 ,它们与机器架构有关。', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2011-09-15 00:00:00', '2010-09-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('43', '1', '1', '中', '符合对象和类的关系的是', 'A:教师和学生', 'B:书和房子', 'C:狗和猫', 'D:飞机和交通工具', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2011-09-16 00:00:00', '2010-09-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('44', '1', '1', '中', '下列不是类和类之间的基本关系的是 ', 'A：继承', 'B：封装', 'C：聚合', ' D：依赖', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2011-09-17 00:00:00', '2010-09-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('45', '1', '1', '低', '下列（   ）是合法的标识符？', 'A:12class', 'B:void', 'C:-5', ' D:_blank', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2011-09-18 00:00:00', '2010-09-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('46', '1', '1', '中', '以下关于继承的叙述正确的是', 'A、在Java中类只允许单\n一继承', 'B、在Java中一个类只能实\n现一个接口', 'C、在Java中一个类不能同时继承一个类和实现一个接口', 'D、在Java中接口只允许单一继承  ', 'E：', 'A', '2', '1', '董瑶', '段翔翔', '2011-09-19 00:00:00', '2010-09-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('47', '1', '1', '中', '表达式(12==0) && (1/0 < 1)的值为', 'A:true', 'B:false', 'C:0 ', 'D:运行时抛出异常', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2011-09-20 00:00:00', '2010-09-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('48', '1', '1', '中', '设有下列数组定义语句：int a[][]= {{1, 2}, {3}};\n则对此语句的叙述正确的是', 'A: 定义了一个名为a的\n一维数组', ' B: a数组 a[1][1]为0', 'C:a数组元素的\n下标为1～3', '\nD: 数组中每个元素的类型都是', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2011-09-21 00:00:00', '2010-09-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('49', '1', '1', '中', '下面关于方法的说法，不正确的是', 'A: Java中的构造方法名\n必须和类名相同', 'B: 方法体是对方法的实现，\n包括变量声明和合法语句', 'C: 如果一个类定义了构造方法，也可以用该类的默认构造方法', 'D: 类的私有方法不能被其他类直接访问', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2011-09-22 00:00:00', '2010-09-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('50', '1', '1', '中', '在Java中下列说法正确的是', 'A一个子类可以有多个父类，一个父类也可以有多个子类', 'B一个子类可以有多个父类，\n但一个父类只可以有一个子类', 'C一个子类可以有一个父类，但一个父类可以有多个子类', 'D上述说法都不对', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2011-09-23 00:00:00', '2010-09-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('51', '1', '1', '低', '下列的变量定义中，错误的是', 'A:int 6_a;float a', 'B：float a', 'C：int i=Integer.MAX_VALUE', 'D：static int i=100', 'E：', 'A', '2', '1', '宋朝晖', '段翔翔', '2011-09-24 00:00:00', '2010-09-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('52', '1', '1', '低', '以下字符常量中不合法的是', 'A:\'@\'', 'B:\'&\' ', 'C:\"k\"', 'D:\'整\'', 'E：', 'C', '2', '1', '宋朝晖', '段翔翔', '2011-09-25 00:00:00', '2010-09-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('53', '1', '1', '中', '对于一个三位的正整数n=789，以下结果为8的是', 'A: n/10%2', 'B: (n-n%10)/100', 'n%10', 'D:n%100/10 ', 'E：', 'D', '4', '1', '宋朝晖', '段翔翔', '2011-09-26 00:00:00', '2010-09-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('54', '1', '1', '中', '设 i, j, k, m为已赋值的 int 型变量，下列表达式的结果属于逻辑值的是', 'A: i==k & j+k >=m', 'B: i+k ', 'C:m++', 'D:m=i+j', 'E：', 'A', '4', '1', '宋朝晖', '段翔翔', '2011-09-27 00:00:00', '2010-09-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('55', '1', '1', '低', '变量a定义为int类型。以下选项中，合法的赋值语句是', 'A: a +1==2', 'B: a+=1', 'C:a=8.8f', 'D: a=new int', 'E：', 'B', '2', '1', '宋朝晖', '段翔翔', '2011-09-28 00:00:00', '2010-09-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('56', '1', '1', '低', '设有定义  int  i=123;  long  j=456;  下面赋值不正确的语句是', 'A: j=i;', 'B: j=(long)i;', 'C: i=(int)j;', 'D: i=j; ', 'E：', 'D', '2', '1', '宋朝晖', '段翔翔', '2011-09-29 00:00:00', '2010-09-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('57', '1', '1', '低', '下列语句序列执行后，m 的值是(),int  a=2, b=4, x=5;   if( a<--b ) x*=a;', 'A: 6', 'B:7', 'C:8', 'D:9', 'E：', 'D', '2', '1', '宋朝晖', '段翔翔', '2011-09-30 00:00:00', '2010-09-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('58', '1', '1', '低', '若a和b均是整型变量并已正确赋值，正确的switch语句是', 'A：switch(a+b);  { ...... }', 'B： switch( a+b*3.0 )  { ...... }', 'C： switch a  { ...... }', 'D： switch ( a%b )  { ...... }', 'E：', 'D', '2', '1', '宋朝晖', '段翔翔', '2011-10-01 00:00:00', '2010-09-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('59', '1', '1', '中', '以下for循环的执行次数是（）。 for(int x=0,y=0;(y!=0)|(x<4);x+=2);', 'A:无限次', 'B:一次也不执行', 'C:执行4次 ', 'D:执行3次', 'E：', 'B', '4', '1', '宋朝晖', '段翔翔', '2011-10-02 00:00:00', '2010-10-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('60', '1', '1', '高', '下列方法定义中，不正确的是()。', 'A:float x( int a,int b ) { return (a-b); }', 'B: int  x( int a,int b) { return a-b; } ', 'C: int  x( int a,int b ); { return a*b; } ', 'D: int  x(int a,int b) { return 1.2*(a+b); }', 'E：', 'D', '6', '1', '宋朝晖', '段翔翔', '2011-10-03 00:00:00', '2010-10-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('61', '1', '1', '低', '在java中，byte数据类型的取值范围是（）', 'A:-256至255', 'B：-255至255', 'C：-128至127', 'D：-127至127', 'E：', 'C', '4', '1', '商学军', '陈展', '2011-10-04 00:00:00', '2010-10-03 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('62', '1', '1', '中', '在java中，访问修饰符限制性最高的是（）', 'A:private', 'B：protected', 'C：public', 'D：默认', 'E：', 'A', '2', '1', '商学军', '陈展', '2011-10-05 00:00:00', '2010-10-04 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('63', '1', '1', '低', 'java所定义的版本中不包括', 'A：JAVA2 SE', 'B:JAVA2 EE', 'C:JAVA2 ME', 'D：JAVA2 HE', 'E：', 'D', '2', '1', '商学军', '陈展', '2011-10-06 00:00:00', '2010-10-05 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('64', '1', '1', '低', '下列说法正确的是', 'A：JAVA程序中可以有多个main方法', 'B:java程序的main方法必须写在类里面', 'C:java程序中类名必须与文件名一样', 'D：java程序的main方法中如果只有一条语句，可以不用{}（大括号）括起来', 'E：', 'B', '2', '1', '商学军', '陈展', '2011-10-07 00:00:00', '2010-10-06 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('65', '1', '1', '中', '表达式（11+3*8）/4%3的值是', 'A：31', 'B:0', 'C:1', 'D：2', 'E：', 'D', '4', '1', '商学军', '陈展', '2011-10-08 00:00:00', '2010-10-07 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('66', '1', '1', '低', '对象的特征在类中表示为变量，称为类的', 'A：对象', 'B:属性', 'C:方法', 'D：数据类型', 'E：', 'B', '2', '1', '商学军', '陈展', '2011-10-09 00:00:00', '2010-10-08 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('67', '1', '1', '中', '在java中，关于构造方法，下列说法错误的是', 'A：构造方法的名称必须与类名相同', 'B:构造方法可以带参数', 'C:构造方法不可以重载', 'D：构造方法绝对不能有返回值', 'E：', 'C', '4', '1', '商学军', '陈展', '2011-10-10 00:00:00', '2010-10-09 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('68', '1', '1', '中', '在java中，（）对象可以使用键/值得形式保存数据。', 'A：ArrayList', 'B:HashSet', 'C:HashMap', 'D：LinkedList', 'E：', 'C', '2', '1', '商学军', '陈展', '2011-10-11 00:00:00', '2010-10-10 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('69', '1', '1', '中', '在java中，以下（）命令能够将java源文件编译为类文件', 'A：java', 'B:javaw', 'C:javac', 'D：jar', 'E：', 'C', '2', '1', '商学军', '陈展', '2011-10-12 00:00:00', '2010-10-11 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('70', '1', '1', '低', '在java中，（）关键字用来终止循环语句。', 'A：return', 'B:continue', 'C:break', 'D：exit', 'E：', 'C', '2', '1', '商学军', '陈展', '2011-10-13 00:00:00', '2010-10-12 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('71', '1', '1', '低', '下列对继承的说法，哪个是正确的', 'A:子类能继承父类的私有方法和状态', 'B:子类能继承父类的protected方法，而不继承protected状态', 'C:子类只能继承父类public方法和状态', 'D:子类能继承父类的所有非私有方法和状态', 'E：', 'D', '2', '1', '邱仕攀', '邱仕攀', '2011-10-14 00:00:00', '2010-10-13 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('72', '1', '1', '低', '随着JAVA技术的不断发展，Sun公司根据市场进一步将java细分，其中对普通PC应用的是', 'A:J2EE ', 'B：J2SE', 'C:J2ME', 'D:JDK', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2011-10-15 00:00:00', '2010-10-14 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('73', '1', '1', '中', '下列关于java程序结构说法错误的是', 'A:package语句必须放在源文件的第一句', 'B:源文件可以没有import语句', 'C:一个源文件可以有多个类定义', 'D:一个源文件可以定义多个public类', 'E：', 'D', '2', '1', '邱仕攀', '邱仕攀', '2011-10-16 00:00:00', '2010-10-15 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('74', '1', '1', '低', '下面哪个声明是错误?', 'A:int i=0xFFFFFFFF;', 'B:byte b=01;', 'C:char c=\\u0000;', 'D:long l=1234567890L; ', 'E：', 'C', '2', '1', '邱仕攀', '邱仕攀', '2011-10-17 00:00:00', '2010-10-16 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('75', '1', '1', '中', '下面哪一个primitive type和对应的wrapper class是错误的?', 'A:java.lang.Integer ', 'B:java.lang.Long ', 'C:short java.lang.Short ', 'D:void java.lang.Void ', 'E：', 'E', '2', '1', '邱仕攀', '邱仕攀', '2011-10-18 00:00:00', '2010-10-17 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('76', '1', '1', '中', 'Which keyword is used to allow interaction with the lock flag ?', 'A:native ', 'B:static ', 'C:synchronized ', 'D:abstract', 'E：', 'C', '2', '1', '邱仕攀', '邱仕攀', '2011-10-19 00:00:00', '2010-10-18 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('77', '1', '1', '低', 'paint()方法使用哪种类型的参数', 'A:Graphics', 'B:Graphics2D ', 'C:String ', 'D:Color ', 'E：', 'A', '2', '1', '邱仕攀', '邱仕攀', '2011-10-20 00:00:00', '2010-10-19 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('78', '1', '1', '中', '下列哪个语句关于内存回收的说明是正确的', 'A:程序员必须创建一个线程来释放内存', 'B:内存回收程序负责释放无用内存', 'C:内存回收程序允许程序员直接释放内存', 'D:内存回收程序可以在指定的时间释放内存对象', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2011-10-21 00:00:00', '2010-10-20 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('79', '1', '1', '低', 'main()方法的返回类型是：', 'A.int', 'B.void ', 'C.boolean', 'D.static', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2011-10-22 00:00:00', '2010-10-21 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('80', '1', '1', '中', '下面的异常处理正确的是', 'A:try块必须同时与catch子句和finally子句一起使用。', 'B:try块只能使用一个catch子句。', 'C:try块中如果执行了return语句，则其finally子句不会执行。', 'D:try块不能单独使用。', 'E：', 'D', '2', '1', '邱仕攀', '邱仕攀', '2011-10-23 00:00:00', '2010-10-22 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('81', '1', '2', '低', '下面哪些是合法的标识符？', 'A:$persons', 'B：TwoUsers', 'C：*point', 'D：this', 'E：_year', 'ABE', '5', '1', '郑文涛', '邱仕攀', '2011-10-24 00:00:00', '2010-10-23 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('82', '1', '2', '高', '下面关于继承的哪些叙述是正确的？', 'A:在java中只允许单一继承。', 'B：在java中一个类只能实现一个接口。', 'C:在java中一个类不能同时继承一个类和实现一个接口。', 'D．java的单一继承使代码更可靠。', '', 'AD', '6', '1', '郑文涛', '邱仕攀', '2011-10-25 00:00:00', '2010-10-24 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('83', '1', '1', '低', '下面选项中，哪个是短路与运算符？', 'A. &  ', 'B. &&', 'C. |', 'D. ||', 'E：', 'B', '4', '1', '郑文涛', '邱仕攀', '2011-10-26 00:00:00', '2010-10-25 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('84', '1', '1', '低', '将十进制的6与11进行异或运算的结果为？', 'A. 11    ', 'B. 12', 'C. 13', 'D. 14', 'E：', 'C', '4', '1', '郑文涛', '邱仕攀', '2011-10-27 00:00:00', '2010-10-26 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('85', '1', '1', '中', '下列选项中关于二维数组的定义，格式错误的是？A. int[][] arr = new int[3][4] B. int[][] arr = new int[3][]', 'A. int[][] arr = new int[3][4] ', 'B. int[][] arr = new int[3][]', 'C. int[][] arr = new int[][4]', 'D. int[][] arr = {{1,2},{3,4,5},{6}}', 'E：', 'C', '5', '1', '郑文涛', '邱仕攀', '2011-10-28 00:00:00', '2010-10-27 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('86', '1', '1', '低', '下面关于构造函数的句子中,哪个是不正确的?', 'A.构造函数返回值类型为void', 'B. 构造函数没有返回值类型', 'C. 构造函数的名称和类的名称相同', 'D. 当创建类的一个新的对象时,构造函数被调用', 'E：', 'A', '4', '1', '郑文涛', '邱仕攀', '2011-10-29 00:00:00', '2010-10-28 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('87', '1', '1', '低', '在Java中，能实现多重继承效果的方式是？', 'A．内部类      ', 'B．适配器  ', 'C．接口', 'D．同步', 'E：', 'C', '4', '1', '郑文涛', '邱仕攀', '2011-10-30 00:00:00', '2010-10-29 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('88', '1', '1', '低', 'java语言中，下列哪一子句是异常处理的出口？', 'A、try{?}子句  ', 'B、catch{?}子句', 'C、finally{?}子句 ', 'D、以上说法都不对', 'E：', 'C', '4', '1', '郑文涛', '邱仕攀', '2011-10-31 00:00:00', '2010-10-30 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('89', '1', '1', '中', '下列关于容器集合类的说法正确的是？', 'A.LinkedList继承自List', 'B.AbstractSet继承自Set', 'C.HashSet继承自AbstractSet', 'D.WeakMap继承自HashMap', 'E：', 'C', '5', '1', '郑文涛', '邱仕攀', '2011-11-01 00:00:00', '2010-10-31 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('90', '1', '1', '高', 'Java中的集合类包括ArrayList、LinkedList、HashMap等类，下列关于集合类描述错误的是', 'A.ArrayList和LinkedList均实现了List', 'B.ArrayList的访问速度比LinkedList快', 'C.添加和删除元素时，ArrayList的表现更佳', 'D.HashMap实现Map接口，它允许任何类型的键和值对象，并允许将null用作键或值', 'E：', 'C', '6', '1', '郑文涛', '邱仕攀', '2011-11-02 00:00:00', '2010-11-01 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('91', '1', '1', '低', '1．编译Java  Applet 源程序文件产生的字节码文件的扩展名为(      )。', '   A、java ', '  B、class  ', ' C、html ', 'D、exe', 'E：', 'B', '2', '1', '陈俊', '邱仕攀', '2011-11-03 00:00:00', '2010-11-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('92', '1', '1', '低', '2．main方法是Java  Application程序执行的入口点，关于main方法的方法头以下哪项是合法的（     ）？', '\nA、public  static  void  main（ ）', 'B、public  static  void   main（ String  args[] ）', '\nC、public static int  main（String  [] arg ）', 'D、public  void  main（String  arg[] ）', 'E：', 'B', '2', '1', '陈俊', '邱仕攀', '2011-11-04 00:00:00', '2010-11-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('93', '1', '1', '中', '3．为AB类的一个无形式参数无返回值的方法method书写方法头，使得使用类名AB作为前缀就可以调用它，该方法头的形式为(      )。静态方法可以直接用 类名.方法名 来调用，而不需要实例化', '  A、static  void  method( )   ', '  B、public  void  method( )    ', '\n  C、final  void  method( )   ', '  D、abstract  void  method( )', 'E：', 'A', '4', '1', '陈俊', '邱仕攀', '2011-11-05 00:00:00', '2010-11-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('94', '1', '1', '低', '4．下列哪两个是合法的Java标识符？（     ）', 'A、Tree&Glasses   ', '  B、FirstJavaApplet', ' C、_$theLastOne', ' D、273.5', 'E：', 'B', '2', '1', '陈俊', '邱仕攀', '2011-11-06 00:00:00', '2010-11-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('95', '1', '1', '低', '5．Java  Application源程序的主类是指包含有（     ）方法的类。', 'A、main方法 ', ' B、toString方法', 'C、init方法', ' D、actionPerfromed方法', 'E：', 'A', '2', '1', '陈俊', '邱仕攀', '2011-11-07 00:00:00', '2010-11-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('96', '1', '1', '中', '6．Java的字符类型采用的是Unicode编码方案，每个Unicode码占用（      ）个比特位。', 'A、8 ', ' B、16 ', ' C、32', '  D、64', 'E：', 'B', '4', '1', '陈俊', '邱仕攀', '2011-11-08 00:00:00', '2010-11-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('97', '1', '1', '中', '7．设 a = 8，则表达式  a >>> 2 的值是(      )。（无符号右移动）左移是乘 右是除 ', ' A、1', 'B、2  ', ' C、3', ' D、4', 'E：', 'A', '4', '1', '陈俊', '邱仕攀', '2011-11-09 00:00:00', '2010-11-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('98', '1', '1', '中', '8．若a的值为3时，下列程序段被执行后，c的值是多少？（      ）\n\n         c = 1;\n\n         if  ( a>0 )  if  ( a>3 )  c = 2;   else   c = 3;    else   c = 4;', ' A、1   ', ' B、2 ', 'C、3', ' D、4', 'E：', 'D', '4', '1', '陈俊', '邱仕攀', '2011-11-10 00:00:00', '2010-11-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('99', '1', '1', '中', '9．在编写Java  Application程序时，若需要使用到标准输入输出语句，必须在程序的开头写上(       )语句。', ' A、import   java.awt.* ;', 'B、import   java.applet.Applet ;', 'C、import   java.io.* ;', 'D、import   java.awt.Graphics ;', 'E：', 'C', '4', '1', '陈俊', '邱仕攀', '2011-11-11 00:00:00', '2010-11-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('100', '1', '1', '中', '10．对于构造函数，下列叙述正确的是（     ）。', ' A、构造函数是类的一种特殊函数，它的方法名必须与类名相同。特殊的成员函数', '  B、构造函数的返回类型只能是void型。\n\n                   构造方法没有返回类型，也不能定义为void，在方法名前面不声明方法类型。 ', ' C、构造函数的主要作用是完成对类的对象的初始化工作。', '  D、一般在创建新对象时，系统会自动调用构造函数。构造方法不能由编程人员调用，而要系统调用。 ', 'E：', 'C', '4', '1', '陈俊', '邱仕攀', '2011-11-12 00:00:00', '2010-11-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('101', '2', '1', '中', '使用response对象进行重定向时,使用的是()方法。', 'A:getAttribute', 'B:setContentType', 'C:sendRedirect', 'D:setAttribute', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2011-11-13 00:00:00', '2010-11-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('102', '2', '1', '中', '在Http协议中用于发送大量数据的方法的是', 'A:post', 'B:get', 'C:put', 'D:options', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2011-11-14 00:00:00', '2010-11-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('103', '2', '1', '中', 'HttpServletRequest接口的()方法用于创建会话。', 'A:setSession()', 'B:getContext()', 'C:getSession()', 'D:putSession()', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2011-11-15 00:00:00', '2010-11-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('104', '2', '1', '中', '()动作用于将请求发送给其他页面', 'A:next', 'B:forward', 'C:include', 'D:param', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2011-11-16 00:00:00', '2010-11-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('105', '2', '1', '中', '如何获取一个 Cookie[]()。', 'A:request.getCookies()', 'B:request.getCookie()', 'C:response.getCookies()', 'D:response.getCookie()', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2011-11-17 00:00:00', '2010-11-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('106', '2', '1', '中', '在JSP中调用JavaBean时不会用到的标记是()。', 'A:<javabean>', 'B:<jsp:useBean>', 'C:<jsp:setProperty>', 'D:<jsp:getProperty>', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2011-11-18 00:00:00', '2010-11-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('107', '2', '1', '中', '下面哪一个不是JSP本身已加载的基本类', 'A:java.lang.*', 'B:java.io.*', 'C:javax.servlet.*', 'D:javax.servlet.jsp.*', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2011-11-19 00:00:00', '2010-11-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('108', '2', '1', '中', '对于预定义<%!预定义%>的说法错误的是:', 'A:一次可声明多个变量和方法，只要以“;”结尾就行', 'B:一个声明仅在一个页面中有效', 'C:声明的变量将作为局部变量', 'D:在预定义中声明的变量将在JSP页面初始化', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2011-11-20 00:00:00', '2010-11-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('109', '2', '1', '中', 'page指令的()属性用于引用需要的包或类', 'A:extends', 'B:import', 'C:isErrorPage', 'D:language', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2011-11-21 00:00:00', '2010-11-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('110', '2', '1', '中', '下列选项中,()可以准确地获取请求页面的一个文本框的输入(文本框的名称为name)', 'A:request.getParameter（name）', 'B:request.getParameter（\"name\"）', 'C:request.getParameterValues(name)', 'D:request.getParameterValues(\"name\")', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2011-11-22 00:00:00', '2010-11-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('111', '2', '1', '中', '使用 response 对象进行重定向时，使用的是（ ）方法', 'A:getAttribute', 'B:setContentType', 'C:sendRedirect', 'D:setAttribute', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2011-11-23 00:00:00', '2010-11-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('112', '2', '1', '高', '在 2 中，在 web.xml 中，有如下代码<session-config><session-timeout>30</session-timeout></session-config>以下描述，正确的是()', 'A:定义了默认的会话时时长，时长为 30 分钟', 'B:可以使用HttpSession类的 getMaxInactiveInterval()方法把该值取出来', 'C:定义了默认的会话超时时长，时长为 30 小时', 'D:可以使用 Session类的 getMaxInactiveInterva（）方法把该值取出来', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2011-11-24 00:00:00', '2010-11-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('113', '2', '1', '低', '在 Http协议中用于发送大量数据的方法的是（)', 'A:post', 'B:get', 'C:put', 'D:options', 'E：', 'A', '2', '1', '陈琰', '陈琰', '2011-11-25 00:00:00', '2010-11-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('114', '2', '1', '中', 'HttpServletRequest 接口的（)方法用于创建会话', 'A:setSession()', 'B:getContext()', 'C:getSession()', 'D: putSession()', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2011-11-26 00:00:00', '2010-11-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('115', '2', '1', '高', '（ ）动作用于将请求发送给其他页面', 'A:next   ', 'B:forward   ', 'C:include  ', 'D:param ', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2011-11-27 00:00:00', '2010-11-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('116', '2', '1', '低', 'page指令的（）属性用于引用需要的包或类', 'A:extends  ', 'B:import  ', 'C:isErrorPage  ', 'D:language ', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2011-11-28 00:00:00', '2010-11-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('117', '2', '1', '中', '如何获取一个 Cookie[]（）', 'A:request.getCookies() ', 'B:request.getCookie()', 'C:response.getCookies() ', 'D:response.getCookie()', 'E：', 'A', '2', '1', '陈琰', '陈琰', '2011-11-29 00:00:00', '2010-11-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('118', '2', '1', '高', '关于输入和输出的隐式对象有（）', 'A:application   ', 'B:request   ', 'C:response  ', 'D:out  ', 'E：', 'D', '2', '1', '陈琰', '陈琰', '2011-11-30 00:00:00', '2010-11-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('119', '2', '1', '低', '在 JSP 中调用 JavaBean 时不会用到的标记是（）', 'A:<javabean>  ', 'B:<jsp:useBean> ', 'C:<jsp:setProperty>   ', 'D:<jsp:getProperty>  ', 'E：', 'A', '2', '1', '陈琰', '陈琰', '2011-12-01 00:00:00', '2010-11-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('120', '2', '1', '中', '（ ）用于获取 Bean的属性的值 ', 'A:setProperty   ', 'B:setValue  ', 'C:getProperty  ', 'D:getValue  ', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2011-12-02 00:00:00', '2010-12-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('121', '2', '1', '中', 'Js的特性不包括?', 'A:解释型', 'B:用于客户端', 'C:基于对象', 'D:面向对象', 'E：', 'C', '2', '1', '蔡志钢', '段翔翔', '2011-12-03 00:00:00', '2010-12-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('122', '2', '1', '中', '在HTML页面中，不能与onChange事件处理程序相关联的表单元素有?', 'A:文本框', 'B:复选框', 'C:列表框', 'D:按钮', 'E：', 'D', '4', '1', '蔡志钢', '段翔翔', '2011-12-04 00:00:00', '2010-12-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('123', '2', '1', '中', '键盘按下一个键时，会触发javascript中哪个事件?', 'A:onFocus', 'B:onKeyDown', 'C:onBlur', 'D:onSubmit', 'E：', 'B', '6', '1', '蔡志钢', '段翔翔', '2011-12-05 00:00:00', '2010-12-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('124', '2', '1', '中', 'CSS是利用什么XHTML标签构建网页布局?', 'A:<dir>', 'B:<div>', 'C:<dis>', 'D:<dif>', 'E：', 'B', '2', '1', '蔡志钢', '段翔翔', '2011-12-06 00:00:00', '2010-12-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('125', '2', '1', '中', '下列选项中不属于CSS文本属性的是?', 'A:font-size', 'B:text-align', 'C:text-transform', 'D:line-height', 'E：', 'C', '4', '1', '蔡志钢', '段翔翔', '2011-12-07 00:00:00', '2010-12-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('126', '2', '1', '中', 'html中使用什么标记想网页插入gif动画?', 'A:<form>', 'B:<body>', 'C:<table>', 'D:<img>', 'E：', 'D', '2', '1', '蔡志钢', '段翔翔', '2011-12-08 00:00:00', '2010-12-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('127', '2', '1', '中', '要导入java.io.*包，需要用什么指令?', 'A:page', 'B:include', 'C:taglib', 'D:forward', 'E：', 'B', '4', '1', '蔡志钢', '段翔翔', '2011-12-09 00:00:00', '2010-12-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('128', '2', '1', '中', 'js中window对象的什么方法用于关闭当前窗口?', 'A:openWindow()', 'B:window()', 'C:open()', 'D:close()', 'E：', 'D', '6', '1', '蔡志钢', '段翔翔', '2011-12-10 00:00:00', '2010-12-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('129', '2', '1', '中', 'jsp应用程序中，web.xml应位于哪个目录下?', 'A:admin', 'B:servlet', 'C:WEB-INF', 'D:webRoot', 'E：', 'C', '2', '1', '蔡志钢', '段翔翔', '2011-12-11 00:00:00', '2010-12-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('130', '2', '1', '中', 'tomcat的默认端口号是?', 'A:80', 'B:8080', 'C:1433', 'D:3306', 'E：', 'B', '2', '1', '蔡志钢', '段翔翔', '2011-12-12 00:00:00', '2010-12-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('131', '2', '1', '低', '下列不属于HTTP协议中GET方法和POST方法的区别内容是', 'A:提交数据时，POST比GET安全。', 'B:提交数据时，POST没有数据量的限制。', 'C:GET方法请求的页面可以作为书签', 'D:POST方法请求的页面可以使用邮件发送。', 'E：', 'D', '2', '1', '王琦志', '段翔翔', '2011-12-13 00:00:00', '2010-12-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('132', '2', '1', '低', '下列有关Servlet的生命周期，说法不正确的是', 'A:在创建自己的Servlet时候，应该在初始化方法init()方法中创建Servlet实例。', 'B:在Servlet生命周期的服务阶段，执行service()方法，根据用户请求的方法，执行相应的doGet()或是doPost()方法。', 'C:在销毁阶段，执行destroy()方法后系统立刻进行垃圾回收。', 'D:destroy()方法仅执行一次，即在服务器停止且卸载Servlet时执行该方法。', 'E：', 'B', '2', '1', '王琦志', '段翔翔', '2011-12-14 00:00:00', '2010-12-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('133', '2', '1', '低', 'JSP EL表达式：${user.loginName}的执行效果等同于', 'A:<%=user.getLoginName()%>', 'B:<% user.getLoginName();%> ', 'C:<%=user.loginName%> ', 'D:<% user.loginName;%>', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2011-12-15 00:00:00', '2010-12-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('134', '2', '1', '中', '以下关于HttpServlet的说法错误的是', 'A:HttpServlet是一个抽象类', 'B:HttpServlet类扩展了GenericServlet类 ', 'C:HttpServlet类的子类必须至少重写service方法', 'D:HttpServlet位于javax.servlet.http包中', 'E：', 'C', '4', '1', '王琦志', '段翔翔', '2011-12-16 00:00:00', '2010-12-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('135', '2', '1', '低', '在Servlet里，能正确获取session的语句是', 'A:HttpSession session = request.getSession(true);', 'B:HttpSession session = request.getHttpSession(true); ', 'C:HttpSession session = response.getSession(true); ', 'D:HttpSession session = response. getHttpSession (true); ', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2011-12-17 00:00:00', '2010-12-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('136', '2', '1', '中', '在J2EE中，request对象的（ ）方法可以获取页面请求中一个表单组件对应多个值时的用户的请求数据。', 'A:String getParameter(String name) ', 'B:String[] getParameter(String name)', 'C:String getParameterValuses(String name)', 'D:String[] getParameterValues(String name)', 'E：', 'D', '4', '1', '王琦志', '段翔翔', '2011-12-18 00:00:00', '2010-12-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('137', '2', '1', '中', 'J2EE中，JSP EL表达式：${user.loginName}执行效果等同于（ ）。', 'A:<% = user.getLoginName()%>', 'B:<%user.getLoginName();%> ', 'C:<% = user.loginName%>', 'D:<% user.loginName;%> ', 'E：', 'A', '4', '1', '王琦志', '段翔翔', '2011-12-19 00:00:00', '2010-12-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('138', '2', '1', '低', 'servlet的生命周期又一系列事件组成，把这些事件按照先后顺序排序，以下正确的是（）', 'A:加载类，实例化，请求处理，初始化，销毁', 'B:加载类，实例化，初始化，请求处理，销毁', 'C:实例化，加载类，初始化，请求处理，销毁', 'D:加载类，初始化，实例化，请求处理，销毁', 'E：', 'B', '2', '1', '王琦志', '段翔翔', '2011-12-20 00:00:00', '2010-12-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('139', '2', '2', '低', '下列接口（）是Collection接口的子接口。', 'A:List', 'B:ArrayList', 'C:Set', 'D:Map', '', 'AC', '2', '1', '王琦志', '段翔翔', '2011-12-21 00:00:00', '2010-12-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('140', '2', '2', '中', '关于session的使用，下列说法正确的是', 'A:不同的用户窗口具有不同的session', 'B:不同的用户窗口具有相同的session', 'C:session有可能超时', 'D:session永远不可能超时', '', 'AC', '4', '1', '王琦志', '段翔翔', '2011-12-22 00:00:00', '2010-12-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('141', '2', '1', '中', 'HTML是什么意思', 'A高级文本语言', 'B超文本标记语言', 'C扩展标记语言', 'D图形化标记语言  ', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2011-12-23 00:00:00', '2010-12-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('142', '2', '1', '中', '哪一个标记用于使HTML文档中表格里的单元格\n在同行进行合并？', 'A cellspacing', 'B cellpadding', 'C rowspan', 'D colspan  ', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2011-12-24 00:00:00', '2010-12-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('143', '2', '1', '中', '使用以下那一种元素可以将声音添加到网页里面？', 'A sound', 'B bgsound', 'C music', 'D voice  ', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2011-12-25 00:00:00', '2010-12-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('144', '2', '1', '中', '在<param >标签中，下列哪个属性用于给参数传递内容？', 'A Address', 'B Value', 'C Amount', 'D Method  ', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2011-12-26 00:00:00', '2010-12-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('145', '2', '1', '中', '如何在警告框中写入“Hello World”？', 'A alertBox=\"Hello World\" ', 'B msgBox(\"Hello World\") ', 'C alert(\"Hello World\") ', 'D alertBox(\"Hello World\")', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2011-12-27 00:00:00', '2010-12-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('146', '2', '1', '中', '定义JavaScript数组的正确方法是？', 'A)  var txt = new Array=\n\"tim\",\"kim\",\"jim\") ', 'B var txt = new Array\n(1:\"tim\",2:\"kim\",3:\"jim\")', 'C var txt = new Array\n(\"tim\",\"kim\",\"jim\") ', 'D var txt = new Array:\n1=(\"tim\")2=(\"kim\")3=(\"jim\")', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2011-12-28 00:00:00', '2010-12-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('147', '2', '1', '中', '下列不属于文档对象的方法的是', 'A createElement', 'B getElementById', 'C getElementByName', 'D forms.length ', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2011-12-29 00:00:00', '2010-12-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('148', '2', '1', '中', '通常情况下，一个URL的格式是', 'A 协议//路径名称主机：端\n口/#哈希标识？搜索条件', 'B 协议//主机：端口/#哈希\n标识/路径名称？搜索条件', 'C协议//主机：端口/路径\n名称？搜索条件 ', 'D 协议//主机：端口？搜索\n条件/路径名称#哈希标识', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2011-12-30 00:00:00', '2010-12-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('149', '2', '1', '中', '关于代码优化下列表述不对的是', 'A）JavaScript程序代码编写出\n来后，主要是交给浏览器去运行', 'B 尽可能使用全局变量，\n可以使代码简单', 'C 书写风格应遵循“标识符短\n而含义清晰”、“代码缩进对齐\n”、“尽可能注释”等原则', 'D 在机器上运行的代码总是希\n望其速度越快越好，阅读维护时\n其可读性可理解性最好   ', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2011-12-31 00:00:00', '2010-12-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('150', '2', '1', '中', '在JavaScript中，以下代码能产生输出的是', 'A．document.write() ', 'B window.write()', 'C．document.confirm() ', 'D．write “The Undefined Function”', 'E：', 'A', '2', '1', '董瑶', '段翔翔', '2012-01-01 00:00:00', '2010-12-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('151', '2', '1', '低', '在表单提交的数据中，如果变量的值有多个，这时应调用()方法', 'A: getParameterValues()', 'B: getParameter()', 'C:getParameterNames()', 'D: getAttribute()', 'E：', 'A', '2', '1', '宋朝晖', '段翔翔', '2012-01-02 00:00:00', '2011-01-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('152', '2', '1', '低', '表单数据的提交方法有两种, （）方法使得数据由标准的输入设备读入。', 'A:Get        ', 'B:Post', 'C:Read ', 'D:Input', 'E：', 'B', '2', '1', '宋朝晖', '段翔翔', '2012-01-03 00:00:00', '2011-01-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('153', '2', '1', '中', '在 Java EE 中，在 web.xml 中，有如下代码:<session-config>  <session-timeout>30</session-timeout> </sessionconfig>以下描述，正确的是', 'A:定义了默认的会话时时长，时长为 30 分钟', 'B:可以使用HttpSession类的 getMaxInactiveInterval()方法把该值取出来', 'C:定义了默认的会话超时时长，时长为 30 小时 ', 'D:可以使用 Session类的 getMaxInactiveInterval（）方法把该值取出来', 'E：', 'B', '4', '1', '宋朝晖', '段翔翔', '2012-01-04 00:00:00', '2011-01-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('154', '2', '1', '中', '对于预定义<%!预定义%>的说法错误的是：', 'A:一次可声明多个变量和方法，只要以“;”结尾就行', 'B:一个声明仅在一个页面中有效', 'C:声明的变量将作为局部变量', 'D:在预定义中声明的变量将在JSP页面初始化时初始化', 'E：', '', '4', '1', '宋朝晖', '段翔翔', '2012-01-05 00:00:00', '2011-01-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('155', '2', '1', '中', '对于ServletRequest接口的获取请求参数的方法的描述那一项是正确的？', 'A:getParameter方法只用于接收POST请求参数，接收GET请求参数需要使用getQueryString方法', 'B:如果一个参数key有多个值，那么getParameter(key)方法会返回空', 'C:如果一个参数key有多个值，那么getParameterValues(key)方法会返回一个包含所有值的字符串数组', 'D:getParameter方法返回Object对象，使用前要强制类型转换：如String str=(String) request.getParameter(key) ', 'E：', 'C', '4', '1', '宋朝晖', '段翔翔', '2012-01-06 00:00:00', '2011-01-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('156', '2', '1', '低', '从 “员工” 表的“姓名”字段中找出名字包含“玛丽”的人，下面哪条select语句正确：（  ）', 'A:Select * from员工 where 姓名 =’_玛丽_’', 'B:Select * from员工 where 姓名 =’%玛丽_’', 'C: Select * from员工 where 姓名 like ‘_玛丽%’', 'D:Select * from员工 where 姓名 like ‘%玛丽%', 'E：', 'D', '2', '1', '宋朝晖', '段翔翔', '2012-01-07 00:00:00', '2011-01-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('157', '2', '1', '中', 'Page指令用于定义JSP文件中的全局属性，下列关于该指令用法的描述不正确的是', 'A:Page指令用于定义JSP文件中的全局属性，下列关于该指令用法的描述不正确的是', 'B:可以在一个页面中使用多个<%@ page %>指令。', 'C:为增强程序的可读性，建议将<%@ page %>指令放在JSP文件的开头，但不是必须的。 ', 'D:<%@ page %>指令中的属性只能出现一次。', 'E：', 'B', '4', '1', '宋朝晖', '段翔翔', '2012-01-08 00:00:00', '2011-01-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('158', '2', '1', '低', '关于session的使用，下列说话正确的是', 'A:不同的用户窗口具有不同的session ', 'B:不同的用户窗口具有相同的session ', 'C:session不能能自动关闭', 'D:Session永远不可能超时', 'E：', 'A', '2', '1', '宋朝晖', '段翔翔', '2012-01-09 00:00:00', '2011-01-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('159', '2', '1', '低', '给定JSP程序源码如下，该JSP运行后输出的结果是(),<html> <% int count=1  %> Count : <%++count  %> </html>', 'A:Count:1      ', 'B:Count:2 ', 'C:  1:2', 'D:Count', 'E：', 'D', '2', '1', '宋朝晖', '段翔翔', '2012-01-10 00:00:00', '2011-01-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('160', '2', '1', '低', '如果把用户名变量UserName存放在session对象中，下面的语句正确的是', 'A:session.setName(UserName) ', 'B:session.setName(“name”,UserName)', 'C:session.setAttribute(UserName)  ', 'D:session.setAttribute(“name”,UserName)', 'E：', 'D', '2', '1', '宋朝晖', '段翔翔', '2012-01-11 00:00:00', '2011-01-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('161', '2', '1', '低', 'web标准的制定者是 （）', 'A：微软', 'B：万维网联盟', 'C：网景公司', 'D:apche组织', 'E：', 'B', '2', '1', '商学军', '陈展', '2012-01-12 00:00:00', '2011-01-11 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('162', '2', '1', '中', '在下列HTML中，哪个是最大的标题', 'A：<h6>', 'B：<head>', 'C：<heading>', 'D：<h1>', 'E：', 'D', '4', '1', '商学军', '陈展', '2012-01-13 00:00:00', '2011-01-12 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('163', '2', '1', '低', '请1产生粗体字的 HTML 标签：', 'A：<bold>', 'B：<bb>', 'C：<b>', 'D：<bld>', 'E：', 'A', '2', '1', '商学军', '陈展', '2012-01-14 00:00:00', '2011-01-13 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('164', '2', '1', '中', '以下选项中，哪个全部都是表格标签', 'A：<table><head><tfoot>', 'B：<table><tr><td>', 'C：<table><tr><tt>', 'D：<thead><body><tr>', 'E：', 'B', '2', '1', '商学军', '陈展', '2012-01-15 00:00:00', '2011-01-14 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('165', '2', '1', '低', '请1可以使单元格中的内容进行左对齐的正确 HTML 标签', 'A：<td align=\"left\">', 'B：<td valign=\"left\">', 'C：<td leftalign>', 'D：<tdleft>', 'E：', 'A', '2', '1', '商学军', '陈展', '2012-01-16 00:00:00', '2011-01-15 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('166', '2', '1', '低', '在下列的 HTML 中，哪个可以产生复选框', 'A：<input type=\"check\">', 'B：<checkbox>', 'C：<input type=\"checkbox\">', 'D：<check>', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-01-17 00:00:00', '2011-01-16 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('167', '2', '1', '中', '在 HTML 文档中，引用外部样式表的正确位置是', 'A：文档的末尾', 'B：文档的顶部', 'C：<body> 部分', 'D：<head> 部分', 'E：', 'D', '4', '1', '商学军', '陈展', '2012-01-18 00:00:00', '2011-01-17 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('168', '2', '1', '低', '下列哪个选项的 CSS 语法是正确的', 'A：body:color=black', 'B：{body:color=black(body}', 'C：body {color: black}', 'D：{body;color:black}', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-01-19 00:00:00', '2011-01-18 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('169', '2', '1', '中', '如何改变某个元素的文本颜色', 'A：text-color:', 'B：fgcolor:', 'C：color:', 'D：text-color=', 'E：', 'A', '4', '1', '商学军', '陈展', '2012-01-20 00:00:00', '2011-01-19 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('170', '2', '1', '低', 'XML指的是（）', 'A：Example Markup Language', 'B：X-Markup Language', 'C：eXtensible Markup Language', 'D：eXtra Modern Link', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-01-21 00:00:00', '2011-01-20 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('171', '2', '2', '高', '下面哪些产品是，或者包含Servlet Container?', 'A:Apache', 'B:Tomcat ', 'C:Weblogic Server ', 'D:WebSphere ', '', 'BCD', '4', '1', '邱仕攀', '段翔翔', '2012-01-22 00:00:00', '2011-01-21 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('172', '2', '2', '高', '对于大多数J2EE Container来说，web应用最终可以以那种方式进行部署？', 'A:war', 'B.jar ', 'C.ear', 'D:直接以目录的形式', '', 'ABCD', '4', '1', '邱仕攀', '段翔翔', '2012-01-23 00:00:00', '2011-01-22 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('173', '2', '2', '高', 'weblogic中部署EJB的jar包中须包含的部署描述符文件有', 'A.web.xml ', 'B.ejb-jar.xml', 'C.application.xml', 'D.weblogic-ejb-jar.xml ', '', 'BD', '4', '1', '邱仕攀', '段翔翔', '2012-01-24 00:00:00', '2011-01-23 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('174', '2', '2', '高', '关于J2EE的描述正确的是', 'A:是一种利用Java 2平台来简化企业解决方案的开发,部署和管理相关的复杂问题的体系结构', 'B:J2EE是一个产品', 'C:一个J2EE的应用必须是基于Web的', 'D:J2EE提供了对EJB, JavaServlets API, JSP以及XML技术的全面支持', '', 'AD', '4', '1', '邱仕攀', '段翔翔', '2012-01-25 00:00:00', '2011-01-24 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('175', '2', '2', '中', '下面哪些属于J2EE的web组件', 'A. JSP', 'B. SERVLET', 'C.APPLET', 'D.IE', '', 'AB', '2', '1', '邱仕攀', '段翔翔', '2012-01-26 00:00:00', '2011-01-25 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('176', '2', '1', '低', '下面哪个是序列化接口', 'A.SeriaLizable ', 'B.ObjectOutputStream ', 'C.Set', 'D.ObjectInputStream', 'E：', 'A', '2', '1', '邱仕攀', '段翔翔', '2012-01-27 00:00:00', '2011-01-26 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('177', '2', '1', '中', 'weblogic启动Admin Server后默认的控制台路径是', 'A./manage ', 'B./conacle ', 'C./manager', 'D./control ', 'E：', 'B', '2', '1', '邱仕攀', '段翔翔', '2012-01-28 00:00:00', '2011-01-27 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('178', '2', '1', '中', 'EJB不支持下列哪种服务', 'A.Servlet', 'B.JDBC', 'C.JMS', 'D.JTA', 'E：', 'A', '2', '1', '邱仕攀', '段翔翔', '2012-01-29 00:00:00', '2011-01-28 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('179', '2', '1', '中', '关于MVC,下面的说法正确的是', 'A.HTTP实现MVC的View部分', 'B.JSP实现MVC的Control部分', 'C.Servlet实现MVC的Modle部分', 'D.EJB实现MVC的Modle部分', 'E：', 'D', '2', '1', '邱仕攀', '段翔翔', '2012-01-30 00:00:00', '2011-01-29 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('180', '2', '1', '中', '下面哪些方法( )方法不是Applet的基本方法', 'A.init() ', 'B.run()', 'C.stop()', 'D:start()', 'E：', 'B', '2', '1', '邱仕攀', '段翔翔', '2012-01-31 00:00:00', '2011-01-30 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('181', '2', '1', '低', '下面哪些属于JSP内置对象及方法？ ', 'A.request', 'B.out', 'C.application', 'D.config', 'E：', 'D', '4', '1', '郑文涛', '段翔翔', '2012-02-01 00:00:00', '2011-01-31 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('182', '2', '1', '低', '为了让浏览器以UTF-8编码来显示JSP页面，请问下列JSP代码正确的是？', 'A.<%@ page contentType=', 'B.<meta http-equiv=', 'C.把所有输出内容重新编码：new String(content. getBytes())', 'D.response. setContentType()', 'E：', 'D', '4', '1', '郑文涛', '段翔翔', '2012-02-02 00:00:00', '2011-02-01 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('183', '2', '1', '高', '下面有关JSP内置对象的描述，说法错误的是？', 'A.session对象：session对象指的是客户端与服务器的一次会话，从客户连到服务器的一个WebApplication开始，直到客户端与服务器断开连接为止', 'B.request对象：客户端的请求信息被封装在request对象中，通过它才能了解到客户的需求，然后做出响应', 'C.application对象：application对象实现了用户间数据的共享，可存放全局变量，可以有多个', 'D.response对象：response对象包含了响应客户请求的有关信息', 'E：', 'C', '6', '1', '郑文涛', '段翔翔', '2012-02-03 00:00:00', '2011-02-02 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('184', '2', '1', '低', '写 \"Hello World\" 的正确 Javascript 语法是？', 'A.(\"Hello World\")', 'B.\"Hello World\"', 'C.response.write(\"Hello World\")', 'D.document.write(\"Hello World\")', 'E：', 'D', '4', '1', '郑文涛', '段翔翔', '2012-02-04 00:00:00', '2011-02-03 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('185', '2', '1', '低', '哪一个是javascript中array的正确写法？', 'A.var txt = new Array(\"tim\",\"kim\",\"jim\")', 'B.var txt = new  Array=\"tim\",\"kim\",\"jim\"', 'C.var txt = new Array:1=(\"tim\")2=(\"kim\")3=(\"jim\")', 'D.var txt = new Array(1:\"tim\",2:\"kim\",3:\"jim\")', 'E：', 'A', '4', '1', '郑文涛', '段翔翔', '2012-02-05 00:00:00', '2011-02-04 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('186', '2', '1', '低', '下面有关css1器的说法错误的是？', 'A.intro --- 1 class=\"intro\" 的所有元素。', 'B.#firstname --- 1 id=\"firstname\" 的所有元素。', 'C.div>p --- 1所有 <div> 元素和所有 <p> 元素', 'D.p --- 1所有 <p> 元素', 'E：', 'C', '4', '1', '郑文涛', '段翔翔', '2012-02-06 00:00:00', '2011-02-05 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('187', '2', '2', '低', 'jquery ajax中都支持哪些返回类型？', 'A.xml', 'B.html', 'C.text', 'D.json', '', 'ABCD', '4', '1', '郑文涛', '段翔翔', '2012-02-07 00:00:00', '2011-02-06 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('188', '2', '1', '低', '在jquery中想要实现通过远程http get请求载入信息功能的是下面的哪一下事件？', 'A.$.ajax()', 'B.load(url)', 'C.$.get(url)', 'D.getScript(url)', 'E：', 'C', '4', '1', '郑文涛', '段翔翔', '2012-02-08 00:00:00', '2011-02-07 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('189', '2', '1', '低', '下面哪一个是用来追加到指定元素的末尾的？', 'A.insertAfter()', 'B.B、append()', 'C.appendTo() ', 'D、after()', 'E：', 'C', '4', '1', '郑文涛', '段翔翔', '2012-02-09 00:00:00', '2011-02-08 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('190', '2', '1', '中', '下列的HTML中哪个可以产生超链接？', 'A.<a url=\"http://www.w3schools.com\">W3Schools.com</a>', 'B.<a>http://www.w3schools.com</a>', 'C.<a href=\"http://www.w3schools.com\">W3Schools</A', 'D.<a>http://www.w3schools.com</a>', 'E：', 'C', '5', '1', '郑文涛', '段翔翔', '2012-02-10 00:00:00', '2011-02-09 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('191', '2', '1', '中', '1. 在Java中，负责对字节代码解释执行的是 ()', 'A. 应用服务器 ', 'B. 虚拟机', '\nC. 垃圾回收器 ', 'D. 编译器', 'E：', 'B', '4', '1', '陈俊', '段翔翔', '2012-02-11 00:00:00', '2011-02-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('192', '2', '1', '中', '2. 一个栈的输入序列为1 2 3 4 5，则下列序列中不可能是栈得输出序列的是（ ）  ', 'A. 5 4 1 3 2', 'B. 2 3 4 1 5 ', 'C. 1 5 4 3 2', 'D. 2 3 1 4 5 ', 'E：', 'A', '4', '1', '陈俊', '段翔翔', '2012-02-12 00:00:00', '2011-02-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('193', '2', '1', '中', '3. LDAP是什么?', 'A. 是一种开源产品 ', 'B. 是一种编程语言 ', 'C. 是一种访问协议 ', 'D. 是一种存储数据的目录 ', 'E：', 'C', '4', '1', '陈俊', '段翔翔', '2012-02-13 00:00:00', '2011-02-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('194', '2', '1', '中', '\n4. 要想在你的视图上成功的执行查询需要做什么？', 'A. 只能在基础表中有select权限 ', 'B. 在视图中需要有select权限 ', '\nC. 基础表中必须有数据 ', 'D. 基础表必须在同一个 用户模式中 ', 'E：', 'D', '4', '1', '陈俊', '段翔翔', '2012-02-14 00:00:00', '2011-02-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('195', '2', '1', '中', '5. 评估下面的一组SQL语句:\n\nCREATE TABLE dept\n\n(deptno NUMBER(2),\n\ndname VARCNAR2(14),\n\n1oc VARCNAR2 (13));\n\nROLLBACK;\n\nDESCRIBE DEPT\n\n下面关于该组语句的哪个描述是正确的？', 'A. DESCRIBE DEPT语句将返回一个错误ORA-04043: object DEPT does not exist. ', 'B. DESCRIBE DEPT语句将显示DEPT表的结构描述内容 ', 'C. DESCRIBE DEPT语句将只有在ROLLBACK之前引入一个COMMIT语句时，才会显示DEPT表的结构描述内容 ', 'D. ROLLBACK语句将释放DEPT占用的存储空间 ', 'E：', 'B', '4', '1', '陈俊', '段翔翔', '2012-02-15 00:00:00', '2011-02-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('196', '2', '1', '中', '6. Oracle中VARCHAR2类型的最大长度是：', 'A. 4000 \n', 'B. 3000 ', 'C. 1000 ', 'D. 2000 ', 'E：', 'A', '4', '1', '陈俊', '段翔翔', '2012-02-16 00:00:00', '2011-02-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('197', '2', '1', '中', '7. 下列哪一个选项按照顺序包括了OSI模型的七个层次：（ ）', 'A. 物理层 数据链路层 传输层 网络层 会话层 表示层 应用层 ', 'B. 物理层 数据链路层 会话层 网络层 传输层 表示层 应用层 ', '\nC. 物理层 数据链路层 网络层 传输层 会话层 表示层 应用层 ', '\nD. 网络层 传输层 物理层 数据链路层 会话层 表示层 应用层 ', 'E：', 'C', '4', '1', '陈俊', '段翔翔', '2012-02-17 00:00:00', '2011-02-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('198', '2', '1', '中', '8. 当客户端关闭一个从连接池中获取的连接, 会发生下面哪一种情况?  ', 'A. 连接不会关闭，只是简单地还给连接池 ', 'B. 连接被关闭，但又被重新打开并还给连接池 ', 'C. 连接永久性关闭 \n', 'D：都不是', 'E：', 'B', '4', '1', '陈俊', '段翔翔', '2012-02-18 00:00:00', '2011-02-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('199', '2', '1', '中', '9. 以下哪些不是javascript的全局函数（） ', 'A. eval ', 'B. escape ', 'C. setTimeout ', 'D. parseFloat ', 'E：', 'C', '4', '1', '陈俊', '段翔翔', '2012-02-19 00:00:00', '2011-02-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('200', '2', '1', '高', '10. 你使用mkdir命令创建一个临时文件夹/tmp/aaa，并将一些文件复制其中。你使用完后要删除/mnt/tmp文件夹及其中的所有文件，应该使用命令 ', 'A. rm /tmp/aaa ', 'B. rm -r /tmp/aaa ', 'C. rmdir -r /tmp/aaa ', 'D. rmdir /tmp/aaa', 'E：', 'B', '6', '1', '陈俊', '段翔翔', '2012-02-20 00:00:00', '2011-02-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('201', '3', '1', '中', '通常情况下，登录oracle企业管理器用什么命令？', 'A:http://服务器ip:1521/', 'B:http://服务器ip:1521/em', 'C:http://服务器ip:5500/', 'D:http://服务器ip:5500/em \n', 'E：', 'D', '4', '1', '段翔翔', '段翔翔', '2012-02-21 00:00:00', '2011-02-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('202', '3', '1', '中', '在Windows操作系统中，Oracle的()服务监听并接受来自客户端应用程序的连接请求。', 'A:OracleHOME_NAMETNSListener', 'B:OracleServiceSID', 'C:OracleHOME_NAMEAgent', 'D:OracleHOME_NAMEHTTPServer', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2012-02-22 00:00:00', '2011-02-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('203', '3', '1', '中', '以下内存区不属于SGA的是', 'A:PGA', 'B:日志缓冲区', 'C:数据缓冲区', 'D:共享池', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2012-02-23 00:00:00', '2011-02-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('204', '3', '1', '中', '在创建数据库时，必需的表空间是', 'A:TEMP TABLESPACE', 'B:SYSTEM TABLESPACE', 'C:USERS TABLESPACE', 'D:ROLLBACK TABLESPACE', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2012-02-24 00:00:00', '2011-02-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('205', '3', '1', '中', '使用哪一条SHUTDOWN语句关闭数据库时，下次打开数据库是需要做恢复操作', 'A:SHUTDOWN TRANSACTIONAL', 'B:SHUTDOWN IMMEDIATE', 'C:SHUTDOWN ABORT', 'D:SHUTDOWN NORMAL', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2012-02-25 00:00:00', '2011-02-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('206', '3', '1', '中', '下列选项中，哪一部分不是Oracle实例的组成部分？', 'A:系统全局区SGA', 'B:PMON后台进程', 'C:控制文件', 'D:Mnnn调度进程', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2012-02-26 00:00:00', '2011-02-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('207', '3', '1', '中', '在默认情况下，检查点的发生频率至少与下列哪个事件的发生次数一致？', 'A:重做日志切换', 'B:执行UPDATE 语句', 'C:执行INSERT', 'D:SMON 合并表空间中的碎片', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2012-02-27 00:00:00', '2011-02-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('208', '3', '1', '中', 'ORACLE中，用来1列值是否为空的操作符是', 'A:==NULL', 'B:IS NULL', 'C:AS NULL', 'D:NULLIS', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2012-02-28 00:00:00', '2011-02-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('209', '3', '1', '中', '以下需求中哪个需要用分组函数来实现?', 'A:把ORDER表中的定单时间显示成 \'DD MON YYYY\' 格式', 'B:把字符串\'JANUARY 282000\'转换成日期格式', 'C:显示PRODUCT 表中的COST 列值总量', 'D:把PRODUCT表中的DESCRIPTION列用小写形式显示', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2012-02-29 00:00:00', '2011-02-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('210', '3', '1', '中', '下列哪个动作不会激发一个触发器？', 'A:更新数据', 'B:查询数据', 'C:删除数据', 'D:插入数据', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2012-03-01 00:00:00', '2011-03-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('211', '3', '1', '高', ' 数据库结构的描述和定义是DBMS运行的基本依据，它们存储于（ ）', 'A:封锁表', 'B:数据字典', 'C:索引', 'D:日志 ', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2012-03-02 00:00:00', '2011-03-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('212', '3', '1', '低', '数据库管理系统的数据操纵语言(DML)所实现的操作一般包括（ ）', 'A:建立、授权、修改', 'B:建立、授权、删除', 'C:建立、插入、修改、排序', 'D:查询、插入、修改、删除 ', 'E：', 'D', '2', '1', '陈琰', '陈琰', '2012-03-03 00:00:00', '2011-03-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('213', '3', '1', '中', '在对数据库的系统故障进行恢复时，需要对日志文件进行（  ）', 'A:反向扫描 ', 'B:正向扫描 ', 'C:双向扫描 ', 'D:随机扫描', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2012-03-04 00:00:00', '2011-03-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('214', '3', '1', '高', '下列权限中，哪一个不是数据库的访问权限？()', 'A:Read权限', 'B:Resource权限', 'C:Update权限 ', 'D:Lock权限  ', 'E：', 'D', '2', '1', '陈琰', '陈琰', '2012-03-05 00:00:00', '2011-03-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('215', '3', '1', '低', 'E-R模型用于数据库设计的哪一个阶段？ （ ）', 'A:需求分析', 'B:概念结构设计', 'C:逻辑结构设计', 'D:物理结构设计 ', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2012-03-06 00:00:00', '2011-03-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('216', '3', '1', '中', '在数据库中可以创建和删除表、视图、索引，可以修改表。这是因为数据库管理系统提供了（ )', 'A:数据定义功能  ', 'B:数据操纵功能 ', 'C:数据维护功能 ', 'D:数据控制功能  ', 'E：', 'A', '2', '1', '陈琰', '陈琰', '2012-03-07 00:00:00', '2011-03-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('217', '3', '1', '高', '在关系数据库中，索引（index）是三级模式结构中的（  ）', 'A:概念模式 ', 'B:内模式', 'C:模式', 'D:外模式', 'E：', 'B', '2', '1', '陈琰', '陈琰', '2012-03-08 00:00:00', '2011-03-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('218', '3', '1', '低', ' 在关系数据库系统中，当合并两个关系时，用户程序可以不变。这是（ ）', 'A:数据的物理独立性', 'B:数据的位置独立性', 'C:数据的逻辑独立性', 'D:数据的存储独立性  ', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2012-03-09 00:00:00', '2011-03-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('219', '3', '1', '中', '如果在一个关系中，存在某个属性（或属性组），虽然不是该关系的主码或只是主码的一部分,但却是另一个关系的主码时，称该属性（或属性组）为这个关系的()', 'A:候选码', 'B:主码', 'C:外码', 'D:连接码   ', 'E：', 'C', '2', '1', '陈琰', '陈琰', '2012-03-10 00:00:00', '2011-03-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('220', '3', '1', '高', '下列关于数据库数据模型的说法中，哪一个是不正确的？（ ）', 'A:任何一张二维表都表示一个关系', 'B:层次模型的数据结构是有向树结构 ', 'C:在网状模型中，一个子结点可以有多个父结点', 'D:在面向对象模型中每一个对象都有一个惟一的标识  ', 'E：', 'A', '2', '1', '陈琰', '陈琰', '2012-03-11 00:00:00', '2011-03-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('221', '3', '1', '中', '下列属于数据管理软件的是?', 'A:DB', 'B:DBMS', 'C:DBS', 'D:DBA', 'E：', 'B', '4', '1', '蔡志钢', '段翔翔', '2012-03-12 00:00:00', '2011-03-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('222', '3', '1', '中', 'SQL语句中，‘%’表示?', 'A:0个字符', 'B:1个字符', 'C:多个字符', 'D:以上都可以', 'E：', 'D', '4', '1', '蔡志钢', '段翔翔', '2012-03-13 00:00:00', '2011-03-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('223', '3', '1', '中', '以下直接用于表示概念模型的是?', 'A:网状模型', 'B:关系模型', 'C:层次模型', 'D:E-R图', 'E：', 'D', '6', '1', '蔡志钢', '段翔翔', '2012-03-14 00:00:00', '2011-03-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('224', '3', '1', '中', '关系型数据库中的空值相当于?', 'A:0', 'B:空白', 'C:0长度的字符串', 'D:没有输入', 'E：', 'D', '2', '1', '蔡志钢', '段翔翔', '2012-03-15 00:00:00', '2011-03-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('225', '3', '1', '中', '以下不属于事务的性质的是?', 'A:原子性', 'B:隔离性', 'C:不可撤销性', 'D:持久性', 'E：', 'C', '4', '1', '蔡志钢', '段翔翔', '2012-03-16 00:00:00', '2011-03-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('226', '3', '1', '中', '哪个阶段须将E-R模型转化为关系数据模型?', 'A:逻辑设计', 'B:概念设计', 'C:物理设计', 'D:运行阶段', 'E：', 'A', '6', '1', '蔡志钢', '段翔翔', '2012-03-17 00:00:00', '2011-03-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('227', '3', '1', '中', '系统死锁属于?', 'A:事务故障', 'B:程序故障', 'C:系统故障', 'D:介质故障', 'E：', 'A', '2', '1', '蔡志钢', '段翔翔', '2012-03-18 00:00:00', '2011-03-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('228', '3', '1', '中', '在数据库中存储的是?', 'A:数据', 'B:数据模型', 'C:数据及数据间的联系', 'D:信息', 'E：', 'C', '2', '1', '蔡志钢', '段翔翔', '2012-03-19 00:00:00', '2011-03-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('229', '3', '1', '中', '数据库系统中，用什么描述全部数据的整体逻辑结果?', 'A:外模式', 'B:模式', 'C:内模式', 'D:数据模式', 'E：', 'B', '4', '1', '蔡志钢', '段翔翔', '2012-03-20 00:00:00', '2011-03-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('230', '3', '1', '中', '导致数据不一致的根本原因是?', 'A:数据冗余', 'B:数据量太大', 'C:数据安全性不高', 'D:完整性约束不强', 'E：', 'A', '4', '1', '蔡志钢', '段翔翔', '2012-03-21 00:00:00', '2011-03-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('231', '3', '1', '低', '最常用的一种基本数据模型是关系数据模型，它的表示采用', 'A:树', 'B:网络', 'C:图', 'D:二维表', 'E：', 'D', '2', '1', '王琦志', '段翔翔', '2012-03-22 00:00:00', '2011-03-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('232', '3', '1', '低', '数据库、数据库系统和数据库管理系统之间的关系是', 'A:数据库包括数据库系统和数据库管理系统', 'B:数据库管理系统包括数据库和数据库系统', 'C:数据库管理系统包括数据库和数据库系统 ', 'D:三者之间没有必然的联系', 'E：', 'B', '2', '1', '王琦志', '段翔翔', '2012-03-23 00:00:00', '2011-03-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('233', '3', '1', '低', '三级模式间存在二级映射，它们是', 'A:概念模式与子模式间、概念模式与内模式间', 'B:子模式与内模式间、外模式与内模式间', 'C:子模式与外模式间、概念模式与内模式间', 'D:概念模式与内模式间、外模式与内模式间', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2012-03-24 00:00:00', '2011-03-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('234', '3', '1', '中', '数据库的并发控制机制是由于（）而设立的', 'A:操作不当造成数据丢失', 'B:数据库的更新操作', 'C:用户共享数据库', 'D:文件传输破坏数据', 'E：', 'C', '4', '1', '王琦志', '段翔翔', '2012-03-25 00:00:00', '2011-03-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('235', '3', '1', '低', '数据库设计的根本目标是要解决', 'A:数据共享问题', 'B:数据安全问题', 'C:大量数据存储问题 ', 'D:简化数据维护', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2012-03-26 00:00:00', '2011-03-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('236', '3', '1', '低', '数据库的故障恢复一般是由', 'A:数据流图完成的', 'B:数据字典完成的', 'C:DBA完成的', 'D:PAD图完成的', 'E：', 'C', '2', '1', '王琦志', '段翔翔', '2012-03-27 00:00:00', '2011-03-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('237', '3', '1', '低', '在数据库设计中，表示用户业务流程的常用方法是', 'A:DFD', 'B:程序流程图', 'C:E-R图', 'D:数据结构图', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2012-03-28 00:00:00', '2011-03-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('238', '3', '1', '中', '关系数据库的规范化理论主要用来解决的问题是', 'A:如何构造合适的应用程序窗口', 'B:如何构造合适的数据逻辑结构', 'C:如何构造合适的数据物理结构 ', 'D:如何控制不同的用户的操作权限 ', 'E：', 'B', '4', '1', '王琦志', '段翔翔', '2012-03-29 00:00:00', '2011-03-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('239', '3', '1', '低', '一个逻辑数据结构可以有多种存储结构，且各种存储结构影响数据处理的效率 ', 'A:true', 'B:false', '', '', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2012-03-30 00:00:00', '2011-03-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('240', '3', '1', '中', '数据独立性是数据库技术的重要特点之一，所谓数据独立性是指', 'A:数据与程序独立存放', 'B:不同的数据被存放在不同的文件中', 'C:不同的数据只能被对应的应用程序所使用', 'D:以上三种说法都不对', 'E：', 'D', '4', '1', '王琦志', '段翔翔', '2012-03-31 00:00:00', '2011-03-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('241', '3', '1', '中', '\n储蓄所有多个储户，储户能够在多个\n储蓄所存取款，储蓄所与储户之间是', 'A. 一对一的联系', 'B. 一对多的联系', 'C. 多对一的联系', 'D. 多对多的联系', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2012-04-01 00:00:00', '2011-04-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('242', '3', '1', '中', 'SQL Server存储过程能够立即访问数据库。', 'A. 错误', 'B. 正确', '', '', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2012-04-02 00:00:00', '2011-04-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('243', '3', '1', '中', '关于存储过程参数，正确的说法是', 'A、存储过程的输出参数可以\n是标量类型，也可以是表类型 ', 'B、存储过程输入参数可以\n不输入信息而调用过程 ', 'C、可以指定字符参数的字符\n长度（函数的()或者过程的\n(number/varchar2)） ', 'D、以上说法都不对', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2012-04-03 00:00:00', '2011-04-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('244', '3', '1', '中', '数据库中，数据的物理独立性是指', 'A. 数据库与数据库管理系统的\n    相互独立', 'B. 用户程序与DBMS的相互独立', 'C. 用户的应用程序与存储在磁盘\n上的数据库中的数据是相互独立的', 'D. 应用程序与数据库中数据的\n   逻辑结构相互独立', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2012-04-04 00:00:00', '2011-04-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('245', '3', '1', '中', '下面那项不是数据库管理系统组成部分:', 'A. 事务管理器 ', '\nB.查询处理器. ', 'C. 存储管理器  ', 'D.进程控制器.(答案选 D) ', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2012-04-05 00:00:00', '2011-04-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('246', '3', '1', '中', '下面的两个关系中，职工号和设备号分\n别为职工关系和设备关系的关键字：职工\n（职工号，职工名，部门号，职务，工资）\n设备（设备号，职工号，设备名，数量）', 'A.职工关系的“职工号”', '\nB. 职工关系的“设备号”', '\nC.设备关系的“职工号”', 'D. 设备关系的“设备号”', 'E：', '', '2', '1', '董瑶', '段翔翔', '2012-04-06 00:00:00', '2011-04-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('247', '3', '1', '中', '关系模型基本的数据结构是', 'A树  ', 'B图 ', ' C索引  ', 'D关系  ', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2012-04-07 00:00:00', '2011-04-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('248', '3', '1', '中', '关于视图的描述下面说法哪些是正确的:', 'A. 数据库即存储视图的定义也存\n   视图的数据.  ', 'B. 用带有聚集运算的SQL创建的\n   视图是可更新视图', 'C. 用带有group by字句的SQL创建\n   的视图是可更新视图', 'D. 视图可以能在多个\n   关系上创建', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2012-04-08 00:00:00', '2011-04-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('249', '3', '1', '中', '下面哪个改变可以通过alter table实现 ', 'A. 增加一个触发. ', 'B. 增加一个索引. ', 'C. 增加一调记录  ', 'D. 定义一个候选关键字', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2012-04-09 00:00:00', '2011-04-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('250', '4', '1', '中', '关于第三范式描述正确的是 ', 'A.一个关系属于第第一范式,\n  它就属于第三范式', 'B. 一个关系模式属于BC范式,\n   它就属于第三范式', 'C. 一个关系实例有数据冗余,\n   它就是属于第三范式', 'D.一个关系实例没有数据冗余,\n  它就是属于第三范式 ', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2012-04-10 00:00:00', '2011-04-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('251', '3', '1', '低', '如果加载窗体，先被触发的事件是', 'A：Load事件        ', 'B：Open事件', 'C：Click事件', 'D：DdClick事件', 'E：', 'A', '2', '1', '宋朝晖', '段翔翔', '2012-04-11 00:00:00', '2011-04-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('252', '3', '1', '低', '下列属于数据管理软件的是?', 'A:DB', 'B:DBMS', 'C:DBS', 'D:DBA', 'E：', 'B', '2', '1', '宋朝晖', '段翔翔', '2012-04-12 00:00:00', '2011-04-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('253', '3', '1', '中', 'SQL语句中，‘%’表示?', 'A:0个字符', 'B:1个字符', 'C:多个字符', 'D:以上都可以', 'E：', 'D', '4', '1', '宋朝晖', '段翔翔', '2012-04-13 00:00:00', '2011-04-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('254', '3', '1', '中', '以下直接用于表示概念模型的是?', 'A:网状模型', 'B:关系模型', 'C:层次模型', 'D:E-R图', 'E：', 'D', '4', '1', '宋朝晖', '段翔翔', '2012-04-14 00:00:00', '2011-04-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('255', '3', '1', '高', '关系型数据库中的空值相当于?', 'A:0', 'B:空白', 'C:0长度的字符串', 'D:没有输入', 'E：', 'D', '6', '1', '宋朝晖', '段翔翔', '2012-04-15 00:00:00', '2011-04-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('256', '3', '1', '低', '以下不属于事务的性质的是?', 'A:原子性', 'B:隔离性', 'C:不可撤销性', 'D:持久性', 'E：', 'C', '2', '1', '宋朝晖', '段翔翔', '2012-04-16 00:00:00', '2011-04-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('257', '3', '1', '中', '哪个阶段须将E-R模型转化为关系数据模型?', 'A:逻辑设计', 'B:概念设计', 'C:物理设计', 'D:运行阶段', 'E：', 'A', '4', '1', '宋朝晖', '段翔翔', '2012-04-17 00:00:00', '2011-04-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('258', '3', '1', '高', '系统死锁属于?', 'A:事务故障', 'B:程序故障', 'C:系统故障', 'D:介质故障', 'E：', 'A', '6', '1', '宋朝晖', '段翔翔', '2012-04-18 00:00:00', '2011-04-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('259', '3', '1', '低', '在数据库中存储的是?', 'A:数据', 'B:数据模型', 'C:数据及数据间的联系', 'D:信息', 'E：', 'C', '2', '1', '宋朝晖', '段翔翔', '2012-04-19 00:00:00', '2011-04-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('260', '3', '1', '中', '数据库系统中，用什么描述全部数据的整体逻辑结果?', 'A:外模式', 'B:模式', 'C:内模式', 'D:数据模式', 'E：', 'B', '4', '1', '宋朝晖', '段翔翔', '2012-04-20 00:00:00', '2011-04-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('261', '3', '1', '低', ' SQL 指的是（）', 'A：Strong Question Language', 'B：Structured Question Language', 'C：Structured Query Language', '', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-04-21 00:00:00', '2011-04-21 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('262', '3', '1', '低', '哪个 SQL 语句用于从数据库中提取数据', 'A：EXTRACT', 'B：SELECT', 'C：OPEN', 'D：GET', 'E：', 'B', '4', '1', '商学军', '陈展', '2012-04-22 00:00:00', '2011-04-22 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('263', '3', '1', '中', '哪条 SQL 语句用于更新数据库中的数据', 'A：MODIFY', 'B：SAVE AS', 'C：UPDATE', 'D：SAVE', 'E：', 'C', '6', '1', '商学军', '陈展', '2012-04-23 00:00:00', '2011-04-23 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('264', '3', '1', '高', '通过 SQL，您如何从 \"Persons\" 表中选取所有的列', 'A：SELECT [all] FROM Persons', 'B：SELECT Persons', 'C：SELECT * FROM Persons', 'D：SELECT *.Persons', 'E：', 'C', '4', '1', '商学军', '陈展', '2012-04-24 00:00:00', '2011-04-24 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('265', '3', '1', '低', '哪个 SQL 关键词用于对结果集进行排序', 'A：ORDER', 'B：SORT BY', 'C：SORT', 'D：ORDER BY', 'E：', 'D', '2', '1', '商学军', '陈展', '2012-04-25 00:00:00', '2011-04-25 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('266', '3', '1', '中', '设有部门和员工两个实体，每个员工只能属于一个部门，一个部门可以有多名员工，则部门与员工实体之间的联系类型是（）', 'A：多对多', 'B：一对多', 'C：多对一', 'D：一对一', 'E：', 'B', '2', '1', '商学军', '陈展', '2012-04-26 00:00:00', '2011-04-26 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('267', '3', '1', '高', '若不想修改数据库文件中的数据库对象，打开数据库文件时要1', 'A：以独占方式打开', 'B：以只读方式打开', 'C：以共享方式打开', 'D：打开', 'E：', 'B', '4', '1', '商学军', '陈展', '2012-04-27 00:00:00', '2011-04-27 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('268', '3', '1', '低', '在SQL 语句中，检索要去掉重复组的所有元组，则在SELECT中使用（）', 'A：All', 'B：UNION ', 'C：LIKE', 'D：DISTINCT', 'E：', 'D', '4', '1', '商学军', '陈展', '2012-04-28 00:00:00', '2011-04-28 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('269', '3', '1', '中', '在查询设计视图中设计排序时，如果选取了多个字段，则输出结果是（）', 'A：按设定的优先次序依次进行排序', 'B：按最右边的列开始排序', 'C：按从左向右优先次序依次排序', 'D：无法进行排序', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-04-29 00:00:00', '2011-04-29 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('270', '3', '1', '高', '以下关于查询的叙述正确的是（）', 'A：只能根据数据库表创建查询', 'B：只能根据已建查询创建查询', 'C：可以根据数据库表和已建查询创建查询', 'D：不能根据已建查询创建查询', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-04-30 00:00:00', '2011-04-30 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('271', '3', '1', '低', 'Oracle数据库属于以下哪种数据库类型？', 'A:网状数据库', 'B:关系数据库', 'C:层次数据库', 'D:面向对象的关系数据库', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2012-05-01 00:00:00', '2011-05-01 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('272', '3', '1', '中', '如果你被要求写一段代码读取一个序列化的对象,那么一般使用哪种Stream?', 'A:FileInputStream ', 'B:FileReader ', 'C:DataInputStream ', 'D：ObjectInputStream', 'E：', 'D', '2', '1', '邱仕攀', '邱仕攀', '2012-05-02 00:00:00', '2011-05-02 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('273', '3', '1', '中', '转发HTTP请求一般有两种方法,response.sendRedirect和RequestDispatcher.forward,哪种方法可以保存request.setAttribute()中设置的值不丢', 'A:sendRedirectss ', 'B:forward ', 'C:两个都不能', 'D:两个都可以', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2012-05-03 00:00:00', '2011-05-03 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('274', '3', '1', '中', '下列关于ORALCE数据库的描述,不正确的是', 'A:索引表含ROWID值', 'B:一个事务即使不被提交,也会被写入到重做日志中', 'C:拥有不同大小的回滚段没有任何益处', 'D:COMMIT后数据不一定立即写入数据文件中', 'E：', 'A', '2', '1', '邱仕攀', '邱仕攀', '2012-05-04 00:00:00', '2011-05-04 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('275', '3', '1', '中', '在JDBC程序中，Statement对象表示什么？', 'A:到数据库的连接；', 'B:向数据库发送SQL语句的对象', 'C:数据源。', '', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2012-05-05 00:00:00', '2011-05-05 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('276', '3', '2', '高', '下面哪些资源可以通过JNDI接口访问？', 'A:J2EE容器中的JNDI Tree ', 'B:文件系统', 'C:LDAP目录服务', 'D:DNS域名解析服务', '', 'ABCD', '4', '1', '邱仕攀', '邱仕攀', '2012-05-06 00:00:00', '2011-05-06 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('277', '3', '1', '中', '下面有关表和视图的叙述中错误的是', 'A:视图的数据可以来自多个表', 'B:对视图的数据可以来自多个表', 'C:基表不存在, 不能创建视图', 'D:删除视图不会影响基表的数据', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2012-05-07 00:00:00', '2011-05-07 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('278', '3', '2', '低', '下面哪个SQL属于DML？', 'A:INSERT INTO table_name(column1,column2) VALUES(value1,value2); ', 'B:drop table;', 'C:commit;', 'D:Select column from table;', '', 'AD', '2', '1', '邱仕攀', '邱仕攀', '2012-05-08 00:00:00', '2011-05-08 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('279', '3', '1', '中', '欲构造ArrayList类的一个实例,此类继承了List接口,下列哪个认识方法是正确的?', 'A:ArrayList myList=new Object();', 'B:List mylist=new ArrayList();', 'C:ArrayList myList=new List(); ', 'D:List myList=new List();', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2012-05-09 00:00:00', '2011-05-09 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('280', '3', '2', '中', '执行下面的哪些命令将释放用户以前持有的表？', 'A:COMMIT;', 'B:EXIT;', 'C:ALTER TABLE emp ADD UNIQUE(ename);', 'D:UPDATE emp SET sal=3000 WHERE ename=\'SMITH’; ', '', 'ABC', '2', '1', '邱仕攀', '邱仕攀', '2012-05-10 00:00:00', '2011-05-10 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('281', '3', '1', '低', '是位于用户和操作系统之间的一层数据管理软件。数据库在建立、使用和维护时由其统一管理、统一控制。', 'A． DB', 'B．DBMS', ' C．DBS', 'D．DBA', 'E：', 'B', '4', '1', '郑文涛', '段翔翔', '2012-05-11 00:00:00', '2011-05-11 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('282', '3', '1', '低', '下列四项中，可以直接用于表示概念模型的是', 'A. 网状模型', 'B.关系模型', 'C.层次模型', 'D.实体-联系(E-R)模型', 'E：', 'D', '4', '1', '郑文涛', '段翔翔', '2012-05-12 00:00:00', '2011-05-12 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('283', '3', '1', '低', '公司中有多个部门和多名职员，每个职员只能属于一个部门，一个部门可以有多名职员，从职员到部门的联系类型是', 'A.多对多', 'B.一对一', 'C.多对一', 'D.一对多', 'E：', 'C', '4', '1', '郑文涛', '段翔翔', '2012-05-13 00:00:00', '2011-05-13 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('284', '3', '1', '低', '用于实现数据存取安全性的SQL语句是', 'A.CREATE TABLE', 'B.COMMIT', 'C.GRANT和REVOKE', 'D.ROLLBACK', 'E：', 'C', '4', '1', '郑文涛', '段翔翔', '2012-05-14 00:00:00', '2011-05-14 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('285', '3', '1', '低', '下列哪个不是数据库对象', 'A．数据模型', 'B．视图', 'C．表', 'D．用户', 'E：', 'A', '4', '1', '郑文涛', '段翔翔', '2012-05-15 00:00:00', '2011-05-15 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('286', '3', '1', '中', '现要查找缺少成绩(Grade)的学生学号(Snum)，相应的SQL语句是', 'A.SELECT Snum FROM SC WHERE Grade=0', 'B.SELECT Snum FROM SC WHERE Grade<=0', 'C.SELECT Snum FROM SC WHERE Grade=NULL', 'D.SELECT Snum FROM SC WHERE Grade IS NULL', 'E：', 'D', '5', '1', '郑文涛', '段翔翔', '2012-05-16 00:00:00', '2011-05-16 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('287', '3', '1', '低', 'SQL语言具有（）的功能？', 'A．关系规范化、数据操纵、数据控制', 'B．数据定义、数据操纵、数据控制', 'C．数据定义、关系规范化、数据控制', 'D．数据定义、关系规范化、数据操纵', 'E：', 'B', '4', '1', '郑文涛', '段翔翔', '2012-05-17 00:00:00', '2011-05-17 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('288', '3', '1', '高', '用下面的T-SQL语句建立一个基本表：CREATE TABLE Student(Sno CHAR(4) PRIMARY KEY,  Sname CHAR(8) NOT NULL, Sex CHAR(2), Age INT)可以插入到表中的元组是？ ', 'A. \'5021\'，\'刘祥\'，男，21', 'B. NULL，\'刘祥\'，NULL，21', 'C. \'5021\'，NULL，男，21', 'D. \'5021\'，\'刘祥\'，NULL，NULL', 'E：', 'D', '6', '1', '郑文涛', '段翔翔', '2012-05-18 00:00:00', '2011-05-18 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('289', '3', '1', '低', '在查询语句的Where子句中，如果出现了“age Between 30 and 40”,这个表达式等同于', 'A. age>=30 and age<=40', 'B. age>=30 or age<=40', 'C. age>30 and age<40', 'D. age>30 or age<40', 'E：', 'A', '4', '1', '郑文涛', '段翔翔', '2012-05-19 00:00:00', '2011-05-19 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('290', '3', '1', '低', '数据库的数据一般存放在（）中', 'A. 内存   ', 'B. CPU', 'C. 寄存器', 'D. 磁盘', 'E：', 'D', '4', '1', '郑文涛', '段翔翔', '2012-05-20 00:00:00', '2011-05-20 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('291', '3', '1', '高', ' 1、在数据库技术中，独立于计算机系统的模型是', 'A、面向对象的模型', 'B、关系模型', 'C、E-R模型', 'D、层次模型', 'E：', 'C', '6', '1', '陈俊', '段翔翔', '2012-05-21 00:00:00', '2011-05-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('292', '3', '1', '高', '2、数据库系统的控制中枢是', 'A、数据库', 'b、数据库管理系统', 'C、数据库管理员', 'D、数据库应用系统', 'E：', 'B', '6', '1', '陈俊', '段翔翔', '2012-05-22 00:00:00', '2011-05-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('293', '3', '1', '高', '3、使用SQL命令将学生表STUDENT中的学生年龄AGE字段的值增加1岁，应该使用的命令是', 'A、UPDATE SET AGE WITH AGE＋1', ' B、REPLACE AGE WITH AGE＋1', 'C、UPDATE STUDENT SET AGE＝AGE＋1', 'D、UPDATE STUDENT AGE WITH AGE＋1', 'E：', 'C', '6', '1', '陈俊', '段翔翔', '2012-05-23 00:00:00', '2011-05-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('294', '3', '1', '高', '4、在关系数据库中，建立数据库表时，将年龄字段值限制在12～40岁之间的这种约束属于', 'A、视图完整性约束', 'B、域完整性约束', 'C、参照完整性约束', 'D、实体完整性约束', 'E：', 'B', '6', '1', '陈俊', '段翔翔', '2012-05-24 00:00:00', '2011-05-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('295', '3', '1', '高', '5、在 SQL 语句中，与 X BETWEEN 20 AND 30 等价的表达式是', ' A、X>=20 AND X<30', 'B、X>20 AND X<30', 'C、X>20 AND X<=30 ', 'D、X>=20 AND X<=30', 'E：', 'D', '6', '1', '陈俊', '段翔翔', '2012-05-25 00:00:00', '2011-05-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('296', '3', '1', '高', '6、在数据库中，概念模型是', 'A、用于现实的建模，与具体的DBMS有关', 'B、用于信息世界的建模，与具体的DBMS有关', 'C、用于现实的建模，与具体的DBMS无关', 'D、用于信息世界的建模，与具体的DBMS无关', 'E：', 'D', '6', '1', '陈俊', '段翔翔', '2012-05-26 00:00:00', '2011-05-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('297', '3', '1', '高', '7、数据库的并发操作可能带来的问题包括', 'A非法用户的使用', 'B丢失更新', 'C数据独立性会提高', 'D增加数据冗余度', 'E：', 'B', '6', '1', '陈俊', '段翔翔', '2012-05-27 00:00:00', '2011-05-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('298', '3', '1', '高', '8、在关系数据库中，模式对应的是', ' A、视图和所有基本表', 'B、视图和部分基本表', 'C、基本表 ', 'D、索引', 'E：', 'A', '6', '1', '陈俊', '段翔翔', '2012-05-28 00:00:00', '2011-05-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('299', '3', '1', '高', '9、能实现绝对的与平台无关性的Web数据库访问技术是', 'A、ADO', 'B、ActiveX', 'C、WebbaseAPI', 'D、JDBC', 'E：', 'D', '6', '1', '陈俊', '段翔翔', '2012-05-29 00:00:00', '2011-05-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('300', '3', '1', '高', '10、数据库系统的控制中枢是', 'A、数据库', 'B、数据库管理系统', 'C、数据库管理员', 'D、数据库应用系统', 'E：', 'B', '6', '1', '陈俊', '段翔翔', '2012-05-30 00:00:00', '2011-05-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('301', '4', '1', '中', '在三层结构中，Struts2承担的责任是', 'A:定义实体类', 'B:数据的增删改查操作', 'C:业务逻辑的描述', 'D:页面展示和控制转发', 'E：', 'D', '4', '1', '段翔翔', '段翔翔', '2012-05-31 00:00:00', '2011-05-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('302', '4', '1', '中', '在三层结构中，Hibernate承担的任务是', 'A:数据的持久化操作', 'B:实体类的定义', 'C:业务逻辑的描述', 'D:页面的显示与控制转发', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2012-06-01 00:00:00', '2011-06-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('303', '4', '1', '中', '下面信息不在Struts2配置文件中配置的是', 'A:Form Bean配置信息', 'B:Spring声明式事务', 'C:Action转发路径', 'D:Struts2引用的资源文件', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2012-06-02 00:00:00', '2011-06-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('304', '4', '1', '中', '下面关于Hibernate的说法，错误的是', 'A:Hibernate是一个“对象-关系映射”的实现', 'B:Hibernate是一种数据持久化技术', 'C:Hibernate是JDBC的替代技术', 'D:使用Hibernate可以简化持久化层的编码', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2012-06-03 00:00:00', '2011-06-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('305', '4', '1', '中', '下列说法中错误的是', 'A:从值栈中取值用value=“参数名”，参数名是action中的参数', 'B:从actioncontext中取值用#parameters.参数名，参数名是struts中的参数', 'C:在客户端跳转时一次request只有一个valueStack', 'D:在客户端跳转时一次request可以有多个valueStack', 'E：', 'D', '4', '1', '段翔翔', '段翔翔', '2012-06-04 00:00:00', '2011-06-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('306', '4', '1', '中', '下面不属于关系-对象映射的映射信息是', 'A:程序包名到数据库库名的映射', 'B:程序类名到数据库表名的映射', 'C:实体属性名到数据库表字段的映射', 'D:实体类型到数据库表字段类型的映射', 'E：', 'A', '4', '1', '段翔翔', '段翔翔', '2012-06-05 00:00:00', '2011-06-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('307', '4', '1', '中', 'Hibernate的运行核心是()类，它负责管理对象的生命周期、事务处理、数据交互等', 'A:Configuration', 'B:Transaction', 'C:Query', 'D:Session', 'E：', 'D', '4', '1', '段翔翔', '段翔翔', '2012-06-06 00:00:00', '2011-06-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('308', '4', '1', '中', 'Spring的事务管理应该在DAO模式的', 'A:实体层', 'B:数据访问层', 'C:业务层', 'D:控制层', 'E：', 'C', '4', '1', '段翔翔', '段翔翔', '2012-06-07 00:00:00', '2011-06-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('309', '4', '1', '中', '在Spring中，通过哪种方式实现了依赖注入', 'A:getter方法', 'B:setter方法', 'C:自定义赋值方法', 'D:静态方法', 'E：', 'B', '4', '1', '段翔翔', '段翔翔', '2012-06-08 00:00:00', '2011-06-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('310', '4', '1', '中', '下面关于“依赖注入”的说法，错误的是', 'A:将组件间的依赖关系采取配置文件的方式管理，而不是硬编码在代码中', 'B:降低了组件间的耦合，使程序更容易维护和升级', 'C:促进了“面向接口”编程，使构建大规模程序更轻松', 'D:需要定义大量接口，增加了编码复杂度', 'E：', 'D', '4', '1', '段翔翔', '段翔翔', '2012-06-09 00:00:00', '2011-06-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('311', '4', '1', '低', '以下属于struts2的控制器组件的是：()', 'A:Action  ', 'B:ActionForm  ', 'C:C:ActionServlet  ', 'D:D:dispatchAction', 'E：', 'A', '2', '1', '陈琰', '段翔翔', '2012-06-10 00:00:00', '2011-06-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('312', '4', '2', '中', '以下属于struts2的体系结构的是：()', 'A:struts2控制器组件', 'B:struts2配置文件', 'C:FilterDispatcher ', 'D:D.Action', '', 'AB', '2', '1', '陈琰', '段翔翔', '2012-06-11 00:00:00', '2011-06-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('313', '4', '2', '高', '以下属于struts2配置文件的配置元素是（）', 'A:<package> ', 'B:<action> ', 'C:<form-bean>', 'D:<action-mapping>', '', 'AB', '2', '1', '陈琰', '段翔翔', '2012-06-12 00:00:00', '2011-06-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('314', '4', '1', '低', '关于struts1和struts2对比的说法正确的是：()', 'A:struts1要求Action类继承其框架中的Action父类，struts2则不一定需要继承，可以是POJO类', 'B:struts1的Action不是线程安全的，struts2的Action是线程安全的', 'C:struts1和struts2都使用ActionForm对象封装用户的请求数据', 'D:struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值', 'E：', 'A', '2', '1', '陈琰', '段翔翔', '2012-06-13 00:00:00', '2011-06-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('315', '4', '2', '中', '以下关于ValueStack说法正确的是：()', 'A:每个Action对象实例拥有一个ValueStack对象', 'B:每个Action对象实例拥有多个ValueStack对象', 'C:Action中封装的需要传入下一个页面的值，这些值封装在ValueStack对象中', 'D:ValueStack会在请求开始时创建，请求结束时消亡', '', 'ACD', '2', '1', '陈琰', '段翔翔', '2012-06-14 00:00:00', '2011-06-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('316', '4', '1', '高', '自定义转换器继承的抽象类是()', 'A:Converter  ', 'B:TypeConverter  ', 'C:StrutsTypeConverter   ', 'D:converts', 'E：', 'C', '2', '1', '陈琰', '段翔翔', '2012-06-15 00:00:00', '2011-06-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('317', '4', '1', '低', '自定义转换器的注册方式有：()', 'A:只有全局注册方式', 'B:只有局部注册方式', 'C:只有全局和局部注册方式', 'D:以上的说法都不对', 'E：', 'C', '2', '1', '陈琰', '段翔翔', '2012-06-16 00:00:00', '2011-06-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('318', '4', '1', '中', '自定义拦截器类的方式有：()', 'A:实现Interceptor接口', 'B:实现AbstractionInceptor接口', 'C:继承Interceptor类', 'D:继承AbstractionInceptor类', 'E：', 'AD', '2', '1', '陈琰', '段翔翔', '2012-06-17 00:00:00', '2011-06-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('319', '4', '2', '高', '在struts.xml文件中，使用（）定义拦截器', 'A:<interceptor-ref>', 'B:<interceptor>', 'C:<intercep>', 'D:<defaull-interceptor-ref>', '', 'B', '2', '1', '陈琰', '段翔翔', '2012-06-18 00:00:00', '2011-06-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('320', '4', '1', '低', '在OGNL中?操作符的作用是（）', 'A:取出符合1逻辑的第一个元素', 'B:取出符合1逻辑的第=最后一个元素', 'C:取出符合1逻辑的所有元素', 'D:以上说法都不对', 'E：', 'C', '2', '1', '陈琰', '段翔翔', '2012-06-19 00:00:00', '2011-06-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('321', '4', '1', '中', 'Mybatis中指定配置文件的根元素使用?', 'A:<sqlMapConfig>', 'B:<config>', 'C:<setting>', 'D:<configuration>', 'E：', 'D', '6', '1', '蔡志钢', '段翔翔', '2012-06-20 00:00:00', '2011-06-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('322', '4', '1', '中', 'Mybatis是那一层的框架?', 'A:控制层', 'B:服务层', 'C:视图层', 'D:持久层', 'E：', 'D', '6', '1', '蔡志钢', '段翔翔', '2012-06-21 00:00:00', '2011-06-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('323', '4', '1', '中', 'DAO是什么的缩写?', 'A:Date Access Objects', 'B:Data', 'C:Access', 'D:Objects', 'E：', 'A', '2', '1', '蔡志钢', '段翔翔', '2012-06-22 00:00:00', '2011-06-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('324', '4', '1', '中', '数据库中的表映射为应用程序中的什么?', 'A:实体', 'B:属性', 'C:对象', 'D:方法', 'E：', 'A', '4', '1', '蔡志钢', '段翔翔', '2012-06-23 00:00:00', '2011-06-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('325', '4', '1', '中', '数据库中的记录映射为应用程序中的什么?', 'A:实体', 'B:属性', 'C:对象', 'D:方法', 'E：', 'C', '4', '1', '蔡志钢', '段翔翔', '2012-06-24 00:00:00', '2011-06-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('326', '4', '1', '中', '以下属于struts2的控制器组件的是?', 'A:Action', 'B:ActionServlet', 'C:ActionForm', 'D:DispatcherAction', 'E：', 'A', '6', '1', '蔡志钢', '段翔翔', '2012-06-25 00:00:00', '2011-06-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('327', '4', '1', '中', '以下属于struts2的体系结构的是?', 'A:struts2控制器组件', 'B:配置文件', 'C:FilterDispatcher', 'D:Action', 'E：', 'A', '6', '1', '蔡志钢', '段翔翔', '2012-06-26 00:00:00', '2011-06-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('328', '4', '1', '中', '以下属于struts2配置文件的配置元素是?', 'A:<package>', 'B:<form-bean>', 'C:<action-mapping>', 'D:<mapping>', 'E：', 'A', '6', '1', '蔡志钢', '段翔翔', '2012-06-27 00:00:00', '2011-06-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('329', '4', '1', '中', '在struts配置中用什么元素配置常量?', 'A:<const>', 'B:<constants>', 'C:<constant>', 'D:<constant-mapping>', 'E：', 'C', '2', '1', '蔡志钢', '段翔翔', '2012-06-28 00:00:00', '2011-06-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('330', '4', '1', '中', '如果要实现自定义处理结果，需要继承哪个类?', 'A:Dispatcher', 'B:StrutsResultSupport', 'C:Support', 'D:Action', 'E：', 'B', '4', '1', '蔡志钢', '段翔翔', '2012-06-29 00:00:00', '2011-06-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('331', '4', '1', '低', 'truts2动态方法调用的格式为', 'A:ActionName_methodName.do ', 'B:ActionName!methodName.do ', 'C:ActionName_methodName.action', 'D:ActionName!methodName.action ', 'E：', 'D', '2', '1', '王琦志', '段翔翔', '2012-06-30 00:00:00', '2011-06-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('332', '4', '2', '低', '在控制器类中一般需要添加相应属性的', 'A:setter方法', 'B:as方法', 'C:getter方法 ', 'D:is方法 ', '', 'AC', '2', '1', '王琦志', '段翔翔', '2012-07-01 00:00:00', '2011-07-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('333', '4', '2', '中', '下列选项中，关于Struts2的Action说法正确的是', 'A:struts2会为每一个请求创建一个对应的Action实例 //每个请求时跳到一个action', 'B:struts2在请求处理过程中，只有一个Action实例', 'C:struts2通过属性来封装用户请求参数', 'D:在struts2中定义的属性都用于封装用户请求参数', '', 'AC', '4', '1', '王琦志', '段翔翔', '2012-07-02 00:00:00', '2011-07-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('334', '4', '2', '中', 'struts2关于注册全局类型转换器的说法正确的是', 'A:必须提供xwork-conversion.properties文件', 'B:注册文件的格式为：复合类型=对应类型转换器 ', 'C:注册文件的格式为：对应类型转换器=复合类型', 'D:以上说法都不正确', '', 'AB', '4', '1', '王琦志', '段翔翔', '2012-07-03 00:00:00', '2011-07-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('335', '4', '2', '低', '以下属于struts2配置文件中的配置元素是', 'A:<package> ', 'B:<action> ', 'C:<form-beans> ', 'D:<action-mappings>', '', 'AB', '2', '1', '王琦志', '段翔翔', '2012-07-04 00:00:00', '2011-07-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('336', '4', '1', '低', 'struts框架中，在一个Action的配置信息中，name属性指的是', 'A:当前action实例的名字', 'B:当前action所在的类的名字', 'C:该Action中调用的FormBean的实例的名字 ', 'D:该Action中调用的FormBean的类的所在包名', 'E：', 'C', '2', '1', '王琦志', '段翔翔', '2012-07-05 00:00:00', '2011-07-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('337', '4', '1', '低', '关于struts项目中的类与MVC模式的对应关系，说法错误的是', 'A:Jsp文件实现视图View的功能', 'B:ActionServlet这一个类是整个struts项目的控制器', 'C:ActionForm、Action都属于Model部分', 'D:一个struts项目只能有一个Servlet', 'E：', 'D', '2', '1', '王琦志', '段翔翔', '2012-07-06 00:00:00', '2011-07-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('338', '4', '1', '低', '<action>元素还包含一个<forward>子元素，它定义了请求访问Action的路径', 'A:true', 'B:false', '', '', 'E：', 'B', '2', '1', '王琦志', '段翔翔', '2012-07-07 00:00:00', '2011-07-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('339', '4', '1', '低', '每个HTTP请求对应一个单独的ActionServlet实例 ', 'A:true', 'B:false', '', '', 'E：', 'B', '2', '1', '王琦志', '段翔翔', '2012-07-08 00:00:00', '2011-07-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('340', '4', '1', '低', '每个子应用对应一个单独的RequestProcessor实例', 'A:true', 'B:false', '', '', 'E：', 'A', '2', '1', '王琦志', '段翔翔', '2012-07-09 00:00:00', '2011-07-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('341', '4', '1', '中', '下面针对Hibernate框架描述错误的是', 'A、Hibernate框架是一个ORMapping框架，可以完成对象与表之间的映射关系', 'B、Hibernate的映射关系只能\n由XML来完成\n', 'C、Hibernate框架中用来作为数据\n库连接操作的核心对象是Session', 'D、Hibernate中使用HQL语句可以完成针对数据的添加，修改，删除和查询功能', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2012-07-10 00:00:00', '2011-07-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('342', '4', '1', '中', '以下针对Struts2框架描述错误的是', 'A、Struts2框架中接收参数是在\nAction类中完成的。', 'B、编写Struts2的Action类必须\n  继承ActionSupport类', 'C、Struts2的分发操作只能\n  使用！来完成', 'D、Struts2框架存在重大漏洞，\n  在2.3以后的版本中才被修复', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2012-07-11 00:00:00', '2011-07-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('343', '4', '1', '中', '以下框架或技术中与Struts2功能类似的框架是', 'A、Hibernate ', 'B、JDBC  ', 'C、JSP/Servlet  ', 'D、Spring MVC', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2012-07-12 00:00:00', '2011-07-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('344', '4', '1', '中', '以下针对Spring框架描述正确的是', 'A、Spring框架是一个单独使用的框架，不需要结合其他框架技术来应用', 'B、SpringMVC是前端框架，\n  功能类似Struts框架', 'C、SpringMVC需要编写xml配置\n  文件来对Action类进行配置，\n  自己编写的Action类必须继承\n  ActionSupport类', ' D、Spring框架结合Hibernate开发\n 时，需要保留hibernate.cfg.xml\n 配置文件，并在里面配置数据库连\n 接相关的配置，由Hibernate来管理\n 连接的关闭和事务处理', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2012-07-13 00:00:00', '2011-07-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('345', '4', '1', '中', '对Hibernate的支持主要用到了Spring的哪个模块？', 'A、Spring Core ', 'B、Spring ORMapping', 'C、Spring IoC ', ' D、Spring Web MVC', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2012-07-14 00:00:00', '2011-07-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('346', '4', '1', '中', '以下哪个不属于Hibernate中Session的方法？', 'A、save()', 'B、delete()  ', 'C、update()  ', 'D、open()', 'E：', 'D', '2', '1', '董瑶', '段翔翔', '2012-07-15 00:00:00', '2011-07-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('347', '4', '1', '中', '以下关于IoC理解正确的是', 'A、控制反转 ', 'B、一定要用接口 ', 'C、通过<ref>来设置注入 ', 'D、通过<value>来设置注入', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2012-07-16 00:00:00', '2011-07-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('348', '4', '1', '中', '以下哪个不属于提高Hibernate性能的方法？', 'A、连接关闭', '\nB、缓存', 'C、懒汉式加载', 'D、SQL语句查询', 'E：', 'A', '2', '1', '董瑶', '段翔翔', '2012-07-17 00:00:00', '2011-07-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('349', '4', '1', '中', '以下Struts2框架执行的工作原理有误的是', 'A、客户端浏览器发出HTTP请求。', 'B、根据web.xml配置，该请求\n  被FilterDispatcher接收。', 'C、根据struts.xml配置，找到需要调用的Action类和方法， 并通过core方式，将值注入给Aciton。', 'D、Action执行完毕，根据struts.xml中的配置找到对应的返回结果result，并跳转到相应页面。', 'E：', 'C', '2', '1', '董瑶', '段翔翔', '2012-07-18 00:00:00', '2011-07-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('350', '4', '1', '中', '以下哪些不属于Hibernate中的查询方式', 'A、Session查询：提供了按主键查\n询的方法，get和load方法', 'B、HQL查询：面向对象的查询方式', 'C、Criteria查询：通过一些其他类\n提供的方法，动态拼写出查询条件。\n', 'D、Query查询：使用HQL语句完\n成查询，还支持SQL语句的使用。', 'E：', 'B', '2', '1', '董瑶', '段翔翔', '2012-07-19 00:00:00', '2011-07-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('351', '4', '1', '中', '导致数据不一致的根本原因是?', 'A:数据冗余', 'B:数据量太大', 'C:数据安全性不高', 'D:完整性约束不强', 'E：', 'A', '4', '1', '宋朝晖', '段翔翔', '2012-07-20 00:00:00', '2011-07-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('352', '4', '1', '高', 'Mybatis中指定配置文件的根元素使用?', 'A:<sqlMapConfig>', 'B:<config>', 'C:<setting>', 'D:<configuration>', 'E：', 'D', '6', '1', '宋朝晖', '段翔翔', '2012-07-21 00:00:00', '2011-07-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('353', '4', '1', '高', 'Mybatis是那一层的框架?', 'A:控制层', 'B:服务层', 'C:视图层', 'D:持久层', 'E：', 'D', '6', '1', '宋朝晖', '段翔翔', '2012-07-22 00:00:00', '2011-07-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('354', '4', '1', '低', 'DAO是什么的缩写?', 'A:Date Access Objects', 'B:Data', 'C:Access', 'D:Objects', 'E：', 'A', '2', '1', '宋朝晖', '段翔翔', '2012-07-23 00:00:00', '2011-07-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('355', '4', '1', '中', '数据库中的表映射为应用程序中的什么?', 'A:实体', 'B:属性', 'C:对象', 'D:方法', 'E：', 'A', '4', '1', '宋朝晖', '段翔翔', '2012-07-24 00:00:00', '2011-07-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('356', '4', '1', '中', '数据库中的记录映射为应用程序中的什么?', 'A:实体', 'B:属性', 'C:对象', 'D:方法', 'E：', 'C', '4', '1', '宋朝晖', '段翔翔', '2012-07-25 00:00:00', '2011-07-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('357', '4', '1', '高', '以下属于struts2的控制器组件的是?', 'A:Action', 'B:ActionServlet', 'C:ActionForm', 'D:DispatcherAction', 'E：', 'A', '6', '1', '宋朝晖', '段翔翔', '2012-07-26 00:00:00', '2011-07-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('358', '4', '1', '高', '以下属于struts2的体系结构的是?', 'A:struts2控制器组件', 'B:配置文件', 'C:FilterDispatcher', 'D:Action', 'E：', 'A', '6', '1', '宋朝晖', '段翔翔', '2012-07-27 00:00:00', '2011-07-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('359', '4', '1', '高', '以下属于struts2配置文件的配置元素是?', 'A:<package>', 'B:<form-bean>', 'C:<action-mapping>', 'D:<mapping>', 'E：', 'A', '6', '1', '宋朝晖', '段翔翔', '2012-07-28 00:00:00', '2011-07-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('360', '4', '1', '低', '在struts配置中用什么元素配置常量?', 'A:<const>', 'B:<constants>', 'C:<constant>', 'D:<constant-mapping>', 'E：', 'C', '2', '1', '宋朝晖', '段翔翔', '2012-07-29 00:00:00', '2011-07-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('361', '4', '1', '低', '在Servlet处理请求的方式为（）', 'A：以进程的方式', 'B：以程序的方式', 'C：以线程的方式', 'D：以响应的方式', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-07-30 00:00:00', '2011-07-30 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('362', '4', '1', '中', 'JDBC中，用于表示数据库连接的对象是（）', 'A：Statement ', 'B：Connection', 'C：DriverManager ', 'D：PreparedStatement ', 'E：', 'B', '2', '1', '商学军', '陈展', '2012-07-31 00:00:00', '2011-07-31 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('363', '4', '1', '低', '按照MVC设计模式，JSP用于实现（）', 'A：Model ', 'B：View', 'C：Controller ', 'D：容器', 'E：', 'B', '2', '1', '商学军', '陈展', '2012-08-01 00:00:00', '2011-08-01 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('364', '4', '1', '低', '在J2EE中属于Web层的组件有（）', 'A：Servlet ', 'B：EJB ', 'C：Applet ', 'D：Struts', 'E：', 'A', '2', '1', '商学军', '陈展', '2012-08-02 00:00:00', '2011-08-02 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('365', '4', '1', '中', '在WEB-INF目录下，必须存放的文件为（）', 'A：class文件', 'B：web.xml', 'C：.jar文件', 'D：html文件', 'E：', 'B', '4', '1', '商学军', '陈展', '2012-08-03 00:00:00', '2011-08-03 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('366', '4', '1', '高', '每个使用Swing构件的程序必须有一个（）', 'A：按钮', 'B：标签', 'C：菜单', 'D：容器', 'E：', 'D', '2', '1', '商学军', '陈展', '2012-08-04 00:00:00', '2011-08-04 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('367', '4', '1', '高', '下面哪一个不能作JSP的服务器（）', 'A：IBM WebSphere', 'B：BEA WebLogic', 'C：Tomcat ', 'D：pws  ', 'E：', 'D', '4', '1', '商学军', '陈展', '2012-08-05 00:00:00', '2011-08-05 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('368', '4', '1', '中', '在配置tomcat虚拟目录时，需要打开哪个文件（）', 'A：index.jsp', 'B：web.xml', 'C：server.xml', 'D：以上都不是', 'E：', 'C', '2', '1', '商学军', '陈展', '2012-08-06 00:00:00', '2011-08-06 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('369', '4', '1', '中', '使用Session获取命名查询的方法是（）', 'A：getNamedQuery() ', 'B：getnamedQuery()', 'C：getNameQuery()', 'D：getNamedSQLQuery()', 'E：', 'A', '2', '1', '商学军', '陈展', '2012-08-07 00:00:00', '2011-08-07 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('370', '4', '1', '低', '以下属于struts2的控制器组件是（）', 'A：Action ', 'B：ActionForm ', 'C：ActionServlet ', 'D：dispatchAction ', 'E：', 'A', '4', '1', '商学军', '陈展', '2012-08-08 00:00:00', '2011-08-08 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('371', '4', '2', '高', '以下变量声明中，正确的是', 'A．internet_nerwork', 'B．*number', 'C．Hello', 'D．_sys_path', '', 'ACD', '4', '1', '邱仕攀', '邱仕攀', '2012-08-09 00:00:00', '2011-08-09 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('372', '4', '1', '中', 'Break语句', 'A:只中断最内层的循环', 'B:只中断最外层的循环', 'C:借助与标号，可以实现任何外层循环中断', 'D:只中断某一层的循环', 'E：', 'A', '2', '1', '邱仕攀', '邱仕攀', '2012-08-10 00:00:00', '2011-08-10 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('373', '4', '1', '中', '不属于Struts2的动作类的常量返回值的是（）', 'A．success', 'B．input', 'C．never', 'D．login', 'E：', 'C', '2', '1', '邱仕攀', '邱仕攀', '2012-08-11 00:00:00', '2011-08-11 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('374', '4', '1', '中', '以下不属于Struts2动作执行的结果类型是（）', 'A:action', 'B:redirect', 'C:redirectAction', 'D:dispatcher', 'E：', 'A', '2', '1', '邱仕攀', '邱仕攀', '2012-08-12 00:00:00', '2011-08-12 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('375', '4', '1', '中', '正规开发中，在使用struts2时定义Action使用哪种方式。', 'A.直接定义Action类。', 'B.从ActionSupport继承', 'C.从Action继承。', 'D.实现Action接口。', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2012-08-13 00:00:00', '2011-08-13 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('376', '4', '1', '中', '不同的线程在调用Action时创建几个Action实例', 'A.1个', 'B.2个', 'C.每个线程创建1个。', 'D.可以自定义配置。', 'E：', 'C', '2', '1', '邱仕攀', '邱仕攀', '2012-08-14 00:00:00', '2011-08-14 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('377', '4', '1', '中', 'struts提供了Action接口定义了5个标准字符串常量，不包括的有（ ）', 'A SUCCESS', 'B NONE', 'C REG', 'D LOGIN', 'E：', 'C', '2', '1', '邱仕攀', '邱仕攀', '2012-08-15 00:00:00', '2011-08-15 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('378', '4', '2', '高', '在控制器类中一般需要添加相应属性的__和__。', 'A．setter方法', 'B．as方法', 'C．getter方法', 'D．is方法', '', 'AC', '4', '1', '邱仕攀', '邱仕攀', '2012-08-16 00:00:00', '2011-08-16 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('379', '4', '1', '中', '控制器需要在__配置文件中进行配置。', 'A．web.xml', 'B．struts.xml', 'C．struts2.xml', 'D．webwork.xml', 'E：', 'B', '2', '1', '邱仕攀', '邱仕攀', '2012-08-17 00:00:00', '2011-08-17 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('380', '4', '1', '中', '不属于Struts 2表单标签库的是__。', 'A．<s: textfield >', 'B．<s: textarea >', 'C．<s: submit >', 'D．<select>', 'E：', 'D', '2', '1', '邱仕攀', '邱仕攀', '2012-08-18 00:00:00', '2011-08-18 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('381', '4', '1', '高', '关于struts项目中的类与MVC模式的对应关系，说法错误的', 'A.Jsp文件实现视图View的功能', 'B.Jsp文件实现视图View的功能', 'C.ActionForm、Action都属于Model部分', 'D.一个struts项目只能有一个Servlet', 'E：', 'C', '6', '1', '郑文涛', '郑文涛', '2012-08-19 00:00:00', '2011-08-19 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('382', '4', '1', '低', '关于struts框架，下面那些说法是正确的？', 'A.Struts中无法完成上传功能', 'B.Struts框架基于MVC模式', 'C.Struts框架容易引起流程复杂、结构不清晰等问题', 'D.Struts可以有效地降低项目的类文件数目', 'E：', 'B', '4', '1', '郑文涛', '郑文涛', '2012-08-20 00:00:00', '2011-08-20 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('383', '4', '1', '低', '下面关于spring和struts2的描述，错误的是？', 'A.spring mvc的入口是filter，而struts2是servlet', 'B.spring mvc是基于方法的设计，而struts2是基于类的设计', 'C.struts2有以自己的interceptor机制，spring mvc用的是独立的AOP方式', 'D.spring mvc的方法之间基本上独立的，独享request response数据，struts2所有Action变量是共享的', 'E：', 'A', '4', '1', '郑文涛', '郑文涛', '2012-08-21 00:00:00', '2011-08-21 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('384', '4', '1', '低', '下列关于Spring特性中IoC描述错误的是：', 'A.IoC就是指程序之间的关系由程序代码直接操控', 'B.所谓“控制反转”是指控制权由应用代码转到外部容器，即控制权的转移', 'C.IoC将控制创建的职责搬进了框架中，从应用代码脱离开来', 'D.使用Spring的IoC容器时只需指出组件需要的对象，在运行时Spring的IoC容器会根据XML配置数据提供给它', 'E：', 'A', '4', '1', '郑文涛', '郑文涛', '2012-08-22 00:00:00', '2011-08-22 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('385', '4', '1', '低', '下面关于Spring的说法中错误的是', 'A.Spring是一系列轻量级2框架的集合', 'B.Spring中包含一个“依赖注入”模式的实现', 'C.使用Spring可以实现声明式事务', 'D.Spring提供了AOP方式的日志系统', 'E：', 'D', '4', '1', '郑文涛', '郑文涛', '2012-08-23 00:00:00', '2011-08-23 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('386', '4', '1', '高', '下面有关spring DAO，描述错误的是？', 'A.Spring提供的DAO(数据访问对象)支持主要的目的是便于以标准的方式使用不同的数据访问技术。', 'B.方便的事务管理: Spring的声明式事务管理力度是类级别', 'C.异常包装:Spring能够包装Hibernate异常，把它们从CheckedException变为RuntimeException; 开发者可1在恰当的层处理数据中不可恢复的异常，从而避免烦琐的 catch/throw 及异常声明', 'D.Spring提供的DAO支持了JDBC、JDO和Hibernate', 'E：', 'B', '6', '1', '郑文涛', '郑文涛', '2012-08-24 00:00:00', '2011-08-24 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('387', '4', '1', '低', '关于AOP错误的是？', 'A.AOP将散落在系统中的“方面”代码集中实现', 'B.AOP有助于提高系统可维护性', 'C.AOP已经表现出将要替代面向对象的趋势', 'D.AOP是一种设计模式，Spring提供了一种实现', 'E：', 'C', '4', '1', '郑文涛', '郑文涛', '2012-08-25 00:00:00', '2011-08-25 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('388', '4', '1', '低', 'struts框架中，在一个Action的配置信息中，name属性指的是什么？', 'A.当前action实例的名字', 'B.当前action所在的类的名字', 'C.该Action中调用的FormBean的实例的名字', 'D.该Action中调用的FormBean的类的所在包名', 'E：', 'C', '4', '1', '郑文涛', '郑文涛', '2012-08-26 00:00:00', '2011-08-26 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('389', '4', '1', '低', '以下关于Struts2访问url的说法，正确的是', 'A. Struts2的Action访问url后缀必须是.action ', 'B.Struts2的Action访问url后缀必须是.action或者.do ', 'C.Struts2的Action访问url可以随意设置其后缀', 'D. Struts2的Action后缀在web.xml中进行配置 ', 'E：', 'B', '4', '1', '郑文涛', '郑文涛', '2012-08-27 00:00:00', '2011-08-27 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('390', '4', '1', '低', 'Struts2的核心控制器需要在哪个配置文件中进行配置', 'A.struts.xml', 'B. web.xml', 'C.applicationContext.xml', 'D.webwork.xml', 'E：', 'A', '4', '1', '郑文涛', '郑文涛', '2012-08-28 00:00:00', '2011-08-28 00:00:00', '无图片或视频', null, '', null);
INSERT INTO `t_question` VALUES ('391', '4', '1', '高', '1．MyBatis指定配置文件的根元素使用的是（）。', ' A．<sqlMapConfig> ', 'B．<configuration> ', 'C．<setting> ', 'D．<environments>', 'E：', 'B', '6', '1', '陈俊', '陈俊', '2012-08-29 00:00:00', '2011-08-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('392', '4', '1', '高', '\n2．在MyBatis中，ExecutorType的值包括（）。', '\nA．ExecutorType.SIMPLE', '\nB．ExecutorType.BATCH ', '\nC．ExecutorType.EXECUTE ', 'D．ExecutorType.REUSE ', 'E：', 'B', '6', '1', '陈俊', '陈俊', '2012-08-30 00:00:00', '2011-08-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('393', '4', '1', '高', '\n3.如果要实现struts2的数据检验功能', 'A.普通的Action类可以实现', 'B.继承自Action接口的可以实现', 'C.继承自ActionSupport类可以实现', 'D.继承自ActionSupport类可以实现\n继承自ActionValidate类可以实现', 'E：', 'C', '6', '1', '陈俊', '陈俊', '2012-08-31 00:00:00', '2011-08-31 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('394', '4', '1', '高', '4.关于struts1和struts2对比的说法正确的是', 'A.struts1要求Action类继承其框架中的Action父类，struts2则不一定需要继承，可以是POJO类', 'B.struts1的Action不是线程安全的，struts2的Action是线程安全的', 'C.struts1和struts2都使用ActionForm对象封装用户的请求数据', 'D.struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值', 'E：', 'A', '6', '1', '陈俊', '陈俊', '2012-09-01 00:00:00', '2011-09-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('395', '4', '2', '高', '5.以下关于ValueStack说法正确的', 'A.每个Action对象实例拥有一个ValueStack对象', 'B.每个Action对象实例拥有多个ValueStack对象', 'C.Action中封装的需要传入下一个页面的值，这些值封装在ValueStack对象中', 'D.ValueStack会在请求开始时创建，请求结束时消亡', '', 'ACD', '6', '1', '陈俊', '陈俊', '2012-09-02 00:00:00', '2011-09-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('396', '4', '1', '高', '6.关于struts2配置中用 ', 'A.必须在WEB-INF/classes目录下', 'B.名字必须为strutss.xml', 'C.配置Action时，必须配置包信息', 'D.使用<forward>元素配置转发\n', 'E：', 'C', '6', '1', '陈俊', '陈俊', '2012-09-03 00:00:00', '2011-09-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('397', '4', '1', '高', '7.在struts配置中用（C）元素配置常量', 'A.<const', 'B.<constants>', 'C.<constant>', 'D.<constant-mapping>', 'E：', 'C', '6', '1', '陈俊', '陈俊', '2012-09-04 00:00:00', '2011-09-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('398', '4', '1', '高', '8.以下属于struts2的控制器组件的是', 'A： Action', 'B: ActionForm', 'C:ActionServlet', 'D:dispatchAction', 'E：', 'A', '6', '1', '陈俊', '陈俊', '2012-09-05 00:00:00', '2011-09-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('399', '4', '2', '高', '9.以下属于struts2的体系结构的是', 'A:struts2控制器组件', 'B:struts2配置文件  ', 'C：FilterDispatcher', 'D.Action', '', 'AB', '6', '1', '陈俊', '陈俊', '2012-09-06 00:00:00', '2011-09-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('400', '4', '2', '高', '10.以下属于struts2配置文件的配置元素是', 'A: <package>', 'B:<action>', 'C:<form-bean>  ', 'D:<action-mapping>', '', 'AB', '6', '1', '陈俊', '陈俊', '2012-09-07 00:00:00', '2011-09-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('401', '1', '1', '低', '以下字符常量中不合法的是', 'A: \'@\'', 'B：\'&\'', 'C：\"k\" ', 'D：\'整\'', '', 'C', '2', '1', '李剑涛', '李剑涛', '2012-09-08 00:00:00', '2011-09-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('402', '1', '1', '低', '下列最终属性（常量）i 的定义中，正确的是', 'A: static final double  i;', 'B：abstract final int i=8; ', 'C:final double  i=3.14159;', 'D:float i=1.2f; ', '', 'C', '2', '1', '李剑涛', '李剑涛', '2012-09-09 00:00:00', '2011-09-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('403', '1', '1', '中', '设a、b、c、d 为已赋值的 int 型变量，下列表达式的结果属于非逻辑值的是', 'A:a!=b & c%d < a', 'B:a++ = =a+b+c+d ', 'C: ++a*b-- +d ', 'D:a+b>=c+d ', '', 'C', '4', '1', '李剑涛', '李剑涛', '2012-09-10 00:00:00', '2011-09-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('404', '1', '2', '低', '下列哪些写法是错误的：', 'A. boolean b = (boolean)3;', 'B. int a = (int)true;', 'C. int a = false; ', 'D. long b = (long)3.14', '', 'ABC', '2', '1', '李剑涛', '李剑涛', '2012-09-11 00:00:00', '2011-09-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('405', '1', '1', '低', '设有定义  int  i=123;  long  j=456;  下面赋值不正确的语句是()。', 'A:j=i;', 'B:j=(long)i;', 'C:i=(int)j;', 'D:i=j;', '', 'D', '2', '1', '李剑涛', '李剑涛', '2012-09-12 00:00:00', '2011-09-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('406', '1', '1', '中', '若a和b均是整型变量并已正确赋值，正确的switch语句是', 'A: switch(a+b);  { ...... }', 'B: switch( a+b*3.0 )  { ...... }', 'C: switch a  { ...... } ', 'D: switch ( a%b )  { ...... } ', '', 'D', '4', '1', '李剑涛', '李剑涛', '2012-09-13 00:00:00', '2011-09-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('407', '1', '1', '低', '下面语句序列执行后，a的值是( )。 ', 'A: 3', 'B: 13', 'C: 169', 'D: 1', '', 'D', '2', '1', '李剑涛', '李剑涛', '2012-09-14 00:00:00', '2011-09-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('408', '1', '1', '低', '执行下列程序段后，m,x,y的值分别是( )。 int  x=2,y=4;       boolean  m;      m=++x>y--;', 'A: true , 2,4', 'B: false , 3,3', 'C: true, 3,3', 'D: false, 2,4', '', 'B', '2', '1', '李剑涛', '李剑涛', '2012-09-15 00:00:00', '2011-09-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('409', '1', '1', '中', '如果类C1继承自类C2，并实现了接口I1，而类C2实现了接口I2，请挑出下面代码的错误的部分：', 'A. C2 instance = new C1(); ', 'B. C1 instance = new C2(); ', 'C. I1 instance = new C1(); ', 'D. I2 instance = new C1();', '', 'B', '4', '1', '李剑涛', '李剑涛', '2012-09-16 00:00:00', '2011-09-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('410', '1', '1', '低', '在Java中负责对字节码解释执行的是（）', 'A:垃圾回收器', 'B：虚拟机', 'C:编译器', 'D：解释器', '', 'B', '2', '1', '陶伟华', '李剑涛', '2012-09-17 00:00:00', '2011-09-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('411', '1', '1', '低', '下列关于finally的说法正确的是（）', 'A:无论程序是否找到合适的例外控制器，都会去执行finally语句', 'B：finally语句应该放在所有例外控制器的最前面', 'C：如果程序在前面的例外控制器中匹配到了合适例外，就不再执行finally语句', 'D：如果程序在前面的例外控制器中匹配到了多个合适的例外，就不再执行finally语句', '', 'A', '2', '1', '陶伟华', '李剑涛', '2012-09-18 00:00:00', '2011-09-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('412', '1', '1', '低', '抽象类与接口的区别在于（）', 'A：抽象类可以实现多重继承，而接口不行', 'B：抽象类不可以继承，而接口可以', 'C：抽象类中可以有非抽象的方法，而接口中只能有抽象方法', 'D：接口只是抽象类的另一种叫法', '', 'C', '2', '1', '陶伟华', '李剑涛', '2012-09-19 00:00:00', '2011-09-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('413', '1', '1', '低', '方法内的变量（）', 'A：一定在方法内所有位置可见', 'B：可能在方法内的局部可见', 'C：可以在方法外可见', 'D：方法外也可用', '', 'B', '2', '1', '陶伟华', '李剑涛', '2012-09-20 00:00:00', '2011-09-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('414', '1', '1', '低', '对Java运算符，下面说法正确的是（）', 'A： 不具有优先级的区别 ', 'B：相同优先级的运算符，计算顺序是从右到左', 'C：圆括号具有最高优先级', 'D：”+”号的优先级高于”&&”', '', 'D', '2', '1', '陶伟华', '李剑涛', '2012-09-21 00:00:00', '2011-09-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('415', '1', '1', '中', '执行下列程序段后，b,x,y的值正确的是（   ）\nint x=6,y=8;\nboolean b;\nb=x<y||++x= =--y;', 'A：true,6,8 ', 'B：false,7,7', 'C：true,7,7 ', ' D：false ,6,8', '', 'A', '4', '1', '陶伟华', '李剑涛', '2012-09-22 00:00:00', '2011-09-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('416', '1', '1', '中', '以下语句输出的结果是（    ）\nString str=”123”;\nint x=4,y=5;\nstr=str+x+y;\nSystem.out.println(str);', 'A：1239 ', 'B：12345', 'C：回产生编译错误', 'D：123+4+5', '', 'B', '4', '1', '陶伟华', '李剑涛', '2012-09-23 00:00:00', '2011-09-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('417', '1', '1', '中', '要串行化某些类的对象，这些类就必须实现：', 'A：Serializable\n\n接口', 'B：java.io.Comparable接口\n\n', 'C：java.io.DataImput接口\n\n', 'D：DataOutput接口', '', 'A', '4', '1', '陶伟华', '李剑涛', '2012-09-24 00:00:00', '2011-09-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('418', '1', '1', '高', 'Panel默认的布局管理器是（）', 'A：GridLayout', 'B：BorderLayout', 'C：FlowLayout', 'D：CardLayout ', '', 'C', '6', '1', '陶伟华', '李剑涛', '2012-09-25 00:00:00', '2011-09-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('419', '1', '2', '高', '在服务器程序中，线程在那些情况下可能会进入阻塞状态？', 'A：线程执行Socket的getInputStream()方法获得输入流', 'B：线程执行Socket的getOutputStream()方法获得输出流', 'C：线程执行ServerSocket的Accept()方法', 'D：线程执行Socket的输入流读取数据', 'E：线程执行Socket的输出流写一批数据', 'CDE', '6', '1', '陶伟华', '李剑涛', '2012-09-26 00:00:00', '2011-09-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('420', '1', '2', '低', ' 下列哪些数据类型不属于基本数据类型： ', ' A. Boolean', 'B. int', 'C. String', 'D：Short  ', 'E. char ', 'ACD', '2', '1', '陈慧', '李剑涛', '2012-09-29 00:00:00', '2011-09-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('421', '1', '2', '中', ' 下列哪些写法是错误的： ', ' A. boolean b = (boolean)3', 'B. int a = (int)true', 'C. int a = false', ' D. long b = (long)3.14 ', '', 'ABC', '4', '1', '陈慧', '李剑涛', '2012-09-30 00:00:00', '2011-09-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('422', '1', '1', '高', '如果类 C1 继承自类 C2，并实现了接口 I1，而类 C2 实现了接口 I2，请挑出下面代  码的错误的部分： ', 'A.C2 instance = new C1()', 'B. C1 instance = new C2()', ' C. I1 instance = new C1()', 'D. I2 instance = new C1()', '', 'B', '6', '1', '陈慧', '李剑涛', '2012-10-01 00:00:00', '2011-10-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('423', '1', '1', '低', '编译Java  Application 源程序文件将产生相应的字节码文件，这些字节码文件的扩展名为(      )。                                               ', 'A. java', 'B. .class', 'C.html', 'D. .exe', '', 'B', '2', '1', '陈慧', '李剑涛', '2012-10-02 00:00:00', '2011-10-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('424', '1', '1', '低', '设 x = 1 , y = 2 , z = 3，则表达式  y＋＝z－－/＋＋x 的值是(      )', 'A.3', 'B.3.5', 'C.4', 'D.5', '', 'A', '2', '1', '陈慧', '李剑涛', '2012-10-03 00:00:00', '2011-10-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('425', '1', '1', '中', '为AB类的一个无形式参数无返回值的方法method书写方法头，使得使用类名AB作为前缀就可以调用它，该方法头的形式为(      )。                                                        ', 'A. static void method( )', 'B. public void method( ) ', ' C. final void method( )', 'D. abstract void method( ) ', '', 'A', '4', '1', '陈慧', '李剑涛', '2012-10-04 00:00:00', '2011-10-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('426', '1', '1', '中', '开发与运行Java程序需要经过的三个主要步骤为:', 'A.编辑源程序', 'B. 编译生成字节码', 'C.解释运行字节码', 'D.生成常量池', '', 'ABC', '4', '1', '陈慧', '李剑涛', '2012-10-05 00:00:00', '2011-10-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('427', '1', '1', '低', '下列不可作为java语言修饰符的是()', 'A:a1 ', 'B：$1', 'C：_1', 'D：1', 'E：', 'D', '2', '1', '李威', '李剑涛', '2012-10-06 00:00:00', '2011-10-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('428', '1', '1', '低', '在创建对象时必须()', 'A:先声明对象，然后才能使用对象 ', 'B：先声明对象，为对象分配内存空间，然后才能使用对象', 'C:先声明对象，为对象分配内存空间，对对象初始化，然后才能使用对象', 'D:以上都不对', 'E：', 'C', '2', '1', '李威', '李剑涛', '2012-10-07 00:00:00', '2011-10-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('429', '1', '1', '中', 'Character流与Byte流的区别是()', 'A:每次读入的字节数不同', 'B：前者带有缓冲，后者没有 ', 'C:前者是字符读写，后者是字节读写 ', 'D:二者没有区别，可以互换使用', 'E：', 'C', '4', '1', '李威', '李剑涛', '2012-10-08 00:00:00', '2011-10-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('430', '1', '1', '中', 'Java类可以作为()', 'A:类型定义机制', 'B：数据封装机制', 'C:类型定义机制和数据封装机制 ', 'D:上述都不对 ', 'E：', 'C', '4', '1', '李威', '李剑涛', '2012-10-09 00:00:00', '2011-10-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('431', '1', '1', '低', '在调用方法时，若要使方法改变实参的值，可以()', 'A:用基本数据类型作为参数', 'B：用对象作为参数', 'C:A和B都对', 'D:A和B都不对', 'E：', 'B', '2', '1', '李威', '李剑涛', '2012-10-10 00:00:00', '2011-10-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('432', '1', '1', '低', 'Java语言具有许多优点和特点，哪个反映了Java程序并行机制的特点？', 'A:安全性', 'B：多线性', 'C:跨平台', 'D:可移植', 'E：', 'B', '2', '1', '李威', '李剑涛', '2012-10-11 00:00:00', '2011-10-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('433', '1', '1', '中', '下面声明数组的写法错误()', 'A: int a[]', 'B:int[] a', 'C:int[3][] a', 'D:int[][3] a', 'E：', 'D', '4', '1', '李威', '李剑涛', '2012-10-12 00:00:00', '2011-10-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('434', '1', '1', '高', '下面说法不正确的是() ', 'A:一个子类的对象可以接收父类对象能接收的消息', 'B:当子类对象和父类对象能接收同样的消息时，它们针对消息产生的行为可能不同', 'C:父类比它的子类的方法更多', 'D:子类在构造函数中可以使用super( )来调用父类的构造函数', 'E：', 'C', '6', '1', '李威', '李剑涛', '2012-10-13 00:00:00', '2011-10-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('435', '1', '1', '中', '下列关于基本数据类型的说法中，不正确的一项是()', 'A:boolean是JAVA特殊的内置值，或者为真或者为假', 'B:float是带符号的32位浮点数', 'C:double是带符号的64位浮点数', 'D:char应该上是8位的Unicode字符', 'E：', 'D', '4', '1', '李威', '李剑涛', '2012-10-14 00:00:00', '2011-10-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('436', '1', '1', '高', '下列关于变量作用域的说法中，正确的一项是()', 'A:方法参数的作用域是方法外部代码段', 'B:异常处理参数的作用域是方法外部代码段', 'C:局部变量的作用域是整个类', 'D:类变量的作用域是类的某个方法', 'E：', 'D', '6', '1', '李威', '李剑涛', '2012-10-15 00:00:00', '2011-10-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('437', '1', '1', '低', '、编译Java  Application 源程序文件将产生相应的字节码文件，这些字节码文件的扩展名为(   )。 ', 'A:.java', 'B：.class', 'C：.html', 'D：,exe', 'E：', 'B', '2', '1', '胡靖', '李剑涛', '2012-10-16 00:00:00', '2011-10-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('438', '1', '1', '中', '设 x = 1 , y = 2 ,z = 3，则表达式  y＋＝z－－/＋＋x  的值是(  )。 ', 'A:3', 'B：3.5', 'C:4', 'D:5', '', 'A', '2', '1', '胡靖', '李剑涛', '2012-10-17 00:00:00', '2011-10-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('439', '1', '1', '高', '不允许作为类及类成员的访问控制符的是( )。', 'A:public', 'B privateC:static', '', 'D:protected', '', 'C', '2', '1', '胡靖', '李剑涛', '2012-10-18 00:00:00', '2011-10-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('440', '1', '1', '低', '为AB类的一个无形式参数无返回值的方法method书写方法头，使得使用类名AB作为前缀就可以调用它，该方法头的形式为(    )。', ' A. static void method( ) ', ' B. public void method()', ' C. final void method( )  ', 'D. abstract void method( )', '', 'A', '2', '1', '胡靖', '李剑涛', '2012-10-19 00:00:00', '2011-10-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('441', '1', '1', '低', 'while循环和 do…while循环的区别是', 'A．没有区别，这两个结构任何情况下效果一样', 'B．while循环比 do…while循环执行效率高', 'C．while循环是先循环后1，所以循环体至少被执行一次 ', 'D．do…while循环是先循环后1，所以循环体至少被执行一次 ', '', 'D', '2', '1', '胡靖', '李剑涛', '2012-10-20 00:00:00', '2011-10-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('442', '1', '1', '低', 'Java语言的类间的继承关系是(  )。 ', 'A:多重的', 'B:单重的', 'C:线程的', 'D:不能继承', '', 'B', '2', '1', '胡靖', '李剑涛', '2012-10-21 00:00:00', '2011-10-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('443', '1', '1', '低', 'Java的字符类型采用的是Unicode编码方案，每个Unicode码占用（   B ）个比特位。', 'A:8', 'B:16', 'C:32', 'D:4', '', 'B', '2', '1', '胡靖', '李剑涛', '2012-10-22 00:00:00', '2011-10-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('444', '1', '1', '低', 'Java application中的主类需包含main方法，main方法的返回类型是什么？（ D  ） ', 'A:int', 'B:float', 'C:double', 'D:void', '', 'D', '2', '1', '胡靖', '李剑涛', '2012-10-23 00:00:00', '2011-10-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('445', '1', '1', '低', '下面选项是StringBuffer的构造方法，哪个选项是错误的() ', 'A:StringBuffer() ', ' B:StringBuffer(int capacity)', 'StringBuffer(String str)', ' StringBuffer(char[] data)', '', 'B', '2', '1', '胡靖', '李剑涛', '2012-10-24 00:00:00', '2011-10-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('446', '1', '1', '低', '下说法中错误的一项是（ A ）。', 'A、线程一旦创建，则立即自动进行', 'B线程创建后需要调用start()方法，将线程置于可运行状态', '线程处于可运行状态，意味着它可以被调度', '线程处于可运行状态，意味着它可以被调度', '', 'A', '2', '1', '胡靖', '李剑涛', '2012-10-25 00:00:00', '2011-10-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('447', '1', '1', '低', 'Java中，哪种不可以用来限制存取权限的关键字', '(A)  public ', '(B)  protected ', '（C）extends', '(D)  private', '', 'A', '2', '1', '李雷', '李剑涛', '2012-10-26 00:00:00', '2011-10-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('448', '1', '1', '中', 'Java中提供了名为（）的包装类来包装原始字符串类型。', 'A．Integer', 'B．Char ', 'C．Double', 'D．String', '', 'D', '2', '1', '李雷', '李剑涛', '2012-10-27 00:00:00', '2011-10-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('449', '1', '1', '高', 'java.lang包的（）方法比较两个对象是否相等，相等返回true。', 'A．toString（）', 'B．equals（）', 'C．compare（）', 'D．以上所有选项都不正确', '', 'B', '2', '1', '李雷', '李剑涛', '2012-10-28 00:00:00', '2011-10-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('450', '1', '1', '低', 'What is the correct ordering for the import, class and package declarations when found in a single file?', 'A. package, import, class ', 'B. class, import, package', 'C.import, package, class', 'D. package, class, import', '', 'A', '6', '1', '李雷', '李剑涛', '2012-10-29 00:00:00', '2011-10-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('451', '1', '1', '中', '下面那几个函数是public void method(){...}的重载函数?', 'A public void method( int m){...}', 'B public int method(){...}', 'C public void method2(){...}', 'D public int method(int m，float f ){...}', '', 'A,B,D', '6', '1', '李雷', '李剑涛', '2012-10-30 00:00:00', '2011-10-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('452', '1', '1', '高', '如下哪些不是java的关键字？', 'A const', 'B NULL', 'C false', 'D this', '', 'B', '2', '1', '李雷', '李剑涛', '2012-10-31 00:00:00', '2011-10-31 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('453', '1', '1', '低', '下面关于继承的哪些叙述是正确的', 'A 在java中只允许单一继承   B 在java中一个类只能实现一个接口', 'B 在java中一个类只能实现一个接口', 'C 在java中一个类不能同时继承一个类和实现一个接口', 'D java的单一继承是代码更可靠。', '', 'A,D', '4', '1', '李雷', '李剑涛', '2012-11-01 00:00:00', '2011-11-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('454', '1', '1', '中', '关于垃圾收集的哪些叙述是对的', 'A 程序开发者必须自己创建一个线程进行内存释放的工作', 'B 垃圾收集将检查并释放不在使用的内存', 'C 垃圾收集允许程序开发者明确指定并立即释放该内存', 'D 垃圾收集能够在期望的时间释放被java对象使用的内存', '', 'B', '5', '1', '李雷', '李剑涛', '2012-11-02 00:00:00', '2011-11-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('455', '1', '1', '高', '已知表达式 int m [ ] = {0，1，2，3，4，5，6}；   下面哪个表达式的值与数组下标量总数相等?', 'A m.length()', 'B m.length', 'C  m.length+1', 'D m.length-1', '', 'D', '2', '1', '李雷', '李剑涛', '2012-11-03 00:00:00', '2011-11-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('456', '1', '1', '低', '下面的哪些声明是合法的？', 'A  long 1 = 4990', 'B  int i = 4L', 'C float f =1.1', 'D  double d = 34.4 ', '', 'A,D', '4', '1', '李雷', '李剑涛', '2012-11-04 00:00:00', '2011-11-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('457', '1', '1', '低', '下列不可作为java语言修饰符的是', 'A:a1', 'B：$1', 'C：_1', 'D：11', 'E：', 'D', '2', '1', '乐莎莎', '李剑涛', '2012-11-05 00:00:00', '2011-11-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('458', '1', '1', '低', ' 有一段java 应用程序，它的主类名是a1，那么保存它的源文件名可以是', 'A:a1.javaB:a1.class C:a1', 'B：a1.class   C:a1   D:都对', 'C:a1', 'D:都对', 'E:', 'A', '2', '1', '乐莎莎', '李剑涛', '2012-11-06 00:00:00', '2011-11-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('459', '1', '1', '低', ' 整型数据类型中，需要内存空间最少的是', 'A:short ', 'B:long', 'C:int ', 'D:byte', '', 'D', '2', '1', '乐莎莎', '李剑涛', '2012-11-07 00:00:00', '2011-11-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('460', '1', '1', '低', ' Java 类可以作为', 'A: 类型定义机制B:数据封装机制', '', 'C:类型定义机制和数据封装机制', 'D:上述都不对', 'E:', 'C', '2', '1', '乐莎莎', '李剑涛', '2012-11-08 00:00:00', '2011-11-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('461', '1', '1', '低', ' 在创建对象时必须', 'A:先声明对象，然后才能使用对象', 'B:先声明对象，为对象分配内存空间，然后才能使用对象', 'C:先声明对象，为对象分配内存空间，对对象初始化，然后才能使用对象', 'D:上述说法都对', '', 'C', '2', '1', '乐莎莎', '李剑涛', '2012-11-09 00:00:00', '2011-11-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('462', '1', '1', '低', ' 在调用方法时，若要使方法改变实参的值，可以', 'A:用基本数据类型作为参数', 'B: 用对象作为参数', 'C:A和B都对', 'D:A和B都不对', '', 'B', '2', '1', '乐莎莎', '李剑涛', '2012-11-10 00:00:00', '2011-11-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('463', '1', '1', '低', 'Java语言具有许多优点和特点，哪个反映了Java程序并行机制的特点？', 'A:安全性', 'B:多线性', 'C:跨平台', 'D:可移植', '', 'B', '2', '1', '乐莎莎', '李剑涛', '2012-11-11 00:00:00', '2011-11-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('464', '1', '1', '低', '  Character流与Byte流的区别是', 'A: 每次读入的字节数不同', 'B:前者带有缓冲，后者没有', 'C:前者是字符读写，后者是字节读写', 'D: 二者没有区别，可以互换使用', '', 'C', '2', '1', '乐莎莎', '李剑涛', '2012-11-12 00:00:00', '2011-11-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('465', '1', '1', '低', ' 以下声明合法的是', 'A:default  String  s；   ', 'B:public  final  static  native  int  w( )', 'C:abstract  double  d； ', 'D:abstract  final  double  hyperbolicCosine( )', '', 'D', '2', '1', '乐莎莎', '李剑涛', '2012-11-13 00:00:00', '2011-11-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('466', '1', '1', '低', '将以下哪种方法插入行是不合法的。', 'A:public  float  aMethod（float  a， float  b，float  c）{  }', 'B:public  float  aMethod（float  c，float d）{  }', 'C:public  int  aMethod（int  a， int b）{  }', 'D:private float aMethod（int a，int b，int c）{  }', '', 'B', '2', '1', '乐莎莎', '李剑涛', '2012-11-14 00:00:00', '2011-11-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('467', '1', '1', '低', '算法指的是（）', 'A.计算机程序', 'B.解决问题的计算方法', 'C.排序算法', 'D.解决问题的有限运算序列', '', 'D', '2', '1', '余天琪', '李剑涛', '2012-11-15 00:00:00', '2011-11-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('468', '1', '1', '低', '线性表采用的链式存储时，结点的存储地址（）', 'A.必须是不连续的', 'B.连续与否均可', 'C.必须是连续的', 'D.和头结点的存储地址相连续', '', 'B', '2', '1', '余天琪', '李剑涛', '2012-11-16 00:00:00', '2011-11-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('469', '1', '1', '低', '如下陈述中正确的是（）', 'A.串是一种特殊的线性表', 'B.串的长度必须大于零', 'C.串中元素只能是字母', 'D.空串就是空白串', '', 'A', '2', '1', '余天琪', '李剑涛', '2012-11-17 00:00:00', '2011-11-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('470', '1', '1', '低', '下面程序段的时间复杂度是（）For(i=0;i&lt:n;i++)\n For(j=1;j&lt:m;j++)\n  A[i][j]=0;\n', 'A.O(n)', 'B.O(m+n+1)', 'C. O(m+n)', 'D.O(m*n)', '', 'D', '4', '1', '余天琪', '李剑涛', '2012-11-18 00:00:00', '2011-11-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('471', '1', '1', '低', '队和栈的主要区别是（）', 'A．逻辑结构不同', 'B.存储结构不同', 'C．所包含的运算个数不同', 'D.限定插入和删除的位置不同', '', 'D', '4', '1', '余天琪', '李剑涛', '2012-11-19 00:00:00', '2011-11-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('472', '1', '1', '中', '二维数组A按行优先顺序存储，其中每个元素占一个存储单元。若A[1][1]的存储地址为420,A[3][3]的存储地址为446,则A[5][5]的存储地址为（）', 'A.470', 'B.471', 'C.472', 'D.473', '', 'C', '6', '1', '余天琪', '李剑涛', '2012-11-20 00:00:00', '2011-11-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('473', '1', '1', '低', '在长度为n的顺序表中删除第i个元素（1≤i≤n）时，元素移动的次数为（）', 'A．n-i+1', 'B.i', 'C．i+1', 'D.n-i', '', 'D', '4', '1', '余天琪', '李剑涛', '2012-11-21 00:00:00', '2011-11-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('474', '1', '1', '高', '若进栈序列为1,2,3,4,5,6,且进栈和出栈可以穿插进行，则不可能出现的出栈序列是（）', 'A.2，4，3，1，5，6', 'B.3，2，4，1，6，5', 'C.4，3，2，1，5，6', 'D.2，3，5，1，6，4', '', 'D', '6', '1', '余天琪', '李剑涛', '2012-11-22 00:00:00', '2011-11-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('475', '1', '1', '高', '执行下列程序段后，串x的值为（）S=”abcdefgh”;   T=”xyzw”;\n Substr(X,S,2,strlen(T));\n Substr(Y,S,strlen(T),2);\n Subcat(X,Y);\n', 'A.”cdefgh”', 'B.”cdxyzw”', 'C.”cdefxy”', 'D.”cdefef”', '', 'D', '6', '1', '余天琪', '李剑涛', '2012-11-23 00:00:00', '2011-11-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('476', '1', '1', '低', '下列哪些语句关于内存回收的说明是正确的?   ', 'A.程序员必须创建一个线程来释放内存；', 'B.内存回收程序负责释放无用内存  ', 'C.内存回收程序允许程序员直接释放内存  ', 'D.内存回收程序可以在指定的时间释放内存对象  ', '', 'C', '2', '1', '余天琪', '李剑涛', '2012-11-24 00:00:00', '2011-11-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('477', '1', '1', '低', '下面哪些是合法的变量名?', 'A:．variable2', 'B：2variable', 'C：．_whatavariable', 'D：_3_ ', 'E：', 'D', '2', '1', '周泓亮', '李剑涛', '2012-11-25 00:00:00', '2011-11-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('478', '1', '1', '低', '请问 “abcd” instanceof Object返回的值是?', 'A:“abcd”', 'B：true', 'C：false', 'D：String', 'E：', 'B', '2', '1', '周泓亮', '李剑涛', '2012-11-26 00:00:00', '2011-11-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('479', '1', '1', '低', '下面说法正确的是：', 'A:如果源代码中有package语句，则该语句必须放在代码的第一行（不考虑注释和空格）；', 'B：如果源代码中有import语句，则该语句必须放在在代码的第一行（不考虑注释和空格）', 'C：如果源代码中有main（）方法，则该方法必须被放在代码的第一行 ', 'D：如果某文件的源代码中定义了一个public的接口，接口名和文件名可以不同', 'E：', 'A', '2', '1', '周泓亮', '李剑涛', '2012-11-27 00:00:00', '2011-11-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('480', '1', '1', '低', '下面有关方法覆盖说法不正确的是：', 'A:法覆盖要求覆盖和被覆盖的方法有相同的名字，参数列以及返回值 ', 'B：方法覆盖要求覆盖和被覆盖的方法必须具有相同的访问权限；', 'C：覆盖的方法不能比被覆盖的方法抛出更多的异常 ', 'D：覆盖的方法一定不能是private的 ', 'E：', 'B', '2', '1', '周泓亮', '李剑涛', '2012-11-28 00:00:00', '2011-11-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('481', '1', '1', '低', '一个Java程序运行从上到下的环境次序是', 'A:操作系统、Java程序、JRE/JVM、硬件', 'B：JRE/JVM、Java程序、硬件、操作系统', 'C：Java程序、JRE/JVM、操作系统、硬件 ', 'D：Java程序、操作系统、JRE/JVM、硬件 ', 'E：', 'C', '2', '1', '周泓亮', '李剑涛', '2012-11-29 00:00:00', '2011-11-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('482', '1', '1', '低', '下面选项中哪个关键字可以用来修饰接口中的变量和方法？', 'A: static', 'B： private', 'C： synchronized ', 'D：protected ', 'E：', 'A', '2', '1', '周泓亮', '李剑涛', '2012-11-30 00:00:00', '2011-11-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('483', '1', '1', '中', '下面代码段中：String String=”String”;System.out.println(String);  ', 'A:String', 'B：不知道 ', 'C：编译出错', 'D：运行出错', 'E：', 'A', '4', '1', '周泓亮', '李剑涛', '2012-12-01 00:00:00', '2011-12-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('484', '1', '1', '中', '下面哪种是正确的创建Map集合的方式：', 'A:Map m=new Map(); ', 'B：Map m=new Map(init capacity, increment capacity); ', 'C：Map m=new Map(new Collection()); ', 'D：Map是接口，所以不能实例化。 ', 'E：', 'D', '4', '1', '周泓亮', '李剑涛', '2012-12-02 00:00:00', '2011-12-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('485', '1', '1', '高', '关于被私有保护访问控制符protected修饰的成员变量，以下说法正确的是? ', 'A:可以被三种类所引用：该类自身、与它在同一个包中的其他类、在其他包中的该类的子类', 'B：可以被两种类访问和引用：该类本身、该类的所有子类 ', 'C：只能被该类自身所访问和修改 ', 'D：只能被同一个包中的类访问 ', 'E：', 'A', '6', '1', '周泓亮', '李剑涛', '2012-12-03 00:00:00', '2011-12-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('486', '1', '1', '高', '下列有关继承的说法。正确的是：', 'A:子类能继承父类的所有方法和属性', 'B：子类能继承父类的非私有方法和属性  ', 'C：子类只能继承父类public方法和属性', 'D：子类能继承父类的方法，而不是属性。 ', 'E：', 'B', '6', '1', '周泓亮', '李剑涛', '2012-12-04 00:00:00', '2011-12-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('487', '1', '1', '低', '&nbsp;在下列选项中，t变量的值为（）&nbsp;String&nbsp;s&nbsp;=&nbsp;“hypertext”;&nbsp;String&nbsp;t&nbsp;=&nbsp;s.substring(2,5)', 'A:“yper”', 'B：“ype”', 'C：“pert”', 'D：“per”', 'E：', 'C', '246', '1', '黄杰', '李剑涛', '2012-12-05 00:00:00', '2011-12-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('488', '1', '1', '高', 'String是最基本的数据类型', 'A:正确', 'B: 错误', '', '', '', 'B', '2', '1', '黄杰', '李剑涛', '2012-12-06 00:00:00', '2011-12-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('489', '1', '1', '低', 'Java源代码文件的扩展名为', 'A:.class', 'B:.java', 'C:.jar', 'D:以上都不对', '', 'B', '2', '1', '黄杰', '李剑涛', '2012-12-07 00:00:00', '2011-12-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('490', '1', '1', '低', '以下哪一些不是基本数据类型？', 'A:int', 'B:char', 'C:Integer', 'D:double', '', 'C', '2', '1', '黄杰', '李剑涛', '2012-12-08 00:00:00', '2011-12-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('491', '1', '1', '低', '需要检测错误的代码封入在______中。', 'A：tye块', 'B:catch块', 'D：finally块', 'D:以上都不对', '', 'A', '2', '1', '黄杰', '李剑涛', '2012-12-09 00:00:00', '2011-12-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('492', '1', '1', '低', '是否可以继承String类? ', 'A：可以', 'B：不可以', '', '', '', 'B', '2', '1', '黄杰', '李剑涛', '2012-12-10 00:00:00', '2011-12-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('493', '1', '2', '低', '下列哪些数据类型不属于基本数据类型：（2）', 'A. Boolean', 'B. int', 'C. String', 'D. Short ', 'E. char ', 'ACD', '4', '1', '李剑涛', '李剑涛', '2012-12-11 00:00:00', '2011-12-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('494', '2', '1', '中', '以下哪个HIbernate主键生成策略是实现主键按数值顺序递增的？', 'A：increment', 'B：Identity', 'C:sequence', 'D:native', '', 'A', '4', '1', '李剑涛', '李剑涛', '2012-12-12 00:00:00', '2011-12-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('495', '2', '1', '低', '在JSP中，Page指令的（）属性用来引入需要的包和类。', 'A: Exends', 'B:import', 'C: language', 'D:contentType', '', 'B', '2', '1', '李剑涛', '李剑涛', '2012-12-13 00:00:00', '2011-12-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('496', '2', '1', '中', '从以下哪个选项中可以获得Servlet的初始参数（)', 'A: Servlet', 'B:ServletContext', 'C: ServletConfig', 'D:GenericServlet', '', 'C', '4', '1', '李剑涛', '李剑涛', '2012-12-14 00:00:00', '2011-12-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('497', '2', '1', '中', '以下关于HIbernate说法正确的是（)', 'A: Hibernate是ORM的一种实现方式。', 'B:Hibernate不要JDBC的支持。', 'C: 属于控制层', 'D:对象关系映射，让对象同数据库表产生关系。 ', '', 'A', '2', '1', '李剑涛', '李剑涛', '2012-12-15 00:00:00', '2011-12-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('498', '2', '1', '中', '下面关于SessionFactory的说法正确的是（）', 'A: SessionFactory是轻量级的，可以随意创建和销毁。', 'B:SessionFactory是重量级的接口，不可以随意创建和销毁。', 'C: SessionFactory是重量级的类，不可以随意创建和销毁。 ', 'D:SessionFactory是类。', '', 'B', '2', '1', '李剑涛', '李剑涛', '2012-12-16 00:00:00', '2011-12-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('499', '2', '1', '中', '下面关于Hibernate中load和get的方法说法正确的是（)', 'A: 两个方法是一样的，没有任何区别。', 'B:两个方法是不一样的，get先找缓存，再找数据库。', 'C: 两个方法是不一样的，load每次都会找数据库。', 'D:以上说法都不对。', '', 'D', '2', '1', '李剑涛', '李剑涛', '2012-12-17 00:00:00', '2011-12-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('500', '2', '1', '中', 'spring能管理的组件不包括（)', 'A: Jsp', 'B:javabean ', 'C: pojo', 'D:DAO ', '', 'A', '2', '1', '李剑涛', '李剑涛', '2012-12-18 00:00:00', '2011-12-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('501', '2', '1', '难', '下面关于OPM的说法不正确的是（)', 'A: 持久化是将程序中数据在瞬时状态和持久状态间转换的机制。', 'B:瞬时状态是指程序数据保存在内存中，程序退出时，数据就不存在了。', 'C: 把关系数据库中的数据读出来不属于持久化。', 'D:程序数据直接保存成文本文件属于持久化。', '', 'C', '2', '1', '李剑涛', '李剑涛', '2012-12-19 00:00:00', '2011-12-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('502', '2', '1', '低', '一个Servlet的该配置对象（能/否)___被其他Servlet访问', 'A: 能', 'B:不能', '', '', '', 'B', '2', '1', '李剑涛', '李剑涛', '2012-12-20 00:00:00', '2011-12-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('503', '2', '1', '低', 'J2EE 中，（）类的（）方法用于创建对话', 'A：HttpServletRequest、getSession', 'B：HttpServletResponse、newSession', 'C：HtttpSession、newInstance', 'D： HttpSession、getSession  ', '', 'A', '2', '1', '陶伟华', '李剑涛', '2012-12-21 00:00:00', '2011-12-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('504', '2', '1', '低', '编写Servlet 的doPost方法时，需要抛出异常为（）', 'A：ServletException，IOException ', 'B：ServletException，IOException ', 'C：HttpServletException，IOException', 'D：HttpServletException，IOException', '', 'A', '2', '1', '陶伟华', '李剑涛', '2012-12-22 00:00:00', '2011-12-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('505', '2', '1', '低', '给定一个Servlet程序的代码片段，如下：( )Public void doPost(HttpServletRequest request,HttpServletResponse response) throws  \n\n      ServletException,IOException { \n\n           Request.getSession().getAttribute(“A”);  \n           //第二行\n    } \n\n     假定第二行返回的对象引用不是null，那么这', 'A： page ', 'B：session', 'C：request ', 'D：application', '', 'B', '2', '1', '陶伟华', '李剑涛', '2012-12-23 00:00:00', '2011-12-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('506', '2', '1', '低', 'HttpServletRequest 接口的（)方法用于创建会话', 'A:post', 'B:getContext()', 'C:getSession()', 'D: putSession()', '', 'C', '2', '1', '陶伟华', '李剑涛', '2012-12-24 00:00:00', '2011-12-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('507', '2', '1', '低', '（ ）动作用于将请求发送给其他页面', 'A:setSession()', 'B:forward   ', 'C:include  ', 'D:param ', '', 'B', '2', '1', '陶伟华', '李剑涛', '2012-12-25 00:00:00', '2011-12-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('508', '2', '1', '中', 'page指令的（）属性用于引用需要的包或类', 'A:next   ', 'B:import  ', 'C:isErrorPage  ', 'D:language ', '', 'B', '4', '1', '陶伟华', '李剑涛', '2012-12-26 00:00:00', '2011-12-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('509', '2', '1', '中', '如何获取一个 Cookie[]（）', 'A:extends  ', 'B:request.getCookie()', 'C:response.getCookies() ', 'D:response.getCookie()', '', 'A', '4', '1', '陶伟华', '李剑涛', '2012-12-27 00:00:00', '2011-12-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('510', '2', '1', '中', '关于输入和输出的隐式对象有（）', 'A:request.getCookies() ', 'B:request   ', 'C:response  ', 'D:out  ', '', 'D', '4', '1', '陶伟华', '李剑涛', '2012-12-28 00:00:00', '2011-12-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('511', '2', '1', '高', '在 JSP 中调用 JavaBean 时不会用到的标记是（）', 'A:application   ', 'B:<jsp:useBean> ', 'C:<jsp:setProperty>   ', 'D:<jsp:getProperty>  ', '', 'A', '6', '1', '陶伟华', '李剑涛', '2012-12-29 00:00:00', '2011-12-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('512', '2', '1', '高', '（ ）用于获取 Bean的属性的值 ', 'A:<javabean>  ', 'B:setValue  ', 'C:getProperty  ', 'D:getValue  ', '', 'C', '6', '1', '陶伟华', '李剑涛', '2012-12-30 00:00:00', '2011-12-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('513', '2', '1', '低', 'Servlet的事件驱动由（Listener）实现。', 'A. Filter ', 'B.Listener ', 'C .Response', 'D. Reques', '', 'B', '2', '1', '胡靖', '李剑涛', '2012-12-31 00:00:00', '2011-12-31 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('514', '2', '1', '低', '客户机对Servlet的请求和Servlet对客户端的响应，都是通过(   )来实现的。 ', 'A. EJB ', 'B:XML', 'C API', 'D:WEB服务器', '', 'D', '2', '1', '胡靖', '李剑涛', '2013-01-01 00:00:00', '2012-01-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('515', '2', '1', '低', 'JSP从HTML表单中获得用户输入的正确语句为 （）', 'A、Request.getParameter(“ID”) ', 'B、Reponse.getParameter(“ID”) ', 'C:Request.getAttribute(“ID”)  ', ' D、Reponse.getAttribute(“ID”)', '', 'A', '2', '1', '胡靖', '李剑涛', '2013-01-02 00:00:00', '2012-01-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('516', '2', '1', '低', '能执行带参数的SQL语句的对象是 （） ', 'A:Statement', 'B: Preparedstatement', 'C、CallStatement', 'D、以上三个都可以 ', '', 'B', '2', '1', '胡靖', '李剑涛', '2013-01-03 00:00:00', '2012-01-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('517', '2', '1', '低', '在WAR文件中，web.xml放在哪个目录中 （） ', 'A:WEB-INF', 'B:APP-INFC. META-INF', '', ' D. WEB-INF\\lib', '', 'A', '2', '1', '胡靖', '李剑涛', '2013-01-04 00:00:00', '2012-01-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('518', '2', '1', '低', 'JSP文件在第一次运行的时候被JSP引擎编译为(   )文件。', 'A.Servlet', 'B:CLASS', 'C:HTML', 'D:JAVA', '', 'A', '2', '1', '胡靖', '李剑涛', '2013-01-05 00:00:00', '2012-01-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('519', '2', '1', '低', 'MVC设计模式将应用程序分为( )部分。A:3', '', 'B:4', 'C:5', 'D以上答案均不正确', '', 'B', '2', '1', '胡靖', '李剑涛', '2013-01-06 00:00:00', '2012-01-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('520', '2', '1', '低', ' page指令的属性中可以多次设计的属性是', 'A :page ', 'B session', 'C: extends', 'D:info', '', 'A', '2', '1', '胡靖', '李剑涛', '2013-01-07 00:00:00', '2012-01-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('521', '2', '1', '低', '下列关于JavaEE叙述错误的是', 'A:JavaEE是一个标准中间件体系结构', 'B:avaEE是企业分布式应用开发标准', 'C:JavaEE的编程思想是：组件-容器', 'D:JavaEE是一门编程语言', '', 'D', '2', '1', '乐莎莎', '李剑涛', '2013-01-08 00:00:00', '2012-01-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('522', '2', '1', '中', 'JavaEE技术框架包括', 'A:组件技术 B:', 'B:服务技术 C:通信技术D:以上三种', 'C:通信技术 ', 'D:以上三种', '', 'D', '2', '1', '乐莎莎', '李剑涛', '2013-01-09 00:00:00', '2012-01-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('523', '2', '1', '中', 'JavaEE Web组件包括', 'A:Servlet和JSP', 'B:Servlet和JDBC', 'C:JSP和JNDI ', 'D:EJB和JDBC', '', 'A', '2', '1', '乐莎莎', '李剑涛', '2013-01-10 00:00:00', '2012-01-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('524', '2', '1', '中', 'JavaEE提供的组件主要包括', 'A:客户端组件、Web组件和JDBC组件 ', 'B:Web组件、EJB组件和JDBC组件', 'C:客户端组件、Web组件和EJB组件', 'D:Web组件、EJB组件和JNDI组件', '', 'C', '2', '1', '乐莎莎', '李剑涛', '2013-01-11 00:00:00', '2012-01-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('525', '2', '1', '中', '1. JavaEE编程属于服务器端应用的编程，因此JavaEE程序的运行需要一个（    ）应用服务器的支持。', 'A:客户 ', 'B:中间件', 'C:商业', 'D:数据库', '', 'B', '2', '1', '乐莎莎', '李剑涛', '2013-01-12 00:00:00', '2012-01-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('526', '2', '1', '中', '以下关于XML和HTML描述错误的是', 'A:XML是用来存放数据的', 'B:HTML是用来显示数据的', 'C:XML和HTML是两种不同用途的语言', 'D:XML是HTML的替代品', '', 'D', '2', '1', '乐莎莎', '李剑涛', '2013-01-13 00:00:00', '2012-01-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('527', '2', '1', '中', '下面关于XML语言描述错误的是', 'A:XML实际上是Web上表示结构化信息的一种标准文本格式', 'B:XML是一种跨平台的，与软、硬件无关的，处理信息的工具', 'C:XML是一种元符号化语言，可以作为元语言来定义其它文件系统', 'D:XML不具备面向对象的特性', '', 'D', '2', '1', '乐莎莎', '李剑涛', '2013-01-14 00:00:00', '2012-01-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('528', '2', '1', '中', 'XML是一种语法要求十分严格的标记语言，因此语法有严格的限制。有关XML的基本语法描述错误的是', 'A:文件的第一条语句必须是引入库的声明', 'B:标记的使用必须遵循使用规则', 'C:属性的值必须用双引号括起来 ', 'D:特殊字符必须用特定的编码表示', '', 'A', '2', '1', '乐莎莎', '李剑涛', '2013-01-15 00:00:00', '2012-01-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('529', '2', '1', '中', 'XML技术的显著特点是数据和现实的分离，以及数据的', 'A:可维护性 ', 'B:可移植性 ', 'C:自描述性 ', 'D:原子性', '', 'B', '2', '1', '乐莎莎', '李剑涛', '2013-01-16 00:00:00', '2012-01-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('530', '2', '1', '中', '下面关于XML标记的使用规则错误是', 'A: 必须具有根标记且根标记必须惟一', 'B:开始标记和结束标记需配对使用', 'C:标记不能交错使用', 'D:标记对大小写不敏感', '', 'D', '2', '1', '乐莎莎', '李剑涛', '2013-01-17 00:00:00', '2012-01-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('531', '2', '1', '中', 'JavaEE的三层结构包括表示层、（）。', 'A、服务层', 'B、中间层', 'C、保存层', 'D、数据层', '', 'B,D', '2', '1', '李雷', '李剑涛', '2013-01-18 00:00:00', '2012-01-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('532', '2', '1', '高', '下列（）不属于HTTP协议中GET方法和POST方法的区别内容。', 'A、提交数据时，POST比GET安全。', 'B、提交数据时，POST没有数据量的限制。', 'C、GET方法请求的页面可以作为书签。', 'D、POST方法请求的页面可以使用邮件发送。', '', 'D', '4', '1', '李雷', '李剑涛', '2013-01-19 00:00:00', '2012-01-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('533', '2', '1', '低', '下列有关Servlet的生命周期，说法不正确的是（）。', 'A、在创建自己的Servlet时候，应该在初始化方法init()方法中创建Servlet实例。', 'B、在Servlet生命周期的服务阶段，执行service()方法，根据用户请求的方法，执行相应的doGet()或是doPost()方法。', 'C、在销毁阶段，执行destroy()方法后系统立刻进行垃圾回收。', 'D、destroy()方法仅执行一次，即在服务器停止且卸载Servlet时执行该方法。', '', 'A', '4', '1', '李雷', '李剑涛', '2013-01-20 00:00:00', '2012-01-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('534', '2', '1', '中', '关于session的使用，下列说法正确的是（）。', 'A、不同的用户窗口具有不同的session', 'B、不同的用户窗口具有相同的session', 'C、session有可能超时', 'D、session永远不可能超时', '', 'A,C', '4', '1', '李雷', '李剑涛', '2013-01-21 00:00:00', '2012-01-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('535', '2', '1', '高', '在使用Class对象的load()方法加载.properties文件时，数据在内存中是以（）形式进行保存的', 'A、List列表', 'B、Set集合', 'C、Array数组', 'D、Hashtable', '', 'D', '2', '1', '李雷', '李剑涛', '2013-01-22 00:00:00', '2012-01-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('536', '2', '1', '低', 'Model II设计模式也称为（）设计模式', 'A、MVC', 'B、JavaEE', 'C、Web', 'D、大型', '', 'A', '2', '1', '李雷', '李剑涛', '2013-01-23 00:00:00', '2012-01-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('537', '2', '1', '中', '有关JSP中getProperty与setProperty标准动作的使用，下列说法中正确的是（）。', 'A、必须在使用useBean的前提下，才能使用', 'B、可以在不使用useBean的情况下使用。', 'C、param属性指定的名称必须与类的属性相对应。', 'D、以上说法都不对。', '', 'A', '2', '1', '李雷', '李剑涛', '2013-01-24 00:00:00', '2012-01-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('538', '2', '1', '高', '在页面中想要显示一个数组内元素值，应该使用（）标签来实现', 'A、<c:if>', 'B、<c:forEach>', 'C、<sql:param>', 'D、<c:out>', '', 'B', '4', '1', '李雷', '李剑涛', '2013-01-25 00:00:00', '2012-01-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('539', '2', '1', '低', 'Web服务实现数据传递是以（）方式进行的。', 'A. HTML', 'B. TXT', 'C. XML', 'D. HTTP', '', 'C,D', '2', '1', '李雷', '李剑涛', '2013-01-26 00:00:00', '2012-01-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('540', '2', '1', '中', '下面语句中，正确的是（）。', 'A. public class AddAction implements Action {...', 'B. mapping.findForward(\"/ch01/result.jsp\")', 'C. <form method=\"get\" action=\"add.do\">', 'D. <action name=\"addAction\" path=\"/add\" type=\"y2ssh.sg.web.action.AddAction\">', '', 'C', '4', '1', '李雷', '李剑涛', '2013-01-27 00:00:00', '2012-01-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('541', '2', '1', '低', '以下哪个单词不属于javascript保留字()', 'A:with ', 'B:parent', 'C:class    ', 'D:void', 'E：', 'B', '2', '1', '李雷', '李剑涛', '2013-01-28 00:00:00', '2012-01-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('542', '2', '2', '高', '请1对javascript理解有误的()', 'A:JScript是javascript的简称 ', 'B:javascript是网景公司开发的一种Java脚本语言，其目的是为了简化Java的开发难度 ', 'C: FireFox和IE存在大量兼容性问题的主要原因在于他们对javascript的支持不同上  ', 'D:AJAX技术一定要使用javascript技术 ', '', 'ABCD', '6', '1', '李雷', '李剑涛', '2013-01-29 00:00:00', '2012-01-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('543', '2', '2', '高', '以下哪些是javascript的全局函数()', 'A:escape  ', 'B:parseFloat ', 'C:eval ', 'D:setTimeout', 'E：alert   ', 'ABC', '6', '1', '李雷', '李剑涛', '2013-01-30 00:00:00', '2012-01-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('544', '2', '1', '低', 'web应用程序体系结构最多可分为三层，不属于这三层的是()', 'A:表示层 ', 'B:业务层', 'C:数据访问层', 'D:网络链接层', 'E：', 'D', '2', '1', '李雷', '李剑涛', '2013-01-31 00:00:00', '2012-01-31 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('545', '2', '1', '中', 'JSP在服务器中进行编译时，将首先被转译成()', 'A:.JAVA语言', 'B:HTML代码 ', 'C:servlet ', 'D:以上都是', 'E：', 'C', '4', '1', '李雷', '李剑涛', '2013-02-01 00:00:00', '2012-02-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('546', '2', '1', '中', '下列不是JSP开发工具的是()', 'A:JBuilder', 'B:IBM WebSphere ', 'C:MyEclipse', 'D:Firework', 'E：', 'D', '4', '1', '李雷', '李剑涛', '2013-02-02 00:00:00', '2012-02-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('547', '2', '1', '低', '以下说法正确的是()', 'A:<A>标签是页面链接标签，只能用来链接到其他页面 ', 'B:<A>标签是页面链接标签，只能用来链接到本页面的其他位置', 'C:<A>标签的src属性用于指定要链接的地址', 'D:<A>标签的href属性用于指定要链接的地址 ', 'E：', 'D', '2', '1', '李雷', '李剑涛', '2013-02-03 00:00:00', '2012-02-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('548', '2', '1', '低', '在HTML中，（）标签用于在网页中创建表单。', 'A:<INPUT>', 'B:<SELECT> ', 'C:<TABLE>', 'D:<FORM> ', 'E：', 'D ', '2', '1', '李雷', '李剑涛', '2013-02-04 00:00:00', '2012-02-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('549', '2', '1', '低', '在HTML中，下面（）不属于HTML文档的基本组成部分', 'A:<STYLE></STYTLE> ', 'B:<BODY></BODY>', 'C:<HTML></HTML>', 'D:<HEAD></HEAD>', 'E：', 'A', '2', '1', '李雷', '李剑涛', '2013-02-05 00:00:00', '2012-02-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('550', '2', '1', '高', 'XMLHttpRequest对象有几个返回状态值()', 'A:3', 'B:4', 'C:5', 'D:6', 'E：', 'C', '6', '1', '李雷', '李剑涛', '2013-02-06 00:00:00', '2012-02-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('551', '2', '2', '低', '在JavaEE中表单操作是浏览器请求服务器资源的基本手段，表单操作最基本的方式有\n \n', 'A.post', 'B.get', 'C.action', 'D.method', '', 'AB', '2', '1', '陈慧', '李剑涛', '2013-02-07 00:00:00', '2012-02-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('552', '2', '1', '低', '在启动tomcat时出现以下问题，可能的原因是(  )  严重: java.net.BindException: Address already in use: JVM_Bind <null>:8888。     ', ' A．JDK没有配置好 ', ' B．HTTP的8888端口被其他程序所占用    ', ' C．JVM被其他程序所占用 ', '  D．计算机端网或者网卡没有装驱动 ', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-02-08 00:00:00', '2012-02-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('553', '2', '1', '低', '以下常用的字符集中，不支持中文的是(     )。 ', 'A.GB2312 ', 'B.GBK ', 'C.ISO-8859-1', 'D．UTF-8', '', 'C', '2', '1', '陈慧', '李剑涛', '2013-02-09 00:00:00', '2012-02-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('554', '2', '1', '低', ' PreparedStatement的executeQuery()方法会返回的是(     )。', ' A.DataSet对象', 'B．ResultSet对象  ', 'C.List<>对象', 'D.DataSource对象', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-02-10 00:00:00', '2012-02-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('555', '2', '1', '低', '下列不属于常见Java EE分层模型中的层次的是（）。', 'A．数据访问层', 'B.应用层', 'C.业务逻辑层', 'D.控制层', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-02-11 00:00:00', '2012-02-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('556', '2', '1', '中', '声明一个对象，给它加上name属性和show方法显示其name值，以下代码中正确的是（D ）\n', 'A.var obj = [name:\"zhangsan\",show:function(){alert(name);}]; ', 'B.var obj = {name:\"zhangsan\",show:”alert(this.name)”};', 'C.var obj = {name:\"zhangsan\",show:function(){alert(name);}}; ', 'D.var obj = {name:\"zhangsan\",show:function(){alert(this.name);}}; ', '', 'D', '4', '1', '陈慧', '李剑涛', '2013-02-12 00:00:00', '2012-02-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('557', '2', '1', '中', '以下关于Array数组对象的说法不正确的是（CD ）', 'A.对数组里数据的排序可以用sort函数，如果排序效果非预期，可以给sort函数加一个排序函数的参数', 'B.reverse用于对数组数据的倒序排列', 'C.向数组的最后位置加一个新元素，可以用pop方法', 'D.unshift方法用于向数组删除第一个元素\n', '', 'CD', '4', '1', '陈慧', '李剑涛', '2013-02-13 00:00:00', '2012-02-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('558', '2', '1', '低', 'J2EE中，JSP EL表达式：${user.loginName}的执行效果等同于（）。（1一项）          ', 'A.<%=user.getLoginName()%>', 'B.<%user.getLoginName();%>', 'C.<%=user.loginName%>', 'D.<%user.loginName;%> ', '', 'A', '2', '1', '陈慧', '李剑涛', '2013-02-14 00:00:00', '2012-02-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('559', '2', '1', '低', 'J2EE中，( )类的( )方法用于返回应用程序的上下文路径。（1一项）', 'A.HttpServletRequest、getContextPath()', 'B.HttpServletRequest、getPathInfo()', 'C.HttpServletRequest、getPathInfo()', 'D.ServlettContext、getPathInfo()', '', 'A', '2', '1', '陈慧', '李剑涛', '2013-02-15 00:00:00', '2012-02-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('560', '2', '1', '低', '要设置某个JSP页面为错误处理页面，以下page指令正确的是（）。 (1一项)', 'A.<%@ page errorPage=\"true\"%>', 'B.<%@ page isErrorPage=\"true\"%> ', 'C.<%@ page extends=\"javax.servlet.jsp.JspErrorPage\"%>', 'D.<%@ page info=\"error\"%>', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-02-16 00:00:00', '2012-02-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('561', '2', '1', '低', '配置JSP运行环境，若WEB应用服务器选用TOMCAT，以下说法正确的是：()', 'A.先安装TOMCAT，再安装JDK', 'B.先安装JDK，再安装TOMCAT ', 'C.不需安装JDK，安装TOMCAT就可以了', 'D.不需安装JDK，安装TOMCAT就可以了', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-02-17 00:00:00', '2012-02-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('562', '2', '1', '中', 'page指令的作用是：()', 'A.用来定义整个JSP页面的一些属性和这些属性的值', 'B.用来在JSP页面内某处嵌入一个文件', 'C.使该JSP页面动态包含一个文件', 'D.指示JSP页面加载Java plugin', '', 'A', '4', '1', '陈慧', '李剑涛', '2013-02-18 00:00:00', '2012-02-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('563', '2', '1', '低', 'page指令的import属性的作用是（)', 'A.定义JSP页面响应的MIME类型', 'B.定义JSP页面使用的脚本语言', 'C.为JSP页面引入JAVA包中的类', 'D.为JSP页面引入JAVA包中的类', '', 'C', '2', '1', '陈慧', '李剑涛', '2013-02-19 00:00:00', '2012-02-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('564', '2', '1', '低', '在HTML中，标记<font>的Size属性最大取值可以是()', 'A.5', 'B.6', 'C.7', 'D.8', '', 'C', '2', '1', '陈慧', '李剑涛', '2013-02-20 00:00:00', '2012-02-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('565', '2', '1', '低', ' servlet 的生命周期又一系列事件组成，把这些事件按照先后顺序排序，以下正确的是（）', 'A.加载类，实例化，请求处理，初始化，销毁 ', 'B. 加载类，实例化，初始化，请求处理，销毁', 'C.实例化，加载类，初始化，请求处理，销毁', 'D. 加载类，初始化，实例化，请求处理，销毁', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-02-21 00:00:00', '2012-02-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('566', '2', '1', '低', '以下注释语句不可以在jsp中使用的是？()', 'A. <!注释语句>', 'B.<%--注释语句--%>', 'C. /*注释语句*/ ', 'D.//注释语句', '', 'D', '2', '1', '陈慧', '李剑涛', '2013-02-22 00:00:00', '2012-02-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('567', '2', '1', '低', '常用的接收邮件的协议是 （） ', 'A.SMTP ', 'B.POP3', 'C.IMAP', 'D.MIME', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-02-23 00:00:00', '2012-02-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('568', '2', '1', '低', '以下哪个HIbernate主键生成策略是实现主键按数值顺序递增的？', 'A:increment ', 'B：Identity', 'C：sequence ', 'D：native', 'E：', 'A', '2', '1', '陈慧', '李剑涛', '2013-02-24 00:00:00', '2012-02-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('569', '2', '1', '低', '在JSP中，Page指令的（ ）属性用来引入需要的包和类。', 'A:Exends', 'B：import', 'C：language', 'D：contentType', 'E：', 'B', '2', '1', '周泓亮', '李剑涛', '2013-02-25 00:00:00', '2012-02-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('570', '2', '1', '低', '从以下哪个选项中可以获得Servlet的初始参数', 'A:Servlet', 'B：ServletContext ', 'C：ServletConfig', 'D：GenericServlet', 'E：', 'C', '2', '1', '周泓亮', '李剑涛', '2013-02-26 00:00:00', '2012-02-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('571', '2', '1', '低', '下面关于OPM的说法不正确的是', 'A:持久化是将程序中数据在瞬时状态和持久状态间转换的机制。', 'B:瞬时状态是指程序数据保存在内存中，程序退出时，数据就不存在了。', 'C：把关系数据库中的数据读出来不属于持久化。', 'D：程序数据直接保存成文本文件属于持久化。', 'E：', 'C', '2', '1', '周泓亮', '李剑涛', '2013-02-27 00:00:00', '2012-02-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('572', '2', '1', '低', '下面关于SessionFactory的说法正确的是', 'A:SessionFactory是轻量级的，可以随意创建和销毁。', 'B：SessionFactory是重量级的接口，不可以随意创建和销毁。', 'C：SessionFactory是重量级的类，不可以随意创建和销毁。', 'D：SessionFactory是类。', 'E：', 'B', '2', '1', '周泓亮', '李剑涛', '2013-02-28 00:00:00', '2012-02-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('573', '2', '1', '低', 'spring能管理的组件不包括', 'A:Jsp', 'B：javabean  ', 'C：pojo  ', 'D：DAO', 'E：', 'A', '2', '1', '周泓亮', '李剑涛', '2013-03-01 00:00:00', '2012-02-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('574', '2', '1', '中', '在Struts实现的MVC框架中，（  ）类是包含了excute方法的控制器类，负责\n调用模型的方法，控制应用程序的流程。', 'A:Action', 'B：ActionForm', 'C：ActionServlet', 'D：JavaBean', 'E：', 'A', '4', '1', '周泓亮', '李剑涛', '2013-03-02 00:00:00', '2012-03-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('575', '2', '1', '中', '下面那个选项不属于MVC三个核心模块。', 'A:模型', 'B：视图', 'C：数据库连接', 'D：控制器', 'E：', 'C', '4', '1', '周泓亮', '李剑涛', '2013-03-03 00:00:00', '2012-03-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('576', '2', '1', '高', '在基于Struts框架的Web应用中，下面关于Action类的说法正确的是', 'A:Action类属于模型组件', 'B：Action类主要用来完成实际的业务逻辑', 'C：Action类负责调用模型的方法，更新模型的状态，并帮助控制应用程序的流程', 'D：在Web应用启动时会自动加载所有的Action实例', 'E：', 'C', '6', '1', '周泓亮', '李剑涛', '2013-03-04 00:00:00', '2012-03-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('577', '2', '1', '高', 'Struts2框架提供给用户编写并且最常用的配置文件是：', 'A:struts.xml', 'B：struts-default.xml', 'C：web.xml', 'D：struts.properties ', 'E：', 'A', '6', '1', '周泓亮', '李剑涛', '2013-03-05 00:00:00', '2012-03-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('578', '2', '1', '高', '程序中的逻辑错误可以在编译时立即发现。', 'A:正确', 'B：错误', '', '', '', 'B', '2', '1', '黄杰', '李剑涛', '2013-03-06 00:00:00', '2012-03-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('579', '2', '1', '高', 'Servlet程序运行在服务器Web容器中。', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '黄杰', '李剑涛', '2013-03-07 00:00:00', '2012-03-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('580', '2', '1', '高', 'JSP注释内容会返回到客户端浏览器，但不会显示出来。', 'A：正确', 'B：错误', '', '', '', 'B', '2', '1', '黄杰', '李剑涛', '2013-03-08 00:00:00', '2012-03-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('581', '2', '1', '高', 'JSTL的核心标记库引用指令的prefix属性取值必须是c。', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '黄杰', '李剑涛', '2013-03-09 00:00:00', '2012-03-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('582', '2', '1', '高', '使用response的sendRedirect()方法页面跳转会重建request对象。 ', 'A:正确', 'B: 错误', '', '', '', 'B', '2', '1', '黄杰', '李剑涛', '2013-03-10 00:00:00', '2012-03-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('583', '2', '1', '高', '数据库连接池是由应用程序创建和管理的。', 'A:正确', 'B: 错误', '', '', '', 'A', '2', '1', '黄杰', '李剑涛', '2013-03-11 00:00:00', '2012-03-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('584', '2', '1', '中', 'DAO返回结果集需要类型转换', 'A: 对', 'B:错', '', '', '', 'B', '2', '1', '李剑涛', '李剑涛', '2013-03-12 00:00:00', '2012-03-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('585', '3', '2', '中', 'Excel 中有关数据库内容 , 描述正确的有( )。', 'A: 一行为一个记录 , 描述某个实体对象', 'B:一列为一个字段 , 描述实体对象的属性 ', 'C: Excel 数据库属于“关系数据模型”, 又称为关系型数据库', 'D:每一个 Excel 数据库对应一个工作簿文件 ', '', 'ABC', '4', '1', '李剑涛', '李剑涛', '2013-03-13 00:00:00', '2012-03-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('586', '3', '2', '中', '关系数据模型哪些优点？(  ) ', 'A: 结构简单', 'B:适用于集合操作', 'C: 有标准语言', 'D:可表示复杂的语义', '', 'ABC', '4', '1', '李剑涛', '李剑涛', '2013-03-14 00:00:00', '2012-03-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('587', '3', '2', '低', '下面系统中属于关系数据库管理系统的是( ) ', 'A: Oracle', 'B:MS_SQL SERVER  ', 'C: IMS ', 'D:DB2', '', 'ABD', '4', '1', '李剑涛', '李剑涛', '2013-03-15 00:00:00', '2012-03-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('588', '3', '2', '低', '在下列关于关系的叙述中，正确的是( )', 'A: 表中任意两行的值不能相同', 'B:表中任意两列的值不能相同', 'C: 行在表中的顺序无关紧要', 'D:列在表中的顺序无关紧要', '', 'ACD', '4', '1', '李剑涛', '李剑涛', '2013-03-16 00:00:00', '2012-03-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('589', '3', '1', '低', '修改表结构在设计视图中完成，编辑表记录只能在数据表视图中完成。', 'A: Y', 'B:N', '', '', '', 'A', '2', '1', '李剑涛', '李剑涛', '2013-03-17 00:00:00', '2012-03-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('590', '3', '1', '低', '通过数据访问页可以实现对数据的添加、删除与更新操作。', 'A: Y', 'B:N', '', '', '', 'A', '2', '1', '李剑涛', '李剑涛', '2013-03-18 00:00:00', '2012-03-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('591', '3', '1', '低', '索引有助于提高数据检索的速度，因此建立索引的数量越多越好。', 'A: Y', 'B:N', '', '', '', 'B', '2', '1', '李剑涛', '李剑涛', '2013-03-19 00:00:00', '2012-03-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('592', '3', '1', '低', 'VARCHAR类型字段保存最大的字符数是（）', 'A: 255', 'B:1025', 'C: 65533', 'D:65533', '', 'C', '2', '1', '李剑涛', '李剑涛', '2013-03-20 00:00:00', '2012-03-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('593', '3', '1', '低', '关于DATETIME与TIMESTAMP两种数据类型的描述，错误的是（）', 'A: 两者值的范围不一样。', 'B:两者值的范围一样。', 'C: 两者占用空间不一样。', 'D:TIMESTAMP可以自动记录当前日期时间。', '', 'B', '2', '1', '李剑涛', '李剑涛', '2013-03-21 00:00:00', '2012-03-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('594', '3', '1', '低', ' 数据库结构的描述和定义是DBMS运行的基本依据，它们存储于（ ）', 'A:setProperty   ', 'B:数据字典', 'C:索引', 'D:日志 ', '', 'B', '2', '1', '陶伟华', '李剑涛', '2013-03-22 00:00:00', '2012-03-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('595', '3', '1', '低', '数据库管理系统的数据操纵语言(DML)所实现的操作一般包括（ ）', 'A:封锁表', 'B:建立、授权、删除', 'C:建立、插入、修改、排序', 'D:查询、插入、修改、删除 ', '', 'D', '2', '1', '陶伟华', '李剑涛', '2013-03-23 00:00:00', '2012-03-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('596', '3', '1', '低', '在对数据库的系统故障进行恢复时，需要对日志文件进行（  ）', 'A:建立、授权、修改', 'B:正向扫描 ', 'C:双向扫描 ', 'D:随机扫描', '', 'B', '4', '1', '陶伟华', '李剑涛', '2013-03-24 00:00:00', '2012-03-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('597', '3', '1', '低', '下列权限中，哪一个不是数据库的访问权限？()', 'A:反向扫描 ', 'B:Resource权限', 'C:Update权限 ', 'D:Lock权限  ', '', 'D', '4', '1', '陶伟华', '李剑涛', '2013-03-25 00:00:00', '2012-03-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('598', '3', '1', '低', 'E-R模型用于数据库设计的哪一个阶段？ （ ）', 'A:Read权限', 'B:概念结构设计', 'C:逻辑结构设计', 'D:物理结构设计 ', '', 'B', '4', '1', '陶伟华', '李剑涛', '2013-03-26 00:00:00', '2012-03-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('599', '3', '1', '低', '在数据库中可以创建和删除表、视图、索引，可以修改表。这是因为数据库管理系统提供了（ )', 'A:需求分析', 'B:数据操纵功能 ', 'C:数据维护功能 ', 'D:数据控制功能  ', '', 'A', '6', '1', '陶伟华', '李剑涛', '2013-03-27 00:00:00', '2012-03-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('600', '3', '1', '中', '在关系数据库中，索引（index）是三级模式结构中的（  ）', 'A:数据定义功能  ', 'B:内模式', 'C:模式', 'D:外模式', '', 'B', '6', '1', '陶伟华', '李剑涛', '2013-03-28 00:00:00', '2012-03-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('601', '3', '1', '中', ' 在关系数据库系统中，当合并两个关系时，用户程序可以不变。这是（ ）', 'A:概念模式 ', 'B:数据的位置独立性', 'C:数据的逻辑独立性', 'D:数据的存储独立性  ', '', 'C', '2', '1', '陶伟华', '李剑涛', '2013-03-29 00:00:00', '2012-03-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('602', '3', '1', '中', '如果在一个关系中，存在某个属性（或属性组），虽然不是该关系的主码或只是主码的一部分,但却是另一个关系的主码时，称该属性（或属性组）为这个关系的()', 'A:数据的物理独立性', 'B:主码', 'C:外码', 'D:连接码   ', '', 'C', '2', '1', '陶伟华', '李剑涛', '2013-03-30 00:00:00', '2012-03-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('603', '3', '1', '高', '下列关于数据库数据模型的说法中，哪一个是不正确的？（ ）', 'A:候选码', 'B:层次模型的数据结构是有向树结构 ', 'C:在网状模型中，一个子结点可以有多个父结点', 'D:在面向对象模型中每一个对象都有一个惟一的标识  ', '', 'A', '4', '1', '陶伟华', '李剑涛', '2013-03-31 00:00:00', '2012-03-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('604', '3', '1', '低', '参数文件中，下列四个符号中哪个符号开头的行表示注释行______。\n', 'A.$ ', 'B.#', 'C.!', 'D.@', '', 'B', '2', '1', '陈慧', '李剑涛', '2013-04-01 00:00:00', '2012-03-31 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('605', '3', '1', '低', '手工创建一个新的数据库时，首先需要_____。\n ', 'A、启动一个实例', 'B、启动SQL*PLUS，以SYSDBA身份连接Oracle ', 'C、关闭当前实例', 'D、创建一个参数文件', '', 'D', '2', '1', '陈慧', '李剑涛', '2013-04-02 00:00:00', '2012-04-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('606', '3', '1', '低', '下列表空间中，______表空间是运行一个数据库必须的一个表空间。', 'A、ROLLBACK ', 'B、TOOLS \n', 'C、TEMP ', 'D、SYSTEM', '', 'D', '2', '1', '陈慧', '李剑涛', '2013-04-03 00:00:00', '2012-04-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('607', '3', '1', '低 ', '______是Oracle中一个有效的后台服务器进程。', 'A、ARCHiver ', 'B、LGWR (Log Writer) ', 'C、DBWR (Dbwriter)', 'D.以上都是', '', 'D', '4', '1', '陈慧', '李剑涛', '2013-04-04 00:00:00', '2012-04-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('608', '3', '1', '低', '关闭数据库时，首先会______。', 'A、关闭数据库实例', 'B、卸载数据库', 'C、关闭数据库', 'D、关闭操作系统', '', 'C', '2', '1', '陈慧', '李剑涛', '2013-04-05 00:00:00', '2012-04-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('609', '3', '1', '低', '关系数据库中的数据表（ ）', 'A:完全独立，相互没有关系', 'B:相互联系,不能单独存在', 'C:既相互独立,又互相联系', 'D:以数据表名来表现其相互间的联系', '', 'C', '2', '1', '胡靖', '李剑涛', '2013-04-06 00:00:00', '2012-04-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('610', '3', '1', '低', 'SQL查询能够创建（  ）', 'A:更新查询', 'B:追加查询', 'C:1查询', 'D:以上答案均正确', '', 'D', '2', '1', '胡靖', '李剑涛', '2013-04-07 00:00:00', '2012-04-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('611', '3', '1', '低', '在SQL查询中使用WHERE子句指出的是（ ）', 'A:查询目标', 'B:查询结果', 'C:查询视图', 'D:查询条件', '', 'D', '2', '1', '胡靖', '李剑涛', '2013-04-08 00:00:00', '2012-04-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('612', '3', '1', '低', 'Mysql用什么语句可以找出在服务器上当前存在什么数据库（）', 'A list', 'B:show', 'C:show datebase', 'D :show data', '', 'C', '2', '1', '胡靖', '李剑涛', '2013-04-09 00:00:00', '2012-04-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('613', '3', '1', '低', '目前，MySQL属于  公司的产品', 'A:Oracle', 'B:微软', 'C:谷歌', 'D:SUN', '', 'A', '2', '1', '胡靖', '李剑涛', '2013-04-10 00:00:00', '2012-04-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('614', '3', '1', '低', '查看MySQL版本语句是', '（A）mysql - - version', '', 'B）mysql - - VERSION ', '（C）mysql - - help ', '（C）mysql - - help ', 'A', '2', '1', '胡靖', '李剑涛', '2013-04-11 00:00:00', '2012-04-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('615', '3', '1', '低', '数据库管理系统的英文缩写为( ) 。', 'A DB', 'B :DBMS', 'C:DBA', 'D:DBC', '', 'B', '2', '1', '胡靖', '李剑涛', '2013-04-12 00:00:00', '2012-04-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('616', '3', '1', '低', '系统中有权利启动和关闭数据库的用户是：', 'A hr', ' B sys', 'C: SYSTEM D: SCOTT', '', '', 'B', '2', '1', '胡靖', '李剑涛', '2013-04-13 00:00:00', '2012-04-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('617', '3', '1', '低', 'Oracle 10g中的g表示（ ）', 'A:网络', 'B:数据库', 'C:网络计算', 'D :版本', '', 'A', '2', '1', '胡靖', '李剑涛', '2013-04-14 00:00:00', '2012-04-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('618', '3', '1', '中', '以下哪个选项能正确描述DBMS', 'A:数据库', 'B:数据库模型', 'C:关系型数据库', 'D:数据库管理系统', '', 'D', '4', '1', '乐莎莎', '李剑涛', '2013-04-15 00:00:00', '2012-04-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('619', '3', '1', '中', '以下哪项不属于数据模型', 'A:网状模型', 'B:层次模型C:关系模型 D:网络模型', '', '', '', 'C', '4', '1', '乐莎莎', '李剑涛', '2013-04-16 00:00:00', '2012-04-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('620', '3', '1', '中', '以下哪种操作能够实现实体完整性', 'A:设置唯一键 ', 'B:设置外键', 'C:设置主键 ', 'D:减少数据冗余', '', 'B', '4', '1', '乐莎莎', '李剑涛', '2013-04-17 00:00:00', '2012-04-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('621', '3', '1', '中', '有关唯一约束不正确的描述是', 'A:可以为表定义多个唯一约束', 'B:可以定义在允许空值的列上', 'C:是一列或几列的组合', 'D:4.可以作为主键使用 ', '', 'D', '4', '1', '乐莎莎', '李剑涛', '2013-04-18 00:00:00', '2012-04-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('622', '3', '1', '中', '下列哪一项是数据定义语言', 'A:DDL', 'B:DQL', 'C:CLL', 'D:DML', '', 'D', '4', '1', '乐莎莎', '李剑涛', '2013-04-19 00:00:00', '2012-04-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('623', '3', '1', '中', '在ACCESS中，数据文件的后缀名称是什么', 'A:MDF', 'B:NDF', 'C:MDB', 'D:XML', '', 'B', '4', '1', '乐莎莎', '李剑涛', '2013-04-20 00:00:00', '2012-04-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('624', '3', '1', '中', '有关数据库完整性，下列哪一项没有对它描述', 'A:引用完整性', 'B:实体完整性 ', 'C: 域完整性', 'D: 关系完整性 ', '', 'A', '4', '1', '乐莎莎', '李剑涛', '2013-04-21 00:00:00', '2012-04-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('625', '3', '1', '中', '有关主键以下说法哪些是不正确的', 'A:只能使用一列作为主键', 'B:主键里面不允许有重复的值', 'C:能实现数据库的实体完整性', 'D:可以使用自动增长的数据作主键', '', 'D', '4', '1', '乐莎莎', '李剑涛', '2013-04-22 00:00:00', '2012-04-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('626', '3', '1', '中', '下列哪一项不是SQL Serser 里的数据库文件（ ） ', 'A:主要数据库', 'B:次要数据库', 'C:日志文件', 'D:表文件 ', '', 'A', '4', '1', '乐莎莎', '李剑涛', '2013-04-23 00:00:00', '2012-04-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('627', '3', '1', '中', '下列哪项不属于实体完整性约束（ ）', 'A:主键约束B:', 'B: 唯一约束', 'C:标识列 ', 'D:检查约束 \n', '', 'C', '4', '1', '乐莎莎', '李剑涛', '2013-04-24 00:00:00', '2012-04-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('628', '3', '1', '高', '在SQL查询时，使用WHERE子句指出的是', 'A、查询目标', 'B、查询条件', 'C、查询视图', 'D、查询结果', '', 'B', '2', '1', '李雷', '李剑涛', '2013-04-25 00:00:00', '2012-04-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('629', '3', '1', '低', '在数据库技术中，独立于计算机系统的模型是', 'A、面向对象的模型', 'B、关系模型', 'C、E-R模型', 'D、层次模型', '', 'C', '2', '1', '李雷', '李剑涛', '2013-04-26 00:00:00', '2012-04-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('630', '3', '1', '中', '数据库系统的控制中枢是', 'A、数据库', 'B、数据库管理系统', 'C、数据库管理员', 'D、数据库应用系统', '', 'B', '2', '1', '李雷', '李剑涛', '2013-04-27 00:00:00', '2012-04-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('631', '3', '1', '高', '使用SQL命令将学生表STUDENT中的学生年龄AGE字段的值增加1岁，应该使用的命令是', 'A、UPDATE SET AGE WITH AGE＋2 ', 'B、REPLACE AGE WITH AGE＋2', 'C、UPDATE STUDENT SET AGE＝AGE＋2', 'D、UPDATE STUDENT AGE WITH AGE＋2', '', 'C', '2', '1', '李雷', '李剑涛', '2013-04-28 00:00:00', '2012-04-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('632', '3', '1', '低', '在关系数据库中，建立数据库表时，将年龄字段值限制在12～40岁之间的这种约束属于', 'A、视图完整性约束', 'B、域完整性约束', 'C、参照完整性约束', 'D、实体完整性约束', '', 'B', '4', '1', '李雷', '李剑涛', '2013-04-29 00:00:00', '2012-04-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('633', '3', '1', '中', '在 SQL 语句中，与 X BETWEEN 20 AND 30 等价的表达式是', 'A、X>=20 AND X<31', 'B、X>20 AND X<31', 'C、X>20 AND X<=31', 'D、X>=20 AND X<=31', '', 'D', '2', '1', '李雷', '李剑涛', '2013-04-30 00:00:00', '2012-04-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('634', '3', '1', '高', '在关系数据库中，模式对应的是', 'A、视图和所有基本表', 'B、视图和部分基本表', 'C、基本表', 'D、索引', '', 'A', '4', '1', '李雷', '李剑涛', '2013-05-01 00:00:00', '2012-04-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('635', '3', '1', '低', '能实现绝对的与平台无关性的Web数据库访问技术是', 'A、ADO', 'B、ActiveX', 'C、WebbaseAPI', 'D、JDBC', '', 'D', '2', '1', '李雷', '李剑涛', '2013-05-02 00:00:00', '2012-05-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('636', '3', '1', '中', '数据的逻辑独立性是指', 'A、数据与存储结构的逻辑独立性', 'B、数据元素之间的逻辑独立性', 'C、存储结构与物理结构的逻辑独立性', 'D、数据与程序的逻辑独立性', '', 'D', '2', '1', '李雷', '李剑涛', '2013-05-03 00:00:00', '2012-05-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('637', '3', '1', '高', '查找工资在600元以上并且职称为工程师的纪录，逻辑表达式为', 'A、\"工资\">600 .OR. 职称=\"工程师\"', 'B、工资>600 .AND. 职称=工程师', 'C、\"工资\">600 .AND. \"职称\"=\"工程师\"', 'D、工资>600 .AND. 职称=\"工程师\"', '', 'D', '2', '1', '李雷', '李剑涛', '2013-05-04 00:00:00', '2012-05-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('638', '3', '1', '低', '数据库在磁盘上的基本组织形式是()', 'A.DB', 'B.文件', 'C.二维表', 'D.系统目录', '', 'B', '2', '1', '李雷', '李剑涛', '2013-05-05 00:00:00', '2012-05-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('639', '3', '1', '低', 'ER模型是数据库的设计工具之一，它一般适用于建立数据库的()', 'A.概念模型', 'B.逻辑模型', 'C.逻辑模型', 'D.外部模型', '', 'A', '2', '1', '李雷', '李剑涛', '2013-05-06 00:00:00', '2012-05-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('640', '3', '1', '低', '数据库三级模式中，用户与数据库系统的接口是()', 'A.模式', 'B.外模式', 'C.内模式', 'D.逻辑模式', '', 'B', '2', '1', '李雷', '李剑涛', '2013-05-07 00:00:00', '2012-05-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('641', '3', '1', '低', '在文件系统中，所具有的数据独立性是()', 'A.系统独立性', 'B.物理独立性', 'C.逻辑独立性', 'D.设备独立性', '', 'D', '2', '1', '李雷', '李剑涛', '2013-05-08 00:00:00', '2012-05-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('642', '3', '1', '低', '关系模式至少应属于()', 'A.1NF', 'B.2NF', 'C.3NF', 'D.BCNF', '', 'A', '2', '1', '李雷', '李剑涛', '2013-05-09 00:00:00', '2012-05-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('643', '3', '1', '低', 'WHERE子句的条件表达式中，可以匹配0个或多个字符的统配符是()', 'A.*', 'B.%', 'C._', 'D.?', '', 'B', '2', '1', '李雷', '李剑涛', '2013-05-10 00:00:00', '2012-05-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('644', '3', '1', '低', '“一个事务中的诸操作要么都做，要么都不做“，这是事务的（ ）特性。', 'A.原子性', 'B.一致性', 'C.隔离性', 'D.持续性', '', 'A', '2', '1', '李雷', '李剑涛', '2013-05-11 00:00:00', '2012-05-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('645', '3', '1', '低', '数据库中有A, B两表，均有相同字段C，在两表中C字段都设为主键。当通过C字段建立两表关系时，则该关系为()', 'A.一对一', 'B.一对多', 'C.多对多', 'D.不能建立关系', '', 'D', '2', '1', '李雷', '李剑涛', '2013-05-12 00:00:00', '2012-05-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('646', '3', '1', '低', '要从数据库中删除一个表，应该使用的SQL语句是（）', 'A.ALTER TABLE', 'B.KILL TABLE', 'C.DELETE TABLE', 'D.DROP TABLE ', '', 'D', '2', '1', '李雷', '李剑涛', '2013-05-13 00:00:00', '2012-05-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('647', '3', '1', '低', '数据库系统的核心是（） ', 'A.数据模型 ', 'B.数据库管理系统', 'C.软件工具', 'D.数据库', '', 'A', '2', '1', '李雷', '李剑涛', '2013-05-14 00:00:00', '2012-05-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('648', '3', '1', '低', '（   ）是位于用户和操作系统之间的一层数据管理软件。数据库在建立、使用和维护时由其统一管理、统一控制。', 'A:DB', 'B：DBMS', 'C：DBS', 'D：DBA', 'E：', 'B', '2', '1', '周泓亮', '李剑涛', '2013-05-15 00:00:00', '2012-05-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('649', '3', '1', '低', 'SQL语言允许使用通配符进行字符串匹配的操作，其中‘%’可以表示', 'A:零个字符', 'B：1个字符', 'C：多个字符', 'D：以上都可以', 'E：', 'D', '2', '1', '周泓亮', '李剑涛', '2013-05-16 00:00:00', '2012-05-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('650', '3', '1', '低', '下列哪一个数据库不是SQL Server 2000的系统数据库', 'A:master数据库', 'B：msdb数据库', 'C：pubs数据库  ', 'D：model数据库　', 'E：', 'C', '2', '1', '周泓亮', '李剑涛', '2013-05-17 00:00:00', '2012-05-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('651', '3', '1', '低', '下列四项中，可以直接用于表示概念模型的是', 'A:网状模型', 'B：关系模型', 'C：层次模型 ', 'D：实体-联系(E-R)模型', 'E：', 'D', '2', '1', '周泓亮', '李剑涛', '2013-05-18 00:00:00', '2012-05-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('652', '3', '1', '低', '下列四项中说法不正确的是', 'A:数据库避免了一切数据的重复  ', 'B：数据库中的数据可以共享', 'C：数据库减少了数据冗余  ', 'D：数据库具有较高的数据独立性', 'E：', 'A', '2', '1', '周泓亮', '李剑涛', '2013-05-19 00:00:00', '2012-05-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('653', '3', '1', '低', '公司中有多个部门和多名职员，每个职员只能属于一个部门，一个部门可以有多名职员，从职员到部门的联系类型是', 'A:多对多', 'B：一对一', 'C：.多对一', 'D：一对多', 'E：', 'C', '2', '1', '周泓亮', '李剑涛', '2013-05-20 00:00:00', '2012-05-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('654', '3', '1', '中', '关系数据库中空值（NULL）相当于', 'A:零（0）', 'B：空白 ', 'C：零长度的字符串', 'D：没有输入', 'E：', 'D', '4', '1', '周泓亮', '李剑涛', '2013-05-21 00:00:00', '2012-05-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('655', '3', '1', '中', '事务有多个性质，其中不包括', 'A:隔离性', 'B：不可撤消', 'C：原子性 ', 'D：一致性 ', 'E：', 'B', '4', '1', '周泓亮', '李剑涛', '2013-05-22 00:00:00', '2012-05-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('656', '3', '1', '高', '一个电视经销商在表Tvtype 中维护库存的Tvs信息,下述哪条语句能显示价格最昂贵的三种电视机的信息?', 'A:select top3 cDiscription from Tvtype order by iprice asc', 'B：select cDiscription from Tvtype where max(iprice)>3', 'C：select top3 cDiscription from Tvtype order by iprice desc', 'D：select cDiscription max(iprice) from Tvtype order by iprice ', 'E：', 'C', '6', '1', '周泓亮', '李剑涛', '2013-05-23 00:00:00', '2012-05-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('657', '3', '1', '高', '假如采用关系数据库系统来实现应用，在数据库设计的( d  )阶段，需要将E-R模型转换为关系数据模型。', 'A:概念设计  ', 'B：物理设计  ', 'C：运行阶段 ', 'D：逻辑设计', 'E：', 'D', '6', '1', '周泓亮', '李剑涛', '2013-05-24 00:00:00', '2012-05-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('658', '3', '1', '低', '概念设计的结果得到的是概念模式。概念模式是()', 'A:与DBMS有关的 ', 'B:与硬件有关的 ', 'C:独立于DBMS的', 'D:独立于DBMS和硬件的', 'E：', 'D', '2', '1', '黄杰', '李剑涛', '2013-05-25 00:00:00', '2012-05-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('659', '3', '1', '中', 'DBMS的恢复子系统，保证了事务___的实现', 'A:原子性', 'B:一致性', 'C:隔离性 ', 'D:持久性', 'E：', 'D', '4', '1', '黄杰', '李剑涛', '2013-05-26 00:00:00', '2012-05-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('660', '3', '1', '低', '数据库在磁盘上的基本组织形式是()', 'A:DB', 'B:文件', 'C:二维表 ', 'D:系统目录', 'E：', 'B', '2', '1', '黄杰', '李剑涛', '2013-05-27 00:00:00', '2012-05-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('661', '3', '1', '低', '你要在Oracle中定义SQL查询。下列哪个数据库对象不能直接从select语句中引用', 'A:表', 'B:序列', 'C:索引', 'D:视图', 'E：', 'C', '2', '1', '黄杰', '李剑涛', '2013-05-28 00:00:00', '2012-05-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('662', '3', '1', '中', 'SQL *Plus中发出的下列语句：  SQL> select ceil(-97.342),       2  floor(-97.342),       3  round(-97.342),       4  trunc(-97.342)       5  from dual;', 'A:ceil()', 'B:floor()', 'C:round()', 'D:trunc()', 'E：', 'B', '4', '1', '黄杰', '李剑涛', '2013-05-29 00:00:00', '2012-05-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('663', '3', '1', '中', 'SQL *Plus中发出的下列语句：    SQL> select ceil(256.342),       2  floor(256.342),       3  round(256.342),       4  trunc(256.342)       5  from dual; ', 'A:ceil() ', 'B:floor()', 'C:round()', 'D:trunc()', 'E：', 'A', '4', '1', '黄杰', '李剑涛', '2013-05-30 00:00:00', '2012-05-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('664', '3', '1', '高', 'Oracle中要生成数据库表,下列哪个选项是无效表生成的语句？', 'A:create table cats(c_name varchar2(10), c_weight number, c_owner varchar2(10));', 'B:create table my_cats as select * from cats where owner = ‘ME’; ', 'C:create global temporary table temp_cats(c_name varchar2(10), c_weight number, c_owner varchar2(10));', 'D:create table 51cats as select c_name, c_weight from cats where c_weight > 5; ', 'E：', 'D', '6', '1', '黄杰', '李剑涛', '2013-05-31 00:00:00', '2012-05-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('665', '3', '1', '低', 'mysql中唯一索引的关键字是()', 'A:fulltext index', 'B:only  index', 'C:unique index', 'D:index', 'E：', 'C', '2', '1', '黄杰', '李剑涛', '2013-06-01 00:00:00', '2012-05-31 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('666', '3', '1', '中', 'mysql中,备份数据库的命令是()', 'A:mysqldump', 'B:mysql ', 'C:backup', 'D:copy', 'E：', 'A', '4', '1', '黄杰', '李剑涛', '2013-06-02 00:00:00', '2012-06-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('667', '3', '2', '高', '下列的函数中可以处理日期和时间的函数有()', 'A:round ', 'B:WeekDay', 'C:Curdate', 'D:DayofMonth ', '', 'BCD', '6', '1', '黄杰', '李剑涛', '2013-06-03 00:00:00', '2012-06-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('668', '3', '1', '高', '是位于用户和操作系统之间的一层数据管理软件。数据库在建立、使用和维护时由其统一管理、统一控制。', 'A：jdbc', 'B:db', 'C:dbc', 'D:DBA', '', 'A', '2', '1', '黄杰', '李剑涛', '2013-06-04 00:00:00', '2012-06-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('669', '3', '1', '高', ' 如果表中有一列被指定为主键，则该列不可以指定为NULL属性。', 'A:正确', 'B: 错误', '', '', '', 'A', '2', '1', '黄杰', '李剑涛', '2013-06-05 00:00:00', '2012-06-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('670', '3', '1', '高', '不同的实体是根据什么区分的？', 'A:所代表的对象 ', 'B:实体名字', 'C:属性多少', 'D:属性的不同  ', '', 'D', '2', '1', '黄杰', '李剑涛', '2013-06-06 00:00:00', '2012-06-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('671', '3', '1', '低', '数据独立性是指', 'A：数据依赖于程序 ', 'B：数据库系统 ', 'C:数据库管理系统', 'D:数据不依赖于程序', '', 'D', '2', '1', '黄杰', '李剑涛', '2013-06-07 00:00:00', '2012-06-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('672', '3', '1', '低', '数据库系统的核心是DBMS（）', 'A: Y', 'B:N', '', '', '', 'A', '2', '1', '李剑涛', '李剑涛', '2013-06-08 00:00:00', '2012-06-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('673', '1', '1', '低', '使用Java语言编写的源程序保存时的文件扩展名是：', 'A:.class', 'B：.java ', 'C：.cpp', 'D：.txt', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-06-09 00:00:00', '2012-06-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('674', '1', '1', '低', '设int a=-2，则表达式a>>3的值为:', 'A:0', 'B：3', 'C:8', 'D:-1', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2013-06-10 00:00:00', '2012-06-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('675', '1', '1', '低', '在类的定义中构造函数的作用是：', 'A:保护成员变量', 'B:读取类的成员变量', 'C:描述类的特征', 'D:初始化成员变量', '', 'D', '2', '1', '魏贝莎', '魏贝莎', '2013-06-11 00:00:00', '2012-06-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('676', '1', '1', '低', '在Java  Applet程序用户自定义的Applet子类中，一般需要重载父类的(      )方法来完成一些画图操作。', 'A:start( )', 'B:stop( )', 'C:init( )', 'D:paint( )', '', 'D', '2', '1', '魏贝莎', '魏贝莎', '2013-06-12 00:00:00', '2012-06-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('677', '1', '1', '低', '如果一个类的成员变量只能在所在类中使用，则该成员变量必须使用的修饰是:', 'A:public', 'B:protected', 'C:private', 'D:static', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-06-13 00:00:00', '2012-06-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('678', '1', '1', '低', 'java.io包的File类是:', 'A:字符流类', 'B:字节流类', 'C:对象流类 ', 'D:非流类', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-06-14 00:00:00', '2012-06-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('679', '1', '1', '低', '以下代码段执行后的输出结果为（     ）\nint  x=－3； int  y=－10；\nSystem.out.println(y%x);', 'A:-1', 'B:2', 'C:1', 'D:3', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2013-06-15 00:00:00', '2012-06-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('680', '1', '1', '低', '以下关于继承的叙述正确的是:', 'A:在Java中类只允许单一继承', 'B:在Java中一个类只能实现一个接口', 'C:在Java中一个类不能同时继承一个类和实现一个接口', 'D:在Java中接口只允许单一继承', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-06-16 00:00:00', '2012-06-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('681', '1', '1', '低', '给出下面代码，关于该程序以下哪个说法是正确的？（     ）\npublic class Person{\nstatic int arr[] = new int[5];\npublic static void main(String a[])\n{\nSystem.out.println(arr[0]);　}\n}', 'A:编译时将产生错误', 'B:编译时正确，运行时将产生错误', 'C:输出零', 'D:输出空', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-06-17 00:00:00', '2012-06-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('682', '1', '1', '低', '若有定义：byte[] x={11,22,33,-66};\n其中0≤k≤3，则对x数组元素错误的引用是（  ）', 'A:x[5-3]', 'B:x[k]', 'C:x[k+5]', 'D:x[0]', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-06-18 00:00:00', '2012-06-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('683', '1', '1', '低', '以下叙述正确的是：', 'A．构造方法必须是public方法', 'B．main方法必须是public方法', 'C．Java应用程序的文件名可以是任意的', 'D．构造方法应该声明为void类型', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-06-19 00:00:00', '2012-06-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('684', '1', '1', '中', '关于Java中异常的叙述正确的是：', 'A．异常是程序编写过程中代码的语法错误', 'B．异常是程序编写过程中代码的逻辑错误', 'C．异常出现后程序的运行马上中止', 'D．异常是可以捕获和处理的 ', '', 'D', '4', '1', '魏贝莎', '魏贝莎', '2013-06-20 00:00:00', '2012-06-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('685', '1', '1', '低', '所有的异常类皆继承哪一个类？', 'A．java.io.Exception', 'B．java.lang.Throwable', 'C．java.lang.Exception', 'D．java.lang.Error', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-06-21 00:00:00', '2012-06-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('686', '1', '1', '中', '为实现进程之间的通信，需要使用下列那种流才合适？', 'A．Data stream', 'B．File stream', 'C．Buffered stream', 'D．Piped stream', '', 'D', '4', '1', '魏贝莎', '魏贝莎', '2013-06-22 00:00:00', '2012-06-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('687', '1', '1', '中', '当Frame的大小被改变时, Frame中的按钮的位置也可能被改变，请问此时使用的是什么布局管理器', 'A. BorderLayout', 'B. FlowLayout', 'C. CardLayou', 'D. GridLayout', '', 'B', '4', '1', '魏贝莎', '魏贝莎', '2013-06-23 00:00:00', '2012-06-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('688', '1', '2', '难', '下面的哪些叙述为真', 'A. equals()方法判定引用值是否指向同一对象。', 'B. == 操作符判定两个分立的对象的内容和类型是否一致。', 'C. equals()方法只有在两个对象的内容一致时返回true。', 'D. 类File重写方法equals()在两个分立的对象的内容和类型一致时返回true。', '', 'AD', '6', '1', '魏贝莎', '魏贝莎', '2013-06-24 00:00:00', '2012-06-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('689', '1', '2', '中', '下面关于继承的哪些叙述是正确的。', 'A. 在java中只允许单一继承', 'B. 在java中一个类只能实现一个接口。', 'C. 在java中一个类不能同时继承一个类和实现一个接口。', 'D. java的单一继承使代码更可靠。', '', 'AD', '4', '1', '魏贝莎', '魏贝莎', '2013-06-25 00:00:00', '2012-06-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('690', '1', '1', '中', '关于垃圾收集的哪些叙述是对的。', 'A. 程序开发者必须自己创建一个线程进行内存释放的工作 ', 'B. 垃圾收集将检查并释放不再使用的内存。', 'C. 垃圾收集允许程序开发者明确指定并立即释放该内存。', 'D. 垃圾收集能够在期望的时间释放被java对象使用的内存。', '', 'B', '4', '1', '魏贝莎', '魏贝莎', '2013-06-26 00:00:00', '2012-06-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('691', '1', '2', '中', '下面关于变量及其范围的陈述哪些是对的', 'A. 实例变量是类的成员变量。', 'B. 实例变量用关键字static声明。 ', 'C. 在方法中定义的局部变量在该方法被执行时创建', 'D. 局部变量在使用前必须被初始化 ', '', 'ACD', '4', '1', '魏贝莎', '魏贝莎', '2013-06-27 00:00:00', '2012-06-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('692', '1', '1', '难', '给出下面的代码片断   1 String str = null; \n  2 if ((str != null) && (str.length() > 10)) {   3   System.out.println(\"more than 10\");   4 } \n  5 else if ((str != null) & (str.length() < 5)) {//空指针异常   6   System.out.println(\"less than 5\");   7 } \n  8 else { System.', 'A. 第1行', 'B. 第2行', 'C. 第5行', 'D. 第8行 ', '', 'C', '6', '1', '魏贝莎', '魏贝莎', '2013-06-28 00:00:00', '2012-06-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('693', '1', '1', '低', '下面的main()方法的定义哪些是正确的？（    ）', '(A)public static void main(String args){}', '(B)public static void main(String[]){}', '(C)public static void main(String[] args){}', '(D)public static void main(String[] xyz){}', '', 'C', '2', '1', '熊晶', '熊晶', '2013-06-29 00:00:00', '2012-06-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('694', '1', '1', '低', '用于定义简单数据类型的一组关键字是（    ）', '(A) Student,float,main,public', '(B) byte,boolean,int,float', '(C)long,extends,float,double', '(D)class,float,short,import', '', 'B', '2', '1', '熊晶', '熊晶', '2013-06-30 00:00:00', '2012-06-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('695', '1', '1', '低', '以下变量定义中正确的是（    ）', '(A)int I=123a ', '(B)float f=7.8f', '(C)char c=’abc’', '(D)String str=’d’', '', 'B', '2', '1', '熊晶', '熊晶', '2013-07-01 00:00:00', '2012-06-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('696', '1', '1', '低', 'for(;;)是(      )', '(A)循环结构', '(B)分支结构', '(C)顺序结构', '', '', 'A', '2', '1', '熊晶', '熊晶', '2013-07-02 00:00:00', '2012-07-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('697', '1', '1', '低', '设类B和类C都不是抽象类，且类B是类C的父类。下列声明对象x1的语句中不正确的是(   )', '(A) B x1=new B()', '(B) B x1=new C()', '(C) C x1=new C() ', '(D) C x1=new B()', '', 'D', '2', '1', '熊晶', '熊晶', '2013-07-03 00:00:00', '2012-07-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('698', '1', '1', '低', '设有对象x具有属性a则访问该属性的方法为（    ）', ' (A)a.x ', '(B) a.x()', '(C) x.a', '(D) x.a()', '', 'C', '2', '1', '熊晶', '熊晶', '2013-07-04 00:00:00', '2012-07-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('699', '1', '1', '低', '定义变量如下：int i=18;long L=5;float f=9.8f;double d=1.2;String s=”123”;以下赋值语句不正确的是（   ）', '(A)L=f+i', '(B)f=L+i', '(C)s=s+i', '(D)s=s+i+f+d', '', 'A', '2', '1', '熊晶', '熊晶', '2013-07-05 00:00:00', '2012-07-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('700', '1', '1', '低', '下面表达式的值的类型为（   ）(int)(8/9.2*5)', '(A)short', '(B)int', '(C)double ', '(D)float', '', 'B', '2', '1', '熊晶', '熊晶', '2013-07-06 00:00:00', '2012-07-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('701', '1', '1', '低', '定义类头时可以使用的访问控制修饰符是（   ）', '(A)public', ' (B)abstract', '(C)final ', '(D)private', '', 'A', '2', '1', '熊晶', '老王', '2013-07-07 00:00:00', '2012-07-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('702', '1', '1', '中', '下面的程序段输出的结果是（   ）int i=1,b,c;int[] a=new int[3];b=a[i];c=b+i;System.out.println(c );', '(A)0', '(B)2', '(C)4', '(D)1', '', 'D', '4', '1', '熊晶', '老王', '2013-07-08 00:00:00', '2012-07-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('703', '1', '1', '低', '整型数据类型中，需要内存空间最少的是（D）', 'A: short ', 'B：long', 'C：int ', 'D：byte', 'E：', 'A', '2', '1', '熊晶', '老王', '2013-07-09 00:00:00', '2012-07-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('704', '1', '1', '中', 'Java语言具有许多优点和特点，哪个反映了Java程序并行机制的特点？（B）', 'A:安全性', 'B：多线性', 'C：跨平台', 'D：byte', '', 'B', '2', '1', '熊晶', '老王', '2013-07-10 00:00:00', '2012-07-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('705', '1', '1', '低', '以下哪个方法用于定义线程的执行体？ （C）', 'A: start()  ', 'B:init() ', 'C：run() ', 'D：synchronized() ', '', 'C', '2', '1', '熊晶', '老王', '2013-07-11 00:00:00', '2012-07-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('706', '1', '1', '低', '以下标识符中哪项是不合法的(A)', 'A: const', 'B：$double ', 'C：hello  ', 'D：BigMeaninglessName ', '', 'A', '2', '1', '熊晶', '老王', '2013-07-12 00:00:00', '2012-07-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('707', '1', '1', '低', '在使用interface声明一个接口时，只可以使用（D）修饰符修饰该接口。', 'A: private ', 'B：protected ', 'C：private  protected ', 'D：public ', '', 'D', '2', '1', '熊晶', '老王', '2013-07-13 00:00:00', '2012-07-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('708', '1', '1', '中', '给出下面代码，关于该程序以下哪个说法是正确的？（ C ） public class Person{  \nstatic int arr[] = new int[5]; \npublic static void main(String a[]) {  System.out.println(arr[0]);} }  \n}', 'A: 编译时将产生错误', 'B：编译时正确，运行时将产生错误', 'C：输出零', 'D：输出空', '', 'C', '4', '1', '熊晶', '老王', '2013-07-14 00:00:00', '2012-07-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('709', '1', '1', '中', 'A派生出子类B，B派生出子类C，并且在Java源代码中有如下声明：  1.    A  a0=new  A(); 2.    A  a1 =new  B(); \n3.    A  a2=new  C(); \n问以下哪个说法是正确的？ （D）', 'A: 只有第1行能通过编译', 'B：第1、2行能通过编译，但第3行编译出错 ', 'C：第1、2、3行能通过编译，但第2、3行运行时出错', 'D：第1行、第2行和第3行的声明都是正确的', '', 'D', '4', '1', '熊晶', '老王', '2013-07-15 00:00:00', '2012-07-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('710', '1', '1', '低', 'Java的字符类型采用的是Unicode编码方案，每个Unicode码占用（  C  ）个比特位', 'A: 8', 'B：16', 'C：32', 'D：64', '', 'C', '2', '1', '熊晶', '老王', '2013-07-16 00:00:00', '2012-07-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('711', '1', '1', '低', '以下关于构造函数的描述错误的是（ A ）', 'A: 构造函数的返回类型只能是void型 构造函数是类的一种特殊函数，它的方法名必须与类名相同', 'B:构造函数是类的一种特殊函数，它的方法名必须与类名相同', 'C：构造函数的主要作用是完成对类的对象的初始化工作。', 'D：一般在创建新对象时，系统会自动调用构造函数', '', 'A', '4', '1', '熊晶', '老王', '2013-07-17 00:00:00', '2012-07-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('712', '1', '1', '中', '在Java中，一个类可同时定义许多同名的方法，这些方法的形式参数个数、类型或顺序各不相同，传回的值也可以不相同。这种面向对象程序的特性称为（  C  ）。', 'A: 隐藏', 'B：覆盖', 'C：重载', 'D：Java不支持此特性', '', 'C', '4', '1', '熊晶', '老王', '2013-07-18 00:00:00', '2012-07-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('713', '1', '1', '低', '下列不可作为java语言修饰符的是', 'A. a1', 'B. $1', 'C. _1', 'D. 11', '', 'D', '2', '1', '范志新', '老王', '2013-07-19 00:00:00', '2012-07-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('714', '1', '1', '低', '整型数据类型中，需要内存空间最少的是', 'A. short', 'B. long', 'C. int', 'D. byte', '', 'D', '2', '1', '范志新', '老王', '2013-07-20 00:00:00', '2012-07-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('715', '1', '1', '中', '在创建对象时必须', 'A. 先声明对象，然后才能使用对象', 'B. 先声明对象，为对象分配内存空间，然后才能使用对象', 'C. 先声明对象，为对象分配内存空间，对对象初始化，然后才能使用对象', 'D. 上述说法都对', '', 'C', '4', '1', '范志新', '老王', '2013-07-21 00:00:00', '2012-07-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('716', '1', '1', '低', '在调用方法时，若要使方法改变实参的值，可以', 'A. 用基本数据类型作为参数', 'B. 用对象作为参数', 'C. A和B都对', 'D. A和B都不对 ', '', 'B', '2', '1', '范志新', '老王', '2013-07-22 00:00:00', '2012-07-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('717', '1', '1', '低', 'Java中', 'A. 一个子类可以有多个父类，一个父类也可以有多个子类', 'B. 一个子类可以有多个父类，但一个父类只可以有一个子类', 'C. 一个子类可以有一个父类，但一个父类可以有多个子类', 'D. 上述说法都不对 ', '', 'C', '2', '1', '范志新', '老王', '2013-07-23 00:00:00', '2012-07-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('718', '1', '1', '中', 'Character流与Byte流的区别是', 'A. 每次读入的字节数不同', 'B. 前者带有缓冲，后者没有', 'C. 前者是字符读写，后者是字节读写', 'D. 二者没有区别，可以互换使用', '', 'C', '4', '1', '范志新', '老王', '2013-07-24 00:00:00', '2012-07-23 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('719', '1', '1', '低', 'Java语言具有许多优点和特点，哪个反映了Java程序并行机制的特点', 'A. 安全性', 'B. 多线程', 'C. 跨平台 ', 'D. 可移植', '', 'B', '2', '1', '范志新', '老王', '2013-07-25 00:00:00', '2012-07-24 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('720', '1', '1', '中', '下面哪个函数是public void  aMethod(){...}的重载函数？', 'A. void  aMethod( ){...}', 'B. public int  aMethod(){...} ', 'C. public void  aMethod ( ){...}', 'D. public int  aMethod ( int m){...}', '', 'D', '4', '1', '范志新', '老王', '2013-07-26 00:00:00', '2012-07-25 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('721', '1', '1', '低', '以下关于继承的叙述正确的是', 'A. 在Java中类只允许单一继承', 'B. 在Java中一个类只能实现一个接口', 'C. 在Java中一个类不能同时继承一个类和实现一个接口', 'D. 在Java中接口只允许单一继承', '', 'A', '2', '1', '范志新', '老王', '2013-07-27 00:00:00', '2012-07-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('722', '1', '1', '中', '下列哪种异常是检查型异常，需要在编写程序时声明', 'A. NullPointerException', 'B. ClassCastException', 'C. FileNotFoundException', 'D. IndexOutOfBoundsException', '', 'C', '4', '1', '范志新', '老王', '2013-07-28 00:00:00', '2012-07-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('723', '1', '1', '中', 'Java中是否可以覆盖(override)一个private或者是static的方法？', 'A:正确', 'B：错误', '', '', '', 'A  ', '4', '1', '代思豪', '老王', '2013-07-29 00:00:00', '2012-07-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('724', '1', '1', '中', '是否可以在static环境中访问非static变量？', 'A:正确', 'B：错误', '', '', '', 'A  ', '4', '1', '代思豪', '老王', '2013-07-30 00:00:00', '2012-07-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('725', '1', '1', '中', 'Java支持多继承吗？', 'A:正确', 'B：错误', '', '', '', 'A  ', '4', '1', '代思豪', '老王', '2013-07-31 00:00:00', '2012-07-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('726', '1', '1', '中', '进程是执行着的应用程序，而线程是进程内部的一个执行序列。一个进程可以有多个线程。线程又叫做轻量级进程。', 'A:正确', 'B：错误', '', '', '', 'A', '4', '1', '代思豪', '老王', '2013-08-01 00:00:00', '2012-07-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('727', '1', '2', '低', '面向对象软件开发的优点有哪些？', 'A:代码开发模块化', 'B：代码复用', 'C:增强代码的可靠性和灵活性', 'D：增加代码的可理解性', 'E：更易于维护和修改', 'ABCDE', '2', '1', '代思豪', '老王', '2013-08-02 00:00:00', '2012-08-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('728', '1', '2', '低', '面向对象编程有很多重要的特性', 'A:封装', 'B：继承', 'C:多态', 'D：抽象', '', 'ABCD ', '2', '1', '代思豪', '老王', '2013-08-03 00:00:00', '2012-08-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('729', '1', '1', '低', 'Java虚拟机是一个可以执行Java字节码的虚拟机进程。Java源文件被编译成能被Java虚拟机执行的字节码文件。', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '代思豪', '老王', '2013-08-04 00:00:00', '2012-08-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('730', '1', '1', '低', 'Java被设计成允许应用程序可以运行在任意的平台，而不需要程序员为每一个平台单独重写或者是重新编译', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '代思豪', '老王', '2013-08-05 00:00:00', '2012-08-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('731', '1', '1', '低', 'Java运行时环境(JRE)是指将要执行Java程序的Java虚拟机。它同时也包含了执行applet需要的浏览器插件。', 'A:正确', 'B：错误', '', '', '', 'A  ', '2', '1', '代思豪', '老王', '2013-08-06 00:00:00', '2012-08-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('732', '1', '1', '低', 'Java开发工具包(JDK)是指完整的Java软件开发包，包含了JRE，编译器和其他的工具(比如：JavaDoc，Java调试器)，可以让开发者开发、编译、执行Java应用程序。', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '代思豪', '魏贝莎', '2013-08-07 00:00:00', '2012-08-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('733', '1', '1', '低', '例如：double型数据所占字节数是：', 'A:2', 'B：2', 'C：6', 'D：8', 'E：', 'A', '2', '1', '代思豪', '魏贝莎', '2013-08-08 00:00:00', '2012-08-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('735', '1', '1', '高', '以下的选项中能正确表示Java语言中的一个整型常量的是', 'A:12', 'B：-20', 'C：1000', 'D：4,5,6', 'E：', 'B', '6', '1', '代思豪', '魏贝莎', '2013-08-10 00:00:00', '2012-08-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('736', '1', '1', '低', '下列的变量定义中，错误的是', 'A:int 6_a', 'B：float a', 'C：int i=Integer.MAX_VALUE', 'D：static int i=100', 'E：', 'A', '6', '1', '代思豪', '魏贝莎', '2013-08-11 00:00:00', '2012-08-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('737', '1', '1', '中', '以下字符常量中不合法的是', 'A:\'@\'', 'B：\'&\'', 'C： \"k\" ', 'D：\'整\'', 'E：', 'C', '2', '1', '代思豪', '魏贝莎', '2013-08-12 00:00:00', '2012-08-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('738', '1', '1', '高', '以下的选项中能正确表示Java语言中的一个整型常量的是:', 'A:Integer.MAX_VALUE', 'B：8.8F', 'C：2.0E16', 'D：true ', 'E：', 'A', '4', '1', '代思豪', '魏贝莎', '2013-08-13 00:00:00', '2012-08-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('739', '1', '1', '低', '下列最终属性（常量）i 的定义中，正确的是', 'A:static final double  i', 'B：abstract final int i=8', 'C：final double  i=3.14159', 'D：float i=1.2f', 'E：', 'C', '6', '1', '代思豪', '魏贝莎', '2013-08-14 00:00:00', '2012-08-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('740', '1', '1', '中', '以下的选项中能正确表示Java语言中的一个double型常量的是A:Float.MIN_VALUE', 'A:Float.MIN_VALUE ', 'B：1.8e-6F', 'C：2.0', 'D：’abcf’', 'E：', 'C', '2', '1', '代思豪', '魏贝莎', '2013-08-15 00:00:00', '2012-08-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('741', '1', '1', '高', '以下的变量定义语句中，合法的是', 'A:float $_*5= 3.4F', 'B：byte b1= 15678', 'C：double a =Double. MAX_VALUE', 'D：int _abc_ = 3721L', 'E：', 'C', '4', '1', '代思豪', '魏贝莎', '2013-08-16 00:00:00', '2012-08-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('742', '1', '1', '低', '以下字符常量中不合法的是', 'A:\'|\'', 'B：\'\\\'\'', 'C：\"\\n\"', 'D：\'我\'', 'E：', 'A', '6', '1', '代思豪', '魏贝莎', '2013-08-17 00:00:00', '2012-08-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('743', '2', '1', '低', '分析下面的HTML代码段，该页面在浏览器中的显示效果为（  ）。 <HTML> <body>  <marquee scrolldelay=\"200\" direction=\"right\">Welcome!</marquee> </body> </HTML>', 'A:从左向右滚动显示“Welcome!”', 'B:从右向左滚动显示“Welcome!”', 'C:从上向下滚动显示“Welcome!”', 'D:从下向上滚动显示“Welcome!”', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2013-08-18 00:00:00', '2012-08-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('744', '2', '2', '低', '分析下面的HTML代码片段，则选项中的说法正确的是（     ）。[选两项] <table border=\"10\">  <tr> <td colspan=2 align=\"center\">姓名</td></tr>  <tr> <td rowspan=2 align=\"center\">成绩</td><td align=\"center\">语文</td></tr> <tr><td colspan=2 align=\"center\">数学</td></tr> <table>', 'A:该表格共有2行3列', 'B:该表格的边框宽度为10毫米', 'C:该表格中的文字均居中显示', 'D:“姓名”单元个跨2列 ', '', 'CD', '2', '1', '魏贝莎', '魏贝莎', '2013-08-19 00:00:00', '2012-08-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('745', '2', '1', '低', '下列选项中不属于CSS 文本属性的是（ ）', 'A:font-size', 'B:text-transform', 'C:text-align', 'D:line-height', '', 'D', '2', '1', '魏贝莎', '魏贝莎', '2013-08-20 00:00:00', '2012-08-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('746', '2', '1', '低', '下列哪一项是css正确的语法构成？（）', 'A:body:color=black ', 'B:{body;color:black}', 'C:body {color: black;}', 'D:{body:color=black(body}', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-08-21 00:00:00', '2012-08-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('747', '2', '1', '低', '下列JavaScript的循环语句中( )是正确的', 'A:if(i<10;i++)', 'B:for(i=0;i<10)', 'C:for i=1 to 10', 'D:for(i=0;i<=10;i++)', '', 'D', '2', '1', '魏贝莎', '魏贝莎', '2013-08-22 00:00:00', '2012-08-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('748', '2', '1', '低', '下列选项中,( )不是网页中的事件', 'A:onclick', 'B:onmouseover', 'C:onsubmit', 'D:ressbutton', '', 'D', '2', '1', '魏贝莎', '魏贝莎', '2013-08-23 00:00:00', '2012-08-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('749', '2', '1', '低', '有这样一个表单元素，想要找到这个hidden元素，下面哪个是正确的？', 'A:visible', 'B:hidden', 'C:visible()', 'D:hidden()', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-08-24 00:00:00', '2012-08-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('750', '2', '1', '低', '如果想要找到一个表格的指定行数的元素，用下面哪个方法可以快速找到指定元素？', 'A:text()', 'B:get()', 'C:eq()', 'D:contents（）', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-08-25 00:00:00', '2012-08-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('751', '2', '1', '低', '下边哪个不是JSP内置对象?', 'A:Session', 'B: request', 'C: cook', 'D:out', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-08-26 00:00:00', '2012-08-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('752', '2', '1', '低', '当在JSP文件中要使用到ArrayList对象时，应在JSP文件中加入以下哪个语句？', 'A:<jsp:include  file=”java.util.*”  />', 'B: <jsp:include  page=”java.util.*”  />', 'C: <%@  page  import=”java.util.*”  />', 'D:<%@  page  include=”java.util.*”  />', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-08-27 00:00:00', '2012-08-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('753', '2', '1', '低', 'J2EE 中，（）类的（）方法用于创建对话', 'A．  HttpServletRequest、getSession', 'B．  HttpServletResponse、newSession  ', 'C．  HtttpSession、newInstance ', 'D．  HttpSession、getSession ', '', 'A', '2', '1', '熊晶', '魏贝莎', '2013-08-28 00:00:00', '2012-08-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('754', '2', '1', '中', '在J2EE中，以下对RequestDispatcher描述正确的是（）。', 'A.Jsp中有个隐含的对象diapatcher,它的类型是RequestDispatcher ', 'B.ServletConfig有一个方法：getRequestDispatcher可以返回RequestDipatcher对象', 'C.RequestDipatcher 有一个方法：forward可以把请求继续传递给别的Servlet或者JSP界面 ', 'D.JSP中有个隐含的默认对象request，它的类型是RequestDipatcher', '', 'C', '4', '1', '熊晶', '魏贝莎', '2013-08-29 00:00:00', '2012-08-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('755', '2', '1', '中', '在MVC三层结构中，数据访问层承担的责任是', 'A． 定义实体类 ', 'B． 数据的增删改查操作', 'C． 业务逻辑的描述', 'D． 页面展示和控制转发', '', 'B', '4', '1', '熊晶', '魏贝莎', '2013-08-30 00:00:00', '2012-08-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('756', '2', '2', '中', 'JDBC可以做哪三件事', 'A． 与数据库建立连接', 'B． 通过JDBC-API向数据库发送SQL语句', 'C． 通过JDBC-API执行SQL语句', 'D． 进行实体关系的映射', '', 'ABC', '4', '1', '熊晶', '魏贝莎', '2013-08-31 00:00:00', '2012-08-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('757', '2', '1', '低', '资源文件的后缀名为', 'A．txt', 'B．doc', 'C．property', 'D．properties', '', 'D', '2', '1', '熊晶', '魏贝莎', '2013-09-01 00:00:00', '2012-08-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('758', '2', '1', '中', '以下哪一个Web应用不属于Ajax应用 ', 'A. Hotmail', 'B.GMaps', 'C.Flickr ', 'D.Windows Live', '', 'A', '4', '1', '熊晶', '魏贝莎', '2013-09-02 00:00:00', '2012-09-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('759', '2', '1', '中', '以下哪一个CSS属性不属于W3C的CSS2规范', 'A.list-style-position ', 'B.min-height', 'C.float', 'D.text-overflow', '', 'D', '4', '1', '熊晶', '魏贝莎', '2013-09-03 00:00:00', '2012-09-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('760', '2', '1', '中', '下列哪个工具不能用来调试浏览器中的JavaScript', 'A.MS Visual InterDev', 'B.Eclipse', 'C.MS Script Debugger', 'D.Mozilla Venkman', '', 'B', '4', '1', '熊晶', '魏贝莎', '2013-09-04 00:00:00', '2012-09-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('761', '2', '1', '中', '创建一个对象obj，该对象包含一个名为\"name\"的属性，其值为\"value\" 。以下哪一段JavaScript代码无法得到上述的结果', 'A.var obj = new Object();    obj[\"name\"] = \"value\";', 'B.var obj = new Object();    obj.prototype.name = \"value\";', 'C.var obj = {name : \"value\"}; ', 'D.var obj = new function() {  this.name = \"value\";}', '', 'B', '4', '1', '熊晶', '魏贝莎', '2013-09-05 00:00:00', '2012-09-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('762', '2', '1', '中', '下列哪些方法或属性是Web标准中规定的', 'A. all()', 'B.innerHTML', 'C.getElementsByTagName()', 'D.innerText', '', 'C', '4', '1', '熊晶', '魏贝莎', '2013-09-06 00:00:00', '2012-09-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('763', '2', '1', '低', '表单数据的提交方法有两种, （）方法使得数据由标准的输入设备读入', 'A.Get', 'B. Post ', 'C.Read', 'D.Input', '', 'B', '2', '1', '熊晶', '魏贝莎', '2013-09-07 00:00:00', '2012-09-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('764', '2', '1', '低', 'Servlet的事件驱动由（）实现', 'A.Filte', 'B.Listener ', 'C.Response', 'D.Request', '', 'B', '2', '1', '熊晶', '魏贝莎', '2013-09-08 00:00:00', '2012-09-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('765', '2', '1', '低', '标记名称由两部分组成,()用来区分不同标记库 ', 'A.后缀 ', 'B.前缀', 'C.JSP   ', 'D.bean ', '', 'B', '2', '1', '熊晶', '魏贝莎', '2013-09-09 00:00:00', '2012-09-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('766', '2', '1', '低', '客户机对Servlet的请求和Servlet对客户端的响应，都是通过()来实现的', 'A、EJB ', 'B、XML', 'C、API    ', 'D、Web服务器', '', 'D', '2', '1', '熊晶', '魏贝莎', '2013-09-10 00:00:00', '2012-09-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('767', '2', '1', '低', '获取数据库连接的方法是（）', 'A.Connection()', 'B.getConnection()', 'C.Con', 'D.getContent()', '', 'B', '2', '1', '熊晶', '魏贝莎', '2013-09-11 00:00:00', '2012-09-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('768', '2', '1', '低', '常用的接收邮件的协议是（）', 'A、SMTP', 'B、POP3', 'C、IMAP', 'D、MIME', '', 'B', '2', '1', '熊晶', '魏贝莎', '2013-09-12 00:00:00', '2012-09-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('769', '2', '1', '低', '要对体内容进行操作的标记，必须继承的接口是（）', 'A.javax.Servlet.jsp.tagext.Tag', 'B.javax.Servlet.jsp.tagext.BodyTag', 'C.javax.Servlet.jsp.Tag', 'D.三个都必须', '', 'B', '2', '1', '熊晶', '魏贝莎', '2013-09-13 00:00:00', '2012-09-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('770', '2', '1', '低', '（）用来获取一个已被创建的JavaBean组件的属性值', 'A.<jsp:getProperty>  ', 'B.<Bean:getProperty>', 'C.<jsp:getAttrib>', 'D.<JavaBean:getProperty>', '', 'A', '2', '1', '熊晶', '魏贝莎', '2013-09-14 00:00:00', '2012-09-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('771', '2', '1', '低', 'core标记库主要的标记有（）', 'A、通用标记；流程控制标记；URL标记', 'B、1标记；循环标记', 'C、sql标记；xml标记；FN标记', 'D、以上都是', '', 'A', '2', '1', '熊晶', '魏贝莎', '2013-09-15 00:00:00', '2012-09-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('772', '2', '1', '低', '在WAR文件中，web.xml放在哪个目录中（）', 'A. WEB-INF', 'B. APP-INF', 'C.META-INF', 'D.WEB-INF\\lib', '', 'A', '2', '1', '范志新', '魏贝莎', '2013-09-16 00:00:00', '2012-09-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('773', '2', '1', '低', 'web标准的制定者是 （）', 'A：微软', 'B：万维网联盟', 'C：网景公司', '', '', 'B', '2', '1', '范志新', '魏贝莎', '2013-09-17 00:00:00', '2012-09-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('774', '2', '1', '低', '在下列HTML中，哪个是最大的标题()', 'A：<h6>', 'B：<head>', 'C：<heading>', 'D：<h1>', '', 'D', '2', '1', '范志新', '魏贝莎', '2013-09-18 00:00:00', '2012-09-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('775', '2', '1', '低', '请1产生粗体字的 HTML 标签：', 'A：<bold>', 'B：<bb>', 'C：<b>', 'D：<bld>', '', 'A', '2', '1', '范志新', '魏贝莎', '2013-09-19 00:00:00', '2012-09-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('776', '2', '1', '低', '请1可以使单元格中的内容进行左对齐的正确 HTML 标签', 'A：<td align=\"left\">', 'B：<td valign=\"left\">', 'C：<td leftalign>', 'D：<tdleft>', '', 'A', '2', '1', '范志新', '魏贝莎', '2013-09-20 00:00:00', '2012-09-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('777', '2', '1', '中', '在下列的 HTML 中，哪个可以产生复选框', 'A：<input type=\"check\">', 'B：<checkbox>', 'C：<input type=\"checkbox\">', 'D：<check>', '', 'C', '2', '1', '范志新', '魏贝莎', '2013-09-21 00:00:00', '2012-09-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('778', '2', '1', '低', '在 HTML 文档中，引用外部样式表的正确位置是', 'A：文档的末尾', 'B：文档的顶部', 'C：<body> 部分', 'D：<head> 部分', '', 'D', '4', '1', '范志新', '魏贝莎', '2013-09-22 00:00:00', '2012-09-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('779', '2', '1', '低', '下列哪个选项的 CSS 语法是正确的', 'A：body:color=black', 'B：{body:color=black(body}', 'C：body {color: black}', 'D：{body;color:black}', '', 'C', '2', '1', '范志新', '魏贝莎', '2013-09-23 00:00:00', '2012-09-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('780', '2', '1', '低', '如何改变某个元素的文本颜色', 'A：text-color:', 'B：fgcolor:', 'C：color:', 'D：text-color=', '', 'A', '2', '1', '范志新', '魏贝莎', '2013-09-24 00:00:00', '2012-09-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('781', '2', '1', '低', 'XML指的是（）', 'A：Example Markup Language', 'B：X-Markup Language', 'C：eXtensible Markup Language', 'D：eXtra Modern Link', '', 'C', '4', '1', '范志新', '魏贝莎', '2013-09-25 00:00:00', '2012-09-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('782', '2', '1', '中', '以下选项中，哪个全部都是表格标签', 'A：<table><head><tfoot>', 'B：<table><tr><td>', 'C：<table><tr><tt>', 'D：<thead><body><tr>', '', 'B', '4', '1', '范志新', '魏贝莎', '2013-09-26 00:00:00', '2012-09-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('783', '2', '1', '中', '在J2EE中，request对象的（）方法可以获取页面请求中一个表单组件对应多个值时的用户的请求数据', 'A. String getParameter(String name)', 'B. String[] getParameter(String name)', 'C. String getParameterValues(String name) ', 'D. String[] getParameterValues(String name)', '', 'D', '4', '1', '范志新', '魏贝莎', '2013-09-27 00:00:00', '2012-09-26 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('784', '2', '1', '低', 'J2EE中，JSP EL表达式：${user.loginName}的执行效果等同于', 'A. <%=user.getLoginName()%>', 'B. <% user.getLoginName();%>', 'C. <%=user.loginName%>', 'D. <% user.loginName;%>', '', 'A', '2', '1', '范志新', '魏贝莎', '2013-09-28 00:00:00', '2012-09-27 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('785', '2', '1', '低', '鼠标的移出事件是', 'A. onmouseup', 'B. onmouseout', 'C. onmouseover', 'D. onmousedown', '', 'B', '2', '1', '范志新', '魏贝莎', '2013-09-29 00:00:00', '2012-09-28 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('786', '2', '1', '低', '以下关于jQuery的描述错误的是', 'A. jQuery 是一个 JavaScript 函数库', 'B. jQuery 极大地简化了 JavaScript 编程', 'C. jQuery 的宗旨是 “write less，do more”', 'D. jQuery的核心功能不是根据1器查找HTML元素，然后对这些元素执行相应的操作', '', 'D', '2', '1', '范志新', '魏贝莎', '2013-09-30 00:00:00', '2012-09-29 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('787', '2', '1', '低', '有以下标签：<input id=\"txtContent\" class=\"txt\" type=\"text\" value=\"张三\"/>  请问不能够正确的获取文本框里面的值“张三”的语句是', 'A. $(\".txt\").val()', 'B. $(\".txt\").attr(\"value\")', 'C. $(\"#txtContent\").text()', 'D. $(\"#txtContent\").attr(\"value\")', '', 'C', '2', '1', '范志新', '魏贝莎', '2013-10-01 00:00:00', '2012-09-30 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('788', '2', '1', '低', 'J2EE中，JSP EL表达式：s{(10*10) ne 100}的值是（）', 'A. 0', 'B. True', 'C. False', 'D. 1', '', 'C', '2', '1', '范志新', '魏贝莎', '2013-10-02 00:00:00', '2012-10-01 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('789', '2', '1', '低', '在JSP中，要定义一个方法，需要用到以下（）元素', 'A. <%=  %>', 'B. <%   %> ', 'C. <%!  %>', 'D. <%@  %>', '', 'C', '2', '1', '范志新', '魏贝莎', '2013-10-03 00:00:00', '2012-10-02 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('790', '2', '1', '低', '在JSP中，（）动作用于将请求转发给其他JSP页面', 'A. forward', 'B. include', 'C. useBean', 'D. setProperty ', '', 'A', '2', '1', '范志新', '魏贝莎', '2013-10-04 00:00:00', '2012-10-03 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('791', '2', '1', '中', '在JSP中，使用<jsp:useBean>动作可以将javaBean嵌入JSP页面，对JavaBean的访问范围不能是（）', 'A. page', 'B. request', 'C. response', 'D. application', '', ' C ', '4', '1', '范志新', '魏贝莎', '2013-10-05 00:00:00', '2012-10-04 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('792', '2', '1', '中', '在J2EE中，使用Servlet过滤器时，需要在web.xml通过（）元素将过滤器映射到Web资源', 'A. <filter>', 'B. <filter-mapping>', 'C. <servlet>', 'D. <servlet-mapping> ', '', 'B', '4', '1', '范志新', '魏贝莎', '2013-10-06 00:00:00', '2012-10-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('793', '2', '1', '低', 'jsp常用的九个内置对象为:request response out pageContext session application config page exception', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '代思豪', '老王', '2013-10-07 00:00:00', '2012-10-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('794', '2', '1', '低', 'JSP页面的脚本元素是用来嵌入java代码的吗？', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '代思豪', '老王', '2013-10-08 00:00:00', '2012-10-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('795', '2', '1', '低', 'JSP供提供九种内置对象中，request对象代表的是来自客户端的请求？', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '代思豪', '老王', '2013-10-09 00:00:00', '2012-10-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('796', '2', '1', '中', 'Servlet最大的用途是通过动态响应客户机请求来扩展服务器功能？', 'A:正确', 'B：错误', '', '', '', 'A', '4', '1', '代思豪', '老王', '2013-10-10 00:00:00', '2012-10-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('797', '2', '1', '低', '表单数据的提交方法有两种，Post方法和Get方法？ ', 'A:正确', 'B：错误', '', '', '', 'A', '2', '1', '代思豪', '老王', '2013-10-11 00:00:00', '2012-10-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('798', '2', '1', '中', 'JSP最终会被转换成标准的XML文档？', 'A:正确', 'B：错误', '', '', '', 'B', '4', '1', '代思豪', '老王', '2013-10-12 00:00:00', '2012-10-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('799', '2', '1', '低', '使用response对象进行重定向时，使用的是（）方法。', 'A：getAttribute', 'B：setContentType', 'C：sendRedirect ', 'D：setAttribute ', '', 'C', '2', '1', '代思豪', '老王', '2013-10-13 00:00:00', '2012-10-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('800', '2', '1', '低', '下面哪一个动作用于将请求发送给其他页面？', 'A：next', 'B：forward', 'C：include', 'D：param ', '', 'B', '2', '1', '代思豪', '老王', '2013-10-14 00:00:00', '2012-10-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('801', '2', '1', '中', '如何获取一个Cookie[]（）？', 'A：request.getCookies()', 'B：request.getCookie() ', 'C：response.getCookies() ', 'D：response.getCookie() ', '', 'A', '4', '1', '代思豪', '老王', '2013-10-15 00:00:00', '2012-10-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('802', '2', '1', '中', '从以下哪个选项中可以获得Servlet的初始参数（ )', 'A：Servlet ', 'B：ServletContext ', 'C：ServletConfig', 'D：GenericServlet', '', 'C', '4', '1', '代思豪', '老王', '2013-10-16 00:00:00', '2012-10-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('803', '2', '1', '中', '以下描述哪些方面与2无关：', 'A:事务处理', 'B：Applet', 'C：资源管理 ', 'D：分布式', 'E：', 'B', '2', '1', '魏贝莎', '老王', '2013-10-17 00:00:00', '2012-10-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('804', '2', '1', '高', 'Servlet程序的入口点是：', 'A:init() ', 'B：main() ', 'C：service() ', 'D：doGet()', 'E：', 'A', '4', '1', '魏贝莎', '老王', '2013-10-18 00:00:00', '2012-10-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('805', '2', '1', '低', '你的servlet类需要使用com.abc.Jsjx类，Jsjx.class文件应该放到以下哪个目录中？', 'A:WEB-INF/classes ', 'B：WEB-INF/lib/jar ', 'C：WEB-INF/jars ', 'D：WEB-INF/classes/com/abc ', 'E：', 'A', '6', '1', '魏贝莎', '老王', '2013-10-19 00:00:00', '2012-10-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('806', '2', '1', '中', '构中，在WEB-INF文件夹中的lib目录是放( )文件的', 'A:.jsp文件', 'B：.class文件', 'C：.jar文件 ', 'D：web.xml文 件', 'E：', 'C', '2', '1', '魏贝莎', '老王', '2013-10-20 00:00:00', '2012-10-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('807', '2', '1', '高', '下列哪一个XML标签表示某一个servlet的类', 'A:<servlet-class>st.jsjx.class</ servlet-class >', 'B：<class>st.jsjx.class</class > ', 'C：<servlet >st.jsjx.class</ servlet >', 'D：<servletclass>st.jsjx.class</ servletclass >', 'E：', 'A', '4', '1', '魏贝莎', '老王', '2013-10-21 00:00:00', '2012-10-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('808', '2', '1', '低', '关于FORM表单提交的HTTP的GET方法不正确的是', 'A:不能向服务器提交二进制数据', 'B：不能向服务器提交无限长度的数据 ', 'C：不能向服务器提交多值参数', 'D：参数附在URL后面', 'E：', 'C', '6', '1', '魏贝莎', '老王', '2013-10-22 00:00:00', '2012-10-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('809', '2', '1', '中', 'servlet 的生命周期又一系列事件组成，把这些事件按照先后顺序排序，以下正确的是', 'A:加载类，实例化，请求处理，初始化，销毁', 'B：加载类，实例化，初始化，请求处理，销毁', 'C：实例化，加载类，初始化，请求处理，销毁', 'D：加载类，初始化，实例化，请求处理，销毁', 'E：', 'A', '2', '1', '魏贝莎', '老王', '2013-10-23 00:00:00', '2012-10-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('810', '2', '1', '高', 'Servlet中，使用（）接口中定义的（）方法来处理客户端发出的表单数据请求', 'A:HttpServlet是一个抽象类', 'B：HttpServlet类扩展了GenericServlet类', 'C：HttpServlet类的子类必须至少重写service方法', 'D：ServletRequest  doPost', 'E：', 'B', '4', '1', '魏贝莎', '老王', '2013-10-24 00:00:00', '2012-10-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('811', '2', '1', '低', '2中，以下关于HttpServlet的说法错误的是', 'A:HttpServlet  doHead', 'B：HttpServlet  doPost ', 'C：ServletRequest  doGet ', 'D：HttpServlet位于javax.servlet.http包中 ', 'E：', 'C', '6', '1', '魏贝莎', '老王', '2013-10-25 00:00:00', '2012-10-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('812', '2', '1', '中', '在HttpServlet类中响应HTTP POST请求的方法是', 'A:doPost(ServletRequest, ServletResponse) ', 'B：doPOST(ServletRequest, ServletResponse)', 'C：servicePost(HttpServletRequest, HttpServletResponse)', 'D：doPost(HttpServletRequest, HttpServletResponse)', 'E：', 'B', '2', '1', '魏贝莎', '老王', '2013-10-26 00:00:00', '2012-10-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('813', '3', '1', '低', '下列哪个不是sql 数据库文件的后缀？', 'A:.mdf', 'B:.ldf', 'C:.tif', 'D:.ndf', '', 'C', '2', '1', '魏贝莎', '老王', '2013-10-27 00:00:00', '2012-10-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('814', '3', '1', '低', '关系数据模型通常由3部分组成，它们是?', 'A:数据结构，数据通信，关系操作', 'B:数据结构，数据操作，数据完整性约束', 'C:数据通信，数据操作，数据完整性约束', 'D:数据结构，数据通信，数据完整性约束', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-10-28 00:00:00', '2012-10-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('815', '3', '1', '低', '模式查找like \'_a%\',下面哪个结果是可能的', 'A:aili', 'B:bai', 'C:bba', 'D:cca', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-10-29 00:00:00', '2012-10-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('816', '3', '1', '低', '若某表满足1NF，且其所有属性合起来组成主健，则一定还满足范式 (  )', 'A:只有2NF', 'B:只有3NF', 'C:2NF和3NF', 'D:没有', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-10-30 00:00:00', '2012-10-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('817', '3', '1', '低', '数据库系统具有（ ）的特点', 'A:三者都有', 'B:较小的冗余度', 'C:较高程度的数据共享', 'D:数据的结构化', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2013-10-31 00:00:00', '2012-10-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('818', '3', '1', '低', '数据库的网络模型应满足的条件是()', 'A:有且仅有一个结点无父结点，其余结点都只有一个父结点', 'B:必须有两个以上的结点', 'C:允许一个以上的结点无父结点，也允许一个结点有多个父结点', 'D:每个结点有且仅有一个父结点', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2013-11-01 00:00:00', '2012-10-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('819', '3', '1', '低', '下列语句执行后，结果中将包含() 条记录。SELECT 课号，MAX(成绩) AS 最高成绩  FROM SKB \n   GROUP BY课号', 'A:3', 'B:4', 'C:5', 'D:6', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2013-11-02 00:00:00', '2012-11-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('820', '3', '1', '低', '下列程序执行后，结果中将包含()条记录。SELECT STUDENT.学号,STUDENT.姓名FROM  STUDENT INNER JOIN SKB \n    ON STUDENT.学号=SKB.学号WHERE SKB.成绩BETWEEN  80  AND l 00 ', 'A:2', 'B:3', 'C:4', 'D:5', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-11-03 00:00:00', '2012-11-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('821', '3', '1', '低', '在SQL中，建立视图用的命令是()', 'A:CREATE SCHEMA', 'B:CREATE TABLE', 'C:CREATE VIEW', 'D:CREATE INDEX', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2013-11-04 00:00:00', '2012-11-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('822', '3', '1', '低', 'SQL语言中，条件“年龄BETWEEN 20 AND 30”表示年龄在20至30之间，且()', 'A:包括20岁和30岁', 'B:不包括20岁和30岁', 'C:包括20岁但不包括30岁', 'D:包括30岁但不包括20岁', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2013-11-05 00:00:00', '2012-11-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('823', '3', '1', '中', '下述关于数据库系统的正确叙述是', 'A．数据库系统减少了数据冗余', 'B．数据库系统避免了一切冗余', 'C．数据库系统中数据的一致性是指数据类型一致 ', 'D．数据库系统比文件系统能管理更多的数据', '', 'A', '4', '1', '熊晶', '魏贝莎', '2013-11-06 00:00:00', '2012-11-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('824', '3', '1', '低', '信息世界中的术语，与之对应的数据库术语为', 'A．文件', 'B．数据库', 'C．字段', 'D．记录', '', 'D', '2', '1', '熊晶', '魏贝莎', '2013-11-07 00:00:00', '2012-11-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('825', '3', '1', '中', '关系运算中花费时间可能最长的运算是', 'A．投影  ', 'B．1', 'C．笛卡尔积', 'D．除', '', 'C', '4', '1', '熊晶', '魏贝莎', '2013-11-08 00:00:00', '2012-11-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('826', '3', '1', '中', '下列SQL语句中，能够实现“收回用户ZHAO对学生表（STUD．中学号（XH）的修改权”这一功能的是', 'A．REVOKE UPDATE(XH) ON TABLE FROM ZHAO', 'B．REVOKE UPDATE(XH) ON TABLE FROM PUBLIC ', 'C．REVOKE UPDATE(XH) ON STUD FROM ZHAO', 'D．REVOKE UPDATE(XH) ON STUD FROM PUBLIC', '', 'C', '4', '1', '熊晶', '魏贝莎', '2013-11-09 00:00:00', '2012-11-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('827', '3', '1', '中', '在SQL Server 中删除触发器用', 'A．ROLLBACK', 'B.  DROP', 'C．DELALLOCATE', 'D.  DELETE', '', 'B', '4', '1', '熊晶', '魏贝莎', '2013-11-10 00:00:00', '2012-11-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('828', '3', '1', '中', '在关系DB中，任何二元关系模式的最高范式必定是', 'A．1NF', 'B．2NF', 'C．3NF', 'D．BCNF', '', 'D', '4', '1', '熊晶', '魏贝莎', '2013-11-11 00:00:00', '2012-11-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('829', '3', '1', '中', '在数据库的概念设计中，最常用的数据模型是', 'A．形象模型', 'B．物理模型', 'C．逻辑模型', 'D．实体联系模型', '', 'D', '4', '1', '熊晶', '魏贝莎', '2013-11-12 00:00:00', '2012-11-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('830', '3', '1', '中', '若事务T对数据R已经加X锁，则其他事务对数据R', 'A．可以加S锁不能加X锁', 'B．不能加S锁可以加X锁', 'C．可以加S', 'D．不能加任何锁', '', 'D', '4', '1', '熊晶', '魏贝莎', '2013-11-13 00:00:00', '2012-11-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('831', '3', '1', '中', '数据库恢复的基础是利用转储的冗余数据。这些转储的冗余数据包括', 'A．数据字典、应用程序、审计档案、数据库后备副本', 'B．数据字典、应用程序、日志文件、审计档案', 'C．日志文件、数据库后备副本   ', 'D．数据字典、应用程序、数据库后备副本', '', 'C', '4', '1', '熊晶', '魏贝莎', '2013-11-14 00:00:00', '2012-11-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('832', '3', '1', '中', '事务的一致性是指', 'A．事务中包括的所有操作要么都做，要么都不做', 'B．事务一旦提交，对数据为的改变是永久的', 'C．一个事务内部的操作及使用的数据对并发的其他事务是隔离的', 'D．事务必须是使数据库从一个一致性状态变到另一个一致性状态', '', 'D', '4', '1', '熊晶', '魏贝莎', '2013-11-15 00:00:00', '2012-11-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('833', '3', '1', '低', '对于现实世界中事物的特征，在实体-联系模型中使用()', 'A）属性描述', 'B）关键字描述', 'C）二维表格描述', 'D）实体描述', '', 'A', '2', '1', '熊晶', '熊晶', '2013-11-16 00:00:00', '2012-11-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('834', '3', '1', '低', '在数据库设计中，将ER图转换成关系数据模型的过程属于()', 'A）需求分析阶段', 'B）逻辑设计阶段', 'C）概念设计阶段', 'D）物理设计阶段', '', 'B', '2', '1', '熊晶', '熊晶', '2013-11-17 00:00:00', '2012-11-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('835', '3', '1', '低', '设有部门和职员两个实体，每个职员只能属于一个部门，一个部门可以有多名职员。则部门与职员实体之间的联系类型是()', 'A) m:n', ' B) 1:m', 'C) m:1', 'D) 1:1', '', 'B', '2', '1', '熊晶', '熊晶', '2013-11-18 00:00:00', '2012-11-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('836', '3', '1', '低', '使用SQL语句进行分组检索时，为了去掉不满足条件的分组，应当()', 'A）使用WHERE子句', 'B）在GROUP BY后面使用HAVING 子句', 'C）先使用WHERE子句，再使用HAVING子句', 'D）先使用HAVING 子句，再使用WHERE子句', '', 'B', '2', '1', '熊晶', '熊晶', '2013-11-19 00:00:00', '2012-11-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('837', '3', '1', '低', '关系表达式运算的结果是()', 'A．数值型', 'B．字符型', 'C．逻辑型', 'D.日期型', '', 'C', '2', '1', '熊晶', '熊晶', '2013-11-20 00:00:00', '2012-11-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('838', '3', '1', '低', '储蓄所有多个储户，储户在多个储蓄所存取款，储蓄所与储户之间是()', 'A.一对一的联系', 'B．一对多的联系', 'C．多对一的联系', 'D．多对多的联系', '', 'B', '2', '1', '熊晶', '熊晶', '2013-11-21 00:00:00', '2012-11-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('839', '3', '1', '低', '视图是一个“虚表”，视图的构造基于()', 'A.基本表', 'B.视图', 'C.基本表或视图', 'D.数据字典', '', 'C', '2', '1', '熊晶', '熊晶', '2013-11-22 00:00:00', '2012-11-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('840', '3', '1', '中', '设有关系模式EMP（职工号，姓名，年龄，技能）。假设职工号唯一，每个职工有多项技能，则EMP表的主键是（）', 'A.职工号', 'B.姓名，技能', 'C.技能', 'D.职工号，技能', '', 'A', '4', '1', '熊晶', '熊晶', '2013-11-23 00:00:00', '2012-11-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('841', '3', '1', '中', '在SQL语句中，与表达式 \"仓库号 NOT IN（\"wh1\",\"wh2\"）\"功能相同的表达式是()', 'A）仓库号=\"wh1\" AND 仓库号=\"wh2\"', 'B）仓库号!=\"wh1\" OR 仓库号！= \"wh2\"', 'C）仓库号=\"wh1\" OR 仓库号=\"wh2\"', 'D）仓库号!=\"wh1\" AND 仓库号!=\"wh2\"', '', 'D', '4', '1', '熊晶', '熊晶', '2013-11-24 00:00:00', '2012-11-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('842', '3', '1', '低', '在SQL SELECT语句中用于实现关系的1运算的短语是()', 'A）FOR', 'B）WHILE', 'C）WHERE', 'D）CONDITION', '', 'C', '2', '1', '熊晶', '老王', '2013-11-25 00:00:00', '2012-11-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('843', '3', '1', '低', '设有部门和员工两个实体，每个员工只能属于一个部门，一个部门可以有多名员工，则部门与员工实体之间的联系类型是(B)', 'A:多对多', 'B：多对一', 'C：一对多', 'D：一对一', '', 'B', '2', '1', '熊晶', '老王', '2013-11-26 00:00:00', '2012-11-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('844', '3', '1', '低', 'SQL的含义是（A）', 'A:结构化查询语言', 'B：数据定义语言 ', 'C：数据库查询语言', 'D：数据库操纵与控制语言', '', 'A', '2', '1', '熊晶', '老王', '2013-11-27 00:00:00', '2012-11-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('845', '3', '1', '低', '要从学生关系中查询学生的姓名和年龄所进行的查询操作属于(B)', 'A:1', 'B：投影', 'C：联结', 'D：自然联结', '', 'B', '2', '1', '熊晶', '老王', '2013-11-28 00:00:00', '2012-11-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('846', '3', '1', '低', '在 SQL 语句中，检索要去掉重复组的所有元组，则在 SELECT 中使用（D）', 'A:All', 'B：UNION', 'C：LIKE   ', 'D：DISTINCT ', '', 'D', '2', '1', '熊晶', '老王', '2013-11-29 00:00:00', '2012-11-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('847', '3', '1', '中', '用二维表数据来表示实体及实体之间联系的数据模型称为（D）', 'A:实体--联系模型', 'B：层次模型', 'C：网状模型', 'D：关系模型', '', 'D', '2', '1', '熊晶', '老王', '2013-11-30 00:00:00', '2012-11-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('848', '3', '1', '中', '在标准SQL中，建立视图的命令是（D）', 'A:CREATE SCHEMA命令', 'B：CREATE TABLE命令', 'C：CREATE VIEW命令', 'D：CREATE INDEX命令', '', 'D', '4', '1', '熊晶', '老王', '2013-12-01 00:00:00', '2012-11-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('849', '3', '1', '低', '用于显示部分查询结果的TOP短语，必须与（A）同时使用，才有效果', 'A:ORDER BY ', 'B：FROM ', 'C：WHERE ', 'D：GROUP BY ', '', 'A', '4', '1', '熊晶', '老王', '2013-12-02 00:00:00', '2012-12-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('850', '3', '1', '低', '用SQL语句建立表时将属性定义为主关键字，应使用短语（B）', 'A:CHECK ', 'B：PRIMARY KEY ', 'C：FREE ', 'D：UNIQUE ', '', 'B', '4', '1', '熊晶', '老王', '2013-12-03 00:00:00', '2012-12-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('851', '3', '1', '中', '在数据库结构中，保证数据库独立性的关键因素是（D）', 'A:数据库的逻辑结构', 'B：数据库的逻辑结构、物理结构', 'C：数据库的三级结构', 'D：数据库的三级结构和两级映射', '', 'D', '4', '1', '熊晶', '老王', '2013-12-04 00:00:00', '2012-12-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('852', '3', '1', '中', '对关系的完整性约束通常包括（D）三种', 'A:实体完整性、属性完整性、参照完整性', 'B：实体完整性、属性完整性、关系完整性', 'C：实体完整性、属性完整性、用户定义完整性 ', 'D：实体完整性、参照完整性、用户定义完整性', 'D', 'D', '6', '1', '熊晶', '老王', '2013-12-05 00:00:00', '2012-12-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('853', '3', '1', '低', '设有部门和员工两个实体，每个员工只能属于一个部门，一个部门可以有多名员工，则部门与员工实体之间的联系类型是', 'A. 多对多', 'B. 一对多', 'C. 多对一', 'D. 一对一', '', 'B', '2', '1', '熊晶', '老王', '2013-12-06 00:00:00', '2012-12-05 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('854', '3', '1', '低', '在课程表中要查找课程名称中包含“计算机”的课程，对应“课程名称”字段的条件表达式是', 'A. \"计算机\"', 'B. \"*计算机*\"', 'C. Like\"*计算机*\"', 'D. Like\"计算机\"', '', 'C', '2', '1', '范志新', '老王', '2013-12-07 00:00:00', '2012-12-06 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('855', '3', '1', '低', '用SQL语言描述“在教师表中查找女教师的全部信息”，以下描述真确的是', 'A. SELECT  FROM 教师表 IF （性别＝\"女\"）', 'B. SELECT 性别FROM 教师表 IF （性别＝\"女\"）', 'C. SELECT *FROM 教师表 WHERE（性别＝\"女\"）', 'D. SELECT *FROM 性别WHERE （性别＝\"女\"）', '', 'C', '2', '1', '范志新', '老王', '2013-12-08 00:00:00', '2012-12-07 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('856', '3', '1', '低', '把E-R图转换成关系模型的过程，属于数据库设计的', 'A. 概念设计', 'B. 逻辑设计', 'C. 需求分析', 'D. 物理设计 ', '', 'B', '2', '1', '范志新', '老王', '2013-12-09 00:00:00', '2012-12-08 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('857', '3', '1', '低', '以下哪些命令是DDL语句', 'A. CREATE DATABASE命令', 'B. ALTER TABLE命令', 'C. SELECT 命令', 'D. INSERT命令', '', 'A', '2', '1', '范志新', '老王', '2013-12-10 00:00:00', '2012-12-09 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('858', '3', '1', '低', '在SQL中，删除视图用', 'A. DROP SCHEMA命令', 'B. CREATE TABLE命令', 'C. DROP VIEW命令', 'D. DROP INDEX命令', '', 'C', '2', '1', '范志新', '老王', '2013-12-11 00:00:00', '2012-12-10 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('859', '3', '1', '低', 'SQL语句中修改表结构的命令是', 'A. MODIFY TABLE', 'B. MODIFY STRUCTURE', 'C. ALTER TABLE', 'D. ALTER STRUCTURE', '', 'C', '2', '1', '范志新', '老王', '2013-12-12 00:00:00', '2012-12-11 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('860', '3', '1', '低', 'SQL语言具有_______的功能', 'A. 关系规范化、数据操纵、数据控制', 'B. 数据定义、数据操纵、数据控制', 'C. 数据定义、关系规范化、数据控制', 'D. 数据定义、关系规范化、数据操纵', '', 'B', '2', '1', '范志新', '老王', '2013-12-13 00:00:00', '2012-12-12 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('861', '3', '1', '低', '在关系模型中，实现\"关系中不允许出现相同的元组\"的约束是通过', 'A. 候选键', 'B. 主键', 'C. 外键', 'D. 超键', '', 'B', '2', '1', '范志新', '老王', '2013-12-14 00:00:00', '2012-12-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('862', '3', '1', '低', 'DELETE FROM S WHERE 年龄>60 语句的功能是', 'A. 从S表中彻底删除年龄大于60岁的记录', 'B. S表中年龄大于60岁的记录被加上删除标记', 'C. 删除S表', 'D. 删除S表的年龄列', '', 'A', '2', '1', '范志新', '老王', '2013-12-15 00:00:00', '2012-12-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('863', '3', '2', '低', 'Oracle的几大特点是其明显的优势之处:', 'A:兼容性:Oracle产品采用标准SQL，并经过美国国家标准技术所（NIST）测试。与IBM SQL/DS，DB2，INGRES，IDMS/R等兼容。', 'B：可移植性:Oracle的产品可运行于很宽范围的硬件与操作系统平台上。可以安装在70种以上不同的大、中、小型机上；可在VMS、DOS、UNIX、WINDOWS等多种操作系统下工作。', 'C:可联结性:能与多种通讯网络相连，支持各种协议（TCP/IP、DECnet、LU6.2等）。', 'D：高生产率:提供了多种开发工具，能极大的方便用户进行进一步的开发。', 'E：开放性:Oracle良好的兼容性、可移植性、可连接性和高生产率是Oracle RDBMS具有良好的开放性。此外,ORACLE产品主要包括数据库服务器、开发工具和连接产品三类。', 'ABCDE', '4', '1', '代思豪', '老王', '2013-12-16 00:00:00', '2012-12-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('864', '3', '1', '低', '下述选项中不属于JDBC基本功能的是？', 'A：与数据库建立连接', 'B：提交SQL语句 ', 'C：处理查询结果', 'D：数据库维护管理 ', '', 'D', '2', '1', '代思豪', '老王', '2013-12-17 00:00:00', '2012-12-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('865', '3', '1', '中', '在Access数据库中，一个关系就是一个()？', 'A：二维表', 'B：记录', 'C：字段', 'D：数据库综合数据 ', '', 'A  ', '4', '1', '代思豪', '老王', '2013-12-18 00:00:00', '2012-12-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('866', '3', '1', '中', 'SQL的含义是？', 'A：结构化查询语言 ', 'B：数据定义语言 ', 'C：数据库查询语言', 'D：数据库操纵与控制语言', '', 'A', '4', '1', '代思豪', '老王', '2013-12-19 00:00:00', '2012-12-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('867', '3', '1', '中', '在SQL语句中，检索要去掉重复组的所有元组，则在SELECT中使用（）？', 'A：All ', 'B：UNION ', 'C：LIKE', 'D：DISTINCT', '', 'D', '4', '1', '代思豪', '老王', '2013-12-20 00:00:00', '2012-12-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('868', '3', '1', '中', '在查询设计视图中设计排序时，如果选取了多个字段，则输出结果是？', 'A：按设定的优先次序依次进行排序', 'B：按最右边的列开始排序', 'C：按从左向右优先次序依次排序', 'D：无法进行排序', '', 'C', '4', '1', '代思豪', '老王', '2013-12-21 00:00:00', '2012-12-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('869', '3', '1', '中', '把E-R图转换成关系模型的过程，属于数据库设计的', 'A：概念设计', 'B：逻辑设计', 'C：需求分析', 'D：物理设计', '', 'B', '4', '1', '代思豪', '老王', '2013-12-22 00:00:00', '2012-12-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('870', '3', '1', '中', '下列关于文件索引结构的叙述中，哪一个是不正确的？', 'A：采用索引结构，逻辑上连续的文件存放在连续的物理块中', 'B：系统为每个文件建立一张索引表', 'C：索引结构的优点是访问速度快，文件长度可以动态变化', 'D：索引结构的缺点是存储开销大', '', 'A', '4', '1', '代思豪', '老王', '2013-12-23 00:00:00', '2012-12-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('871', '3', '1', '中', '从学生选课信息表中找出无成绩的元组的SQL语句是', 'A：SELECT * FROM sc WHERE grade=NULL', 'B：SELECT * FROM sc WHERE grade IS \' \'', 'C：SELECT * FROM sc WHERE grade IS NULL', 'D：SELECT * FROM sc WHERE grade =\' \' ', '', 'C', '4', '1', '代思豪', '老王', '2013-12-24 00:00:00', '2012-12-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('872', '3', '1', '中', '数据库管理系统的数据操纵语言(DML)所实现的操作一般包括', 'A：建立、授权、修改', 'B：建立、授权、删除', 'C：建立、插入、修改、排序', 'D：查询、插入、修改、删除', '', 'D', '4', '1', '代思豪', '魏贝莎', '2013-12-25 00:00:00', '2012-12-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('873', '3', '1', '高', '在一个关系中，能够唯一确定一个元组的属性或属性组合叫做', 'A:索引码', 'B：关键字', 'C：域 ', 'D：排序', 'E：', 'B', '4', '1', '代思豪', '魏贝莎', '2013-12-26 00:00:00', '2012-12-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('874', '3', '1', '低', '在数据库中，下列说法（ ）是不正确的', 'A:数据库避免了一切数据的重复', 'B：若系统是完全可以控制的，则系统可确保数据更新时的一致性', 'C：数据库中的数据可以共享', 'D：数据库减少了数据冗余', 'E：', 'A', '6', '1', '代思豪', '魏贝莎', '2013-12-27 00:00:00', '2012-12-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('875', '3', '1', '中', '关系模型中，一个关键字是', 'A:可由多个任意属性组成', 'B：最多由一个属性组成', 'C：可由一个或多个其值能唯一标识该关系模式中任何元组的属性组成', 'D：其它选项都不对', 'E：', 'C', '2', '1', '代思豪', '魏贝莎', '2013-12-28 00:00:00', '2012-12-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('876', '3', '1', '高', '关系数据库管理系统所管理的关系是', 'A:若干个二维表', 'B：一个DBF文件', 'C：一个DBC文件 ', 'D：若干个DBC文件', 'E：', 'A', '4', '1', '代思豪', '魏贝莎', '2013-12-29 00:00:00', '2012-12-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('877', '3', '1', '低', '设有关系R1和R2，经过关系运算得到结果S，则S是', 'A:一个数据库', 'B：一个表单', 'C：一个关系', 'D：一个数组', 'E：', 'C', '6', '1', '代思豪', '魏贝莎', '2013-12-30 00:00:00', '2012-12-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('878', '3', '1', '中', '关系数据库的任何检索操作都是由三种基本运算组合而成的，这三种基本运算不包括', 'A:投影', 'B：比较', 'C：连接', 'D：1', 'E：', 'B', '2', '1', '代思豪', '魏贝莎', '2013-12-31 00:00:00', '2012-12-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('879', '3', '1', '高', '关系运算中的1运算是', 'A:从关系中找出满足给定条件的元组的操作', 'B：从关系中1若干个属性组成新的关系的操作', 'C：从关系中1满足给定条件的属性的操作', 'D：其余选项都不对 ', 'E：', 'A', '4', '1', '代思豪', '魏贝莎', '2014-01-01 00:00:00', '2012-12-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('880', '3', '1', '低', '下面关于工具栏的叙述，不正确的是', 'A:用户可以创建自己的工具栏', 'B：用户可以修改系统工具栏', 'C：用户可以删除用户创建的工具栏', 'D：用户可以删除系统工具栏', 'E：', 'D', '6', '1', '代思豪', '魏贝莎', '2014-01-02 00:00:00', '2013-01-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('881', '3', '1', '中', '下列启动\"向导\"的方法中，正确的是', 'A:1\"工具\"菜单中的\"向导\"子菜单命令', 'B：通过\"新建\"对话框', 'C：单击工具栏中的\"向导\"按钮', 'D：其它三个选项均正确', 'E：', 'D', '2', '1', '代思豪', '魏贝莎', '2014-01-03 00:00:00', '2013-01-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('882', '3', '1', '高', '项目管理器中的\"数据\"选项卡中包含有', 'A:数据库表、自由表和表单', 'B：数据库、自由表和查询', 'C：数据库表、自由表、查询和视图', 'D：数据库、报表、查询和视图', 'E：', 'C', '4', '1', '代思豪', '魏贝莎', '2014-01-04 00:00:00', '2013-01-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('883', '4', '1', '低', 'MyBatis指定配置文件的根元素使用的是（ ）。', 'A:<sqlMapConfig>', 'B:<configuration>', 'C:<setting>', 'D:<environments>', '', 'A', '2', '1', '代思豪', '魏贝莎', '2014-01-05 00:00:00', '2013-01-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('884', '4', '1', '低', '在MyBatis中，ExecutorType的值包括（ ）', 'A:ExecutorType.SIMPLE', 'B:ExecutorType.BATCH', 'C:ExecutorType.EXECUTE', 'D:ExecutorType.REUSE', '', '', '2', '1', '魏贝莎', '魏贝莎', '2014-01-06 00:00:00', '2013-01-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('885', '4', '1', '低', '使用HQL查询所有部门信息，以下正确的是（ ）', 'A:from Dept', 'B:select * from cn.jbit.demo.entity.Dept', 'C:select Dept from cn.jbit.demo.entity.Dept d ', 'D:select d from Dept d', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2014-01-07 00:00:00', '2013-01-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('886', '4', '2', '低', '关于struts2包说法正确的是：', 'A:struts2框架使用包来管理常量', 'B:struts2框架定义包时必须指定name属性', 'C:struts2框架中配置包时，必须继承自struts-default包，否则会报错', 'D:struts2框架中使用包来管理Action', '', 'BCD', '2', '1', '魏贝莎', '魏贝莎', '2014-01-08 00:00:00', '2013-01-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('887', '4', '1', '低', 'struts2动态调用的格式为：', 'A:ActionName?methodName.action', 'B:ActionName!methodName.action', 'C:ActionName*methodName.action', 'D:ActionName@methodName.action', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2014-01-09 00:00:00', '2013-01-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('888', '4', '1', '低', '如果要实现自定义处理结果，需要继承哪个类', 'A:Dispatcher', 'B:StrutsResultSupport', 'C:Support', 'D:Action', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2014-01-10 00:00:00', '2013-01-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('889', '4', '1', '低', '实现动态返回结果，在配置<resule>元素时使用（）指定视图资源', 'A:${属性名}', 'B:@{属性名}', 'C:${\'属性名\'}', 'D:${\"属性名\"}', '', 'A', '2', '1', '魏贝莎', '魏贝莎', '2014-01-11 00:00:00', '2013-01-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('890', '4', '1', '低', '自定义转换器的注册方式有： ', 'A:只有全局注册方式', 'B:只有局部注册方式', 'C:只有全局和局部注册方式', 'D:以上的说法都不对', '', 'C', '2', '1', '魏贝莎', '魏贝莎', '2014-01-12 00:00:00', '2013-01-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('891', '4', '1', '低', '以下哪个标签是struts2中用于循环迭代的', 'A:<s:property> ', 'B:<s:iterator>', 'C:<s:logic>', 'D:<s:foreach>', '', 'B', '2', '1', '魏贝莎', '魏贝莎', '2014-01-13 00:00:00', '2013-01-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('892', '4', '1', '低', 'truts2中,以下配置文件上传拦截器只允许上传bmp图片文件的代码，正确的是 ', 'A:<param name=\"allowedTypes\">image/bmp</param>', 'B:<param name=\"allowedTypes\">*.bmp</param>', 'C:<param name=\"allowedTypes\">bmp</param>', 'D:<param name=\"allowedTypes\">image/*.bmp</param>', '', 'A', '2', '1', '熊晶', '魏贝莎', '2014-01-14 00:00:00', '2013-01-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('893', '4', '1', '中', 'ORM是', 'A． 对象关系映射', 'B． 对象实体映射  ', 'C． 数据传输对象', 'A． 对象关系映射  ', '', 'A', '4', '1', '熊晶', '魏贝莎', '2014-01-15 00:00:00', '2013-01-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('894', '4', '1', '中', '控制器需要在___________配置文件中进行配置。', 'A．web.xml', 'B．struts.xml', 'C．struts2.xml', 'D．webwork.xml ', '', 'C', '4', '1', '熊晶', '魏贝莎', '2014-01-16 00:00:00', '2013-01-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('895', '4', '1', '中', '不属于Action接口中定义的字符串常量的是___________。', 'A．SUCCESS', 'B．FAILURE', 'C．ERROR ', 'D．INPUT', '', 'D', '4', '1', '熊晶', '魏贝莎', '2014-01-17 00:00:00', '2013-01-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('896', '4', '1', '中', '在JSP页面中可以通过Struts 2提供的（   ）标签来输出国际化信息。', 'A． <s:input> ', 'B． <s:property>', 'C． <s:submit>', 'D． <s:text> ', '', 'D', '4', '1', '熊晶', '魏贝莎', '2014-01-18 00:00:00', '2013-01-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('897', '4', '1', '中', 'Struts2中动态调用的格式（   ）', 'A． ActionName?methodName.do', 'B． ActionName!methodName.do', 'C． ActionName?methodName.action。', 'D． ActionName!methodName.action。', '', 'C', '4', '1', '熊晶', '魏贝莎', '2014-01-19 00:00:00', '2013-01-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('898', '4', '1', '中', '以下配置文件上传拦截器只允许bmp图片文件代码，正确的是（   ）。', 'A． <param name=\"allowedTypes\">*.bmp </param>', 'B． <param name=\"allowedTypes\">bmp </param>', 'C． <param name=\"allowedTypes\">image/*.bmp </param> ', 'D． <param name=\"allowedTypes\">image/bmp </param> ', '', 'D', '4', '1', '熊晶', '魏贝莎', '2014-01-20 00:00:00', '2013-01-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('899', '4', '1', '难', ' 如下代码，对DemoAction起作用的拦截器有（   ）。  <package name=\"default\" extends=\"struts-default\" >      <default-interceptor-ref name=\"testInterceptor\"/> \n     <action name=\"DemoAction\" class=\"action.DemoAction\" >          <interceptor-ref name=\"demoInterceptor\" />     ', 'A． 只有testInterceptor. ', 'B． 只有demoInterceptor.', 'C． 都不起作用', 'D． 同时起作用', '', 'B', '6', '1', '熊晶', '魏贝莎', '2014-01-21 00:00:00', '2013-01-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('900', '4', '1', '中', '假设在Session中存在名称为uid属性。通过OGNL访问该属性。真确的代码是（   ）', 'A． #uid', 'B． #session.id', 'C． uid ', 'D． ${session.id}', '', 'B', '4', '1', '熊晶', '魏贝莎', '2014-01-22 00:00:00', '2013-01-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('901', '4', '1', '中', '在strutrs2中数据验证失败时,通过（   ）标签显示错误信息。', 'A． <s:text>', 'B． <s:error>', 'C． <s:faild> ', 'D． <s:fielderror>', '', 'D', '4', '1', '熊晶', '魏贝莎', '2014-01-23 00:00:00', '2013-01-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('902', '4', '1', '中', '下面代码运行的效果是() <body>   <% \n    String url=\"<a href=\'#\' >生成超链接</a>\";     pageContext.setAttribute(\"uid\",url);   %> \n <s:property value=\"#attr.uid\" default=\"找不到对象\" escape=\"false\"></s:property> </body>', 'A． <a href=\'#\' >生成超链接</a> ', 'B． 生成超链接。', 'C． 找不到对象', 'D． 什么都不输。', '', 'B', '4', '1', '熊晶', '魏贝莎', '2014-01-24 00:00:00', '2013-01-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('903', '4', '1', '低', '以下属于struts2的控制器组件的是：()', 'A:Action', 'B:ActionForm', 'C:ActionServlet', 'D:dispatchAction', '', 'A', '2', '1', '熊晶', '魏贝莎', '2014-01-25 00:00:00', '2013-01-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('904', '4', '2', '低', '以下属于struts2的体系结构的是：()', 'A:struts2控制器组件', ' B:struts2配置文件', 'C:FilterDispatcher', 'D.Action', '', 'AB', null, '1', '熊晶', '老王', '2014-01-26 00:00:00', '2013-01-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('905', '4', '2', '低', '以下属于struts2配置文件的配置元素是：()', 'A:<package>', 'B:<action>', 'C:<form-bean>', 'D:<action-mapping>', '', 'AB', '2', '1', '熊晶', '老王', '2014-01-27 00:00:00', '2013-01-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('906', '4', '1', '低', '关于struts1和struts2对比的说法正确的是：()', 'A.struts1要求Action类继承其框架中的Action父类，struts2则不一定需要继承，可以是POJO类', 'B.struts1的Action不是线程安全的，struts2的Action是线程安全的', 'C.struts1和struts2都使用ActionForm对象封装用户的请求数据', 'D.struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值', '', 'A', '2', '1', '熊晶', '老王', '2014-01-28 00:00:00', '2013-01-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('907', '4', '2', '低', '以下关于ValueStack说法正确的是：()', 'A.每个Action对象实例拥有一个ValueStack对象', 'B.每个Action对象实例拥有多个ValueStack对象', 'C.Action中封装的需要传入下一个页面的值，这些值封装在ValueStack对象中', 'D.ValueStack会在请求开始时创建，请求结束时消亡', '', 'ACD', '2', '1', '熊晶', '老王', '2014-01-29 00:00:00', '2013-01-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('908', '4', '1', '低', 'struts2动态调用的格式为：()', 'A.ActionName?methodName.action', 'B.ActionName!methodName.action', 'C.ActionName*methodName.action', 'D.ActionName@methodName.action', '', 'B', '2', '1', '熊晶', '老王', '2014-01-30 00:00:00', '2013-01-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('909', '4', '1', '中', '如果要实现struts2的数据检验功能:()', 'A.普通的Action类可以实现', 'B.继承自Action接口的可以实现', 'C.继承自ActionSupport类可以实现', 'D.继承自ActionValidate类可以实现', '', 'C', '4', '1', '熊晶', '老王', '2014-01-31 00:00:00', '2013-01-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('910', '4', '1', '中', '如果要实现自定义处理结果，需要继承哪个类()', 'A.Dispatcher', 'B.StrutsResultSupport', 'C.Support', 'D.Action', '', 'B', '4', '1', '熊晶', '老王', '2014-02-01 00:00:00', '2013-01-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('911', '4', '1', '低', '实现动态返回结果，在配置<resule>元素时使用（）指定视图资源', 'A.${属性名}', 'B.@{属性名}', 'C.${\'属性名\'}', 'D.${\"属性名\"}', '', 'A', '2', '1', '熊晶', '老王', '2014-02-02 00:00:00', '2013-02-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('912', '4', '1', '低', '用于实现国际化的struts2标签的是()', 'A.<s:text>', 'B.<s:message>', 'C.<s:textfile>', 'D.<s:resource>', '', 'A', '2', '1', '熊晶', '老王', '2014-02-03 00:00:00', '2013-02-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('913', '4', '1', '低', '在Servlet处理请求的方式为（）', 'A：以进程的方式', 'B：以程序的方式', 'C：以线程的方式', 'D：以响应的方', '', 'C', '2', '1', '熊晶', '老王', '2014-02-04 00:00:00', '2013-02-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('914', '4', '1', '低', 'JDBC中，用于表示数据库连接的对象是（）', 'A：Statement ', 'B：Connection', 'C：DriverManager', 'D：PreparedStatement', '', 'B', '2', '1', '熊晶', '老王', '2014-02-05 00:00:00', '2013-02-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('915', '4', '1', '中', '按照MVC设计模式，JSP用于实现（）', 'A：Model ', 'B：View', 'C：Controller', 'D：容器', '', 'B', '4', '1', '熊晶', '老王', '2014-02-06 00:00:00', '2013-02-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('916', '4', '1', '中', '在J2EE中属于Web层的组件有（）', 'A：Servlet', 'B：EJB ', 'C：Applet ', 'D：HTML', '', 'A', '2', '1', '熊晶', '老王', '2014-02-07 00:00:00', '2013-02-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('917', '4', '1', '中', '在WEB-INF目录下，必须存放的文件为（）', 'A：class文件', 'B：web.xml', 'C：.jar文件', 'D：html文', '', 'B', '2', '1', '熊晶', '老王', '2014-02-08 00:00:00', '2013-02-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('918', '4', '1', '中', '每个使用Swing构件的程序必须有一个（）', 'A：按钮', 'B：标签', 'C：菜单', 'D：容器', '', 'D', '4', '1', '熊晶', '老王', '2014-02-09 00:00:00', '2013-02-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('919', '4', '1', '高', '下面哪一个不能作JSP的服务器（）', 'A：IBM WebSphere', 'B：BEA WebLogic', 'C：Tomcat ', 'D：pws  ', '', 'D', '4', '1', '熊晶', '老王', '2014-02-10 00:00:00', '2013-02-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('920', '4', '1', '中', '在配置tomcat虚拟目录时，需要打开哪个文件（）', 'A：index.jsp', 'B：web.xml', 'C：server.xml', 'D：以上都不是', '', 'C', '4', '1', '熊晶', '老王', '2014-02-11 00:00:00', '2013-02-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('921', '4', '1', '中', '使用Session获取命名查询的方法是（）', 'A：getNamedQuery()', 'B：getnamedQuery()', 'C：getNameQuery()', 'D：getNamedSQLQuery()', '', 'A', '4', '1', '熊晶', '老王', '2014-02-12 00:00:00', '2013-02-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('922', '4', '1', '中', '以下属于struts2的控制器组件是（）', 'A：Action ', 'B：ActionForm ', 'C：ActionServlet', 'D：dispatchAction', '', 'A', '6', '1', '熊晶', '老王', '2014-02-13 00:00:00', '2013-02-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('923', '4', '1', '低', 'MVC设计模式的目的是', 'A. 使程序结构更清晰', 'B. 使程序更好维护', 'C. 保证视图和模型的隔离', 'D. 在逻辑上将视图、模型和控制器分开', '', 'C', '2', '1', '范志新', '老王', '2014-02-14 00:00:00', '2013-02-13 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('924', '4', '1', '低', '下面信息不在Struts配置文件中配置的是', 'A. Form Bean配置信息', 'B. Spring声明式事务', 'C. Action转发路径', 'D. Struts引用的资源文件', '', 'B', '2', '1', '范志新', '老王', '2014-02-15 00:00:00', '2013-02-14 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('925', '4', '1', '低', '在三层结构中，数据访问层承担的责任是', 'A. 定义实体类', 'B. 数据的增删改查操作', 'C. 业务逻辑的描述', 'D. 页面展示和控制转发', '', 'B', '2', '1', '范志新', '老王', '2014-02-16 00:00:00', '2013-02-15 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('926', '4', '1', '低', '下面关于数据持久化概念的描述，错误的是', 'A. 保存在内存中数据的状态是瞬时状态', 'B. 持久状态的数据在关机后数据依然存在', 'C. 数据可以由持久状态转换为瞬时状态', 'D.将数据转换为持久状态的机制称为数据持久化 ', '', 'D', '2', '1', '范志新', '老王', '2014-02-17 00:00:00', '2013-02-16 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('927', '4', '1', '低', '下面关于Hibernate的说法，错误的是', 'A. Hibernate是一个“对象-关系映射”的实现', 'B. Hibernate是一种数据持久化技术', 'C. Hibernate是JDBC的替代技术', 'D. 使用Hibernate可以简化持久化层的编码', '', 'C', '2', '1', '范志新', '老王', '2014-02-18 00:00:00', '2013-02-17 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('928', '4', '1', '低', '关于Spring的说法错误的是', 'A. 通过setter方法实现依赖注入', 'B. 对Hibernate提供了支持，可简化Hibernate编码', 'C. 通过AOP可以轻松与Hibernate集成', 'D. 通过AOP实现了声明式事务管理', '', 'C', '2', '1', '范志新', '老王', '2014-02-19 00:00:00', '2013-02-18 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('929', '4', '1', '低', 'Struts2标签中，（）标签用于迭代输出集合中的元素，包括List、Map等', 'A. bean', 'B. iterator ', 'C. param', 'D. i18n', '', 'B', '2', '1', '范志新', '老王', '2014-02-20 00:00:00', '2013-02-19 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('930', '4', '1', '低', '下面不属于持久化的是', 'A. 把程序数据保存为文件', 'B. 从XML配置文件中读取文件的信息', 'C. 把程序数据从数据库中读取出来', 'D. 把对象转换为字符串的形式传输，在另一端接收后能把对象还原出来', '', 'B', '2', '1', '范志新', '老王', '2014-02-21 00:00:00', '2013-02-20 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('931', '4', '1', '低', 'Struts是一个开源的Web开发框架，它是由哪个组织进行维护的', 'A. BEA', 'B. JBoss', 'C. Apache ', 'D. Sybase ', '', 'C', '2', '1', '范志新', '老王', '2014-02-22 00:00:00', '2013-02-21 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('932', '4', '1', '低', '下面关于“依赖注入”的说法，错误的是', 'A. 将组件间的依赖关系采取配置文件的方式管理，而不是硬编码在代码中', 'B. 降低了组件间的耦合，使程序更容易维护和升级', 'C. 促进了“面向接口”编程，使构建大规模程序更轻松 ', 'D. 需要定义大量接口，增加了编码复杂度', '', 'D', '2', '1', '范志新', '老王', '2014-02-23 00:00:00', '2013-02-22 00:00:00', '无', null, '', null);
INSERT INTO `t_question` VALUES ('933', '4', '1', '中', 'java EE技术框架可以分为（）、服务技术和通信技术三个部分。', 'A：组件技术', 'B：中间件技术', 'C：网络技术', 'D：EJB组件 ', '', 'A  ', '4', '1', '代思豪', '老王', '2014-02-24 00:00:00', '2013-02-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('934', '4', '1', '中', 'Hibernate实体类的三种状态分别是：瞬态、持久态、托管态', 'A:正确', 'B：错误', '', '', '', 'A  ', '4', '1', '代思豪', '老王', '2014-02-25 00:00:00', '2013-02-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('935', '4', '1', '中', '在Struts实现的MVC框架中，充当中央控制器的是', 'A:Action', 'B:EJB ', 'C:ActionServlet ', 'D:JSP', '', 'C', '4', '1', '代思豪', '老王', '2014-02-26 00:00:00', '2013-02-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('936', '4', '1', '中', '在基于Struts框架的Web应用中，下面关于Action类的说法正确的是？', 'A：Action类属于模型组件', 'B：Action类主要用来完成实际的业务逻辑', 'C：Action类负责调用模型的方法，更新模型的状态， 并帮助控制应用程序的流程', 'D：在Web应用启动时会自动加载所有的Action实例 ', '', 'C', '4', '1', '代思豪', '老王', '2014-02-27 00:00:00', '2013-02-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('937', '4', '1', '中', '在基于Struts框架的Web应用中，下面关于ActionForm Bean的说法正确是', 'A：ActionForm Bean用来完成一些实际的业务逻辑', 'B：Struts框架利用ActionForm Bean来进行视图和控制器之间表单数据的传递', 'C：ActionForm负责调用模型的方法，更新模型的状态', 'D：ActionForm Bean包含一些特殊的方法，用于验证表单数据以及将其属性重新设置为默认值', '', 'D', '4', '1', '代思豪', '老王', '2014-02-28 00:00:00', '2013-02-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('938', '4', '1', '中', '下面对于Struts控制器组件的说法正确的是', 'A:对于多应用模块的Struts应用，每个子应用都有各自的ActionServlet实例', 'B:在Struts应用的生命周期中，可以创建ActionServlet的多个实例', 'C:Action组件是1显示那个视图来返还给用户', 'D:Struts框架中只允许在一个应用中配置一个Action类', '', 'B', '4', '1', '代思豪', '老王', '2014-03-01 00:00:00', '2013-02-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('939', '4', '1', '中', '资源文件的后缀名为?', 'A:txt', 'B:doc ', 'C:property', 'D:properties ', '', 'D', '4', '1', '代思豪', '老王', '2014-03-02 00:00:00', '2013-03-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('940', '4', '1', '中', '在strutrs2中数据验证失败时,通过（）标签显示错误信息', 'A:<s:text>', 'B:<s:error>', 'C:<s:faild>', 'D:<s:fielderror>', '', 'D', '4', '1', '代思豪', '老王', '2014-03-03 00:00:00', '2013-03-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('941', '4', '1', '中', '以下配置文件上传拦截器只允许bmp图片文件代码，正确的是', 'A:<param name=\"allowedTypes\">*.bmp </param> ', 'B:<param name=\"allowedTypes\">bmp </param> ', 'C:<param name=\"allowedTypes\">image/*.bmp </param> ', 'D:<param name=\"allowedTypes\">image/bmp </param> ', '', 'D', '4', '1', '代思豪', '老王', '2014-03-04 00:00:00', '2013-03-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('942', '4', '1', '中', '假设在Session中存在名称为uid属性。通过OGNL访问该属性,正确的代码是', 'A：#uid', 'B：#session.id', 'C：uid', 'D：${session.id}', '', 'B', '4', '1', '代思豪', '老王', '2014-03-05 00:00:00', '2013-03-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('943', '4', '1', '低', '数据库、报表、查询和视图', 'A:Action B:ActionForm', 'B：数据库、报表、查询和视图', 'C:ActionServlet', 'D:dispatchAction', 'E：', 'A', '6', '1', '代思豪', '老王', '2014-03-06 00:00:00', '2013-03-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('944', '4', '1', '中', '以下属于struts2的体系结构的是', 'A:struts2控制器组件     ', 'B:struts2配置文件', 'C：FilterDispatcher', ' D.Action', 'E：', 'AB', '4', '1', '代思豪', '老王', '2014-03-07 00:00:00', '2013-03-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('945', '4', '1', '高', '关于struts1和struts2对比的说法正确的是', 'A:struts1要求Action类继承其框架中的Action父类，struts2则不一定需要继承，可以是POJO类', 'B：struts1的Action不是线程安全的，struts2的Action是线程安全的', 'C：struts1和struts2都使用ActionForm对象封装用户的请求数据', 'D：struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值', 'E：', 'A', '4', '1', '代思豪', '老王', '2014-03-08 00:00:00', '2013-03-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('946', '4', '1', '低', '在struts配置中用（）元素配置常量', 'A:<const>', 'B:<constants>', 'C：<constant>', 'D:<constant-mapping>', 'E：', 'C', '6', '1', '代思豪', '老王', '2014-03-09 00:00:00', '2013-03-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('947', '4', '1', '中', 'struts2中获取Servlet API的方法正确的是', 'A:使用ActionContext对象以解耦合的方式访问Servlet API', 'B：使用ServletActionContext对象以解耦合的方式访问Servlet API', 'C：使用ActionContext对象以耦合的方式访问Servlet API', 'D：使用ActionContext对象以耦合的方式访问Servlet API', 'E：', 'AD', '2', '1', '代思豪', '老王', '2014-03-10 00:00:00', '2013-03-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('948', '4', '1', '高', 'struts2动态调用的格式为', 'A:ActionName?methodName.action', 'B：ActionName!methodName.action', 'C：ActionName*methodName.action', 'D：ActionName@methodName.action', 'E：', 'B', '4', '1', '代思豪', '老王', '2014-03-11 00:00:00', '2013-03-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('949', '4', '1', '低', '如果要实现struts2的数据检验功能', 'A:普通的Action类可以实现', 'B：继承自Action接口的可以实现', 'C：继承自ActionSupport类可以实现', 'D：继承自ActionValidate类可以实现', 'E：', 'C', '6', '1', '代思豪', '老王', '2014-03-12 00:00:00', '2013-03-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('950', '4', '1', '中', '如果要实现自定义处理结果，需要继承哪个类', 'A:Dispatcher', 'B：StrutsResultSupport', 'C：Support', 'D：Action', 'E：', 'B', '4', '1', '代思豪', '老王', '2014-03-13 00:00:00', '2013-03-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('951', '4', '1', '高', '实现动态返回结果，在配置<resule>元素时使用（）指定视图资源', 'A:${属性名}', 'B：@{属性名}', 'C：${\'属性名\'}', 'D：${\"属性名\"}', 'E：', 'C', '6', '1', '代思豪', '老王', '2014-03-14 00:00:00', '2013-03-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('952', '4', '1', '低', '自定义转换器继承的抽象类是', 'A:只有全局注册方式', 'B：只有局部注册方式', 'C：只有全局和局部注册方式', 'D：以上的说法都不对', 'E：', 'C', '2', '1', '代思豪', '老王', '2014-03-15 00:00:00', '2013-03-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('953', '1', '1', '低', 'Java程序中的起始类名称必须与存放该类的文件名相同。', 'A、正确', 'B、错误', '', '', '', 'A', '2', '1', '代思豪', '老王', '2014-03-16 00:00:00', '2013-03-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('954', '1', '1', '低', '原生类中的数据类型均可任意转换。', 'A、正确', 'B、错误', '', '', '', 'B', '2', '1', '代思豪', '老王', '2014-03-17 00:00:00', '2013-03-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('955', '1', '1', '低', '在使用super 和this关键字时，以下描述正确的是', 'A) 在子类构造方法中使用super（）显示调用父类的构造方法，super（）必须写在子类构造方法的第一行，否则编译不通过', 'B) super（）和this（）不一定要放在构造方法内第一行', 'C) this（）和super（）可以同时出现在一个构造函数中', 'D) this（）和super（）可以在static环境中使用，包括static方法和static语句块', '', 'A', '2', '1', '代思豪', '老王', '2014-03-18 00:00:00', '2013-03-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('956', '1', '1', '低', '以下对封装的描述正确的是', 'A) 只能对一个类中的方法进行封装，不能对属性进行封装', 'B) 如果子类继承了父类，对于父类中进行封装的方法，子类仍然可以直接调用', 'C) 封装的意义不大，因此在编码时尽量不要使用', 'D) 封装的主要作用在于对外隐藏内部实现细节，增强程序的安全性\n', '', 'D', '2', '1', '代思豪', '老王', '2014-03-19 00:00:00', '2013-03-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('957', '1', '1', '低', '以下对继承的描述错误的是', 'A:Java中的继承允许一个子类继承多个父类', 'B) 父类更具有通用性，子类更具体', 'C) Java中的继承存在着传递性', 'D) 当实例化子类时会递归调用父类中的构造方法', '', 'A', '2', '1', '代思豪', '老王', '2014-03-20 00:00:00', '2013-03-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('958', '1', '1', '低', '访问修饰符作用范围由大到小是', 'A) private-default-protected-public', 'B) public-default-protected-private', 'C) private-protected-default-public', 'D) public-protected-default-private', '', 'D', '2', '1', '代思豪', '老王', '2014-03-21 00:00:00', '2013-03-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('959', '1', '2', '中', '接口和抽象类描述正确的有', 'A) 抽象类没有构造函数', 'B) 接口没有构造函数', 'C) 抽象类不允许多继承', 'D) 接口中的方法可以有方法体', '', 'BC', '4', '1', '代思豪', '老王', '2014-03-22 00:00:00', '2013-03-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('960', '1', '1', '中', '给定某java程序片段，如下： int i=1; int j=i++; if((i>++j)&&(i++==j)) i+=j; System.out.println(i);该程序运行后，i的输出结果为', 'A、1 ', 'B、2', 'C、3 ', 'D、4 ', '', 'B', '4', '1', '代思豪', '老王', '2014-03-23 00:00:00', '2013-03-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('961', '1', '1', '中', '给定java代码片段，如下：int i=0,j=-1; switch(i){ case 0,1:j=1; case 2:j=2; } System.out.print(\"j=\"+j);编译运行，正确的是', 'A、程序编译出错', 'B、j=1', 'C、j=2', 'D、j=0 ', '', 'C', '4', '1', '代思豪', '老王', '2014-03-24 00:00:00', '2013-03-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('962', '1', '2', '高', '下列说法错误的有', 'A．能被java.exe成功运行的java class文件必须有main()方法', 'B．J2SDK就是Java API', 'C． Appletviewer.exe可利用jar选项运行.jar文件\n\n  ', 'D．能被Appletviewer成功运行的java class文件必须有main()方法', '', 'BCD', '6', '1', '代思豪', '老王', '2014-03-25 00:00:00', '2013-03-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('963', '1', '1', '低', 'double型数据所占字节数是：', 'A:2', 'B：2', 'C：6', 'D：8', 'E：', 'A', '2', '1', '代思豪', '老王', '2014-03-26 00:00:00', '2013-03-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('965', '1', '1', '高', '以下的选项中能正确表示Java语言中的一个整型常量的是(  )。', ' A) 12', 'B) -20', ' C) 1,000 D) 4  5  6 ', '', '', 'B', '6', '1', '代思豪', '老王', '2014-03-28 00:00:00', '2013-03-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('966', '1', '1', '低', '下列的变量定义中，错误的是', 'A) int _a=123; ', 'B) long j=12345678900L; ', 'C) int m,n;', 'D) static i=100;', '', 'D', '2', '1', '代思豪', '老王', '2014-03-29 00:00:00', '2013-03-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('967', '1', '1', '低', '以下字符常量中不合法的是', 'A) \'@\'', 'B) \'&\'', ' C) \"k\"', ' D) \'整\'', '', 'C', '2', '1', '代思豪', '老王', '2014-03-30 00:00:00', '2013-03-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('968', '1', '1', '低', '下列说法正确的是', 'A、 JAVA程序的main方法必须写在类里面 ', 'B、 JAVA程序中可以有多个main方法 ', 'C、 JAVA程序中类名必须与文件名一样', 'D、 JAVA程序的main方法中如果只有一条语句，可以不用{}(大括号)括起来', '', 'A', '2', '1', '代思豪', '老王', '2014-03-31 00:00:00', '2013-03-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('969', '1', '1', '中', '运算符优先级别排序正确的是', 'A、 由高向低分别是：()、!、算术运算符、关系运算符、逻辑运算符、赋值运算符；', 'B.由高向低分别是：()、关系运算符、算术运算符、赋值运算符、!、逻辑运算符；', 'C、由高向低分别是：()、算术运算符、逻辑运算符、关系运算符、!、赋值\n运算符；', 'D、由高向低分别是：()、!、关系运算符、赋值运算符、算术运算符、逻辑\n运算符；', '', 'A', '4', '1', '代思豪', '老王', '2014-04-01 00:00:00', '2013-03-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('970', '1', '1', '中', '在java中下列关于自动类型转换说法正确的是', 'A、 基本数据类型和String相加结果一定是字符串型 ', 'B、char类型和int类型相加结果一定是字符 ', 'C、double类型可以自动转换为int', 'D、char + int + double +\"\" 结果一定是double；', '', 'A', '4', '1', '代思豪', '老王', '2014-04-02 00:00:00', '2013-04-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('971', '1', '1', '中', '以下（ ）代码，能够对数组正确初始化（或者是默认初始化）。', 'A、 int[] a; ', 'B、 a = {1, 2, 3, 4, 5};', 'C.int[] a = new int[5]{1, 2, 3, 4, 5};', 'D.int[] a = new int[5]; ', '', 'D', '4', '1', '代思豪', '老王', '2014-04-03 00:00:00', '2013-04-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('972', '1', '1', '高', '在JAVA中，以下（ ）类的对象以键-值的方式存储对象', 'A、 java.util.List', 'B.java.util.ArrayList ', 'C.java.util.HashMap', 'D、java.util.LinkedList', '', 'C', '6', '1', '代思豪', '老王', '2014-04-04 00:00:00', '2013-04-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('973', '1', '1', '低', '下列选项中正确的表达式是：', 'A:byte b=128;', 'B:boolean n=null;', 'C:double d=0.313d;', 'D:float f=0.823;', '', 'C', '2', '1', '代思豪', '老王', '2014-04-05 00:00:00', '2013-04-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('974', '1', '1', '低', '下列标识符哪个是合法的（  ）', 'A:class', 'B:$abc', 'C:1234', 'D:_name  age ', '', 'D', '2', '1', '代思豪', '老王', '2014-04-06 00:00:00', '2013-04-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('975', '1', '1', '低', '你想一个类存取同一个包中的另一个类中成员，哪一个存取修饰符限制的最严格?', 'A:public ', 'B:private', 'C:protected', 'D:不需要任何修饰符', '', 'A', '2', '1', '代思豪', '老王', '2014-04-07 00:00:00', '2013-04-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('976', '1', '1', '低', '下列选项中的表达式哪个返回true？', 'A:\"john\"!=\"john\"', 'B:\"john\".equals(\"john\")', 'C:\"john\" = \"john\"', 'D:\"john\".equals(new Button(\"john\"))', '', 'B', '2', '1', '代思豪', '老王', '2014-04-08 00:00:00', '2013-04-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('977', '1', '1', '低', '若在一个for语句中加入break语句，它可以', '', '', '', '', '', 'B', '2', '1', '代思豪', '老王', '2014-04-09 00:00:00', '2013-04-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('978', '1', '1', '低', '在Java中，下列语句不能通过编译的有（  ）', 'A:String s=“join”+3;', 'B. int a= “join”+3;', 'C. int a= ‘a’+5;', '\nD. float f=5+5.5F;', '', '', '2', '1', '代思豪', '老王', '2014-04-10 00:00:00', '2013-04-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('979', '1', '1', '低', '以下数据类型中，不是基本数据类型的是（）\n\n\n', 'A.byte   ', 'B.String', 'C.boolean', 'D.char', '', 'B', '2', '1', '代思豪', '老王', '2014-04-11 00:00:00', '2013-04-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('980', '1', '1', '低', '基本数据类型byte的取值范围是：\n', 'A.0 ~ 65, 535', 'B.(–128) ~ 127', 'C.(–32,768) ~ 32,767', '\nD.(–256) ~ 255', '', 'B', '2', '1', '代思豪', '老王', '2014-04-12 00:00:00', '2013-04-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('981', '1', '1', '低', '下列关于类的继承的描述，正确的有（  ）', 'A. 一个类可以同时继承多个父类', 'B. 一个类也只能有一个子类', 'C. 子类能够直接调用父类所有的方法', 'D. 一个类继承另一个类需要使用 extends 关键字', '', 'D', '2', '1', '代思豪', '老王', '2014-04-13 00:00:00', '2013-04-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('982', '1', '1', '低', 'D. 一个类继承另一个类需要使用 extends 关键字\n', 'A.float f=1.3f;', 'B.char c =’a’;', 'C.byte b = 57;', 'D.boolean b = null;', '', 'D', '2', '1', '代思豪', '老王', '2014-04-14 00:00:00', '2013-04-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('983', '1', '1', '中', '在java中，访问修饰符限制性最高的是（）', 'A:private', 'B：protected', 'C：public', 'D：默认', '', 'A', '4', '1', '代思豪', '老王', '2014-04-15 00:00:00', '2013-04-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('984', '1', '1', '低', '对象的特征在类中表示为变量，称为类的', 'A：对象', 'B:属性', 'C:方法', 'D：数据类型', '', 'B', '2', '1', '代思豪', '老王', '2014-04-16 00:00:00', '2013-04-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('985', '1', '1', '低', '在java中，（）关键字用来终止循环语句。', 'A：return', 'B:continue', 'C:break', 'D：exit', '', 'C', '2', '1', '代思豪', '老王', '2014-04-17 00:00:00', '2013-04-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('986', '1', '1', '低', '什么修饰符不能用于顶层类', 'A:public ', 'B:private', 'C:abstract', 'D:fina', '', 'B', '2', '1', '代思豪', '老王', '2014-04-18 00:00:00', '2013-04-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('987', '1', '1', '低', '请问，以下哪些是合法的标识符？', 'A:%abcd ', 'B:Sabcd ', 'C:labcd ', 'D:package', '', 'D', '2', '1', '代思豪', '老王', '2014-04-19 00:00:00', '2013-04-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('988', '1', '1', '中', 'JAVA语言中一个长整数由几位字节表示？', 'A:2', 'B:8', 'C:16', 'D:64', '', 'C', '4', '1', '代思豪', '老王', '2014-04-20 00:00:00', '2013-04-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('989', '1', '1', '低', '以下哪些语句用于获取数组中元素的个数？', 'A:intArray.size', 'B:intArray.size()', 'C:intArray.length;', 'D:intArray.length()', '', 'C', '2', '1', '代思豪', '老王', '2014-04-21 00:00:00', '2013-04-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('990', '1', '1', '中', '对象的特征在类中表示为变量，称为类的', 'A：对象', 'B:属性', 'C:方法', 'D：数据类型', '', 'B', '4', '1', '代思豪', '老王', '2014-04-22 00:00:00', '2013-04-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('991', '1', '1', '低', '在java中，（）关键字用来终止循环语句。', 'A：return', 'B:continue', 'C:break', 'D：exit', '', 'C', '2', '1', '代思豪', '老王', '2014-04-23 00:00:00', '2013-04-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('992', '1', '1', '低', '对象的特征在类中表示为变量，称为类的', 'A：对象', 'B:属性', 'C:方法', 'D：数据类型', '', 'B', '2', '1', '代思豪', '老王', '2014-04-24 00:00:00', '2013-04-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('993', '2', '1', '中', '从以下哪个选项中可以获得Servlet的初始参数', 'A)Servlet', 'B)ServletContext', 'C)ServletConfig', 'D)GenericServlet', '', 'C', '4', '1', '代思豪', '老王', '2014-04-25 00:00:00', '2013-04-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('994', '2', '1', '低', 'JavaScript中的关系运算符不包含', 'A)==', 'B)<=', 'C)>=', 'D)<', '', 'A', '2', '1', '代思豪', '老王', '2014-04-26 00:00:00', '2013-04-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('995', '2', '1', '高', '代码var count=Math.ceil(Math.random()*30)+90 ，count值为：', 'A)90<=count<=120', 'B)90<count<=120', 'C)90<=count<120', 'D)90<count<120', '', 'A', '6', '1', '代思豪', '老王', '2014-04-27 00:00:00', '2013-04-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('996', '2', '1', '低', '在注册时有1男、女的两个1按钮，下列（）关键字可以将其中一个默认设为选中', 'A、charset', 'B、checked ', 'C、content', 'D、coords', '', 'B', '2', '1', '代思豪', '老王', '2014-04-28 00:00:00', '2013-04-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('997', '2', '1', '高', '字符串str=\"welcome to Beijing\"进行下列操作处理，描述结果错误的是', 'A、str.length的返回值是\"18\"', 'B、str.substring(4,9)返回值是\"omet\"', 'C、str.charAt(\"4\")返回值是\"c\"', 'D、str.toUpperCase()的返回值是\"WELCOME TO BEIJING\"', '', 'B', '6', '1', '代思豪', '老王', '2014-04-29 00:00:00', '2013-04-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('998', '2', '1', '低', '在进行表单验证时，当填写的文本框信息有错误时，通常会在文本框后面用红色的特殊字体显示错误信息，那么这种即时错误信息在文本框发生了什么事件后产生的？', 'A、onFocus', 'B、onBlur', 'C、onChange', 'D、onClick', '', 'B', '2', '1', '代思豪', '老王', '2014-04-30 00:00:00', '2013-04-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('999', '2', '1', '低', '在JavaScript中var name=new Array(12)是表示', 'A、创建了一个名称为name、定义字符长度为12', 'B、创建了一个名称为name、定义字节长度为12', 'C、创建了一个名称为name、有12元素的数组', 'D、以上三者都不是', '', 'C', '2', '1', '代思豪', '老王', '2014-05-01 00:00:00', '2013-04-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1000', '2', '1', '中', '对代码var e=document.getElementsByName(\"js\")理解正确是', 'A、将var e改为var object e更好', 'B、document.getElementsByName(\"js\")表示获得ID为js的标签', 'C、document.getElementsByName(\"js\")和document.getElementsById(\"js\")是效的', 'D、e是name值为js的标签数组', '', 'D', '4', '1', '代思豪', '老王', '2014-05-02 00:00:00', '2013-05-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1001', '2', '1', '低', '在JavaScript的表达式parseInt(\"8.1\")+parseFloat(\"8.1\")+parseInt(\"8.1\")的结果是', 'A、88.18  ', 'B、24.3', 'C、\"8.1\"+\"8.1\"', 'D、8.18.18.1', '', 'A', '2', '1', '代思豪', '老王', '2014-05-03 00:00:00', '2013-05-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1002', '2', '1', '低', '在JavaScript中以下哪个变量名是非法的', 'A、_loves1', 'B、8loves', 'C、Loves', 'D、love@$s', '', 'B', '2', '1', '代思豪', '老王', '2014-05-04 00:00:00', '2013-05-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1003', '2', '1', '低', 'Servlet程序的入口点是：（ ） \n    ', 'A、init() ', 'B、main()', ' C、service()', ' D、doGet()', '', 'A', '2', '1', '熊小青', '老王', '2014-05-05 00:00:00', '2013-05-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1004', '2', '1', '低', '2、你的servlet类需要使用com.abc.Jsjx类，Jsjx.class文件应该放到以下哪个目录中？（） \n        ', 'A、WEB-INF/classes', 'B、WEB-INF/lib/jar', 'C、WEB-INF/jars', ' D、WEB-INF/classes/com/abc ', '', 'D', '2', '1', '熊小青', '老王', '2014-05-06 00:00:00', '2013-05-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1005', '2', '1', '低', '在WEB应用程序的目录结构中，在WEB-INF文件夹中的lib目录是放()文件的。 \n    ', 'A、.jsp文件', 'B、.class文件 ', 'C、.jar文件 ', 'D、web.xml文件 ', '', 'C', '2', '1', '熊小青', '老王', '2014-05-07 00:00:00', '2013-05-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1006', '2', '1', '低', '看下列HTML标签： <html> \n<body><a href=”/servlet/MyServlet”>Hello World</a> </body> </html> \n点击超级链接后下列哪一个servlet方法将被调用：（）\n       ', 'A、doGet', 'B、doPost', 'C、Get', 'D、Post ', '', 'A', '2', '1', '熊小青', '老王', '2014-05-08 00:00:00', '2013-05-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1007', '2', '1', '低', '7、 servlet 的生命周期又一系列事件组成，把这些事件按照先后顺序排序，以下正确的是（） \n\n \n\n ', 'A、 加载类，实例化，请求处理，初始化，销毁', 'B、 加载类，实例化，初始化，请求处理，销毁', 'C、 实例化，加载类，初始化，请求处理，销毁', 'D、 加载类，初始化，实例化，请求处理，销毁章 ', '', 'B', '2', '1', '熊小青', '老王', '2014-05-09 00:00:00', '2013-05-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1008', '2', '1', '低', '11、Servlet中，使用（）接口中定义的（）方法来处理客户端发出的表单数据请求（） \n   \n ', 'A、HttpServlet  doHead ', 'B、HttpServlet  doPost ', 'C、ServletRequest  doGet ', ' D、ServletRequest  doPost', '', 'B', '2', '1', '熊小青', '老王', '2014-05-10 00:00:00', '2013-05-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1009', '2', '1', '低', '下面哪一个不是JSP本身已加载的基本类？（）  \n  ', 'A、java.lang.*  ', 'B、java.io.*', 'C、javax.servlet.*  ', 'D、javax.servlet.jsp.* ', '', 'B', '2', '1', '熊小青', '老王', '2014-05-11 00:00:00', '2013-05-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1010', '2', '1', '低', '27、在JSP中，（）动作用于将请求转发给其他JSP页面。  \n            ', 'A、forward ', 'B、include ', 'C、useBean', ' D、setProperty ', '', 'A', '2', '1', '熊小青', '老王', '2014-05-12 00:00:00', '2013-05-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1011', '2', '1', '低', '28、在2中，在一个JSP文件中，有表达式<%=2+3 %>，它将输出（）。 \n           ', 'A、2+3  ', 'B、5 ', 'C、23 ', 'D、不会输出，因为表达式是错误的 ', '', 'B', '2', '1', '熊小青', '老王', '2014-05-13 00:00:00', '2013-05-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1012', '2', '1', '低', '4、下述选项中不属于JDBC基本功能的是：（  ） \n   ', 'A:与数据库建立连接 ', ' B:提交SQL语句', 'C:处理查询结果', '  D:数据库维护 管理  ', '', 'D', '2', '1', '熊小青', '老王', '2014-05-14 00:00:00', '2013-05-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1013', '2', '1', '低', '表单数据的提交方法有两种, （）方法使得数据由标准的输入设备读入。', 'A.Get', 'B. Post', 'C.Read', 'D.Input', '', 'B', '2', '1', '熊小青', '老王', '2014-05-15 00:00:00', '2013-05-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1014', '2', '1', '低', '在表单提交的数据中，如果变量的值有多个，这时应调用()方法', 'A.getParameterValues() ', 'B.getParameter() ', 'C.getParameterNames()', 'D.getAttribute()', '', 'A', '2', '1', '熊小青', '老王', '2014-05-16 00:00:00', '2013-05-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1015', '2', '1', '中', 'Servlet的事件驱动由（）实现', 'A. Filter', 'B.ListenerC.Response', '', 'D. Request', '', 'B', '2', '1', '熊小青', '老王', '2014-05-17 00:00:00', '2013-05-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1016', '2', '1', '中', '标记名称由两部分组成,()用来区分不同标记库', 'A. 后缀', 'B. 前缀', 'C.JSP', 'D. bean ', '', 'B', '4', '1', '熊小青', '老王', '2014-05-18 00:00:00', '2013-05-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1017', '2', '1', '中', '客户机对Servlet的请求和Servlet对客户端的响应，都是通过()来实现的。', 'A、EJB', 'B.XML', 'C、API ', 'D、Web服务器', '', 'D', '4', '1', '熊小青', '老王', '2014-05-19 00:00:00', '2013-05-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1018', '2', '1', '高', '获取数据库连接的方法是 （）', 'A、Connection()', 'B、getConnection() ', 'C、Con', 'D、getContent() ', '', 'B', '4', '1', '熊小青', '老王', '2014-05-20 00:00:00', '2013-05-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1019', '2', '1', '中', '（）用来获取一个已被创建的JavaBean组件的属性值。', 'A、<jsp:getProperty>', 'B、<Bean:getProperty>', 'C、<jsp:getAttrib> ', 'D.<JavaBean:getProperty> \n', '', 'A', '6', '1', '熊小青', '老王', '2014-05-21 00:00:00', '2013-05-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1020', '2', '1', '中', 'core标记库主要的标记有', 'A.通用标记；流程控制标记；URL标记', 'B、1标记；循环标记', 'C、sql标记；xml标记；FN标记', 'D、以上都是', '', 'A', '4', '1', '熊小青', '老王', '2014-05-22 00:00:00', '2013-05-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1021', '2', '1', '中', '在WAR文件中，web.xml放在哪个目录中', 'A. WEB-INF ', 'B. APP-IN', 'C. META-INF', 'D.WEB-INF\\lib', '', 'A', '4', '1', '熊小青', '老王', '2014-05-23 00:00:00', '2013-05-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1022', '2', '1', '高', 'Servlet获得初始化参数的对象是（）', 'A.RequestB、Response ', '', 'C、ServletConfig', 'D、ServletContext', '', 'C', '6', '1', '熊小青', '老王', '2014-05-24 00:00:00', '2013-05-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1023', '2', '1', '中', 'OGNL语言的访问前缀是', 'A:$符号', 'B:@符号', 'C:#符号', 'D:&符号', '', 'C', '4', '1', '熊小青', '老王', '2014-05-25 00:00:00', '2013-05-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1024', '2', '1', '低', '以下哪些不属于Session的方法', 'A:load()', 'B:save()', 'C:open()', 'D:saveOrUpdate()', '', 'C', '2', '1', '熊小青', '老王', '2014-05-26 00:00:00', '2013-05-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1025', '2', '1', '中', 'POJO作用是', 'A:普通的Javabean', 'B:数据访问', 'C：对象赋值', 'D:保存客户端对象', '', 'C', '4', '1', '熊小青', '老王', '2014-05-27 00:00:00', '2013-05-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1026', '2', '1', '低', '资源文件的后缀名是', 'A：txt', 'B:doc', 'C:property', 'D:properties', '', 'D', '2', '1', '熊小青', '老王', '2014-05-28 00:00:00', '2013-05-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1027', '2', '1', '中', '在持久化层，对象分为的状态不包括', 'A：瞬时', 'B：新建', 'C：脱管', 'D：持久', '', 'B', '4', '1', '熊小青', '老王', '2014-05-29 00:00:00', '2013-05-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1028', '2', '1', '低', '在下列的 HTML 中，哪个可以产生复选框', 'A：<input type=\"check\">', 'B：<checkbox>', 'C：<input type=\"checkbox\">', 'D：<check>', '', 'C', '2', '1', '熊小青', '老王', '2014-05-30 00:00:00', '2013-05-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1029', '2', '1', '中', '在 HTML 文档中，引用外部样式表的正确位置是', 'A：文档的末尾', 'B：文档的顶部', 'C：<body> 部分', 'D：<head> 部分', '', 'D', '4', '1', '熊小青', '老王', '2014-05-31 00:00:00', '2013-05-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1030', '2', '1', '低', '下列哪个选项的 CSS 语法是正确的', 'A：body:color=black', 'B：{body:color=black(body}', 'C：body {color: black}', 'D：{body;color:black}', '', 'C', '2', '1', '熊小青', '老王', '2014-06-01 00:00:00', '2013-05-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1031', '2', '1', '中', '在下列HTML中，哪个是最大的标题', 'A：<h6>', 'B：<head>', 'C：<heading>', 'D：<h1>', '', 'D', '4', '1', '熊小青', '老王', '2014-06-02 00:00:00', '2013-06-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1032', '2', '1', '低', '请1产生粗体字的 HTML 标签：', 'A：<bold>', 'B：<bb>', 'C：<b>', 'D：<bld>', '', 'A', '2', '1', '熊小青', '老王', '2014-06-03 00:00:00', '2013-06-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1033', '3', '1', '低', 'SQL语句中修改表结构的命令是', 'A、MODIFY TABLE', 'B、MODIFY STRUCTURE', 'C、ALTER TABLE', 'D、ALTER STRUCTURE ', '', 'C', '2', '1', '熊小青', '老王', '2014-06-04 00:00:00', '2013-06-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1034', '3', '1', '高', '如果要创建一个数据组分组报表，第一个分组表达式是\"部门\"，第二个分组表达式是\"性别\"，第三个分组表达式是\"基本工资\"，当前索引的索引表达式应当是', 'A、部门+性别+基本工资', 'B、部门+性别+STR(基本工资)', 'C、STR(基本工资)+性别+部门', 'D、性别+部门+STR(基本工资) ', '', 'B', '6', '1', '熊小青', '老王', '2014-06-05 00:00:00', '2013-06-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1035', '3', '1', '中', '只有满足联接条件的记录才包含在查询结果中，这种联接为', 'A、左联接', 'B、右联接', 'C、内部联接', 'D、完全联接', '', 'C', '4', '1', '熊小青', '老王', '2014-06-06 00:00:00', '2013-06-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1036', '3', '1', '中', '用二维表数据来表示实体及实体之间联系的数据模型称为', 'A、实体--联系模型', 'B、层次模型', 'C、网状模型', 'D、关系模型', '', 'D', '4', '1', '熊小青', '老王', '2014-06-07 00:00:00', '2013-06-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1037', '3', '1', '中', '下列函数中函数值为字符型的是', 'A、DATE()', 'B、TIME()', 'C、YEAR()', 'D、DATETIME()', '', 'B', '4', '1', '熊小青', '老王', '2014-06-08 00:00:00', '2013-06-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1038', '3', '1', '低', 'DBAS指的是', 'A、数据库管理系统', 'B、数据库系统', 'C、数据库应用系统', 'D、数据库服务系统', '', 'C', '2', '1', '熊小青', '老王', '2014-06-09 00:00:00', '2013-06-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1039', '3', '1', '高', '在数据库设计器中，建立两个表之间的一对多联系是通过以下索引实现的', 'A、\"一方\"表的主索引或候选索引，\"\n多方\"表的普通索引', 'B、\"一方\"表的主索引，\"多方\"表的普通索引或候选索引', 'C、\"一方\"表的普通索引，\"多方\"表的主索引或候选索引', 'D、\"一方\"表的普通索引，\"多方\"表的候选索引或普通索引', '', 'A', '6', '1', '熊小青', '老王', '2014-06-10 00:00:00', '2013-06-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1040', '3', '1', '中', '视图设计一般有3种设计次序，下列不属于视图设计的是', 'A、自顶向下', 'B、由外向内', 'C、由内向外', 'D、自底向上', '', 'B', '4', '1', '熊小青', '老王', '2014-06-11 00:00:00', '2013-06-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1041', '3', '1', '中', '设有两个数据库表，父表和子表之间是一对多的联系，为控制子表和父表的关联，可以设置\"参照完整性规则\"，为此要求这两个表', 'A：在父表连接字段上建立普通索引，在子表连接字段上建立主索引', 'B：在父表连接字段上建立主索引，在子表连接字段上建立普通索引', 'C：在父表连接字段上不需要建立任何索引，在子表连接字段上建立普通索引', 'D：在父表和子表的连接字段上都要建立主索引', '', 'B', '4', '1', '熊小青', '老王', '2014-06-12 00:00:00', '2013-06-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1042', '3', '1', '中', '用树形结构来表示实体之间联系的模型称之为', 'A. 关系模型', 'B.层次模型', 'C.网状模型', 'D.数据模型', '', 'B', '4', '1', '熊小青', '老王', '2014-06-13 00:00:00', '2013-06-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1043', '3', '1', '低', ' 联接有内联接､外联接和交叉联接,其中外联接只能对______表进行｡\n         ', ' A:两个  ', ' B:三个', 'C:四个 ', 'D:任意个', '', 'A', '2', '1', '熊小青', '老王', '2014-06-14 00:00:00', '2013-06-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1044', '3', '1', '低', ' 使用关键字__   _ 可以把查询结果中的重复行屏蔽｡            ', ' A:DISTINCT ', 'B:UNION   ', 'C:ALL  ', 'D:TOP', '', 'A', '2', '1', '熊小青', '老王', '2014-06-15 00:00:00', '2013-06-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1045', '3', '1', '低', '下面关于唯一索引描述不正确的是:        ｡ \n\n ', 'A:某列创建了唯一索引则这一列为主键 ', ' B:不允许插入重复的列值 ', 'C:某列创建为主键,则该列会自动创建唯一索引 ', 'D:一个表中可以有多个唯一索引', '', 'A', '2', '1', '熊小青', '老王', '2014-06-16 00:00:00', '2013-06-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1046', '3', '1', '低', ' 以下关于视图的描述中,错误的是_______｡ \n\n\n', 'A:视图不是真实存在的基础表,而是一张虚表 \n', 'B:当对通过视图看到的数据进行修改时,相应的基本表的数据也要发生变化\n', ' C:在创建视图时,若其中某个目标列是聚合函数时,必须指明视图的全部列名', ' D:在一个语句中,一次可以修改一个以上的视图对应的基表', '', 'D', '2', '1', '熊小青', '老王', '2014-06-17 00:00:00', '2013-06-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1047', '3', '1', '低', ' 在数据库中,可以有 个主键｡', '     \nA:一个', 'B:二个', ' C:三个', 'D:任意多个', '', ' A ', '2', '1', '熊小青', '老王', '2014-06-18 00:00:00', '2013-06-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1048', '3', '1', '低', ' 设R是一个关系模式,如果R中的每个属性都是不可分解的,则称R属于      ｡ \n                               ', 'A:第一范式', 'B:第二范式', 'C:第三范式 ', ' D:BC范式 ', '', '  A ', '2', '1', '熊小青', '老王', '2014-06-19 00:00:00', '2013-06-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1049', '3', '1', '低', '在数据库设计过程使用  可以很好的描述数据处理系统中信息的变换和传递过程｡ \n                                 ', 'A:数据流图', 'B:数据字典', 'C:E-R图', ' D:系统流程图', '', 'A', '2', '1', '熊小青', '老王', '2014-06-20 00:00:00', '2013-06-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1050', '3', '1', '低', ' JDBC API中用来执行SQL语句的对象是:      ｡ \n                               ', 'A:Connection', 'B:Statement', 'C:ResultSet ', 'D:DriverManager', '', 'B', '2', '1', '熊小青', '老王', '2014-06-21 00:00:00', '2013-06-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1051', '3', '1', '低', '\n 在SQL语言中授权的操作是通过(   )语句实现的｡\n                        \n', ' A:CREAT ', ' B:REVOKE ', 'C:GRANT', 'D:INSERT', '', 'C', '2', '1', '熊小青', '老王', '2014-06-22 00:00:00', '2013-06-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1052', '3', '1', '低', ' WHERE子句的条件表达式中.可以匹配0个到多个字符的通配符是(   )｡     \n          ', 'A:* ', 'B:% ', 'C:一 ', 'D:?', '', '  B ', '2', '1', '熊小青', '老王', '2014-06-23 00:00:00', '2013-06-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1053', '3', '1', '中', '以下关于数据的逻辑结构的叙述中，哪一条是不正确的？', 'A．数据的逻辑结构是数据间关系的描述', 'B．数据的逻辑结构抽象地反映数据元素间的逻辑关系', 'C．数据的逻辑结构具体地反映数据在计算机中的存储方式', 'D．数据的逻辑结构分为线性结构和非线性结构', '', 'C', '4', '1', '熊小青', '老王', '2014-06-24 00:00:00', '2013-06-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1054', '3', '1', '中', '以下关于链式存储结构的叙述中，哪一条是不正确的？', 'A．结点除自身信息外还包括指针域，因此存储密度小于顺序存储结构', 'B．逻辑上相邻的结点物理上不必邻接', 'C．可以通过计算直接确定第i个结点的存储地址', 'D．插入、删除运算操作方便，不必移动结点 ', '', 'C', '4', '1', '熊小青', '老王', '2014-06-25 00:00:00', '2013-06-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1055', '3', '1', '中', '下列关于文件索引结构的叙述中，哪一个是不正确的？', 'A．采用索引结构，逻辑上连续的文件存放在连续的物理块中', 'B．系统为每个文件建立一张索引表', 'C．索引结构的优点是访问速度快，文件长度可以动态变化', 'D．索引结构的缺点是存储开销大', '', 'A', '4', '1', '熊小青', '老王', '2014-06-26 00:00:00', '2013-06-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1056', '3', '1', '高', '从学生选课信息表中找出无成绩的元组\"的SQL语句是', 'A．SELECT * FROM sc WHERE grade=NULL', 'B．SELECT * FROM sc WHERE grade IS \' \' ', 'C．SELECT * FROM sc WHERE grade IS NULL', 'D．SELECT * FROM sc WHERE grade =\' \' ', '', 'C', '6', '1', '熊小青', '老王', '2014-06-27 00:00:00', '2013-06-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1057', '3', '1', '中', '在\"查询选修课程号为4，且成绩在80分以上的所有学生的学号和姓名\"的SQL语句中，\n将使用的表是', 'A．学生信息表S ', 'B．学生信息表S和课程信息表c ', 'C．学生信息表S、课程信息表c和学生选课信息表sc', 'D．学生信息表S和学生选课信息表sc ', '', 'D', '4', '1', '熊小青', '老王', '2014-06-28 00:00:00', '2013-06-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1058', '3', '1', '中', '数据库结构的描述和定义是DBMS运行的基本依据，它们存储于', 'A．封锁表B．数据字典', '', 'C．索引', 'D．日志', '', 'B', '4', '1', '熊小青', '老王', '2014-06-29 00:00:00', '2013-06-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1059', '3', '1', '中', '数据库管理系统的数据操纵语言(DML)所实现的操作一般包括', 'A．建立、授权、修改', 'B．建立、授权、删除', 'C．建立、插入、修改、排序', 'D．查询、插入、修改、删除', '', 'D', '4', '1', '熊小青', '老王', '2014-06-30 00:00:00', '2013-06-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1060', '3', '1', '高', '下列权限中，哪一个不是数据库的访问权限？', 'A．Read权限 ', 'B.Resource权限', 'C．Update权限 ', 'D．Lock权限', '', 'D', '6', '1', '熊小青', '老王', '2014-07-01 00:00:00', '2013-06-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1061', '3', '1', '中', 'E-R模型用于数据库设计的哪一个阶段？', 'A．需求分析', 'B．概念结构设计', 'C．逻辑结构设计', 'D．物理结构设计', '', 'B', '4', '1', '熊小青', '老王', '2014-07-02 00:00:00', '2013-07-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1062', '3', '1', '中', '在数据库中可以创建和删除表、视图、索引，可以修改表。这是因为数据库管理系统提\n供了', 'A）数据定义功能', 'B）数据操纵功能', 'C）数据维护功能', 'D）数据控制功能', '', 'A', '4', '1', '熊小青', '老王', '2014-07-03 00:00:00', '2013-07-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1063', '3', '1', '中', '候选关键字中的属性可以有', 'A．0个', ' B．1个', ' B．1个或多个', ' B．多个', '', 'C', '4', '1', '熊小青', '老王', '2014-07-04 00:00:00', '2013-07-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1064', '3', '1', '低', 'SQL语言中用（ ）语句实现事务的回滚 ', 'A. CREATE TABLE ', ' B. ROLLBACK', ' C. GRANT和REVOKE', 'D. COMMIT ', '', 'B', '2', '1', '熊小青', '老王', '2014-07-05 00:00:00', '2013-07-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1065', '3', '1', '低', '在数据库中存储的是', 'A．数据 ', '  B．数据模型', 'C．数据以及数据之间的联系', 'D．信息', '', 'A', '2', '1', '熊小青', '老王', '2014-07-06 00:00:00', '2013-07-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1066', '3', '1', '低', ' 一个关系只有一个（ ）', 'A.候选码', 'B. 外码', 'C. 超码', 'D. 主码', '', 'D', '2', '1', '熊小青', '老王', '2014-07-07 00:00:00', '2013-07-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1067', '3', '1', '低', '数据库管理系统（DBMS）是', 'A．数学软件', '  B．应用软件', 'C．计算机辅助设计', 'D．系统软件', '', 'D', '2', '1', '熊小青', '老王', '2014-07-08 00:00:00', '2013-07-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1068', '3', '1', '中', '数据库三级模式体系结构的划分，有利于保持数据库的', 'A．数据独立性', '  B．数据安全性', 'C．结构规范化', '  D．操作可行性', '', 'A', '4', '1', '熊小青', '老王', '2014-07-09 00:00:00', '2013-07-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1069', '3', '1', '中', ' 要保证数据库的数据独立性，需要修改的是（ ）', 'A. 模式与外模式', ' B. 模式与内模式 ', 'C. 三层之间的两种映射', 'D. 三层模式', '', 'C', '4', '1', '熊小青', '老王', '2014-07-10 00:00:00', '2013-07-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1070', '3', '1', '中', '设计关系模式是数据库设计中（ ）阶段的任务 ', 'A. 逻辑设计阶段', 'B. 概念设计阶段 ', 'C. 物理设计阶段', 'D. 需求分析阶段', '', 'B', '4', '1', '熊小青', '老王', '2014-07-11 00:00:00', '2013-07-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1071', '3', '1', '中', '在数据库中，产生数据不一致的根本原因是', 'A．数据存储量太大', ' B．没有严格保护数据', 'C．未对数据进行完整性控制', 'D．数据冗余', '', 'C', '4', '1', '熊小青', '老王', '2014-07-12 00:00:00', '2013-07-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1072', '3', '1', '低', '下列四项中，不属于数据库系统特点的是', ' A. 数据共享', ' B. 数据完整性', 'C. 数据冗余度高', 'D. 数据独立性高', '', 'C', '2', '1', '熊小青', '老王', '2014-07-13 00:00:00', '2013-07-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1073', '3', '1', '低', '以下关于HIbernate说法正确的是', 'A)Hibernate是ORM的一种实现方式。', 'B)Hibernate不要JDBC的支持。', 'C)属于控制层', 'D)对象关系映射，让对象同数据库表产生关系', '', 'A', '2', '1', '熊小青', '老王', '2014-07-14 00:00:00', '2013-07-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1074', '3', '1', '中', '下面关于SessionFactory的说法正确的是', 'A）SessionFactory是轻量级的，可以随意创建和销毁', 'B)SessionFactory是重量级的接口，不可以随意创建和销毁', 'C)SessionFactory是重量级的类，不可以随意创建和销毁。 ', 'D)SessionFactory是类', '', 'B', '4', '1', '熊小青', '老王', '2014-07-15 00:00:00', '2013-07-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1075', '3', '1', '中', '下面关于Hibernate中load和get的方法说法正确的是', 'A)两个方法是一样的，没有任何区别', 'B)两个方法是不一样的，get先找缓存，再找数据库', 'C)两个方法是不一样的，load每次都会找数据库。', 'D)以上说法都不对。', '', 'D', '4', '1', '熊小青', '老王', '2014-07-16 00:00:00', '2013-07-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1076', '3', '1', '中', '下面关于OPM的说法不正确的是', 'A)持久化是将程序中数据在瞬时状态和持久状态间转换的机制。', 'B)瞬时状态是指程序数据保存在内存中，程序退出时，数据就不存在了', 'C)把关系数据库中的数据读出来不属于持久化。', 'D)程序数据直接保存成文本文件属于持久化', '', 'C', '4', '1', '熊小青', '老王', '2014-07-17 00:00:00', '2013-07-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1077', '3', '2', '中', '以下属于struts2的体系结构的是：', 'A.struts2控制器组件', 'B.struts2配置文件', 'C.FilterDispathcer', 'D.Action', '', 'AB', '4', '1', '熊小青', '老王', '2014-07-18 00:00:00', '2013-07-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1078', '3', '2', '高', '关于struts2包的说法正确的是', 'A.struts2框架使用包来管理常量', 'B.struts2框架定义包时必须指定name属性', 'C.struts2框架中配置包时，必须继承自struts-default包，否则会报错', 'D.struts2框架中使用包来管理Action', '', 'BCD', '6', '1', '熊小青', '老王', '2014-07-19 00:00:00', '2013-07-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1079', '3', '2', '高', 'struts2中获取Servlet API的方法正确的是', 'A.使用ActionContext对象以解耦合的方法访问Servlet API', 'B.使用ServletActionContext对象以解耦合的方式访问Servlet API', 'C.使用ActionContext对象以耦合的方式访问Servlet API', 'D.使用ServletActionContext对象以耦合的方式访问Servlet API', '', 'AD', '6', '1', '熊小青', '老王', '2014-07-20 00:00:00', '2013-07-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1080', '3', '1', '低', 'Struts中的ActionServlet属于MVC模式', 'A、视图', 'B、模型', 'C、控制器', 'D、业务层', '', 'C', '2', '1', '熊小青', '老王', '2014-07-21 00:00:00', '2013-07-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1081', '3', '2', '中', 'Struts2框架由（）和（）框架发展而来的', 'A、Hibernate', 'B、Struts', 'C、Spring', 'D、WebWork ', '', 'BD', '4', '1', '熊小青', '老王', '2014-07-22 00:00:00', '2013-07-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1082', '4', '1', '低', '以下属于struts2的控制器组件的是：\r   ', 'A： Action ', ' ActionForm ', ' C:ActionServlet', 'D:dispatchAction', '', ' A', '2', '1', '熊小青', '老王', '2014-07-23 00:00:00', '2013-07-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1083', '4', '1', '低', '关于struts2配置中用  \r\r\r\r', 'A：必须在WEB-INF/classes目录下', 'B:名字必须为strutss.xml', 'C:配置Action时，必须配置包信息', 'D:使用<forward>元素配置转发', '', ' C', '2', '1', '熊小青', '老王', '2014-07-24 00:00:00', '2013-07-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1084', '4', '1', '低', 'struts2动态调用的格式为：\r\r\r\r', 'A:ActionName?methodName.action', 'B:ActionName!methodName.action', 'C:ActionName*methodName.action', 'D:ActionName@methodName.action', '', 'B', '2', '1', '熊小青', '老王', '2014-07-25 00:00:00', '2013-07-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1085', '4', '1', '低', '实现动态返回结果，在配置<resule>元素时使用（）指定视图资源\r\r\r\r', 'A:${属性名}', 'B:@{属性名}', 'C:${\'属性名\'}', 'D:${\"属性名\"}', '', 'A', '2', '1', '熊小青', '老王', '2014-07-26 00:00:00', '2013-07-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1086', '4', '1', '低', '用于实现国际化的struts2标签的是   \r    ', 'A:<s:text>  ', 'B: <s:message>', 'C:<s:textfile>', 'D:<s:resource>', '', ' A', '2', '1', '熊小青', '老王', '2014-07-27 00:00:00', '2013-07-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1087', '4', '1', '低', '在struts.xml文件中，使用（）定义拦截器 \r\r\r\r', 'A:<interceptor-ref>', 'B:<interceptor>', 'C:<intercep>', 'D:<defaull-interceptor-ref>', '', '  B', '2', '1', '熊小青', '老王', '2014-07-28 00:00:00', '2013-07-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1088', '4', '1', '低', 'struts2中,以下配置文件上传拦截器只允许上传bmp图片文件的代码，正确的是   \r\r\r\r', 'A:<param name=\"allowedTypes\">image/bmp</param>', 'B:<param name=\"allowedTypes\">*.bmp</param>', 'C:<param name=\"allowedTypes\">bmp</param>', 'D:<param name=\"allowedTypes\">image/*.bmp</param>', '', 'A', '2', '1', '熊小青', '老王', '2014-07-29 00:00:00', '2013-07-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1089', '4', '1', '低', '在struts配置中用（）元素配置常量\r\r\r\r', 'A:<const>', 'B:<constants>', 'C:<constant>', 'D:<constant-mapping>', '', 'C', '2', '1', '熊小青', '老王', '2014-07-30 00:00:00', '2013-07-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1090', '4', '1', '中', '以下属于struts2的控制器组件是：', 'A.Action', 'B.ActionForm', 'C.ActionServlet', 'D.dispatchAction', '', 'A', '4', '1', '熊小青', '老王', '2014-07-31 00:00:00', '2013-07-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1091', '4', '1', '中', '关于struts2配置文件说法正确的是：', 'A.必须在WEB-INF/classes目录下', 'B.名字必须为struts.xml', 'C.配置Action时，必须配置包信息', 'D.使用<forward>元素配置转发', '', 'C', '4', '1', '熊小青', '老王', '2014-08-01 00:00:00', '2013-07-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1092', '4', '1', '中', '如果要实现自定义处理结果，需继承那个类', 'A.Dispathcer', 'B.StrutsResultSupport ', 'C.Support', 'D.Action', '', 'B', '4', '1', '熊小青', '老王', '2014-08-02 00:00:00', '2013-08-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1093', '4', '1', '低', '用于实现国际化的struts2标签是：', 'A.<s:text> ', 'B.<s:message> ', 'C.<s:textfield> ', 'D.<s:resource>', '', 'A', '2', '1', '熊小青', '老王', '2014-08-03 00:00:00', '2013-08-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1094', '4', '1', '中', 'Struts2主要核心功能是由（  ）实现  ', 'A.过滤器', 'B.拦截器 ', 'C.类型转换器 ', 'D.配置文件', '', 'B', '4', '1', '熊小青', '老王', '2014-08-04 00:00:00', '2013-08-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1095', '4', '1', '高', 'Struts中的ActionServlet属于MVC模式（  ）', 'A.视图', 'B.模型 ', 'C.控制器', 'D.业务层', '', 'C', '6', '1', '熊小青', '老王', '2014-08-05 00:00:00', '2013-08-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1096', '4', '1', '低', 'struts2自定义类型转换器必须实现的接口是（  ）', 'A.Convert ', 'B.TypeConverter ', 'C.StrutsTypeConverter', 'D.StrutsConvert \n', '', 'B', '2', '1', '熊小青', '老王', '2014-08-06 00:00:00', '2013-08-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1097', '4', '1', '中', '假设在Session中存在名为uid属性，通过OGNL访问该属性，正确的代码是（  ）', 'A.#uid', 'B.#session.uid', 'C.uid', 'D.${session.uid}', '', 'B', '4', '1', '熊小青', '老王', '2014-08-07 00:00:00', '2013-08-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1098', '4', '1', '高', 'struts2默认的处理结果类型是（  ）', 'A.dispatcher', 'B.redirect ', 'C.chain', 'D.以上说法都不正确', '', 'A', '6', '1', '熊小青', '老王', '2014-08-08 00:00:00', '2013-08-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1099', '4', '1', '中', 'Struts默认处理结果类型是', 'A dispatcher', 'B redirect', 'C chain', 'D 以上都不对', '', 'A', '4', '1', '熊小青', '老王', '2014-08-09 00:00:00', '2013-08-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1100', '4', '1', '中', '按照MVC设计模式，JSP用于实现（）', 'A：Model ', 'B：View', 'C：Controller ', 'D：容器', '', 'B', '4', '1', '熊小青', '老王', '2014-08-10 00:00:00', '2013-08-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1101', '4', '1', '中', '在J2EE中属于Web层的组件有（）', 'A：Servlet ', 'B：EJB ', 'C：Applet ', 'D：Struts', '', 'A', '4', '1', '熊小青', '老王', '2014-08-11 00:00:00', '2013-08-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1102', '4', '1', '中', '在WEB-INF目录下，必须存放的文件为（）', 'A：class文件', 'B：web.xml', 'C：.jar文件', 'D：html文件', '', 'B', '4', '1', '熊小青', '老王', '2014-08-12 00:00:00', '2013-08-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1103', '4', '1', '中', '每个使用Swing构件的程序必须有一个（）', 'A：按钮', 'B：标签', 'C：菜单', 'D：容器', '', 'D', '4', '1', '熊小青', '老王', '2014-08-13 00:00:00', '2013-08-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1104', '4', '1', '中', '下面哪一个不能作JSP的服务器（）', 'A：IBM WebSphere', 'B：BEA WebLogic', 'C：Tomcat ', 'D：pws  ', '', 'D', '4', '1', '熊小青', '老王', '2014-08-14 00:00:00', '2013-08-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1105', '4', '1', '中', '在配置tomcat虚拟目录时，需要打开哪个文件（）', 'A：index.jsp', 'B：web.xml', 'C：server.xml', 'D：以上都不是', '', 'C', '4', '1', '熊小青', '老王', '2014-08-15 00:00:00', '2013-08-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1106', '4', '1', '中', '使用Session获取命名查询的方法是（）', 'A：getNamedQuery() ', 'B：getnamedQuery()', 'C：getNameQuery()', 'D：getNamedSQLQuery()', '', 'A', '4', '1', '熊小青', '老王', '2014-08-16 00:00:00', '2013-08-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1107', '4', '1', '中', '以下属于struts2的控制器组件是（）', 'A：Action ', 'B：ActionForm ', 'C：ActionServlet ', 'D：dispatchAction ', '', 'A', '4', '1', '熊小青', '老王', '2014-08-17 00:00:00', '2013-08-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1108', '1', '1', '中', ' 以下(  )不是合法的标识符', 'A、 STRING ', 'B、 x3x; ', 'C、 void', 'D、 de$f', 'E：', 'C', '4', '1', '熊小青', '老王', '2014-08-18 00:00:00', '2013-08-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1109', '1', '1', '中', '表达式(11+3*8)/4%3的值是', 'A、 31 ', 'B、 0 ', 'C、 1', 'D、 2 ', 'E：', 'D', '4', '1', '季恒', '老王', '2014-08-19 00:00:00', '2013-08-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1110', '1', '1', '中', '表达式不可以作为循环条件', 'A、 i++; ', 'B、 i>5; ', 'C、 bEqual = str.equals(\"q\");', 'D、 count = = i;', 'E：', 'A', '4', '1', '季恒', '老王', '2014-08-20 00:00:00', '2013-08-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1111', '1', '1', '中', '下列值不为true的表达式有', 'A、 \"john\" = = \"john\"', 'B、 \"john\".equals(\"john\")', 'C、 \"john\" = \"john\"', 'D、 \"john\".equals(new String(\"john\"))', 'E：', 'C', '4', '1', '季恒', '老王', '2014-08-21 00:00:00', '2013-08-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1112', '1', '2', '中', '下列（）属于引用数据类型', 'A、 String', 'B、 char', 'C、 用户自定义的Student类类型', 'D、 int ', '', 'AC', '4', '1', '季恒', '老王', '2014-08-22 00:00:00', '2013-08-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1113', '1', '1', '中', '对象的特征在类中表示为变量，称为类的', 'A、 对象', 'B、 属性', 'C、 方法', 'D、 数据类型', 'E：', 'B', '4', '1', '季恒', '老王', '2014-08-23 00:00:00', '2013-08-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1114', '1', '1', '中', '在java中下列关于自动类型转换说法正确的是', 'A、 基本数据类型和String相加结果一定是字符串型', 'B、 char类型和int类型相加结果一定是字符', 'C、 double类型可以自动转换为int ', 'D、 char + int + double +\"\" 结果一定是double；', 'E：', 'A', '4', '1', '季恒', '老王', '2014-08-24 00:00:00', '2013-08-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1115', '1', '1', '中', '在Java中,关于构造方法，下列说法错误的是', 'A、 构造方法的名称必须与类名相同', 'B、 构造方法可以带参数', 'C、 构造方法不可以重载', 'D、 构造方法绝对不能有返回值', 'E：', 'C', '4', '1', '季恒', '老王', '2014-08-25 00:00:00', '2013-08-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1116', '1', '1', '中', '下面（）不是String类提供的合法的方法。', 'A、 equals(String)', 'B、 trim()', 'C、 append()', 'D、 indexOf()', 'E：', 'C', '4', '1', '季恒', '老王', '2014-08-26 00:00:00', '2013-08-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1117', '1', '1', '中', '在JAVA中，以下（）类的对象以键-值的方式存储对象', 'A、 java.util.List ', 'B、 java.util.ArrayList', 'C、 java.util.HashMap', 'D、 java.util.LinkedList', 'E：', 'C', '4', '1', '季恒', '老王', '2014-08-27 00:00:00', '2013-08-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1118', '1', '2', '低', '1.以下属于面向对象的特征的是', 'A. 重载', 'B. 重写', 'C. 封装', 'D. 继承', '', 'CD', '4', '1', '鲁志林', '老王', '2014-08-28 00:00:00', '2013-08-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1119', '1', '2', '低', '2．以下代码运行输出是（）\npublic class Person{\nprivate String name=”Person”;\nint age=0;\n}\npublic class Child extends Person{\npublic String grade;\npublic static void main(String[] args){\nPerson p = new Child();\nSystem.out.println(p.name);\n}\n}\n', 'A. 输出：Person', 'B. 没有输出', 'C. 编译出错', 'D. 运行出错', '', 'CD', '2', '1', '鲁志林', '老王', '2014-08-29 00:00:00', '2013-08-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1120', '1', '1', '低', '3． 在使用super 和this关键字时，以下描述正确的是', 'A. 在子类构造方法中使用super（.显示调用父类的构造方法，super（.必须写在子类构造方法的第一行，否则编译不通过', 'B. super（)和this（)不一定要放在构造方法内第一行', 'C. this（)和super（)可以同时出现在一个构造函数中', 'D. this（)和super（)可以在static环境中使用，包括static方法和static语句块', 'E：', 'A', '2', '1', '鲁志林', '老王', '2014-08-30 00:00:00', '2013-08-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1121', '1', '1', '低', '4． 以下对封装的描述正确的是', 'A. 只能对一个类中的方法进行封装，不能对属性进行封装', 'B. 如果子类继承了父类，对于父类中进行封装的方法，子类仍然可以直接调用', 'C. 封装的意义不大，因此在编码时尽量不要使用', 'D. 封装的主要作用在于对外隐藏内部实现细节，增强程序的安全性', 'E：', 'D', '2', '1', '鲁志林', '老王', '2014-08-31 00:00:00', '2013-08-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1122', '1', '1', '低', '5． 以下对继承的描述错误的是', 'A. Java中的继承允许一个子类继承多个父类', 'B. 父类更具有通用性，子类更具体', 'C. Java中的继承存在着传递性', 'D. 当实例化子类时会递归调用父类中的构造方法', 'E：', 'A', '2', '1', '鲁志林', '老王', '2014-09-01 00:00:00', '2013-08-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1123', '1', '1', '低', '6. 以下对继承的描述错误的是', 'A. Java中的继承允许一个子类继承多个父类', 'B. 父类更具有通用性，子类更具体', 'C. Java中的继承存在着传递性', 'D. 当实例化子类时会递归调用父类中的构造方法', 'E：', 'A', '2', '1', '鲁志林', '老王', '2014-09-02 00:00:00', '2013-09-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1124', '1', '1', '低', '7..在Java中，关于HashMap类的描述，以下说法错误的是', 'A. HashMap使用键/值得形式保存数据', 'B. HashMap 能够保证其中元素的顺序', 'C. HashMap允许将null用作键', 'D. HashMap允许将null用作值', 'E：', 'B', '2', '1', '鲁志林', '老王', '2014-09-03 00:00:00', '2013-09-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1125', '1', '1', '低', '8. 下列选项中关于java中super关键字的说法错误的是', 'A. super关键字是在子类对象内部指代其父类对象的引用', 'B. super关键字不仅可以指代子类的直接父类，还可以指代父类的父类', 'C. 子类可以通过super关键字调用父类的方法', 'D. 子类可以通过super关键字调用父类的属性', 'E：', 'B', '2', '1', '鲁志林', '老王', '2014-09-04 00:00:00', '2013-09-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1126', '1', '1', '低', '9.以下对重载描述错误的是', 'A. 方法重载只能发生在一个类的内部', 'B. 构造方法不能重载', 'C. 重载要求方法名相同，参数列表不同', 'D. 方法的返回值类型不是区分方法重载的条件', 'E：', 'B', '2', '1', '鲁志林', '老王', '2014-09-05 00:00:00', '2013-09-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1127', '1', '1', '低', '10.以下程序运行结果是（）\npublic class Test extends Father{\nprivate String name=”test”;\npublic static void main(String[] args){\nTest test = new Test();\nSystem.out.println(test.getName());\n}\n}\nclass Father{\nprivate String name=”father”;\npublic String getName() {\nretu', 'A. father', 'B. test', 'C. 编译出错', 'D. 运行出错，无输出', 'E：', 'A', '2', '1', '鲁志林', '老王', '2014-09-06 00:00:00', '2013-09-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1128', '1', '1', '低', '字符流与字节流的区别在于（）', 'A:前者带有缓冲，后者没有', 'B：前者是块读写，后者是字节读写', 'C：二者没有区别，可以互换使用', 'D：每次读写的字节数不同', 'E：', 'D', '2', '1', '鲁志林', '老王', '2014-09-07 00:00:00', '2013-09-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1129', '1', '1', '低', '下列语句序列执行后，j的值是多少？int  j=5,i=2;\nwhile (--i!=i/j) j=j+2;', 'A:4  ', 'B：7', 'C:8', 'D:6', 'E：', 'B', '2', '1', '鲁志林', '老王', '2014-09-08 00:00:00', '2013-09-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1130', '1', '1', '低', '方法内的变量：()', '(A) 一定在方法内所有位置可见', '(B) 可能在方法内的局部可见', '(C) 可以在方法外可见', '(D) 方法外也可用', 'E：', 'B', '2', '1', '鲁志林', '老王', '2014-09-09 00:00:00', '2013-09-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1131', '1', '1', '低', '关于方法main（）的说法哪个正确？', '(A) 方法main（）只能放在公共类中', '(B) main()的头定义可以根据情况任意更改', '(C) 一个类中可以没有main()方法', '(D) 所有对象的创建都必须放在main()方法中', 'E：', 'C', '2', '1', '鲁志林', '老王', '2014-09-10 00:00:00', '2013-09-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1132', '1', '1', '低', '关于对象定义与创建的说法正确的是', '(A) 定义就是创建', ' (B) 对象必须定义，但不创建也可以使用', '(C) 对象必须先定义后创建，所以不能创建无名对象', '(D) 定义和创建可以在一条语句中同时实现', 'E：', 'D', '2', '1', '鲁志林', '老王', '2014-09-11 00:00:00', '2013-09-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1133', '1', '1', '低', '下面的程序段输出的结果是（   ）\nint i=1,b,c;\nint[] a=new int[3];\nb=a[i];\nc=b+i;\nSystem.out.println(c );', '(A)0 ', '(B)2 ', '(C)4  ', '(D)1', 'E：', 'D', '2', '1', '鲁志林', '老王', '2014-09-12 00:00:00', '2013-09-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1134', '1', '1', '低', '下列关于修饰符混用的说法，错误的是', '(A)abstract不能与final并列修饰同一个类', 'B)abstract类中可以有private的成员 ', '(C)abstract方法必须在abstract类中', '(D)static方法中不能处理非static的属性', 'E：', 'C', '2', '1', '鲁志林', '老王', '2014-09-13 00:00:00', '2013-09-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1135', '1', '1', '低', '关于super的说法正确的是：', '(A) 是指当前对象的内存地址', '(B) 是指当前对象的父类对象的内存地址', '(C) 是指当前对象的父类', '(D) 可以用在main()方法中', 'E：', 'C', '2', '1', '鲁志林', '老王', '2014-09-14 00:00:00', '2013-09-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1136', '1', '1', '低', '.以下关于执行Java小程序的论述错误的是：　', '(A) 可以通过浏览器调用嵌入了Java小程序的HTML文档', 'B) 可以通过appletviewer.exe调用嵌入了Java小程序的HTML文档', '(C) 可以通过java.exe调用嵌入了Java小程序的HTML文档', '(D) 可以在Java集成开发环境中调用嵌入了Java小程序的HTML文档', 'E：', 'C', '2', '1', '鲁志林', '老王', '2014-09-15 00:00:00', '2013-09-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1137', '1', '1', '低', '以下变量定义中正确的是', '(A)int I=123a', '(B)float f=7.8f', '(C)char c=’abc’ ', '(D)String str=’d’', 'E：', 'B', '2', '1', '鲁志林', '老王', '2014-09-16 00:00:00', '2013-09-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1138', '1', '1', '低', '编译Java  Applet 源程序文件产生的字节码文件的扩展名为', 'A、java', 'B、class', 'C、html ', 'D、exe', 'E：', 'B', '2', '1', '饶硕馨', '老王', '2014-09-17 00:00:00', '2013-09-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1139', '1', '1', '中', 'main方法是Java  Application程序执行的入口点，关于main方法的方法头以下哪项是合法的（     ）？', 'A、public  static  void  main（ ）', 'B、public  static  void   main（ String  args[] ）', 'C、public static int  main（String  [] arg ）', 'D、public  void  main（String  arg[] ）', 'E：', 'B', '2', '1', '饶硕馨', '老王', '2014-09-18 00:00:00', '2013-09-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1140', '1', '1', '高', '给出如下代码:\rclass Test{\r　　private int m;\r　　public static void fun() {\r　　　　// some code...\r　　}\r}\r如何使成员变量m 被函数fun()直接访问?', 'A、将private int m 改为protected int m', 'B、将private int m 改为 public int m', 'C、将private int m 改为 static int m ', 'D、将private int m 改为 int m', 'E：', 'C', '2', '1', '饶硕馨', '老王', '2014-09-19 00:00:00', '2013-09-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1141', '1', '2', '低', '下面哪几个函数是public void example(){...}的重载函数？', 'A、 public void example( int m){...}', 'B、public int example(){...}', 'C、public void example2(){...}', 'D、 public int example ( int m, float f){...}', '', 'AD', '2', '1', '饶硕馨', '老王', '2014-09-20 00:00:00', '2013-09-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1142', '1', '2', '低', '给出下面的代码段:\rpublic class Base{\rint w, x, y ,z;\rpublic Base(int a,int b)\r{\rx=a; y=b;\r}\rpublic Base(int a, int b, int c, int d)\r{\r// assignment x=a, y=b\rw=d;\rz=c;\r}\r}\r在代码说明// assignment x=a, y=b处写入如下哪几个代码是正确的？', 'A、 Base(a,b);', 'B、x=a, y=b;', 'C、x=a; y=b;', 'D、this(a,b);', '', 'CD', '2', '1', '饶硕馨', '老王', '2014-09-21 00:00:00', '2013-09-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1143', '1', '2', '低', '已知如下定义：String s = \"story\";\r下面哪个表达式是合法的？', 'A、 s += \"books\";', 'B、char c = s[1];', ' C、int len = s.length;', 'D、String t = s.toLowerCase();', '', 'AD', '2', '1', '饶硕馨', '老王', '2014-09-22 00:00:00', '2013-09-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1144', '1', '1', '低', 'Java中main()函数的值是什么?', 'A、 String', 'B、int', 'C、char', 'D、void', 'E：', 'D', '2', '1', '饶硕馨', '老王', '2014-09-23 00:00:00', '2013-09-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1145', '1', '1', '低', '如下哪些字串是Java中的标识符？ ', 'A、 fieldname', 'B、super', 'C、3number', 'D、#number', 'E：', 'A', '2', '1', '饶硕馨', '老王', '2014-09-24 00:00:00', '2013-09-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1146', '1', '1', '低', '下面的代码段中，执行之后i 和j 的值是什么?\rint i = 1;\rint j;\rj = i++;  ', 'A、 1, 1', 'B、1, 2', 'C、2, 1', 'D、2, 2', 'E：', 'C', '2', '1', '饶硕馨', '老王', '2014-09-25 00:00:00', '2013-09-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1147', '1', '2', '低', '下面句话是正确的?', ' A、 >> 是算术右移操作符.', '>> 是逻辑右移操作符.', '>>> 是算术右移操作符', '>>> 是逻辑右移操作符', '', 'AD', '2', '1', '饶硕馨', '老王', '2014-09-26 00:00:00', '2013-09-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1148', '1', '1', '低', '1.Java中提供了名为（）的包装类来包装原始字符串类型。', 'A．Integer', 'B.Char', 'C.Double', 'D.String ', 'E：', 'D ', '2', '1', 'yyh', '老王', '2014-09-27 00:00:00', '2013-09-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1149', '1', '2', '中', '2.下面的集合中，（）不可以存储重复元素。', 'A．Set', 'B.Collection', 'C.Map', 'D.List', '', 'C', '2', '1', 'yyh', '老王', '2014-09-28 00:00:00', '2013-09-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1150', '1', '1', '高', '3.关于Map和List，下面说法正确的是(  )。', 'A．Map继承List', 'B.List中可以保存Map或List', 'C.Map和List只能保存从数据库中取出的数据', 'D.Map的value可以是List或Map', 'E：', 'D', '2', '1', 'yyh', '老王', '2014-09-29 00:00:00', '2013-09-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1151', '1', '1', '低', '4.java.lang包的（）方法比较两个对象是否相等，相等返回true。', 'A．toString（）', 'B.equals（）', 'C.compare（）', 'D.以上所有选项都不正确', 'E：', 'B', '2', '1', 'yyh', '老王', '2014-09-30 00:00:00', '2013-09-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1152', '1', '1', '低', '5.使用（）方法可以获得Calendar类的实例。', 'A．get（）', 'B.equals（）', 'C.getTime（）', 'D.getInstance（）', 'E：', 'D', '2', '1', 'yyh', '老王', '2014-10-01 00:00:00', '2013-09-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1153', '1', '1', '低', '6．给定如下Java代码，编译运行的结果是（）。import java.util.*;\n\npublic class Test {\n\npublic static void main(String[] args) {\n\nLinkedList list=new LinkedList();\n\nlist.add(“A”);\n\nlist.add(2,”B”);\n\nString s=(String)list.get(1);\n\nSystem.out.println(s);\n\n}\n\n}\n', 'A．编译时发生错误', 'B.运行时引发异常', 'C.正确运行，输出：A', 'D.正确运行，输出：B', 'E：', 'B', '2', '1', 'yyh', '老王', '2014-10-02 00:00:00', '2013-10-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1154', '1', '1', '低', '7.下面哪些是java语言中的关键字？', 'A sizeof', 'B.abstract', 'C NULL', 'D .Native', 'E：', 'B', '2', '1', 'yyh', '老王', '2014-10-03 00:00:00', '2013-10-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1155', '1', '1', '低', '8.下面语句哪个是正确的？', 'A char=\'abc\';', 'B.long l=oxfff;', 'C float f=0.23;', 'D. double=0.7E-3;', 'E：', 'D', '2', '1', 'yyh', '老王', '2014-10-04 00:00:00', '2013-10-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1156', '1', '1', '低', '9.以下程序测试String 类的各种构造方法，试选出其运行效果。class STR{\n　　　public static void main(String args[]){\n　　　　String s1=new String();\n　　　　String s2=new String(\"String 2\");\n　　　　char chars[]={\'a\',\' \',\'s\',\'t\',\'r\',\'i\',\'n\',\'g\'};\n　　　　String s3=new String(chars);\n　　　　String s4=new', 'A The String No.1 is \nThe String No.2 is String 2 \nThe String No.3 is a string \nThe String No.4 is string \nThe String No.5 is a string\n', 'B .The String No.1 is \n　　　The String No.2 is String 2 \n　　　The String No.3 is a string \n　　　The String No.4 is tring \n　　　The String No.5 is a string\n', 'C The String No.1 is \n　　　The String No.2 is String 2 \n　　　The String No.3 is a string \n　　　The String No.4 is strin \n　　　The String No.5 is a string\n', 'D .以上都不对 ', 'E：', 'A', '2', '1', 'yyh', '老王', '2014-10-05 00:00:00', '2013-10-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1157', '1', '1', '低', '10、下面语句段的输出结果是什么？int i = 9; \n　　switch (i) { \n　　default: \n　　System.out.println(\"default\"); \n　　case 0: \n　　System.out.println(\"zero\"); \n　　break; \n　　case 1: \n　　System.out.println(\"one\"); \n　　case 2: \n　　System.out.println(\"two\"); }\n', '\nA default\n', 'B .default, zero', 'C error default clause not defined', 'D. no output displayed', 'E：', 'B', '2', '1', 'yyh', '老王', '2014-10-06 00:00:00', '2013-10-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1158', '1', '1', '中', '如果类C1继承自类C2，并实现了接口I1，而类C2实现了接口I2，请挑出下面代码的错误的部分： ', 'A. C2 instance = new C1();', 'B. C1 instance = new C2();', 'C. I1 instance = new C1();', 'D. I2 instance = new C1();', 'E：', 'B', '4', '1', '胡强', '老王', '2014-10-07 00:00:00', '2013-10-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1159', '1', '2', '中', '下列哪些写法是错误的：', 'A. boolean b = (boolean)3;', 'B. int a = (int)true;', 'C. int a = false; ', 'D. long b = (long)3.14', '', 'ABC', '6', '1', '胡强', '老王', '2014-10-08 00:00:00', '2013-10-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1160', '1', '1', '中', '什么样的标识符是合法的？', 'a) 由字母、数字、_和$组成，长度不限。其中字母可以是大写或小写的英文字母，数\n字为0到9。', 'b) 标识符的第一个字符不能是数字。c) 标识符区分大小写。', '', 'd) 标识符不能包含空格。', 'E：', 'A', '4', '1', '胡强', '老王', '2014-10-09 00:00:00', '2013-10-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1161', '1', '1', '中', '在JAVA中，如果父类中某些方法不包含任何逻辑，并且需要由子类重写.应该使用()关键字来声明父类的这些方法:', 'A) final', 'B) static', 'C) abstract', 'D) void', 'E：', 'C', '4', '1', '胡强', '老王', '2014-10-10 00:00:00', '2013-10-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1162', '1', '1', '中', '在JAVA中，已定义两个接口B和C,要定义一个实现这两个接口的   类，以下语句正确的是', 'A) interface A extend B,C', 'B) interface A implements B,C) class A implements B,C', '', 'D) class A implements B, implements C', 'E：', 'C', '4', '1', '胡强', '老王', '2014-10-11 00:00:00', '2013-10-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1163', '1', '1', '中', '在JAVA接口中可以定义', 'A) A(X) ', 'B) this.A(x)', 'C) this(x)', 'D) super(x)', 'E：', 'C', '4', '1', '胡强', '老王', '2014-10-12 00:00:00', '2013-10-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1164', '1', '1', '中', '设 x = 1 ,y = 2 , z = 3, 则表达式 y+=z一一/++x 的值是', 'A) 3', 'B) 3.5 ', 'C) 4', 'D) 5', 'E：', 'A', '4', '1', '胡强', '老王', '2014-10-13 00:00:00', '2013-10-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1165', '1', '1', '中', '下列关于继承的说法哪个正确?', 'A)子类只继承父类public方法和属性:', 'B)子类继承父类的非私有属性和方法:', 'C)子类继承父类的方法，而不继承父类的属性: ', 'D) 子类将继承的所有的属性和方法.', 'E：', 'B', '4', '1', '胡强', '老王', '2014-10-14 00:00:00', '2013-10-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1166', '1', '1', '低', '下列不能控制一个Servlet的生命周期方的法是：', 'A) service', 'B) destroy', 'C) doPost', 'D) init', 'E：', 'C', '2', '1', '胡强', '老王', '2014-10-15 00:00:00', '2013-10-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1167', '1', '1', '中', '能够给一个byte型变量赋值的范围是', 'A)  0～65535', 'B) (-128)～127', 'C)（-32, 768)～32, 767', 'D) (-256)～255', 'E：', 'B', '4', '1', '胡强', '老王', '2014-10-16 00:00:00', '2013-10-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1168', '1', '1', '中', 'java5.0中，哪项不是其新特性？', 'A:泛型 ', 'B:增强型for循环 ', ' C:继承 ', ' D:Annotation注解', 'E：', 'C', '2', '1', '胡强', '胡强', '2014-10-17 00:00:00', '2013-10-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1169', '1', '1', '中', 'switch结构的条件中不能包含哪种类型？', 'A:Long                      ', ' B:int', '  C:short ', 'D：short', 'E：', 'A', '2', '1', '胡强', '胡强', '2014-10-18 00:00:00', '2013-10-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1170', '1', '1', '中', '以下变量定义中正确的是?', 'A:int i=123a   ', ' B:float f=7.8f', ' C:char c=\'abc\'', ' D:String str=\'d', 'E：', 'B', '2', '1', '胡强', '胡强', '2014-10-19 00:00:00', '2013-10-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1171', '1', '1', '中', '设类B和类C都不是抽象类，并且类B是类C的父类。下列声明对象X1的语句不正确的是？', 'A:B X1=new B()    ', ' B:B X1=new C() ', ' C:C X1=new C()', ' D:C X1=new B()', 'E：', 'D', '2', '1', '胡强', '胡强', '2014-10-20 00:00:00', '2013-10-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1172', '1', '1', '中', '设有对象x具有属性a则访问该属性的方法为', 'A:a.x    ', '  B:a.x() ', 'C:x.a ', ' D:x.a()', 'E：', 'B', '2', '1', '胡强', '胡强', '2014-10-21 00:00:00', '2013-10-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1173', '1', '1', '中', '若有以下类的声明： public class A extends B implements C,D{} 下列的说法错误的是：', 'A:类A 继承自父类B    ', ' B:这个类声明是错误的 ', ' C:C,D是接口', ' D:类头的定义表明类A实现接口C和D', 'E：', 'B', '2', '1', '胡强', '胡强', '2014-10-22 00:00:00', '2013-10-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1174', '1', '1', '中', 'Java中，哪种不可以用来限制存取权限的关键字', 'A:public    ', ' B:protected', ' C:extends', 'D:private', 'E：', 'C', '2', '1', '胡强', '胡强', '2014-10-23 00:00:00', '2013-10-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1175', '1', '1', '中', ' Java源文件和编译后的文件扩展名分别为', 'A:.class 和.java    ', 'B: .java和.class ', 'C:  .class 和 .class  ', 'D: .java 和.java', 'E：', 'B', '2', '1', '胡强', '胡强', '2014-10-24 00:00:00', '2013-10-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1176', '1', '1', '中', '下列哪个关键字用于引入包', 'A: import        ', 'B:include  ', 'C:implement ', ' D:input', 'E：', 'A', '2', '1', '胡强', '胡强', '2014-10-25 00:00:00', '2013-10-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1177', '1', '1', '中', '关于super的说法正确的是', 'A: 是指当前对象的内存地址       ', ' B: 是指当前对象的父类对象的内存地址', '  C:是指当前对象的父类', 'D:可以用在main()方法中', 'E：', 'C', '2', '1', '胡强', '鲁志林', '2014-10-26 00:00:00', '2013-10-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1178', '2', '1', '中', '在java中，下列选项表示字符”a”值的是（）？', 'A、a‘’', 'B、“a”', 'C、new Character（a）', 'D、\\000a', 'E：', 'C', '4', '1', '季恒', '鲁志林', '2014-10-27 00:00:00', '2013-10-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1179', '2', '1', '中', '在J2EE中，在JSP中想要使用JavaBean:mypackage.mybean,则以下写法正确的是（）。', 'A、<jsp:usebean id=”mybean” scope=”page” class=”mypackege.mybean”>', 'B、<jsp:userBean class=”mypackage.mybean.class”/>', 'C、<jsp:usebean id=”mybean” class=”mypackege.mybean”>', 'D、<jsp:useBean id=”mybean” class=”mypackege.mybean”/>', 'E：', 'D', '4', '1', '季恒', '鲁志林', '2014-10-28 00:00:00', '2013-10-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1180', '2', '1', '中', 'Thread类的（）方法能够一个接一个地显示applet帧并在每一帧之间暂停一下。', 'A、pauss()', 'B、sleep()', 'C、stop()', 'D、start()', 'E：', 'B', '4', '1', '季恒', '鲁志林', '2014-10-29 00:00:00', '2013-10-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1181', '2', '1', '中', '访问修饰符限制最高的是（）。', 'A、private', 'B、protected', 'C、public', 'D、friendly', 'E：', 'A', '4', '1', '季恒', '鲁志林', '2014-10-30 00:00:00', '2013-10-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1182', '2', '1', '中', '在J2EE中，在Bean中实现绑定属性需要导入包是（）。', 'A.java.utiljava.beans', 'B.java.bean', 'C.java.security', 'D.java.bean', 'E：', 'B', '4', '1', '季恒', '鲁志林', '2014-10-31 00:00:00', '2013-10-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1183', '2', '1', '中', '在J2EE中，在一个JSP文件中，有表达式<%=2+3 %>,它将输出（）', 'A.2+3', 'B.5', 'C.23', 'D.不会输出，因为表达式错误的', 'E：', 'B', '4', '1', '季恒', '鲁志林', '2014-11-01 00:00:00', '2013-10-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1184', '2', '1', '中', '在J2EE中，以下是firePropertyChange的原型，正确的是（）', 'A.public void firePropertyChange(PropertyChangeListener l,String oldValue, String newValue)', 'B.public void firePropertyChange(PropertyChangeSupport changes)', 'C.public void firePropertyChange(String propertyName, Object oldValue, Object newValue)', 'D.public void firePropertyChange(PropertyChangeSupport changes)', 'E：', 'B', '4', '1', '季恒', '鲁志林', '2014-11-02 00:00:00', '2013-11-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1185', '2', '1', '中', '在J2EE中，在Bean中addCustomListener和removeCustomListener的作用分别是（）', 'A.注册监听者；注销监听者', 'B.注册自定义事件机制；注销自定义事件机制', 'C.注册Bean；注销Bean', 'D.注册事件源；注销事件源', 'E：', 'A', '4', '1', '季恒', '鲁志林', '2014-11-03 00:00:00', '2013-11-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1186', '2', '1', '中', '在J2EE中，对XML文档进行转换后，将源DOM树中的数据输出到指定目标流的方法是（）。', 'A、DomResult对象的DomResult方法', 'B、Nodelist对象的toString方法', 'C、Document对象的addDocumenListener方法', 'D、Transformer对象的transform方法', 'E：', 'D', '4', '1', '季恒', '鲁志林', '2014-11-04 00:00:00', '2013-11-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1187', '2', '1', '中', '在J2EE中，把所有的文件包括子目录都打包到一个名为myWebApp.war的归档文件中的命令（）。', 'A、jar-tvf myWebApp.war', 'B、jar-cf myWebApp.war *', 'C、jar-tf myWebApp.war *', 'D、jar-tcf myWebApp.war', 'E：', 'B', '4', '1', '季恒', '鲁志林', '2014-11-05 00:00:00', '2013-11-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1188', '2', '1', '低', '1. Ajax有四种技术组成：DOM,CSS,JavaScript，XmlHttpRequest中控制文档结构的是：', 'A.DOM', 'B.CSS', 'C.javascript', 'D.XMLHttpRequest', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-11-06 00:00:00', '2013-11-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1189', '2', '1', '低', '2. 在Ajax的四种技术中，控制通信的是哪一个', 'A.DOM', 'B.CSS', 'C.javascript', 'D.XMLHttpRequest', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-11-07 00:00:00', '2013-11-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1190', '2', '1', '低', '3.当DOM加载完成后要执行的函数下面哪个是正确的', 'A、jQuery(expression, [context]) ', 'B、jQuery(html, [ownerDocument])', 'C 、jQuery(callback)', 'D、jQuery(elements)', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-11-08 00:00:00', '2013-11-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1191', '2', '1', '低', '4.jquery的文档处理 (ABD)如果想在一个指定的元素后添加内容,下面哪个是实现该功能的', 'A、append(content)', 'B、appendTo(content)', 'C、insertAfter(content)', 'D 、after(content)', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-11-09 00:00:00', '2013-11-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1192', '2', '1', '低', '5.下面哪一个是用来追加到指定元素的末尾的', 'A、insertAfter()', 'B、append()', 'C、appendTo()', 'D、after()', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-11-10 00:00:00', '2013-11-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1193', '2', '1', '低', '6.在jquey中如果想要从DOM中删除所有匹配的元素下面哪一个是正确的', 'A、delete()', 'B、empty()', 'C、remove()', 'D、removeAll()', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-11-11 00:00:00', '2013-11-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1194', '2', '1', '低', '7.在jquery中想要给第一个指定的元素添加样式下面哪一个是正确的', 'A、first', 'B、eq(1)', 'C、css(name)', 'D、css(name,value)', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-11-12 00:00:00', '2013-11-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1195', '2', '1', '低', '8.在jquery中如果想要获取当前窗口的宽度值下面哪个是实现该功能的', 'A、width()', 'B、width(val)', 'C、width', 'D、innerWidth()', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-11-13 00:00:00', '2013-11-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1196', '2', '1', '低', '9.如果想要找到一个表格的指定行数的元素用下面哪个方法可以快速找到指定元素', 'A、text()', 'B、get()', 'C、eq()', 'D、contents()', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-11-14 00:00:00', '2013-11-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1197', '2', '1', '低', '10.下面哪一个不是jquery对象访问的方法', 'A、each(callback)', 'B、size()', 'C、index(subject)', 'D、index()', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-11-15 00:00:00', '2013-11-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1198', '2', '2', '中', 'JavaEE的三层结构包括表示层、（）', 'A、服务层', 'B、中间层', 'C、保存层', 'D、数据层', '', 'BD', '4', '1', '鲁志林', '鲁志林', '2014-11-16 00:00:00', '2013-11-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1199', '2', '1', '中', '下列（）不属于HTTP协议中GET方法和POST方法的区别内容。\n', 'A、提交数据时，POST比GET安全。', 'B、提交数据时，POST没有数据量的限制。', 'C、GET方法请求的页面可以作为书签。', 'D、POST方法请求的页面可以使用邮件发送。', 'E：', 'D', '4', '1', '鲁志林', '鲁志林', '2014-11-17 00:00:00', '2013-11-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1200', '2', '1', '中', '在Servlet生命周期中，对应服务阶段的方法是（）', 'A. doGet()', 'B. doPost()', 'C. doGet和doPost()', 'D. service()', 'E：', 'D', '4', '1', '鲁志林', '鲁志林', '2014-11-18 00:00:00', '2013-11-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1201', '2', '1', '中', '下列有关Servlet的生命周期，说法不正确的是', 'A、在创建自己的Servlet时候，应该在初始化方法init()方法中创建Servlet实例。', 'B、在Servlet生命周期的服务阶段，执行service()方法，根据用户请求的方法，执行相应的doGet()', 'C、在销毁阶段，执行destroy()方法后系统立刻进行垃圾回收。', 'D、destroy()方法仅执行一次，即在服务器停止且卸载Servlet时执行该方法', 'E：', 'D', '4', '1', '鲁志林', '鲁志林', '2014-11-19 00:00:00', '2013-11-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1202', '2', '2', '中', '关于session的使用，下列说法正确的是', 'A、不同的用户窗口具有不同的session', 'B、不同的用户窗口具有相同的session', 'C、session有可能超时', 'D、session永远不可能超时', '', 'AC', '4', '1', '鲁志林', '鲁志林', '2014-11-20 00:00:00', '2013-11-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1203', '2', '1', '中', '下面关于Spring的说法中错误的是', 'A、Spring是一系列轻量级2框架的集合', 'B、Spring中包含一个“依赖注入”模式的实现', 'C、使用Spring可以实现声明式事务', 'D、Spring提供了AOP方式的日志系统', 'E：', '', '4', '1', '鲁志林', '鲁志林', '2014-11-21 00:00:00', '2013-11-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1204', '2', '1', '中', '下面关于AOP的说法错误的是', 'A、AOP将散落在系统中的“方面”代码集中实现', 'B、AOP有助于提高系统的可维护性', '\nC、AOP已经表现出了将要替代面向对象的趋势', 'D、AOP是一种设计模式，Spring提供了一种实现', 'E：', '', '4', '1', '鲁志林', '鲁志林', '2014-11-22 00:00:00', '2013-11-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1205', '2', '1', '中', '.某业务方法materielApply(UserEntity user, List materiels)需要对其进行事务控制，下面正确的是', 'A、将查询方法声明为只读事务，其他方法声明为REQUIRED', 'B、声明do开头的方法为REQUIRED，并修改方法名为doMaterielApply', 'C、<tx:method name=\"*Apply\" propagation=\"REQUIRED\" />', 'D、事务的propagation属性声明为SUPPORTS', 'E：', '', '4', '1', '鲁志林', '鲁志林', '2014-11-23 00:00:00', '2013-11-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1206', '2', '1', '中', '下面（）技术不是Ajax的常用技术', 'A、JavaScript', 'B、XML', 'C、CSS', 'D、JUnit', 'E：', '', '4', '1', '鲁志林', '鲁志林', '2014-11-24 00:00:00', '2013-11-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1207', '2', '1', '中', '下面（）不是XMLHttpRequest对象的方法名。（选两项）', 'A、open', 'B、send', 'C、readyState', 'D、responseText', 'E：', '', '6', '1', '鲁志林', '鲁志林', '2014-11-25 00:00:00', '2013-11-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1208', '2', '1', '中', '下列（）不属于HTTP协议中GET方法和POST方法的区别内容', 'A、提交数据时，POST比GET安全。', 'B、提交数据时，POST没有数据量的限制。', 'C、GET方法请求的页面可以作为书签。', 'D、POST方法请求的页面可以使用邮件发送。', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-11-26 00:00:00', '2013-11-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1209', '2', '1', '中', '在Servlet生命周期中，对应服务阶段的方法是（）', 'A. doGet()', 'B. doPost()', 'C. doGet和doPost()', 'D. service()', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-11-27 00:00:00', '2013-11-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1210', '2', '1', '中', '下列有关Servlet的生命周期，说法不正确的是（）', 'A、在创建自己的Servlet时候，应该在初始化方法init()方法中创建Servlet实例。', 'B、在Servlet生命周期的服务阶段，执行service()方法，根据用户请求的方法，执行相应的doGet()或是doPost()方法。', 'C、在销毁阶段，执行destroy()方法后系统立刻进行垃圾回收。', 'D、destroy()方法仅执行一次，即在服务器停止且卸载Servlet时执行该方法。', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-11-28 00:00:00', '2013-11-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1211', '2', '2', '中', '关于session的使用，下列说法正确的是（）', 'A、不同的用户窗口具有不同的session', 'B、不同的用户窗口具有相同的session', 'C、session有可能超时', 'D、session永远不可能超时', '', 'AC', '2', '1', '鲁志林', '鲁志林', '2014-11-29 00:00:00', '2013-11-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1212', '2', '1', '中', '下面关于Spring的说法中错误的是（）', 'A、Spring是一系列轻量级Java', 'B、Spring中包含一个“依赖注入”模式的实现', 'C、使用Spring可以实现声明式事务', 'D、Spring提供了AOP方式的日志系统', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-11-30 00:00:00', '2013-11-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1213', '2', '1', '中', '下面（）技术不是Ajax的常用技术', 'A、JavaScript', 'B、XML', 'C、CSS', 'D、JUnit', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-12-01 00:00:00', '2013-11-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1214', '2', '2', '中', '下面（）不是XMLHttpRequest对象的方法名', 'A、open', 'B、send', 'C、readyState', 'D、responseText', '', 'CD', '2', '1', '鲁志林', '鲁志林', '2014-12-02 00:00:00', '2013-12-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1215', '2', '1', '中', '在使用Class对象的load()方法加载.properties文件时，数据在内存中是以（）形式进行保存的', 'A、List列表', 'B、Set集合', 'C、Array数组', 'D、Hashtable', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-12-03 00:00:00', '2013-12-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1216', '2', '1', '中', 'Model II设计模式也称为（）设计模式', 'A、MVC', 'B、JavaEE', 'C、Web', 'D、大型', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-12-04 00:00:00', '2013-12-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1217', '2', '1', '中', '有关JSP中getProperty与setProperty标准动作的使用，下列说法中正确的是（）', 'A、必须在使用useBean的前提下，才能使用', 'B、可以在不使用useBean的情况下使用', 'C、param属性指定的名称必须与类的属性相对应', 'D、以上说法都不对', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-12-05 00:00:00', '2013-12-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1218', '2', '1', '中', '1、看下列HTML标签： <html>\n<body><a href=”/servlet/MyServlet”>Hello World</a> </body> </html>\n点击超级链接后下列哪一个servlet方法将被调用：\n', 'A、doGet', 'B.doPost', 'C.Get', 'D.Post', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-12-06 00:00:00', '2013-12-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1219', '2', '1', '中', '2、JavaScript是一种（）语言', 'A．汇编语言', 'B.高级语言', 'C.脚本语言', 'D.近似语言', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-12-07 00:00:00', '2013-12-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1220', '2', '1', '中', '3.JAVA和JavaScript的区别，正确的是', 'A．它们不但名字相似，而且功能相似。', 'B.JAVA与JavaScript语法相似，事实上，它们是同一种语言的变种。', 'C.JavaScript是JAVA的脚本语言版本。', 'D.JavaScript是一种高级语言。', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-12-08 00:00:00', '2013-12-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1221', '2', '1', '中', '4.下列JavaScript表达式当中，错误的是', 'A．var tempA, tempB, tempC', 'B.tempA *= 3', 'C.tempA >= tempB || tempA <= tempC', 'D.tempA >= tempB > tempC', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-12-09 00:00:00', '2013-12-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1222', '2', '1', '中', '5.表达式”This is my”+” book”的结果是（）（注：其中，字符T的ASCII码为84，字符b的ASCII码为98）', 'A．100 ', 'B.84his is my 98ook', 'C.This is my book  ', 'D.不能计算，要报错', 'E：', 'C', '2', '1', '鲁志林', '鲁志林', '2014-12-10 00:00:00', '2013-12-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1223', '2', '1', '中', '6.下列名称中，能作为变量名的是', 'A．pArray', 'B.This', 'C.Function', 'D.*pNumber', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-12-11 00:00:00', '2013-12-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1224', '2', '1', '中', '7.下列关于函数的说法，不正确的是', 'A．在JavaScript中，函数是一种数据类型', 'B.函数是完成一系列有逻辑关系的语句块', 'C.函数声明使用function关键字', 'D.function fName()    …  end function声明了一个名为fName的JavaScript', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-12-12 00:00:00', '2013-12-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1225', '2', '1', '中', '8、JavaScript代码的用途描述不正确的是', 'A.JavaScript是一种脚本语言，所以它一般没人用', 'B.JavaScript是一种功能强大的弱类型语言', 'C.能完成计算机辅助设计', 'D.应用最广泛的是用来制作网页', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-12-13 00:00:00', '2013-12-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1226', '2', '1', '中', '9、在JavaScript中，以下代码能并闭一个窗口的是 ', 'A.window.exit() ', 'B.window.shutdown()', 'C.window.end() ', 'D.window.close()', 'E：', 'D', '2', '1', '鲁志林', '鲁志林', '2014-12-14 00:00:00', '2013-12-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1227', '2', '1', '中', '10、在JavaScript中，以下代码能产生输出的是', 'A.document.write()', 'B.window.write()', 'C.document.confirm()', 'D.write “The Undefined Function”', 'E：', 'A', '2', '1', '鲁志林', '鲁志林', '2014-12-15 00:00:00', '2013-12-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1228', '2', '1', '中', '表单数据的提交方法有两种, （Post）方法使得数据由标准的输入设备读入。', 'A.Get', 'B. Post', 'C.Read', 'D.Input', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-16 00:00:00', '2013-12-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1229', '2', '1', '中', '在表单提交的数据中，如果变量的值有多个，这时应调用(getParameterValues())方法', 'A. getParameterValues()', 'B. getParameter()', 'C. getParameterNames()', ' D. getAttribute()', 'E：', 'A', '4', '1', '鲁志林', '鲁志林', '2014-12-17 00:00:00', '2013-12-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1230', '2', '1', '中', 'Servlet的事件驱动由（Listener）实现。', 'A. Filter', 'B.  Listener', 'C .  Response', 'D. Request', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-18 00:00:00', '2013-12-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1231', '2', '1', '中', '标记名称由两部分组成,(前缀)用来区分不同标记库.', 'A. 后缀', 'B. 前缀', 'C.JSP', 'D. bean', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-19 00:00:00', '2013-12-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1232', '2', '1', '中', '客户机对Servlet的请求和Servlet对客户端的响应，都是通过(Web服务器)来实现的。', 'A、EJB', 'B、XML', 'C、API', 'D、Web服务器', 'E：', 'D', '4', '1', '鲁志林', '鲁志林', '2014-12-20 00:00:00', '2013-12-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1233', '2', '1', '中', '获取数据库连接的方法是', 'A、Connection()', 'B、getConnection()', 'C、Con', 'D、getContent()', 'E：', 'D', '4', '1', '鲁志林', '鲁志林', '2014-12-21 00:00:00', '2013-12-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1234', '2', '1', '中', '常用的接收邮件的协议是', 'A、SMTP', ' B、POP3 ', 'C、IMAP', 'D、MIME', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-22 00:00:00', '2013-12-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1235', '2', '1', '中', '（）用来获取一个已被创建的JavaBean组件的属性值。', 'A、<jsp:getProperty>', 'B、<Bean:getProperty> ', 'C、<jsp:getAttrib>', 'D.  <JavaBean:getProperty> \n', 'E：', 'A', '4', '1', '鲁志林', '鲁志林', '2014-12-23 00:00:00', '2013-12-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1236', '2', '1', '中', '要对体内容进行操作的标记，必须继承的接口是', 'A.javax.Servlet.jsp.tagext. Tag', 'B.javax.Servlet.jsp.tagext.BodyTag', 'C. javax.Servlet.jsp. Tag', 'D. 三个都必须', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-24 00:00:00', '2013-12-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1237', '2', '1', '中', 'core标记库主要的标记有', 'A、通用标记；流程控制标记；URL标记', 'B、1标记；循环标记', 'C、sql标记；xml标记；FN标记', 'D、以上都是', 'E：', 'A', '4', '1', '鲁志林', '鲁志林', '2014-12-25 00:00:00', '2013-12-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1238', '2', '1', '中', '表单数据的提交方法有两种, （Post）方法使得数据由标准的输入设备读入。', 'A.Get', 'B. Post', 'C.Read', 'D.Input', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-26 00:00:00', '2013-12-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1239', '2', '1', '中', '在表单提交的数据中，如果变量的值有多个，这时应调用(getParameterValues())方法', 'A. getParameterValues()', 'B. getParameter()', 'C. getParameterNames()', ' D. getAttribute()', 'E：', 'A', '4', '1', '鲁志林', '鲁志林', '2014-12-27 00:00:00', '2013-12-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1240', '2', '1', '中', 'Servlet的事件驱动由（Listener）实现。', 'A. Filter', 'B.  Listener', 'C .  Response', 'D. Request', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-28 00:00:00', '2013-12-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1241', '2', '1', '中', '标记名称由两部分组成,(前缀)用来区分不同标记库.', 'A. 后缀', 'B. 前缀', 'C.JSP', 'D. bean', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2014-12-29 00:00:00', '2013-12-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1242', '2', '1', '中', '客户机对Servlet的请求和Servlet对客户端的响应，都是通过(Web服务器)来实现的。', 'A、EJB', 'B、XML', 'C、API', 'D、Web服务器', 'E：', 'D', '4', '1', '鲁志林', '鲁志林', '2014-12-30 00:00:00', '2013-12-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1243', '2', '1', '中', '获取数据库连接的方法是', 'A、Connection()', 'B、getConnection()', 'C、Con', 'D、getContent()', 'E：', 'D', '4', '1', '鲁志林', '鲁志林', '2014-12-31 00:00:00', '2013-12-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1244', '2', '1', '中', '常用的接收邮件的协议是', 'A、SMTP', ' B、POP3 ', 'C、IMAP', 'D、MIME', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2015-01-01 00:00:00', '2013-12-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1245', '2', '1', '中', '（）用来获取一个已被创建的JavaBean组件的属性值。', 'A、<jsp:getProperty>', 'B、<Bean:getProperty> ', 'C、<jsp:getAttrib>', 'D.  <JavaBean:getProperty> \n', 'E：', 'A', '4', '1', '鲁志林', '鲁志林', '2015-01-02 00:00:00', '2014-01-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1246', '2', '1', '中', '要对体内容进行操作的标记，必须继承的接口是', 'A.javax.Servlet.jsp.tagext. Tag', 'B.javax.Servlet.jsp.tagext.BodyTag', 'C. javax.Servlet.jsp. Tag', 'D. 三个都必须', 'E：', 'B', '4', '1', '鲁志林', '鲁志林', '2015-01-03 00:00:00', '2014-01-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1247', '2', '1', '中', 'core标记库主要的标记有', 'A、通用标记；流程控制标记；URL标记', 'B、1标记；循环标记', 'C、sql标记；xml标记；FN标记', 'D、以上都是', 'E：', 'A', '4', '1', '鲁志林', '鲁志林', '2015-01-04 00:00:00', '2014-01-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1248', '2', '1', '中', '下列哪个不属于runtimeException', 'A:ArrayIndexOutofBoundsException ', ' B:ClassNotFoundException', ' C:IllegalArgumentException', '      D:InputMismatchException', 'E：', 'D', '2', '1', '胡强', '鲁志林', '2015-01-05 00:00:00', '2014-01-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1249', '2', '1', '中', 'n从1开始，每一轮从带排序的数列中1第n小（或大）的数放到排序列表的第n个位置。这是描述下面哪一种排序算法', 'A:冒泡排序       ', ' B:直接插入排序  ', ' C:直接1排序', '  D:快速排序', 'E：', 'C', '2', '1', '胡强', '鲁志林', '2015-01-06 00:00:00', '2014-01-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1250', '2', '1', '中', '运行下面的代码，其结果是： Integer a=99;Integer b=99;\n  System.out.println(\"a==b的结果是：\"+(a==b));', 'A:a==b的结果是：true     ', ' B:a==b的结果是：false', '  C:编译错误', ' D:运行错误', 'E：', 'A', '2', '1', '胡强', '鲁志林', '2015-01-07 00:00:00', '2014-01-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1251', '2', '1', '中', '字节流处理的单位是字节，一下哪种字节流不能处理', 'A:二进制文件    ', '  B:音乐  ', ' C:图片', ' D:操作汉字', 'E：', 'D', '2', '1', '胡强', '鲁志林', '2015-01-08 00:00:00', '2014-01-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1252', '2', '2', '中', '获取Class类有哪几种方法', 'A:Class.forName()         ', 'B:类名.class', ' C:包装类.TYPE ', ' D:对象名.getClass()', 'E:Class类.getSuperClass() ', 'ABCDE', '2', '1', '胡强', '鲁志林', '2015-01-09 00:00:00', '2014-01-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1253', '2', '1', '中', '下列哪个方法起到的作用是“唤醒在此对象锁上等待的所有线程”', 'A: notifyAll()       ', 'B: notify()', ' C: sleep()  ', ' D:wait()', 'E:', 'A', '2', '1', '胡强', '鲁志林', '2015-01-10 00:00:00', '2014-01-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1254', '2', '1', '中', '下列那一层不是TCP/IP协议族里的', 'A:网络接口层       ', ' B:网络层 ', ' C:传输层    ', ' D:会话层', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-01-11 00:00:00', '2014-01-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1255', '2', '1', '中', '下面哪个不是java内建注解', 'A:@Target       ', ' B:@Override', '  C:@Deprecated', 'D:@SuppressWarnings', 'E:', 'A', '2', '1', '胡强', '胡强', '2015-01-12 00:00:00', '2014-01-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1256', '2', '2', '中', '下面那些时Java元注解', 'A:@target         ', ' B:@retention  ', ' C:@documented ', ' D:@Inherited', '', 'ABCD', '2', '1', '胡强', '胡强', '2015-01-13 00:00:00', '2014-01-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1257', '2', '1', '中', '从软件测试的阶段上，可以将软件测试分为同等重要的三个阶段，一下哪个不属于三个阶段', 'A:单元测试       ', '  B:集成测试 ', '  C:系统测试 ', '  D:验收测试', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-01-14 00:00:00', '2014-01-13 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1258', '3', '1', '中', '下列哪个不是主流数据库系统', 'A:Oracle       ', ' B:MySql ', '  C:sql ', '  D:DB2', 'E:', 'C', '2', '1', '胡强', '胡强', '2015-01-15 00:00:00', '2014-01-14 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1259', '3', '1', '中', '在Sql语句中，要去掉重复的行应使用哪个关键字', 'A:distinct        ', '  B:between ', ' C: escape  ', ' D:order by', 'E:', 'A', '2', '1', '胡强', '胡强', '2015-01-16 00:00:00', '2014-01-15 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1260', '3', '1', '中', '下列哪个字符函数可以实现“将每个单词的首字母值转换为大写，其值为小写的功能”', 'A:lower           ', 'B:upper', ' C:小于子查询的最小值', ' D:concat', 'E:', 'C', '2', '1', '胡强', '胡强', '2015-01-17 00:00:00', '2014-01-16 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1261', '3', '1', '中', '“>any子查询”代表的含义，下面哪个是正确的', 'A: 小于子查询的最大值            ', ' B: 大于子查询的最小值   ', 'C:小于子查询的最小值', ' D:大于子查询的最大值', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-01-18 00:00:00', '2014-01-17 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1262', '3', '1', '中', '从严格意义上讲，下面哪个语句不属于数据操纵语句DML', 'A:insert语句       ', ' B: delete语句  ', ' C:update语句', ' D:select语句', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-01-19 00:00:00', '2014-01-18 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1263', '3', '1', '中', '下列哪个表示当前的序列值', 'A:current     ', ' B:next', ' C:nextval ', ' D:currval', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-01-20 00:00:00', '2014-01-19 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1264', '3', '1', '中', 'Oracle数据库中，通常分配给最终用户的角色是', 'A:connect    ', ' B:resource', ' C:developer', ' D:user', 'E:', 'A', '2', '1', '胡强', '胡强', '2015-01-21 00:00:00', '2014-01-20 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1265', '3', '2', '中', '下列关于JavaBean的描述，正确的是', 'A:类可以是公有的，也可以是私有的           ', ' B:具有公有的有参构造方法 ', 'C:具有公有的访问属性的Getter和Setter方法  ', 'D:属性名的前两个字母要么全部大写，要么全部小写', '', 'BC', '2', '1', '胡强', '胡强', '2015-01-22 00:00:00', '2014-01-21 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1266', '3', '1', '中', '三层构架是分层模式中最常见的类型，下面不是三层构架中的层次', 'A: 数据访问层           ', ' B:业务逻辑层 ', ' C:表示层', ' D:会话层', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-01-23 00:00:00', '2014-01-22 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1267', '3', '1', '中', '如果session中已经有属性名为user的对象，则EL表达式${not empty sessionScope.user}的值为：', 'A: true           ', 'B:false  ', 'C:null ', '  D:user', 'E:', 'A', '2', '1', '胡强', '胡强', '2015-01-24 00:00:00', '2014-01-23 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1268', '3', '1', '中', '在数据库技术中，实体－联系模型是一种( )', 'A.概念数据模型', 'B.结构数据模型', 'C.物理数据模型', 'D.逻辑数据模型', 'E:', 'A', '4', '1', '季恒', '胡强', '2015-01-25 00:00:00', '2014-01-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1269', '3', '1', '中', '关系数据模型通常由3部分组成，它们是(  )', 'A.数据结构，数据通信，关系操作', 'B.数据结构，数据操作，数据完整性约束', 'C.数据通信，数据操作，数据完整性约束', 'D.数据结构，数据通信，数据完整性约束', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-01-26 00:00:00', '2014-01-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1270', '3', '1', '中', 'SQL语言中，删除一个表的命令是(  )', 'A. DELETE', 'B. DROP', 'C. CLEAR', ' D. REMOVE', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-01-27 00:00:00', '2014-01-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1271', '3', '1', '中', '在SQL的查询语句中，order by选项实现对结果表的()功能', 'A. 分组统计', 'B. 求和', 'C. 查找', 'D. 排序', 'E:', 'D', '4', '1', '季恒', '胡强', '2015-01-28 00:00:00', '2014-01-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1272', '3', '1', '中', 'SQL Server触发器主要针对下列语句创建( )', 'A. SELECT，INSERT，DELETE', 'B. INSERT，UPDATE，DELETE', 'C. SELECT，UPDATE，INSERT', 'D. INSERT，UPDATE，CREATE', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-01-29 00:00:00', '2014-01-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1273', '3', '1', '中', '下列哪个不是sql 数据库文件的后缀。', 'A．.mdf', '  B．.ldf', 'C．.tif', ' D．.ndf', 'E:', 'C', '4', '1', '季恒', '胡强', '2015-01-30 00:00:00', '2014-01-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1274', '3', '1', '中', '在SQL中，建立表用的命令是 ( )。', 'A.CREATE TABLE ', ' B.CREATE RULE', 'C.CREATE VIEW', ' D.CREATE INDEX', 'E:', 'A', '4', '1', '季恒', '胡强', '2015-01-31 00:00:00', '2014-01-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1275', '3', '1', '中', 'SQL语言中，条件“年龄BETWEEN 40 AND 50”表示年龄在40至50之间，且(  )。', 'A.包括40岁和50岁 ', 'B.不包括40岁和50岁', 'C.包括40岁但不包括50岁', ' D.包括50岁但不包括40岁', 'E:', 'A', '4', '1', '季恒', '胡强', '2015-02-01 00:00:00', '2014-01-31 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1276', '3', '1', '中', '模式查找like \'_a%\',下面哪个结果是可能的', 'A.aili', '  B. bai', 'C.bba ', 'D.cca', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-02-02 00:00:00', '2014-02-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1277', '3', '1', '中', '若某表满足1NF，且其所有属性合起来组成主健，则一定还满足范式 ( )', 'A、只有2NF', 'B、只有3NF', 'C、2NF和3NF', 'D、没有', 'E:', 'C', '4', '1', '季恒', '胡强', '2015-02-03 00:00:00', '2014-02-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1278', '3', '2', '低', '1. 使用JDBC连接数据库的顺序是（）', 'A. 加载驱动', 'B. 导入驱动包', 'C. 发送并处理SQL语句', 'D. 建立于数据库的连接', 'E 关闭连接', 'ABCDE', '4', '1', '鲁志林', '胡强', '2015-02-04 00:00:00', '2014-02-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1279', '3', '1', '低', '2. 以下负责建立与数据库连接的是', 'A. Statement', 'B. PreparedStatement', 'C. ResultSet', 'D. DriverManager', 'E:', 'D', '2', '1', '鲁志林', '胡强', '2015-02-05 00:00:00', '2014-02-04 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1280', '3', '2', '低', '3. 以下可以正确获取结果集的有', 'A. Statement sta=con.createStatement();\nResultSet rst=sta.executeQuery(“select * from book”);\n', 'B. Statement sta=con.createStatement(“select * from book”);\nResultSet rst=sta.executeQuery();\n', 'C. PreparedStatement pst=con.preparedStatement();\nResultSet rst=pst.executeQuery(“select * from book”);\n', 'D. PreparedStatement pst=con.preparedStatement(“select * from book”);\nResultSet rst=pst.executeQuery();\n', '', 'AD', '4', '1', '鲁志林', '胡强', '2015-02-06 00:00:00', '2014-02-05 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1281', '3', '1', '低', '4. 获取ResutlSet对象rst的第一行数据，以下正确的是', 'A. rst.hashNext();', 'B. rst.next();', 'C. rst.first();', 'D. rst.nextRow();', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-02-07 00:00:00', '2014-02-06 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1282', '3', '1', '低', '5.要删除book表中书籍(bookName.是”java”的记录，以下代码正确的是（)\nString sql=”delete from book where bookName=?”;\nPreparedStatement pst=con.preparedStatement(sql);\n______________________________\npst.execute();\n', 'A. pst.setString(1,”java”);', 'B. pst.setString(0,”java”);', 'C. pst.setInt(0,”java”);', 'D. 以上选项都不正确', 'E:', 'A', '2', '1', '鲁志林', '胡强', '2015-02-08 00:00:00', '2014-02-07 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1283', '3', '1', '低', '6. 以下描述正确的是', 'A. CallableStatement是PreparedStatement的父接口', 'B. PreparedStatement是CallableStatement的父接口', 'C. CallableStatement是Statement的子接口', 'D. PreparedStatement是Statement的父接口', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-02-09 00:00:00', '2014-02-08 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1284', '3', '1', '低', '7.存储过程pro有两个参数，第一个为输入参数，第二个为输出参数，以下代码正确的是', 'A. CallableStatement cst=con.prepareCall(“(call pro(?,?..”);', 'B. CallableStatement cst=con.prepareCall(“(call pro(?..”);', 'C. CallableStatement cst=con.prepareCall(“{call pro(?,?.}”);', 'D. CallableStatement cst=con.prepareCall(“{call pro(?,?,?.}”);', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-02-10 00:00:00', '2014-02-09 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1285', '3', '1', '低', '8. 以下对JDBC事务描述错误的是', 'A. JDBC事务属于JAVA事务的一种', 'B. JDBC事务属于容器事务类型', 'C. JDBC事务可以保证操作的完整性和一致性', 'D. JDBC事务是由Connection发起的，并由Connection控制', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-02-11 00:00:00', '2014-02-10 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1286', '3', '1', '低', '9. 要通过可滚动的结果集更新数据，以下正确的是', 'A. pst=con.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE.', 'B. pst=con.prepareStatement(sql, ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY.', 'C. pst=con.prepareStatement(sql, Resu ltSet.TYPE_SCROLL_SENSITIVE.', 'D. pst=con.prepareStatement(sql, ResultSet.CONCUR_UPDATABLE.', 'E:', 'A', '2', '1', '鲁志林', '胡强', '2015-02-12 00:00:00', '2014-02-11 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1287', '3', '2', '低', '10. 使用JDBC事务的步骤是', 'A. 取消Connection的事务自动提交方式', 'B. 发生异常回滚事务', 'C. 获取Connection对象', 'D. 操作完毕提交事务', '', 'ABCD', '4', '1', '鲁志林', '胡强', '2015-02-13 00:00:00', '2014-02-12 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1288', '3', '1', '中', '在数据库技术中，实体－联系模型是一种', 'A.概念数据模型 ', 'B.结构数据模型', ' C.物理数据模型 ', 'D.逻辑数据模型', 'E:', 'A', '4', '1', '鲁志林', '胡强', '2015-02-14 00:00:00', '2014-02-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1289', '3', '1', '中', '关系数据模型通常由3部分组成，它们是', 'A.数据结构，数据通信，关系操作', 'B.数据结构，数据操作，数据完整性约束', 'C.数据通信，数据操作，数据完整性约束', 'D.数据结构，数据通信，数据完整性约束', 'E:', 'B', '4', '1', '鲁志林', '胡强', '2015-02-15 00:00:00', '2014-02-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1290', '3', '1', '中', 'SQL语言中，删除一个表的命令是', 'A. DELETE ', ' B. DROP', ' C. CLEAR', ' D. REMOVE', 'E:', ' B ', '4', '1', '鲁志林', '胡强', '2015-02-16 00:00:00', '2014-02-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1291', '3', '1', '中', '在SQL的查询语句中，order by选项实现对结果表的()功能', 'A. 分组统计', 'B. 求和', 'C. 查找', 'D. 排序', 'E:', 'D', '4', '1', '鲁志林', '胡强', '2015-02-17 00:00:00', '2014-02-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1292', '3', '1', '中', '下列哪个不是sql 数据库文件的后缀', 'A．.mdf   ', ' B．.ldf ', 'C．.tif ', 'D．.ndf', 'E:', 'C', '4', '1', '鲁志林', '胡强', '2015-02-18 00:00:00', '2014-02-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1293', '3', '1', '中', '在SQL中，建立表用的命令是', 'A.CREATE TABLE ', 'B.CREATE RULE', 'C.CREATE VIEW', 'D.CREATE INDEX', 'E:', 'A', '4', '1', '鲁志林', '胡强', '2015-02-19 00:00:00', '2014-02-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1294', '3', '1', '中', 'SQL语言中，条件“年龄BETWEEN 40 AND 50”表示年龄在40至50之间', 'A.包括40岁和50岁', 'B.不包括40岁和50岁', 'C.包括40岁但不包括50岁', ' D.包括50岁但不包括40岁', 'E:', 'A', '4', '1', '鲁志林', '胡强', '2015-02-20 00:00:00', '2014-02-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1295', '3', '1', '中', '模式查找like \'_a%\',下面哪个结果是可能的', 'A.aili', 'B. bai', 'C.bba ', 'D.cca', 'E:', 'B', '4', '1', '鲁志林', '胡强', '2015-02-21 00:00:00', '2014-02-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1296', '3', '1', '中', '若某表满足1NF，且其所有属性合起来组成主健，则一定还满足范式', 'A、只有2NF ', 'B、只有3NF', 'C、2NF和3NF', ' D、没有', 'E:', 'C', '4', '1', '鲁志林', '胡强', '2015-02-22 00:00:00', '2014-02-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1297', '3', '1', '中', '在 SQL 语句中，与 X BETWEEN 20 AND 30 等价的表达式是__D_。A、X>=20 AND X<30 ', 'A、X>=20 AND X<30 ', 'B、X>20 AND X<30', 'C、X>20 AND X<=30 ', 'D、X>=20 AND X<=30 ', 'E:', 'D', '4', '1', '鲁志林', '胡强', '2015-02-23 00:00:00', '2014-02-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1298', '3', '1', '中', '1.下面语句错误的原因是：   Update departments set department_id=300 where department_id=60; ERROR 位于第 1 行:   ORA-02292: 违反完整约束条件 (HR.EMP_DEPT_FK) - 已找到子记录日志', 'A.where条件语法错误', 'B.违反主键约束，department_id为300的记录已经存在', 'C.60号部门下已经有员工，修改60号部门编号将违反完整性约束条件', 'D.60号部门不存在', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-02-24 00:00:00', '2014-02-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1299', '3', '1', '中', '2.下面创建表的语句错在哪里 CREATE TABLE abc AS  Select last_name, salary*12 From employees;', 'A.CREATE TABLE abc', 'B.AS', 'C.Select last_name, salary*12', 'D.From employees;', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-02-25 00:00:00', '2014-02-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1300', '3', '2', '中', '3.下列关于主键说法正确的是：', 'A.一个表只允许一个主键', 'B.一个表可以有多个主键', 'C.数据库会为主键自动创建对应的唯一索引', 'D.主键只表示该字段不允许为空', '', 'AC', '2', '1', '鲁志林', '胡强', '2015-02-26 00:00:00', '2014-02-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1301', '3', '1', '中', '4.下面能修改表名字的命令是：', 'A.ALTER TABLE RENAME', 'B.RENAME', 'C.ALTER TABLE MOVE', 'D.ALTER TABLE MODIFY', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-02-27 00:00:00', '2014-02-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1302', '3', '1', '中', '5.下面那个SQL命令是用于清空表中数据的DDL语句：', 'A.UPDATE', 'B.DELETE ', 'C.TRUNCATE', 'D.SELECT', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-02-28 00:00:00', '2014-02-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1303', '3', '1', '中', '6.下面哪条语句可以取出薪水最高的前三个人：', 'A.select * from (select * from employees order by salary );', 'B.select * from (select * from employees order by salary ) where rownum<=3; ', 'C.select * from (select * from employees order by salary desc) where rownum<=3;', 'D.select * from employees where rownum<=3 order by salary desc;  ', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-03-01 00:00:00', '2014-02-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1304', '3', '1', '中', '7.下面那个权限是连接数据库所需要的权限：', 'A.create table', 'B.create session', 'C.create tablespace', 'D.create database', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-03-02 00:00:00', '2014-03-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1305', '3', '1', '中', '8.下面哪种情况会使没有完成的事务“隐式”提交：', 'A.执行多个查询语句', 'B.执行Commit', 'C.执行create table 命令', 'D.服务器掉电', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-03-03 00:00:00', '2014-03-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1306', '3', '1', '中', '9.表 CLASSES 和 表 SCHEDULE 结构如下:  CLASSES：  ID NUMBER(9)   CLASS_NAME VARCHAR2(20)  TEACHER_ID NUMBER(9)  SCHEDULE：  CLASS_TIME DATE  CLASS_ID NUMBER(9)   你建一个视图显示每一课的课名、课时，并按教师ID排序 1下面语句将返回何种结果？  CREATE VIEW class_schedule AS  SELECT C.class_name as “Name”', 'A.语句创建视图 CLASS_SCHEDULE 且可产生预期结果. ', 'B.“Name”别名有语法错误', 'C.语法错误，因为视图不可基于连接查询.', 'D.语法错误，因为视图不可包含 ORDER BY 子句.', 'E:', 'A', '2', '1', '鲁志林', '胡强', '2015-03-04 00:00:00', '2014-03-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1307', '3', '1', '中', '10.下列哪个集合操作符返回两个查询所1的所有的行。', 'A.Union', 'B.Union ALL', 'C.Union only', 'D.connect by', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-03-05 00:00:00', '2014-03-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1308', '3', '1', '中', '1．数据库系统的核心是', 'A.数据库', 'B.数据库管理系统 ', 'C.数据模型', 'D.软件工具', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-03-06 00:00:00', '2014-03-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1309', '3', '1', '中', '2．SQL语言具有____的功能', 'A.关系规范化、数据操纵、数据控制', 'B.数据定义、数据操纵、数据控制', 'C.数据定义、关系规范化、数据控制', 'D.数据定义、关系规范化、数据操纵', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-03-07 00:00:00', '2014-03-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1310', '3', '1', '中', '3．SQL语言的数据操纵语句包括 SELECT，INSERT，UPDATE和 DELETE， 最重要的，也是使用最频繁的语句是', 'A.SELECT', 'B.INSERT', 'C.UPDATE', 'D.DELETE', 'E:', 'A', '2', '1', '鲁志林', '胡强', '2015-03-08 00:00:00', '2014-03-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1311', '3', '1', '中', '4．在关系数据库设计中，设计关系模式是____的任务。 ', 'A.需求分析阶段 ', 'B.概念设计阶段', 'C.逻辑设计阶段', 'D.物理设计阶段', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-03-09 00:00:00', '2014-03-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1312', '3', '1', '中', '5．____是DBMS的基本单位，它是用户定义的一组逻辑一致的程序序列。', 'A.程序', 'B.命令', 'C.事务', 'D.文件', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-03-10 00:00:00', '2014-03-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1313', '3', '1', '中', '6．在数据库中，产生数据不一致的根本原因是', 'A.数据存储量太大', 'B.没有严格保护数据', 'C.未对数据进行完整性控制 ', 'D.数据冗余', 'E:', 'D', '2', '1', '鲁志林', '胡强', '2015-03-11 00:00:00', '2014-03-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1314', '3', '1', '中', '7．下列SQL语句中，创建关系表的是____。', 'A.ALTER', 'B.CREATE', 'C.UPDATE', 'D.INSERT ', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-03-12 00:00:00', '2014-03-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1315', '3', '1', '中', '8．数据库的____是为了保证由授权用户对数据库所做的修改不会影响数据一致性的损失。', 'A.安全性', 'B.完整性', 'C.并发控制', 'D.恢复', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-03-13 00:00:00', '2014-03-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1316', '3', '1', '中', '9．事务是数据库进行的基本工作单位。如果一个事务执行成功，则全部更新提交；如果一个事务执行失败，则已做过的更新被恢复原状，好像整个事务从未有过这些更新，这样保持了数据库处于____状态。', 'A.安全性', 'B.一致性', 'C.完整性', 'D.可靠性 ', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-03-14 00:00:00', '2014-03-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1317', '3', '1', '中', '10．对并发操作若不加以控制，可能会带来数据的___问题。', 'A.不安全', 'B.死锁', 'C.死机', 'D.不一致', 'E:', 'D', '2', '1', '鲁志林', '胡强', '2015-03-15 00:00:00', '2014-03-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1318', '3', '1', '中', '在Access数据库中，一个关系就是一个', 'A）二维表', 'B）记录 ', 'C）字段', 'D）数据库 综合数据 ', 'E:', 'A', '4', '1', '鲁志林', '胡强', '2015-03-16 00:00:00', '2014-03-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1319', '3', '1', '中', '设有部门和员工两个实体，每个员工只能属于一个部门，一个部门可以有多名员工，则部门与员工实体之间的联系类型是', 'A）多对多', 'B）一对多', 'C）多对一', 'D）一对一', 'E:', 'B', '4', '1', '鲁志林', '胡强', '2015-03-17 00:00:00', '2014-03-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1320', '3', '1', '中', '关系R和关系S的交运算是', 'A）由关系R和关系S的所有元组合并组成的集合，再删去重复的元组', 'B）由属于R而不属于S的所有元组组成的集合', 'C）由既属于R又属于S的元组组成的集合', 'D）由R和S的元组连接组成的集合', 'E:', 'C', '4', '1', '鲁志林', '胡强', '2015-03-18 00:00:00', '2014-03-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1321', '3', '1', '中', '将表A的记录复制到表B中，且不删除表B中的记录，可以使用的查询是', 'A）删除查询', 'B）生成表查询', 'C）追加查询', 'D）交叉表查询', 'E:', 'C', '4', '1', '鲁志林', '胡强', '2015-03-19 00:00:00', '2014-03-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1322', '3', '1', '中', ' SQL的功能包括', 'A）查找、编辑错误、控制、操纵 ', 'B）数据定义创建数据表、查询、操纵添加删除修改、控制加密授权', 'C）窗体X、视图、查询X、页X', 'D）控制、查询X、删除、增加X', 'E:', 'B', '4', '1', '鲁志林', '胡强', '2015-03-20 00:00:00', '2014-03-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1323', '3', '1', '中', '在E-R图中，用来表示实体的图形是', 'A）矩形', 'B）椭圆形实体属性', 'C）菱形相互关系', 'D）三角形', 'E:', 'A', '4', '1', '鲁志林', '胡强', '2015-03-21 00:00:00', '2014-03-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1324', '3', '1', '中', '要实现报表的分组统计，其操作区域是', 'A）报表页眉或报表页脚区域', 'B）页面页眉或页面页脚区域', 'C）主体区域', 'D）组页眉或组页脚区域', 'E:', 'D', '4', '1', '鲁志林', '胡强', '2015-03-22 00:00:00', '2014-03-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1325', '3', '1', '中', '以下不是报表数据来源的是', 'A）一个多表创建的查询', 'B）一个表', 'C）多个表', 'D）一个单表创建的查询', 'E:', 'C', '4', '1', '鲁志林', '胡强', '2015-03-23 00:00:00', '2014-03-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1326', '3', '1', '中', 'SQL的含义是', 'A）结构化查询语言', 'B）数据定义语言', 'C）数据库查询语言', 'D）数据库操纵与控制语言', 'E:', 'A', '4', '1', '鲁志林', '胡强', '2015-03-24 00:00:00', '2014-03-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1327', '3', '1', '中', '要从学生关系中查询学生的姓名和年龄所进行的查询操作属于', 'A）1', 'B）投影 ', 'C）联结', 'D）自然联结', 'E:', 'B', '4', '1', '鲁志林', '胡强', '2015-03-25 00:00:00', '2014-03-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1328', '4', '1', '中', '以下说法正确的是', 'A:struts2是以strcts为核心的         ', ' B:struts2是以webwork为核心的', 'C:struts2是全新的，与struts1无关', ' D:struts2与webwork根本就是两个不同的框架', 'E:', 'B', '2', '1', '胡强', '胡强', '2015-03-26 00:00:00', '2014-03-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1329', '4', '1', '中', '下列关于OGNL的说法，不正确的是', 'A: OGNL是一种表达式语言  ', 'B:提供类型转换接口', '  C:提供类型转换器的默认实现', ' D:只能用于struts2框架', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-03-27 00:00:00', '2014-03-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1330', '4', '1', '中', 'struts2自带了许多不同类型的标签，下列哪个不是', 'A:  数据标签  ', 'B:流程控制标签   ', ' C:UI标签 ', 'D:视图标签', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-03-28 00:00:00', '2014-03-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1331', '4', '1', '中', '以下不是持久化行为的是', 'A:  将java对象保存到数据库中   ', 'B: 将数据保存到XML中', ' C:将对象添加到ArrayList中  ', ' D:将数据保存到二进制文件中', 'E:', 'C', '2', '1', '胡强', '胡强', '2015-03-29 00:00:00', '2014-03-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1332', '4', '1', '中', '下列属于多对一关系的是', 'A:书和作者    ', ' B:手机和生产厂家   ', '  C:用户和发布的出租信息', ' D:士兵和班长', 'E:', 'D', '2', '1', '胡强', '胡强', '2015-03-30 00:00:00', '2014-03-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1333', '4', '2', '中', '关于HQL说法正确的是', 'A:HQL就是SQL，不区分大小写        ', ' B:HQL不是SQL，关键字不区分大小写，实体对象和属性名区分大小写', ' C:HQL操作的是表、记录、字段等  ', ' D:HQL操作的是对象、属性等', '', 'BD', '2', '1', '胡强', '胡强', '2015-03-31 00:00:00', '2014-03-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1334', '4', '1', '中', '下列说法正确的是', 'A:  注解元数据仅用于JPA         ', 'B: 注解元数据仅用于Hibernate API ', 'C: 注解元数据可用于取代XML映射元数据', ' D:注解元数据必须配合XML映射元数据', 'E:', 'C', '2', '1', '胡强', '胡强', '2015-04-01 00:00:00', '2014-03-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1335', '4', '1', '中', '下列说法正确的是', 'A: JPA是JavaEE规范   ', ' B:Hibernate是JavaEE规范 ', ' C:Hibernate是JAP的实现  ', 'D:JPA是Hibernate的实现', 'E:', 'AC', '2', '1', '胡强', '胡强', '2015-04-02 00:00:00', '2014-04-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1336', '4', '1', '中', '在IOC容器的配置文件中，通过定义哪个元素对应于在应用程序中创建对象', 'A:bean     ', ' B:beans', 'C: id ', ' D:class', 'E:', 'A', null, '1', '胡强', '胡强', '2015-04-03 00:00:00', '2014-04-02 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1337', '4', '2', '中', 'IOC容器有两种注入方式，他们分别是', 'A: 构造器注入   ', 'B:Setter注入', ' C: Getter注入', ' D:方法注入', '', 'AB', null, '1', '胡强', '胡强', '2015-04-04 00:00:00', '2014-04-03 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1338', '4', '1', '中', 'struts2默认的处理结果类型是：', 'A:dispatcher', 'B:redirect', 'C:chain', 'D:forward', 'E:', 'A', '4', '1', '季恒', '胡强', '2015-04-05 00:00:00', '2014-04-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1339', '4', '1', '中', '不属于Struts2动作执行的结果类型是', 'A:action ', 'B:redirect ', 'C:redirectAction ', 'D:dispatcher', 'E:', 'A', '4', '1', '季恒', '胡强', '2015-04-06 00:00:00', '2014-04-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1340', '4', '1', '中', '正规开发中，在使用struts2时定义Action使用哪种方式。', 'A:直接定义Action类。', 'B:从ActionSupport继承。', 'C:从Action继承。', 'D:实现Action接口。', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-07 00:00:00', '2014-04-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1341', '4', '1', '中', '不属于Struts2的动作类的常量返回值的是', 'A:success input', 'B:input', 'C:never', 'D:login', 'E:', 'C', '4', '1', '季恒', '胡强', '2015-04-08 00:00:00', '2014-04-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1342', '4', '1', '中', '关于struts的描述中，不正确的是', 'A:struts 是一个基于JAVA EE的MVC', 'B:struts2的框架配置文件是struts-configxml ', 'C:struts2的控制组建核心包括核心控制和业务控制器', 'D:在struts中解决中文乱码可以通过修改struts。I18n。encoding的值为GBK来实现 ', 'E:', 'D', '4', '1', '季恒', '胡强', '2015-04-09 00:00:00', '2014-04-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1343', '4', '1', '中', 'struts中数据验证失败时，通过（）标签显示错误信息。', 'A:<s:text>', 'B:<s:error>', 'C:<s:faild>', 'D:<s:fielderror>', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-10 00:00:00', '2014-04-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1344', '4', '1', '中', '控制器需要在()配置文件中进行配置。', 'A:web.xml', 'B:struts.xml', 'C:struts2.xml ', 'D:webwork.xml', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-11 00:00:00', '2014-04-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1345', '4', '1', '中', '不属于Struts 2表单标签库的是', 'A:<s: textfield >', 'B:<s: textarea >', 'C:<s: submit >', 'D:<select>', 'E:', 'D', '4', '1', '季恒', '胡强', '2015-04-12 00:00:00', '2014-04-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1346', '4', '1', '中', '关于struts的描述中，不正确的是', 'A:struts 是一个基于JAVA EE的MVC', 'B:struts2的框架配置文件是struts-configxml', 'C:struts2的控制组建核心包括核心控制和业务控制器', 'D:在struts中解决中文乱码可以通过修改struts。I18n。encoding的值为GBK来实现', 'E:', 'D', '4', '1', '季恒', '胡强', '2015-04-13 00:00:00', '2014-04-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1347', '4', '1', '中', '正规开发中，在使用struts2时定义Action使用哪种方式。', 'A:直接定义Action类', 'B:从ActionSupport继承。', 'C:从Action继承。', 'D:实现Action接口。', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-14 00:00:00', '2014-04-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1348', '4', '1', '中', '以下属于struts2的控制器组件的是', 'A： Action', 'B: ActionForm', 'C:ActionServlet ', 'D:dispatchAction', 'E:', 'A', '4', '1', '季恒', '胡强', '2015-04-15 00:00:00', '2014-04-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1349', '4', '2', '中', '以下属于struts2的体系结构的是', 'A:struts2控制器组件', 'B:struts2配置文件', 'C：FilterDispatcher ', 'D.Action', '', 'AB', '4', '1', '季恒', '胡强', '2015-04-16 00:00:00', '2014-04-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1350', '4', '2', '中', '以下属于struts2配置文件的配置元素是', 'A: <package>', 'B:<action>', 'C:<form-bean>', 'D:<action-mapping>', '', 'AB', '4', '1', '季恒', '胡强', '2015-04-17 00:00:00', '2014-04-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1351', '4', '1', '中', '假设在Session中存在名为uid属性名，通过OGNL访问该属性，正确的是 ', 'A:#uid', 'B:#session.uid', 'C:uid', 'D:${session.uid}', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-18 00:00:00', '2014-04-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1352', '4', '1', '中', '关于\"#session.persons.{?#this.age>20}\"OGNL代码所表示的意义正确的是', 'A:从persons集合中取出所有年龄大于20的person对象', 'B:从persons集合中取出所有年龄大于20的person对象子集', 'C:从persons集合中取出最后一个年龄大于20的person对象', 'D:该代码不符合OGNL的语法', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-19 00:00:00', '2014-04-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1353', '4', '1', '中', 'struts2中的ActionServlet属于MVC模式', 'A:视图', 'B:模型', 'C:控制器', 'D:业务层', 'E:', 'C', '4', '1', '季恒', '胡强', '2015-04-20 00:00:00', '2014-04-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1354', '4', '1', '中', 'struts2主要核心功能是由（）实现 ', 'A:过滤器', 'B:拦截器', 'C:类型转换器', 'D:配置文件', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-21 00:00:00', '2014-04-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1355', '4', '1', '中', '在struts.xml文件中，使用（）定义拦截器', 'A:<interceptor-ref>', 'B:<interceptor>', 'C:<intercep>', 'D:<defaull-interceptor-ref>', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-22 00:00:00', '2014-04-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1356', '4', '2', '中', '自定义拦截器类的方式有：', 'A:实现Interceptor接口', 'B:实现AbstractionInceptor接口', 'C:继承Interceptor类', 'D:继承AbstractionInceptor类', '', 'AD', '4', '1', '季恒', '胡强', '2015-04-23 00:00:00', '2014-04-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1357', '4', '1', '中', '如果要实现自定义处理结果，需要继承哪个类', 'A:Dispatcher', 'B:StrutsResultSupport', 'C:Support', 'D:Action', 'E:', 'B', '4', '1', '季恒', '胡强', '2015-04-24 00:00:00', '2014-04-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1358', '4', '1', '中', '1. Struts1中,在Struts-config.xml配置Action中，scope属性的值可以是（）1', 'A.request ', 'B.Sessions', 'C.pages', 'D.applicationx', 'E:', 'A', '2', '1', '季恒', '胡强', '2015-04-25 00:00:00', '2014-04-24 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1359', '4', '1', '中', '2. Struts1中，以下选项中，需要在Struts-config.xml文件中配置的是（）', 'A.Actions', 'B.Form', 'C. Servlet', 'D.ActionForward', 'E:', 'D', '2', '1', '季恒', '胡强', '2015-04-26 00:00:00', '2014-04-25 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1360', '4', '1', '中', '3. Struts1框架中每个Action类（）', 'A.只有一个实例', 'B.每个请求都会创建一个实例', 'C. 没有有与之对应的ActionForm', 'D.可以没有ActionForm', 'E:', 'B', '2', '1', '季恒', '胡强', '2015-04-27 00:00:00', '2014-04-26 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1361', '4', '1', '中', '4. Struts1中，在Struts-config.xml中配置配置Action时，path属性代表（）', 'A.访问该Action匹配的路径', 'B.与Action相关联的ActionForm的路径', 'C. Action实例的类的路径', 'D.以上说法都不正确', 'E:', 'B', '2', '1', '季恒', '胡强', '2015-04-28 00:00:00', '2014-04-27 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1362', '4', '1', '中', '5. 在Struts-config.xml中配置Action时，name属性代表（）', 'A.Action的名称', 'B.与Action相关联的ActionForm的名称', 'C. 必须与配置ActionForm时的name属性值保持一致', 'D.可以与配置ActionForm时的name属性值不一致', 'E:', 'B', '2', '1', '季恒', '胡强', '2015-04-29 00:00:00', '2014-04-28 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1363', '4', '1', '中', '6. Struts1中的（）控制器负责处理具体的业务逻辑', 'A. ActionServlet', 'B.RequestProcessor', 'C. Action', 'D. Controller', 'E:', 'C', '2', '1', '季恒', '胡强', '2015-04-30 00:00:00', '2014-04-29 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1364', '4', '1', '中', '7. 在Struts1中，ActionServlet的作用是（ ）', 'A. 它是所有Form Bean的父类', 'B.它是所有Action Bean的父类', 'C. 核心控制器', 'D. 将请求中的数据封装到Form Bean中', 'E:', 'A', '2', '1', '季恒', '胡强', '2015-05-01 00:00:00', '2014-04-30 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1365', '4', '1', '中', '8. Struts1应用程序中定义了DispatchAction类的子类TestAction,则下列TestAction类的方 法中可以用于处理请求的是（ ）', 'A. public void print{        //省略此处代码 }', 'B. public String print{ \n//省略此处代码 return  “success ”  }\n', 'C.public ActionForward print(ActionMapping mapping,ActionForm  form,HttpServletRequest request,HttpServletResponse response){    //省略此处代码  return mapping.findForward(“success”); } ', 'D. private ActionForward print(ActionMapping mapping,ActionForm  form,HttpServletRequest request,HttpServletResponse response){    //省略此处代码  return mapping.findForward(“success”); }', 'E:', 'C', '2', '1', '季恒', '胡强', '2015-05-02 00:00:00', '2014-05-01 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1366', '4', '1', '中', '9. Struts1框架中，对Action类和DispatchAction类的关系描述正确的是（  ）', 'A. Action继承DispatchAction', 'B. DispatchAction继承自Action', 'C. Action和DispatchAction实现了同一接口', 'D. DispatchAction和Action无继承关系', 'E:', 'B', '2', '1', '季恒', '胡强', '2015-05-03 00:00:00', '2014-05-02 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1367', '4', '1', '中', '10. Struts1自定义的数据类型转换器需要实现的接口是（   ）', 'A. PlugIn', 'B. Converter', 'C. Filter', 'D. Convert', 'E:', 'C', '2', '1', '季恒', '胡强', '2015-05-04 00:00:00', '2014-05-03 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1368', '4', '1', '中', '1.以下属于struts2的控制器组件的是', 'A.Action', 'B: ActionForm', 'C:ActionServlet', 'D:dispatchAction', 'E:', 'A', '2', '1', '季恒', '胡强', '2015-05-05 00:00:00', '2014-05-04 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1369', '4', '2', '中', '2.以下属于struts2的体系结构的是：', 'A:struts2控制器组件', 'B:struts2配置文件', 'C：FilterDispatcher ', 'D.Action', '', 'AB', '2', '1', '季恒', '胡强', '2015-05-06 00:00:00', '2014-05-05 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1370', '4', '2', '中', '3.以下属于struts2配置文件的配置元素是：', 'A: <package>', 'B:<action>', 'C:<form-bean>', 'D:<action-mapping>', '', 'AB', '2', '1', '季恒', '胡强', '2015-05-07 00:00:00', '2014-05-06 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1371', '4', '1', '中', '4.关于struts1和struts2对比的说法正确的是:', 'A.struts1要求Action类继承其框架中的Action父类，struts2则不一定需要继承，可以是POJO类', 'B.struts1的Action不是线程安全的，struts2的Action是线程安全的', 'C.struts1和struts2都使用ActionForm对象封装用户的请求数据', 'D.Struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值', 'E:', 'A', '2', '1', '季恒', '胡强', '2015-05-08 00:00:00', '2014-05-07 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1372', '4', '2', '中', '5.以下关于ValueStack说法正确的是：', 'A.每个Action对象实例拥有一个ValueStack对象', 'B.每个Action对象实例拥有多个ValueStack对象', 'C.Action中封装的需要传入下一个页面的值，这些值封装在ValueStack对象中', 'D.ValueStack会在请求开始时创建，请求结束时消亡', '', 'ACD', '2', '1', '季恒', '胡强', '2015-05-09 00:00:00', '2014-05-08 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1373', '4', '1', '中', '6.关于struts2配置', 'A.必须在WEB-INF/classes目录下', 'B.名字必须为struts.xml', 'C.配置Action时，必须配置包信息', 'D.使用<forward>元素配置转发', 'E:', 'C', '2', '1', '季恒', '胡强', '2015-05-10 00:00:00', '2014-05-09 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1374', '4', '1', '中', '7.在struts配置中用（）元素配置常量', 'A.<const>', 'B.<constants>', 'C.<constant>', 'D.<constant-mapping>', 'E:', 'C', '2', '1', '季恒', '胡强', '2015-05-11 00:00:00', '2014-05-10 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1375', '4', '2', '中', '8.关于struts2包说法正确的是：', 'A.struts2框架使用包来管理常量', 'B.struts2框架定义包时必须指定name属性', 'C.struts2框架中配置包时，必须继承自struts-default包，否则会报错', 'D.struts2框架中使用包来管理Action', '', 'BCD', '2', '1', '季恒', '胡强', '2015-05-12 00:00:00', '2014-05-11 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1376', '4', '2', '中', '9.struts2中获取Servlet API的方法正确的是：', 'A.使用ActionContext对象以解耦合的方式访问Servlet API', 'B.使用ServletActionContext对象以解耦合的方式访问Servlet API', 'C.使用ActionContext对象以耦合的方式访问Servlet API', 'D.使用ActionContext对象以耦合的方式访问Servlet API', '', 'AD', '2', '1', '季恒', '胡强', '2015-05-13 00:00:00', '2014-05-12 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1377', '4', '1', '中', '10.struts2动态调用的格式为：', 'A.ActionName?methodName.action', 'B.ActionNamemethodName.action', 'C.ActionName*methodName.action', 'D.ActionName@methodName.action', 'E:', 'B', '2', '1', '季恒', '胡强', '2015-05-14 00:00:00', '2014-05-13 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1378', '4', '1', '高', '以下属于\nstruts2\n的控制器组件是：', 'A.Action', 'B.ActionForm', 'C.ActionServlet', 'D.dispatchAction', 'E:', 'A', '6', '1', '季恒', '胡强', '2015-05-15 00:00:00', '2014-05-14 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1379', '4', '2', '高', '以下属于struts2的体系结构的是：(2)', 'A.struts2控制器组件', 'B.struts2配置文件', ' C.FilterDispathcer', 'D.Action ', '', 'AB', '6', '1', '季恒', '胡强', '2015-05-16 00:00:00', '2014-05-15 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1380', '4', '1', '高', '关于struts1和struts2对比的说法正确的是', 'A.struts1要求Action类继承struts1框架中的Action父类，struts2中则不一定需要继承，可以是POJO类', 'B.struts1中的Action不是线程安全的，而struts2中的Action是线程安全的', 'C.struts1和struts2中都使用ActionForm对象封装用户的请求数据', 'D.struts1使用OGNL表达式语言来支持页面效果，struts2通过ValueStack技术使标签库访问值 ', 'E:', 'A', '6', '1', '季恒', '胡强', '2015-05-17 00:00:00', '2014-05-16 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1381', '4', '2', '高', '以下属于struts2配置文件中的配置元素是：(2)', 'A.<package>', 'B.<action>', ' C.<form-beans>', 'D.<action-mappings> ', '', 'AB', '6', '1', '季恒', '胡强', '2015-05-18 00:00:00', '2014-05-17 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1382', '4', '2', '高', '以下关于ValueStack说法正确的是：(2)', 'A.每个Action对象实例拥有一个ValueStack对象 ', 'B.每个Action对象实例拥有多个ValueStack对象', 'C.Action中封装了需要传入下一个页面的值，这些值封装在ValueStack对象中 ', 'D.ValueStack会在请求开始时被创建，请求结束时消亡', '', 'ACD', '6', '1', '季恒', '胡强', '2015-05-19 00:00:00', '2014-05-18 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1383', '4', '1', '高', '关于struts2配置文件说法正确的是：', 'A.必须在WEB-INF/classes目录下', 'B.名字必须为struts.xml', 'C.配置Action时，必须配置包信息', 'D.使用<forward>元素配置转发', 'E:', 'C', '6', '1', '季恒', '胡强', '2015-05-20 00:00:00', '2014-05-19 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1384', '4', '2', '高', '在struts2配置中用（）元素来配置常量:', 'A.struts2框架使用包来管理常量', 'B.struts2框架定义包时必须指定name属性', 'C.struts2框架中配置包时，必须继承自struts-default包，否则会报错', 'D.struts2框架中使用包来管理Action', '', 'BCD', '6', '1', '季恒', '胡强', '2015-05-21 00:00:00', '2014-05-20 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1385', '4', '1', '高', 'struts2中获取Servlet API的方法正确的是：(2)', 'A.使用ActionContext对象以解耦合的方法访问Servlet API', 'B.使用ServletActionContext对象以解耦合的方式访问Servlet API ', 'C.使用ActionContext对象以耦合的方式访问Servlet API', 'D.使用ServletActionContext对象以耦合的方式访问Servlet API ', 'E:', 'D', '6', '1', '季恒', '胡强', '2015-05-22 00:00:00', '2014-05-21 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1386', '4', '1', '高', 'struts2动态调用的格式为', 'A.ActionName?methodName.action', 'B.ActionName! methodName.action', 'C.ActionName*methodName.action', 'D.ActionName@mathodName.action ', 'E:', 'B', '6', '1', '季恒', '胡强', '2015-05-23 00:00:00', '2014-05-22 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1387', '4', '1', '高', '如果要实现struts2的数据校验功能 ', 'A.普通Action类可以实现', 'B.继承自Action接口可以实现', 'C.继承自ActionSupport类可以实现', 'D.继承自ActionValidate类可以实现 ', 'E:', 'C', '6', '1', '季恒', '胡强', '2015-05-24 00:00:00', '2014-05-23 00:00:00', '', null, '', null);
INSERT INTO `t_question` VALUES ('1388', '4', '1', '低', '1.在Struts实现的MVC框架中，（）类是包含了excute方法的控制器类，负责调用模型的方法，控制应用程序的流程。', 'A.Action', 'B.EJB', 'C.ActionServlet', 'D.JSP', 'E:', 'A', '2', '1', '鲁志林', '胡强', '2015-05-25 00:00:00', '2014-05-24 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1389', '4', '1', '低', '2.在基于Struts框架的web应用中，下面关于Action类的说法正确的是', 'A.Action类属于模型组件', 'B.Action类主要用来完成实际的业务逻辑', 'C.Action类负责调用模型的方法，更新模型的状态，并帮助控制应用程序的流程', 'D.在Web应用启动时会自动加载所有的Action实例', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-05-26 00:00:00', '2014-05-25 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1390', '4', '1', '低', '3.在基于Struts框架的Web应用中，下面关于ActionForm Bean的说法正确的是', 'A.ActionForm Bean用来完成一些实际的业务逻辑', 'B.Struts框架利用ActionForm Bean来进行视图和 控制器之间表单数据的传递', 'C.ActionForm负责调用模型的方法，更新模型的 状态', 'D.ActionForm Bean包含一些特殊的方法，reset() 用于验证表单数据validate()将其属性重新设置为默认值', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-05-27 00:00:00', '2014-05-26 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1391', '4', '1', '低', '4.在struts开发中有页面内容：  <a  herf=”oprator.do?method=add”>添加</a> <a  herf=”oprator.do?method=modify”>修改</a> 完成struts-config.xml的配置   <action                           \n                 path=\"/base\"        type=\"struts.action.BaseAction\" /> 在下划线上填入', 'A.parameter=\"action\"', 'B.parameter=\"method\" ', 'C.attribute=\"method\" ', 'D.attribute=\"action\"', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-05-28 00:00:00', '2014-05-27 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1392', '4', '1', '低', '5.在Struts配置文件中,（)元素的processorClass属性用于配置RequestProcessor类', 'A.<controller> ', 'B.<action> ', 'C.<processor>', 'D.<forward> ', 'E:', 'A', '2', '1', '鲁志林', '胡强', '2015-05-29 00:00:00', '2014-05-28 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1393', '4', '1', '低', '6.Action类的execute方法返回的ActionForward对象name属性必须与struts-config.xml中<forward>元素的（）属性匹配', 'A.forward', 'B.name', 'C.path', 'D.redirect', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-05-30 00:00:00', '2014-05-29 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1394', '4', '1', '低', '7.在Struts应用中，要在网页上输出personbean对象的userName属性值，下列代码正确的是', 'A.<bean:print name=\"personbean\" property=\"userName\"/>', 'B.<bean:write name=\"personbean\"  property=\"userName\"/>', 'C.<html:message  name=\"personbean\"  property=\"userName\"/> ', 'D.<html:write  name=\"personbean\" property=\"userName\"/>', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-05-31 00:00:00', '2014-05-30 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1395', '4', '1', '低', '8.以下代码定义了一个Vector类型的集合变量Animals： <%  Vector animals=new Vector(); animals.addElement(\"Dog\"); animals.addElement(\"Cat\"); animals.addElement(\"Bird\");  request.setAttribute(“animals”,animals); %>  现要求通过<logic:iterate>标签遍历该集合中的元素，并将每个元素的内容输出到网页中，下列代码正确的是', 'A.<logic:iterate id=\"animals\" name=\"element\">    <bean:write name=\"element\"/><br> </logic:iterate> ', 'B.<logic:iterate id=\"element\" name=\"animals\">    <bean:write name=\"element\"/><br> </logic:iterate>', 'C.<logic:iterate id=\"animals\"> \n <bean:write name=\"element\"/><br> </logic:iterate>', 'D.<logic:iterate id=\"element\" name=\"animals\">    <bean:write name=\"animals\"/><br> </logic:iterate> ', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-06-01 00:00:00', '2014-05-31 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1396', '4', '1', '低', '9.分析ActionForm Bean的validate方法： public  ActionErrors  validate(ActionMapping  actionMapping,                                 HttpServletRequest httpServletRequest) {    ActionErrors errors=new ActionErrors();    if((userName==null)|| (userName.length()<1)', 'A.errors.add(\"username\"); ', 'B.errors.add(\"username\",new  ActionMessage(\"Enter username\")); ', 'C.errors.add(new ActionMessage(\"Enter  username\"),\"username\");', 'D.errors.add(ActionMessage(\"Enter username\"));', 'E:', 'B', '2', '1', '鲁志林', '胡强', '2015-06-02 00:00:00', '2014-06-01 00:00:00', '否', null, '', null);
INSERT INTO `t_question` VALUES ('1397', '4', '1', '低', '10.分析Action Bean的execute方法：  public ActionForward execute(ActionMapping mapping, ActionForm form,     HttpServletRequest request,  HttpServletResponse response) {   ActionErrors errors=new ActionErrors();      \n if(!udao.check(loginform)){      errors.add', 'A.this.saveErrors(request, errors);', 'B.this.saveErrors(reponse, errors);', 'C.this.addErrors(request, errors);', 'D.this.addErrors(reponse, errors);', 'E:', 'C', '2', '1', '鲁志林', '胡强', '2015-06-03 00:00:00', '2014-06-02 00:00:00', '否', null, '', null);

-- ----------------------------
-- Table structure for t_question_type
-- ----------------------------
DROP TABLE IF EXISTS `t_question_type`;
CREATE TABLE `t_question_type` (
  `QUESTION_TYPE_ID` int(11) NOT NULL auto_increment COMMENT '题目类型id',
  `QUESTION_TYPE_NAME` varchar(255) default NULL COMMENT '题目类型：单选1 多选2',
  `QUESTION_BAK1` int(11) default NULL,
  `QUESTION_BAK2` varchar(45) default NULL,
  `QUESTION_BAK3` datetime default NULL,
  PRIMARY KEY  (`QUESTION_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_question_type
-- ----------------------------
INSERT INTO `t_question_type` VALUES ('1', '单选题', null, null, null);
INSERT INTO `t_question_type` VALUES ('2', '多选题', null, null, null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` int(40) NOT NULL auto_increment COMMENT '权限号',
  `ROLE_NAME` varchar(100) default NULL COMMENT '角色名',
  `ROLE_BAK1` int(4) default NULL,
  `ROLE_BAK3` datetime default NULL,
  `ROLE_BAK2` varchar(100) default NULL,
  PRIMARY KEY  (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '专业教师', null, null, null);
INSERT INTO `t_role` VALUES ('2', '班主任', null, null, null);
INSERT INTO `t_role` VALUES ('3', '教务人员', null, null, null);
INSERT INTO `t_role` VALUES ('4', '考务人员', null, null, null);
INSERT INTO `t_role` VALUES ('5', '阅卷人员', null, null, null);
INSERT INTO `t_role` VALUES ('6', '监考人员', null, null, null);
INSERT INTO `t_role` VALUES ('7', '超级管理员', null, null, null);

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `T_ROLE_MENU_ID` int(11) NOT NULL auto_increment COMMENT '权限_菜单号',
  `T_MENU_ID` int(11) default NULL COMMENT '菜单编号',
  `T_ROLE_ID` int(11) default NULL COMMENT '权限号',
  `T_BAK1` int(11) default NULL,
  `T_BAK2` varchar(255) default NULL,
  `T_BAK3` date default NULL,
  PRIMARY KEY  (`T_ROLE_MENU_ID`),
  KEY `FK_ROLE_ID` USING BTREE (`T_ROLE_ID`),
  KEY `FK_MENU_ID` USING BTREE (`T_MENU_ID`),
  CONSTRAINT `t_role_menu_ibfk_1` FOREIGN KEY (`T_MENU_ID`) REFERENCES `t_menu` (`MENU_ID`),
  CONSTRAINT `t_role_menu_ibfk_2` FOREIGN KEY (`T_ROLE_ID`) REFERENCES `t_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('1', '1', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('2', '2', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('3', '3', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('4', '4', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('5', '5', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('6', '6', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('7', '7', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('8', '8', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('9', '9', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('10', '10', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('11', '11', '7', null, null, null);
INSERT INTO `t_role_menu` VALUES ('12', '4', '4', null, null, null);
INSERT INTO `t_role_menu` VALUES ('13', '5', '4', null, null, null);
INSERT INTO `t_role_menu` VALUES ('14', '6', '4', null, null, null);
INSERT INTO `t_role_menu` VALUES ('15', '8', '4', null, null, null);
INSERT INTO `t_role_menu` VALUES ('16', '9', '4', null, null, null);
INSERT INTO `t_role_menu` VALUES ('17', '10', '4', null, null, null);
INSERT INTO `t_role_menu` VALUES ('18', '11', '4', null, null, null);
INSERT INTO `t_role_menu` VALUES ('19', '3', '1', null, null, null);
INSERT INTO `t_role_menu` VALUES ('20', '8', '1', null, null, null);
INSERT INTO `t_role_menu` VALUES ('21', '9', '1', null, null, null);
INSERT INTO `t_role_menu` VALUES ('22', '10', '1', null, null, null);
INSERT INTO `t_role_menu` VALUES ('23', '8', '2', null, null, null);
INSERT INTO `t_role_menu` VALUES ('24', '9', '2', null, null, null);
INSERT INTO `t_role_menu` VALUES ('25', '10', '2', null, null, null);

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score` (
  `SCORE_ID` int(11) NOT NULL auto_increment COMMENT '成绩表ID',
  `STUDENT_ID` int(255) default NULL COMMENT '学生编号',
  `PAPER_ID` int(11) default NULL COMMENT '试卷编号',
  `SUB_ID` int(255) default NULL COMMENT '科目编号',
  `SCORE` int(11) default NULL COMMENT '分数',
  `TEACHER_ID` int(255) default NULL COMMENT '阅卷老师ID',
  `PAPER_DATE` datetime default NULL COMMENT '考试时间',
  `SCORE_BAK1` int(11) default NULL,
  `SCORE_BAK2` varchar(255) default NULL,
  `SCORE_BAK3` datetime default NULL,
  PRIMARY KEY  (`SCORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES ('1', '36', '1', '1', '88', '5', '2015-08-06 08:30:00', null, null, null);
INSERT INTO `t_score` VALUES ('2', '36', '2', '2', '66', '2', '2015-08-06 08:30:00', null, null, null);

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `STUDENT_ID` int(11) NOT NULL auto_increment,
  `STUDENT_NO` varchar(255) NOT NULL,
  `STUDENT_NAME` varchar(255) default NULL,
  `STUDENT_ACCOUNT` varchar(255) default NULL,
  `STUDENT_PWD` varchar(255) default NULL,
  `STUDENT_SEX` varchar(255) default NULL,
  `STUDENT_AGE` int(11) default NULL,
  `STUDENT_PHONE` varchar(255) default NULL,
  `STUDENT_COLLEGE` varchar(255) default NULL COMMENT '毕业学校',
  `STUDENT_CLASS` varchar(255) default NULL,
  `STUDENT_EMAIL` varchar(255) default NULL,
  `STUDENT_ADDRESS` varchar(255) default NULL,
  `STUDENT_PIC` varchar(255) default NULL,
  `STUDENT_IS_DELETE` int(11) default '1' COMMENT '1 可用 ，0 删除',
  `STUDENT_BAK1` int(11) default NULL,
  `STUDENT_BAK2` varchar(255) default NULL,
  `STUDENT_BAK3` datetime default NULL,
  PRIMARY KEY  (`STUDENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('20', '201226240208', '李  雷', '201226240208', '21232f297a57a5a743894a0e4a801fc3', '男', '22', '13986555779', '计算机学院', '软工1202班', '317043454@qq.com', '湖北省武汉市新洲区', '', '1', '2', '', null);
INSERT INTO `t_student` VALUES ('27', '201226240101', '蔡志钢', '201226240101', '21232f297a57a5a743894a0e4a801fc3', '男', '21', '15377131012', '计算机学院', '软工1201班', '630954994@qq.com', '湖北省浠水县团陂镇大屋村12组', '', '1', null, '', null);
INSERT INTO `t_student` VALUES ('28', '201226240224', '郑文涛', '201226240224', '21232f297a57a5a743894a0e4a801fc3', '男', '21', '13986533785', '计算机学院', '软工1202班', '317043462@qq.com', '湖北省黄冈市麻城县铁门岗乡', '', '1', null, '', null);
INSERT INTO `t_student` VALUES ('30', '201226240201', '陈  琰', '201226240201', '6afd10c161e95e5ddc770b322e6f8c80', '男', '21', '18062843141', '计算机学院', '软工1202班', 'kimchy123@126.com', '湖北省潜江市园林路46号102室', '', '1', null, '0:0:0:0:0:0:0:1', null);
INSERT INTO `t_student` VALUES ('36', '201226240204', '范志新', '201226240204', '443b3fc7650e1f0fea3d9cc40631c2d5', '男', '21', '13986556281', '计算机学院', '软工1202班', '1032347893@qq.com', '湖北省武汉市新洲区', null, '1', null, '', null);
INSERT INTO `t_student` VALUES ('37', '201226240203', '代思豪', '201226240203', '21232f297a57a5a743894a0e4a801fc3', '男', '21', '13277418168', '计算机学院', '软工1202班', '798814330@qq.com', '湖北省荆州市', null, '1', null, '', null);
INSERT INTO `t_student` VALUES ('38', '13303130129', '王琦志', '13303130129', 'e10adc3949ba59abbe56e057f20f883e', '男', '21', '15586505127', '计算机学院', '软件1301班', '317043460@qq.com', '湖北省鄂州市江碧路', null, '1', null, '61.183.54.172', null);
INSERT INTO `t_student` VALUES ('39', '201226240104', '陈俊', '201226240104', 'e8798c0b45b7ef81758d69bbd819128c', '男', '21', '13986533375', '计算机学院', '软工1201班', '237621060@qq.com', '湖北省黄冈市蕲春县', null, '1', null, null, null);
INSERT INTO `t_student` VALUES ('40', '201222240108', '段翔翔', '201222240108', 'aaa22396b00fcfa15784b9efb79f5d91', '男', '21', '13986533523', '计算机学院', '电信1201班', '981435499@qq.com', '湖北省黄梅县张河村6组', null, '1', null, null, null);
INSERT INTO `t_student` VALUES ('41', '2014261020223', '董瑶', '2014261020223', '21232f297a57a5a743894a0e4a801fc3', '女', '21', '15971385460', '计算机学院', '计科1202班', '1553249374@qq.com', '湖北省黄冈市英山县红山镇', null, '1', null, '128.199.133.247', null);

-- ----------------------------
-- Table structure for t_subjectinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_subjectinfo`;
CREATE TABLE `t_subjectinfo` (
  `SUB_ID` int(12) NOT NULL auto_increment COMMENT '课程编号',
  `SUB_NAME` varchar(20) NOT NULL COMMENT '课程名',
  `SUB_BAK1` int(20) default NULL,
  `SUB_BAK2` varchar(255) default NULL,
  `SUB_BAK3` varchar(255) default NULL,
  PRIMARY KEY  (`SUB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_subjectinfo
-- ----------------------------
INSERT INTO `t_subjectinfo` VALUES ('1', 'core java', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('2', 'jsp', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('3', 'oracle', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('4', 'mybatis', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('5', 'struts2', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('6', 'hibernate', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('7', 'spring', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('8', 'jdbc', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('9', 'xml', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('10', 'css', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('11', 'html', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('12', 'android', null, null, null);
INSERT INTO `t_subjectinfo` VALUES ('13', 'servlet', null, null, null);

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `TEACHER_ID` int(11) NOT NULL auto_increment,
  `TEACHER_NAME` varchar(255) default NULL,
  `TEACHER_ACCOUNT` varchar(255) default NULL,
  `TEACHER_PWD` varchar(255) default NULL,
  `TEACHER_SEX` varchar(255) default NULL,
  `TEACHER_MAJOR` int(11) default NULL,
  `TEACHER_DEPATMENT` int(11) default NULL,
  `TEACHER_PHONE` varchar(255) default NULL,
  `TEACHER_EMAIL` varchar(255) default NULL,
  `TEACHER_ROLE` int(11) default NULL,
  `TEACHER_PIC` varchar(255) default NULL,
  `TEACHER_IS_DELETE` int(255) default '1' COMMENT '1:没删除 0 已删除',
  `TEACHER_BAK1` int(11) default NULL,
  `TEACHER_BAK2` varchar(255) default NULL,
  `TEACHER_BAK3` datetime default NULL,
  PRIMARY KEY  (`TEACHER_ID`),
  KEY `FK_TEACHER_DEPARTMENT_ID` USING BTREE (`TEACHER_DEPATMENT`),
  KEY `FK_TEACHER_MAJOR_ID` USING BTREE (`TEACHER_MAJOR`),
  KEY `FK_TEACHER_ROLE_ID` USING BTREE (`TEACHER_ROLE`),
  CONSTRAINT `t_teacher_ibfk_1` FOREIGN KEY (`TEACHER_DEPATMENT`) REFERENCES `t_department` (`DEPARTMENT_ID`),
  CONSTRAINT `t_teacher_ibfk_2` FOREIGN KEY (`TEACHER_MAJOR`) REFERENCES `t_major` (`MAJOR_ID`),
  CONSTRAINT `t_teacher_ibfk_3` FOREIGN KEY (`TEACHER_ROLE`) REFERENCES `t_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '林  萧', 'BQ201506010', '21232f297a57a5a743894a0e4a801fc3', '女', '1', '1', '15390217925', '26884226@qq.com', '1', '', '1', null, '', null);
INSERT INTO `t_teacher` VALUES ('2', '张 翰', 'BQ201107210', '21232f297a57a5a743894a0e4a801fc3', '男', '2', '1', '13986552432', '981536789@qq.com', '3', '', '1', null, '', null);
INSERT INTO `t_teacher` VALUES ('3', '林 浩', 'BQ201011221', '21232f297a57a5a743894a0e4a801fc3', '男', '1', '1', '13597599999', '999988888@qq.com', '6', '', '1', null, '', null);
INSERT INTO `t_teacher` VALUES ('4', '季 敏', 'BQ201401020', '21232f297a57a5a743894a0e4a801fc3', '女', '2', '1', '13888889999', '123456789@qq.com', '4', '', '1', null, '', null);
INSERT INTO `t_teacher` VALUES ('5', '李易峰', 'BQ201504057', '21232f297a57a5a743894a0e4a801fc3', '男', '3', '1', '18602987754', '134578937@qq.com', '2', '', '1', null, '', null);
INSERT INTO `t_teacher` VALUES ('6', '吴 欣', 'BQ201307084', '21232f297a57a5a743894a0e4a801fc3', '女', '3', '1', '15960238891', '2394833065@qq.com', '5', '', '1', null, '', null);
INSERT INTO `t_teacher` VALUES ('14', '张三丰', 'root', '21232f297a57a5a743894a0e4a801fc3', '男', '1', '1', '13986533162', '457934178@qq.com', '7', '', '1', null, '', null);

-- ----------------------------
-- Table structure for t_term
-- ----------------------------
DROP TABLE IF EXISTS `t_term`;
CREATE TABLE `t_term` (
  `TERM_ID` int(11) NOT NULL auto_increment COMMENT '学期表ID',
  `TERM_NAME` varchar(100) default NULL COMMENT '学期名称',
  `TERM_TOTAL_HOUR` int(11) default NULL COMMENT '学期总课时数',
  `TERM_BEGIN_TIME` date default NULL COMMENT '学期开始时间',
  `TERM_END_TIME` date default NULL COMMENT '学期结束时间',
  `TERM_BAK1` int(11) default NULL COMMENT '备用字段',
  `TERM_BAK2` varchar(255) default NULL COMMENT '备用字段',
  `TERM_BAK3` datetime default NULL COMMENT '备用字段',
  PRIMARY KEY  (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_term
-- ----------------------------
INSERT INTO `t_term` VALUES ('1', '第一阶段', '180', null, null, null, null, null);
INSERT INTO `t_term` VALUES ('2', '第二阶段', '260', null, null, null, null, null);
INSERT INTO `t_term` VALUES ('3', '第三阶段', '240', null, null, null, null, null);
INSERT INTO `t_term` VALUES ('4', '第四阶段', '100', null, null, null, null, null);
