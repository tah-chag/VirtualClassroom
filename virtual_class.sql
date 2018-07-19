/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : virtual_class

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-05-31 17:06:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `assignment`
-- ----------------------------
DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_course` varchar(45) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `fk_created_by` varchar(45) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assignment
-- ----------------------------
INSERT INTO `assignment` VALUES ('1', 'IS314', '2018-06-08', 'EC0001', null);
INSERT INTO `assignment` VALUES ('2', 'BM117', '2018-06-02', 'EC0001', null);
INSERT INTO `assignment` VALUES ('3', 'BM117', '2018-05-09', 'JOE873', null);
INSERT INTO `assignment` VALUES ('4', 'IS211', '2018-05-09', 'HJJ444', null);

-- ----------------------------
-- Table structure for `assignment_student`
-- ----------------------------
DROP TABLE IF EXISTS `assignment_student`;
CREATE TABLE `assignment_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_assignment` int(11) DEFAULT NULL,
  `fk_student` varchar(45) DEFAULT NULL,
  `comment` text,
  `date_submitted` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of assignment_student
-- ----------------------------
INSERT INTO `assignment_student` VALUES ('1', '3', 'W181435', 'Sorry sir I am late', '2018-05-31');
INSERT INTO `assignment_student` VALUES ('2', '4', 'S234778', 'My apologies sir, had an accident', '2018-05-31');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_code` varchar(25) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  PRIMARY KEY (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('BM117', 'Accounting Principles');
INSERT INTO `course` VALUES ('BM123', 'Small Business & Entrepreneurship');
INSERT INTO `course` VALUES ('BM124', 'General Management Principles');
INSERT INTO `course` VALUES ('BM225', 'Research Methods');
INSERT INTO `course` VALUES ('CS111', 'Communication Skills');
INSERT INTO `course` VALUES ('EDM124', 'Business Economics');
INSERT INTO `course` VALUES ('IS111', 'Computer Hardware & Architecture');
INSERT INTO `course` VALUES ('IS112', 'Internet Fundamentals');
INSERT INTO `course` VALUES ('IS113', 'Systems Analysis and Design');
INSERT INTO `course` VALUES ('IS121', 'Introduction to Database Management Systems');
INSERT INTO `course` VALUES ('IS122', 'VB.Net');
INSERT INTO `course` VALUES ('IS123', 'Programming Using C');
INSERT INTO `course` VALUES ('IS125', 'Computer Networks and Telecomms');
INSERT INTO `course` VALUES ('IS211', 'Management Information Systems');
INSERT INTO `course` VALUES ('IS212', 'Computer Quantitative Methods');
INSERT INTO `course` VALUES ('IS213', 'Software Engineering');
INSERT INTO `course` VALUES ('IS214', 'Advanced Database Management Systems');
INSERT INTO `course` VALUES ('IS221', 'Visual C++');
INSERT INTO `course` VALUES ('IS222', 'Concepts of Java');
INSERT INTO `course` VALUES ('IS223', 'Web Graphics & Java Scripting');
INSERT INTO `course` VALUES ('IS224', 'Design and Analysis of Algorithms');
INSERT INTO `course` VALUES ('IS3111', 'Enterprise Information Systems');
INSERT INTO `course` VALUES ('IS313', 'Quality Management');
INSERT INTO `course` VALUES ('IS314', 'Artificial Intelligence and Expert Systems');
INSERT INTO `course` VALUES ('IS315', 'Advanced Visual Basic');
INSERT INTO `course` VALUES ('IS321', 'Decision Support Systems');
INSERT INTO `course` VALUES ('IS322', 'Computer Auditing');
INSERT INTO `course` VALUES ('IS323', 'Project Management in Computers');
INSERT INTO `course` VALUES ('IS325', 'Research Project');
INSERT INTO `course` VALUES ('SS122', 'Introduction to Gender Studies');

-- ----------------------------
-- Table structure for `course_work`
-- ----------------------------
DROP TABLE IF EXISTS `course_work`;
CREATE TABLE `course_work` (
  `id` int(11) NOT NULL DEFAULT '0',
  `fk_registration` int(11) DEFAULT NULL,
  `fk_test` varchar(12) DEFAULT NULL,
  `mark` decimal(18,0) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of course_work
-- ----------------------------

-- ----------------------------
-- Table structure for `lecture`
-- ----------------------------
DROP TABLE IF EXISTS `lecture`;
CREATE TABLE `lecture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(45) DEFAULT NULL,
  `fk_course` varchar(45) DEFAULT NULL,
  `lecture_name` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `fk_created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lecture
-- ----------------------------
INSERT INTO `lecture` VALUES ('1', null, 'CS101', 'The internet of things', 'https://www.youtube.com/embed/0qt3WuY305Y', null, null, '1');
INSERT INTO `lecture` VALUES ('2', null, 'CS102', 'Linked lists', null, '2018-05-18', null, '0');
INSERT INTO `lecture` VALUES ('3', null, 'HT1', 'Testing', 'https://www.youtube.com/embed/0qt3WuY305Y', '2018-05-18', null, '0');

-- ----------------------------
-- Table structure for `lecturer`
-- ----------------------------
DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE `lecturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ec_number` varchar(11) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `fk_title` varchar(2) DEFAULT NULL,
  `last_name` varchar(11) NOT NULL,
  `first_name` varchar(12) DEFAULT NULL,
  `other_names` varchar(25) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lecturer
-- ----------------------------
INSERT INTO `lecturer` VALUES ('1', 'L87928', 'chari@gmail.com', '1', 'Chari', 'Brian', 'Ryan', 'm', '1992-05-05 00:00:00', '2018-05-14 16:55:01');
INSERT INTO `lecturer` VALUES ('2', '490930', 'chagwiza@gmail.co', '1', 'Chagwiza', 'Tatenda', 'S', 'm', '1981-05-28 00:00:00', '2018-05-23 08:57:43');
INSERT INTO `lecturer` VALUES ('3', 'EC0001', 'nyasha@gmail.com', '1', 'Tinaye', 'Nyasha', '', 'm', '1983-05-20 00:00:00', '2018-05-31 10:55:48');
INSERT INTO `lecturer` VALUES ('4', 'HET245', 'tahchagwiza@outlook.com', '3', 'Sibanda', 'Trish', 'Samu', 'f', '1987-08-11 00:00:00', '2018-05-31 12:03:16');
INSERT INTO `lecturer` VALUES ('5', 'JOE873', 'tahchagwiza@outlook.com', '1', 'Zondo', 'Mucha', 'Eliza', 'f', '2018-07-10 00:00:00', '2018-05-31 14:58:30');
INSERT INTO `lecturer` VALUES ('6', 'EC0002', 'test@email.com', '1', 'test', 'test', '', 'm', '2018-05-15 00:00:00', '2018-05-31 15:10:18');
INSERT INTO `lecturer` VALUES ('7', 'FCG235', 'tahchagwiza@outlook.com', '1', 'Zuze', 'Matthew', 'Mark', 'm', '1973-05-09 00:00:00', '2018-05-31 15:40:54');
INSERT INTO `lecturer` VALUES ('8', 'GBB321', 'tahchagwiza@outlook.com', '1', 'Nkomo', 'Billy', 'Medley', 'm', '1988-07-06 00:00:00', '2018-05-31 15:44:17');
INSERT INTO `lecturer` VALUES ('9', 'EFV233', 'tahchagwiza@outlook.com', '1', 'Matata', 'Morris', 'Nel', 'm', '1982-07-07 00:00:00', '2018-05-31 16:16:50');
INSERT INTO `lecturer` VALUES ('10', 'HJJ444', 'tahchagwiza@outlook.com', '1', 'Muthi', 'Sebele', 'Sizwe', 'm', '1989-07-04 00:00:00', '2018-05-31 16:19:59');

-- ----------------------------
-- Table structure for `lecturer_course`
-- ----------------------------
DROP TABLE IF EXISTS `lecturer_course`;
CREATE TABLE `lecturer_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_course` varchar(255) NOT NULL,
  `fk_lecturer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ii` (`fk_course`,`fk_lecturer`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lecturer_course
-- ----------------------------
INSERT INTO `lecturer_course` VALUES ('1', 'BM117', 'EC0001');
INSERT INTO `lecturer_course` VALUES ('3', 'BM117', 'HET245');
INSERT INTO `lecturer_course` VALUES ('34', 'BM117', 'JOE873');
INSERT INTO `lecturer_course` VALUES ('27', 'BM123', 'HET245');
INSERT INTO `lecturer_course` VALUES ('17', 'BM124', 'HET245');
INSERT INTO `lecturer_course` VALUES ('51', 'BM124', 'HJJ444');
INSERT INTO `lecturer_course` VALUES ('40', 'BM225', 'EC0002');
INSERT INTO `lecturer_course` VALUES ('25', 'BM225', 'HET245');
INSERT INTO `lecturer_course` VALUES ('43', 'CS111', 'FCG235');
INSERT INTO `lecturer_course` VALUES ('8', 'CS111', 'HET245');
INSERT INTO `lecturer_course` VALUES ('7', 'EDM124', 'HET245');
INSERT INTO `lecturer_course` VALUES ('35', 'EDM124', 'JOE873');
INSERT INTO `lecturer_course` VALUES ('10', 'IS111', 'HET245');
INSERT INTO `lecturer_course` VALUES ('18', 'IS112', 'HET245');
INSERT INTO `lecturer_course` VALUES ('29', 'IS113', 'HET245');
INSERT INTO `lecturer_course` VALUES ('19', 'IS121', 'HET245');
INSERT INTO `lecturer_course` VALUES ('50', 'IS122', 'EFV233');
INSERT INTO `lecturer_course` VALUES ('30', 'IS122', 'HET245');
INSERT INTO `lecturer_course` VALUES ('39', 'IS123', 'EC0002');
INSERT INTO `lecturer_course` VALUES ('48', 'IS123', 'EFV233');
INSERT INTO `lecturer_course` VALUES ('22', 'IS123', 'HET245');
INSERT INTO `lecturer_course` VALUES ('11', 'IS125', 'HET245');
INSERT INTO `lecturer_course` VALUES ('36', 'IS125', 'JOE873');
INSERT INTO `lecturer_course` VALUES ('21', 'IS211', 'HET245');
INSERT INTO `lecturer_course` VALUES ('52', 'IS211', 'HJJ444');
INSERT INTO `lecturer_course` VALUES ('37', 'IS212', 'EC0002');
INSERT INTO `lecturer_course` VALUES ('44', 'IS212', 'FCG235');
INSERT INTO `lecturer_course` VALUES ('12', 'IS212', 'HET245');
INSERT INTO `lecturer_course` VALUES ('28', 'IS213', 'HET245');
INSERT INTO `lecturer_course` VALUES ('42', 'IS214', 'FCG235');
INSERT INTO `lecturer_course` VALUES ('4', 'IS214', 'HET245');
INSERT INTO `lecturer_course` VALUES ('31', 'IS221', 'HET245');
INSERT INTO `lecturer_course` VALUES ('47', 'IS222', 'GBB321');
INSERT INTO `lecturer_course` VALUES ('13', 'IS222', 'HET245');
INSERT INTO `lecturer_course` VALUES ('32', 'IS223', 'HET245');
INSERT INTO `lecturer_course` VALUES ('15', 'IS224', 'HET245');
INSERT INTO `lecturer_course` VALUES ('16', 'IS3111', 'HET245');
INSERT INTO `lecturer_course` VALUES ('24', 'IS313', 'HET245');
INSERT INTO `lecturer_course` VALUES ('33', 'IS314', 'EC0001');
INSERT INTO `lecturer_course` VALUES ('6', 'IS314', 'HET245');
INSERT INTO `lecturer_course` VALUES ('45', 'IS315', 'GBB321');
INSERT INTO `lecturer_course` VALUES ('5', 'IS315', 'HET245');
INSERT INTO `lecturer_course` VALUES ('14', 'IS321', 'HET245');
INSERT INTO `lecturer_course` VALUES ('46', 'IS322', 'GBB321');
INSERT INTO `lecturer_course` VALUES ('9', 'IS322', 'HET245');
INSERT INTO `lecturer_course` VALUES ('23', 'IS323', 'HET245');
INSERT INTO `lecturer_course` VALUES ('41', 'IS325', 'EC0002');
INSERT INTO `lecturer_course` VALUES ('49', 'IS325', 'EFV233');
INSERT INTO `lecturer_course` VALUES ('26', 'IS325', 'HET245');
INSERT INTO `lecturer_course` VALUES ('38', 'SS122', 'EC0002');
INSERT INTO `lecturer_course` VALUES ('20', 'SS122', 'HET245');

-- ----------------------------
-- Table structure for `notes`
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_course` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `fk_created_by` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notes
-- ----------------------------

-- ----------------------------
-- Table structure for `programme`
-- ----------------------------
DROP TABLE IF EXISTS `programme`;
CREATE TABLE `programme` (
  `program_code` varchar(3) NOT NULL,
  `program_name` varchar(45) NOT NULL,
  PRIMARY KEY (`program_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of programme
-- ----------------------------
INSERT INTO `programme` VALUES ('CAC', 'Accounting');
INSERT INTO `programme` VALUES ('CAL', 'Library');
INSERT INTO `programme` VALUES ('CSC', 'Computer Science');
INSERT INTO `programme` VALUES ('HEN', 'Electrical engineering');
INSERT INTO `programme` VALUES ('IS', 'Information Systems');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_course` varchar(45) DEFAULT NULL,
  `description` text,
  `fk_created_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', 'CS101', 'WHat?', null);
INSERT INTO `question` VALUES ('2', 'CS101', 'Internet check', 'L87928');

-- ----------------------------
-- Table structure for `registration`
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_program` varchar(12) DEFAULT NULL,
  `fk_student` varchar(12) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of registration
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `email` varchar(255) DEFAULT NULL,
  `reg_number` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `other_names` varchar(45) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `dob` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reg_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (null, 'R12345', 'Muchemwa', 'Terence', 'Kudzai', 'm', '2018-05-02', '2018-05-31 13:55:39');
INSERT INTO `student` VALUES (null, 'R123456', 'Muchemwa', 'Terence', 'Ryan', 'f', '2017-08-09', '2018-05-31 15:06:53');
INSERT INTO `student` VALUES (null, 'R44444', 'Chagwiza', 'Tariro', '', 'f', '2018-05-15', '2018-05-14 16:53:46');
INSERT INTO `student` VALUES ('tahchagwiza@outlook.com', 'S234778', 'Qhubeka', 'Silibaziso', 'Thembisa', 'f', '1984-03-08', '2018-05-31 16:53:22');
INSERT INTO `student` VALUES ('tahchagwiza@outlook.com', 'W123456', 'Soya', 'Taku', 'Tracy', 'f', '1990-07-11', '2018-05-31 15:55:56');
INSERT INTO `student` VALUES ('tahchagwiza@outlook.com', 'W127800', 'Thula', 'Lasizwe', 'Sibusiso', 'm', '1985-07-09', '2018-05-31 16:23:55');
INSERT INTO `student` VALUES (null, 'W170220', 'Chifamba', 'Lucetta', 'Rukudzo', 'f', '1993-05-14', '2018-05-15 17:15:55');
INSERT INTO `student` VALUES (null, 'W181435', 'Fira', 'Tatenda', 'N/A', 'm', '1984-03-13', '2018-05-31 11:23:33');
INSERT INTO `student` VALUES ('tahchagwiza@outlook.com', 'W567988', 'Stellah', 'Sarai', 'Tadi', 'f', '1986-08-13', '2018-05-31 16:40:43');

-- ----------------------------
-- Table structure for `student_course`
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_course` varchar(255) NOT NULL,
  `fk_student` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('1', 'BM117', 'W181435');
INSERT INTO `student_course` VALUES ('2', 'CS111', 'W181435');
INSERT INTO `student_course` VALUES ('3', 'IS111', 'W181435');
INSERT INTO `student_course` VALUES ('4', 'IS112', 'W181435');
INSERT INTO `student_course` VALUES ('5', 'IS121', 'W181435');
INSERT INTO `student_course` VALUES ('6', 'SS122', 'W181435');
INSERT INTO `student_course` VALUES ('7', 'IS123', 'W181435');
INSERT INTO `student_course` VALUES ('8', 'IS113', 'W181435');
INSERT INTO `student_course` VALUES ('9', 'IS122', 'W181435');
INSERT INTO `student_course` VALUES ('10', 'BM117', 'R12345');
INSERT INTO `student_course` VALUES ('11', 'IS314', 'R12345');
INSERT INTO `student_course` VALUES ('12', 'EDM124', 'R12345');
INSERT INTO `student_course` VALUES ('13', 'IS214', 'W123456');
INSERT INTO `student_course` VALUES ('14', 'CS111', 'W123456');
INSERT INTO `student_course` VALUES ('15', 'IS212', 'W123456');
INSERT INTO `student_course` VALUES ('16', 'BM124', 'W127800');
INSERT INTO `student_course` VALUES ('17', 'IS211', 'W127800');
INSERT INTO `student_course` VALUES ('18', 'BM117', 'W567988');
INSERT INTO `student_course` VALUES ('19', 'BM124', 'W567988');
INSERT INTO `student_course` VALUES ('20', 'IS211', 'W567988');
INSERT INTO `student_course` VALUES ('21', 'BM124', 'S234778');
INSERT INTO `student_course` VALUES ('22', 'IS211', 'S234778');

-- ----------------------------
-- Table structure for `sys_login`
-- ----------------------------
DROP TABLE IF EXISTS `sys_login`;
CREATE TABLE `sys_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_type` int(11) DEFAULT NULL,
  `fk_user` varchar(45) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ii` (`fk_user`) USING BTREE,
  UNIQUE KEY `iii` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_login
-- ----------------------------
INSERT INTO `sys_login` VALUES ('1', '1', '1', 'root@virtualclass.co.zw', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('2', '2', 'R44444', 'R44444', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('3', '3', 'L87928', 'L87928', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('4', '2', 'W170220', 'W170220', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('5', '3', '490930', '490930', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('6', '3', 'EC0001', 'EC0001', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('7', '2', 'W181435', 'W181435', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('8', '3', 'HET245', 'HET245', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('9', '2', 'R12345', 'R12345', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('10', '3', 'JOE873', 'JOE873', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('11', '2', 'R123456', 'R123456', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('12', '3', 'EC0002', 'EC0002', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('13', '3', 'FCG235', 'FCG235', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('14', '3', 'GBB321', 'GBB321', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('15', '2', 'W123456', 'W123456', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('16', '3', 'EFV233', 'EFV233', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('17', '3', 'HJJ444', 'HJJ444', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('18', '2', 'W127800', 'W127800', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('19', '2', 'W567988', 'W567988', '5f4dcc3b5aa765d61d8327deb882cf99');
INSERT INTO `sys_login` VALUES ('20', '2', 'S234778', 'S234778', '5f4dcc3b5aa765d61d8327deb882cf99');

-- ----------------------------
-- Table structure for `tests`
-- ----------------------------
DROP TABLE IF EXISTS `tests`;
CREATE TABLE `tests` (
  `id` int(11) NOT NULL DEFAULT '0',
  `fk_subject` varchar(12) DEFAULT NULL,
  `fk_lecturer` varchar(12) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tests
-- ----------------------------

-- ----------------------------
-- Table structure for `title`
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of title
-- ----------------------------
INSERT INTO `title` VALUES ('1', 'Mr');
INSERT INTO `title` VALUES ('2', 'Mrs');
INSERT INTO `title` VALUES ('3', 'Dr');
INSERT INTO `title` VALUES ('4', 'Pr');

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', 'root');
INSERT INTO `user_type` VALUES ('2', 'student');
INSERT INTO `user_type` VALUES ('3', 'lecturer');
