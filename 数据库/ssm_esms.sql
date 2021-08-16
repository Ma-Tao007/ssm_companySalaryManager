-- --------------------------------------------------------
-- 主机:                           47.101.198.61
-- Server version:               10.3.14-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL 版本:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ssm_esms
CREATE DATABASE IF NOT EXISTS `ssm_esms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `ssm_esms`;

-- Dumping structure for table ssm_esms.department
DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `d_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `d_remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `d_isdel` int(11) DEFAULT NULL COMMENT '可用状态，0不可用，1可用',
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.department: ~9 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`d_id`, `d_name`, `d_remark`, `d_isdel`) VALUES
	(10, '财务部', '组织公司资产资金、成本费用、收入往来、退税纳税等财务核算和财务管理工作', 1),
	(11, '市场部', '组织市场调查和研究，掌握市场供求信息和行业动态，不定期编制市场动态分析报告，为公司经营决策提供依据。', 1),
	(13, '行政部', '负责公司日常行政后勤管理、党务及工、青、妇群众团体管理工作。', 1),
	(14, '人事部', '负责公司人力资源管理与开发。', 1),
	(16, '开发部', '负责产品设计研发、技术开发等。', 1),
	(19, '营销部', '产品销售、业务洽谈。', 1),
	(20, '售后服务部', '负责客户维护、提供产品售后服务。', 1),
	(21, '设计部', '负责产品设计实现。', 1),
	(22, '测试维护部', '负责产品测试、检查，维护产品质量。', 1);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.employee
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `e_account` varchar(255) DEFAULT NULL COMMENT '工号',
  `e_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `e_name` varchar(255) DEFAULT NULL COMMENT '员工姓名',
  `e_idcard` varchar(255) DEFAULT NULL COMMENT '身份证号码',
  `e_sex` varchar(11) DEFAULT NULL COMMENT '性别',
  `e_dagree` varchar(255) DEFAULT NULL COMMENT '学历',
  `e_birthday` date DEFAULT NULL COMMENT '生日',
  `e_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `e_phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `e_hometown` varchar(255) DEFAULT NULL COMMENT '住址',
  `e_rank` int(11) DEFAULT NULL COMMENT '职称，外键',
  `e_head_path` varchar(255) DEFAULT NULL COMMENT '头像',
  `e_urgent_person` varchar(255) DEFAULT NULL COMMENT '紧急联系人',
  `e_urgent_phone` varchar(255) DEFAULT NULL COMMENT '紧急联系人方式',
  `p_id` int(11) DEFAULT NULL COMMENT '岗位id，外键',
  `d_id` int(11) DEFAULT NULL COMMENT '部门id，外键',
  `e_base_pay` double(11,2) DEFAULT NULL COMMENT '基本工资',
  `e_isdel` int(11) DEFAULT NULL COMMENT '是否在职，0离职，1在职',
  `e_entry_time` date DEFAULT NULL COMMENT '入职时间',
  `e_leave_time` date DEFAULT NULL COMMENT '离职时间',
  PRIMARY KEY (`e_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.employee: ~32 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`e_id`, `e_account`, `e_password`, `e_name`, `e_idcard`, `e_sex`, `e_dagree`, `e_birthday`, `e_email`, `e_phone`, `e_hometown`, `e_rank`, `e_head_path`, `e_urgent_person`, `e_urgent_phone`, `p_id`, `d_id`, `e_base_pay`, `e_isdel`, `e_entry_time`, `e_leave_time`) VALUES
	(11, '18080833', '8DEFEF6341E5DF806875EA292327A734', '梁培珊', '440681199609065212', '女', '本科', '1996-09-01', '2513567599@163.com', '17876235355', '广东省佛山市顺德区你自己找', 15, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '她粑粑', '17876235355', 8, 22, 7500.00, 1, '2015-05-08', '2018-07-12'),
	(12, '18081302', '8DEFEF6341E5DF806875EA292327A734', '丘佳倩', '445222199703294545', '女', '本科', '1997-03-29', '17876253646@qq.com', '17876253588', '广东省肇庆市肇院小区11栋318', 16, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', 'mami', '17878787878', 9, 22, 7000.00, 1, '2015-04-22', NULL),
	(13, '18080809', '8DEFEF6341E5DF806875EA292327A734', '刘文晴', '441882201808080000', '女', '本科', '1998-01-01', 'venki@foxmail.com', '17876253509', '广东省肇庆市肇庆学院', 23, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '刘文晴', '17876253509', 9, 21, 7000.00, 1, '2015-05-28', NULL),
	(14, '18081001', '8DEFEF6341E5DF806875EA292327A734', '刘宇', '441623199610181286', '男', '本科', '1996-10-18', '953215743@qq.com', '18125784010', '广东省广州市越秀区人民小区', 16, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '刘彬', '17876253121', 10, 16, 8000.00, 1, '2015-04-29', NULL),
	(15, '18080810', '8DEFEF6341E5DF806875EA292327A734', '张杨洋', '441882201808090001', '男', '本科', '1998-08-01', 'zhangsan@qq.com', '17876253510', '广东省肇庆市肇庆学院', 17, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '张三', '17876253410', 24, 16, 8000.00, 1, '2015-05-19', NULL),
	(16, '18080811', '8DEFEF6341E5DF806875EA292327A734', '李林峰', '441882201808110002', '男', '本科', '1999-02-01', 'lilinfeng@qq.com', '17876253511', '广东省肇庆市肇庆学院', 15, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '李四', '17876253411', 24, 22, 6500.00, 1, '2015-05-08', NULL),
	(17, '18081002', '8DEFEF6341E5DF806875EA292327A734', '罗航', '442524199407062088', '男', '本科', '1994-07-06', 'luohang0706@163.com', '13590813876', '广东省梅州市兴宁市兴南大道中宁江新城', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '罗彬', '13684044815', 19, 19, 6000.00, 1, '2015-05-12', NULL),
	(18, '18080812', '8DEFEF6341E5DF806875EA292327A734', '王洋', '441882201808120003', '男', '本科', '1999-05-01', 'wangyang@qq.com', '17876253512', '广东省肇庆市肇庆学院', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '王五', '17876253512', 16, 11, 6000.00, 1, '2015-05-08', NULL),
	(19, '18022101', '8DEFEF6341E5DF806875EA292327A734', '杨候紫', '445222199302271345', '女', '研究生', '1993-02-27', '17876254635@qq.com', '17876254635', '广东省揭阳市某小区18栋302', 22, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '小丘', '17876256453', 20, 14, 10000.00, 1, '2015-05-12', NULL),
	(20, '18080813', '8DEFEF6341E5DF806875EA292327A734', '钱亦兴', '441882201808130004', '男', '本科', '1998-04-01', 'qianyixing@qq.com', '17876253513', '广东省 肇庆市肇庆学院', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '钱六', '17876253613', 21, 14, 5000.00, 1, '2015-05-08', NULL),
	(21, '14071501', '8DEFEF6341E5DF806875EA292327A734', '张曌', '341568199104011688', '男', '硕士', '1991-04-01', 'zhangzhao0401@hotmail.com', '18026920868', '四川省成都市天府新区幸福路', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '张庆延', '18826401828', 34, 13, 20000.00, 1, '2015-05-23', NULL),
	(22, '18080814', '8DEFEF6341E5DF806875EA292327A734', '赵敏', '441882201808140004', '女', '本科', '1997-09-13', 'zhaomin@qq.com', '17876253514', '广东省肇庆市肇庆学院', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '赵乾', '17876253414', 12, 10, 6300.00, 1, '2015-05-08', NULL),
	(24, '18051205', '8DEFEF6341E5DF806875EA292327A734', '张小迪', '445222199505051212', '女', '本科', '1995-05-05', '17876254611@qq.com', '17876254611', '广东省广州市白云区某果园', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '小巴', '17876254612', 37, 20, 5000.00, 1, '2015-05-11', NULL),
	(25, '17040811', '8DEFEF6341E5DF806875EA292327A734', '何菲', '385416199512228130', '女', '大专', '1995-12-22', '168561694@qq.com', '17876381296', '广西省玉林市陆川县源河村何家集', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '何英平', '17852389364', 37, 20, 5000.00, 1, '2015-05-08', NULL),
	(26, '18080911', '8DEFEF6341E5DF806875EA292327A734', '倪妮', '445111199407051234', '女', '本科', '1994-07-05', '1978835852@qq.com', '17876253382', '广东省揭阳市', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '倪好', '13976255852', 14, 10, 3500.00, 1, '2015-04-01', NULL),
	(27, '16012304', '8DEFEF6341E5DF806875EA292327A734', '莫建轩', '440536199002261413', '男', '博士', '1990-02-26', '743421331@qq.com', '17876258512', '广东省肇庆市端州区东岗村', 12, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '莫正言', '17612745321', 11, 16, 18000.00, 1, '2015-05-08', NULL),
	(28, '18081113', '8DEFEF6341E5DF806875EA292327A734', '邓小伦', '441221199005124567', '男', '本科', '1990-05-12', '145852145@qq.com', '13927053384', '广东省深圳市', 6, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '邓伦', '13545658871', 11, 22, 6000.00, 1, '2015-05-08', NULL),
	(29, '15090302', '8DEFEF6341E5DF806875EA292327A734', '林哼哼', '440689977652301568', '女', '本科', '1997-08-31', '126456@163.com', '17876542535', '广东省肇庆市端州区肇庆学院', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '张三', '13546785012', 34, 13, 4560.00, 1, '2015-04-17', NULL),
	(30, '17032802', '8DEFEF6341E5DF806875EA292327A734', '吴婷', '442531199511010305', '女', '本科', '1995-11-01', '15654913@qq.com', '18012394122', '广东省清远市城西大道明珠苑', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '吴泉峰', '18175754182', 22, 14, 6500.00, 1, '2015-05-09', NULL),
	(31, '16031208', '8DEFEF6341E5DF806875EA292327A734', '张庭', '452012369852034565', '男', '本科', '1981-04-22', '413546546@qq.com', '13756984562', '香港九龙', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '王琦', '13456985321', 16, 11, 14200.00, 1, '2015-05-08', NULL),
	(32, '18081301', '8DEFEF6341E5DF806875EA292327A734', '谢斐', '44521119970810458x', '女', '大专', '1997-08-10', 'xiefei@163.com', '13576258872', '广东省湛江市', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '谢绵', '18754826281', 37, 20, 3000.00, 1, '2015-05-20', NULL),
	(33, '15081302', '8DEFEF6341E5DF806875EA292327A734', '王七一', '445222199006070711', '男', '研究生', '1990-06-06', '17876256455@qq.com', '17876256455', '北京市故宫隔壁', 12, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '梦梦', '17876256455', 10, 21, 11000.00, 1, '2015-04-15', NULL),
	(34, '18071902', '8DEFEF6341E5DF806875EA292327A734', '林逸', '440685511926357021', '女', '本科', '2000-12-01', 'ida@qq.com', '18675946859', '广东省云浮市东大街', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '艾达', '17876253535', 21, 14, 4300.00, 1, '2015-04-12', NULL),
	(35, '18080214', '8DEFEF6341E5DF806875EA292327A734', '赵鑫', '445112199507112323', '男', '本科', '1995-07-11', 'zhaoxin@163.com', '17889253387', '广东省佛山市', 16, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '赵伟', '13945256681', 10, 16, 4000.00, 1, '2015-05-08', NULL),
	(36, '14101202', '8DEFEF6341E5DF806875EA292327A734', '张汉良', '446581197910319025', '男', '硕士', '1979-10-31', '123544@163.com', '13459875654', '广东省广州市天河区阳光小区八栋1002', 18, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '梁培珊', '18675180907', 11, 16, 16500.00, 1, '2015-04-06', NULL),
	(38, '15090205', '8DEFEF6341E5DF806875EA292327A734', '杨凌云', '441594199303084235', '男', '硕士', '1993-03-08', '561896796@qq.com', '17841239421', '广东省河源市紫金县环城北路', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '杨帆', '17645259118', 13, 10, 14000.00, 1, '2015-05-12', NULL),
	(39, '18081006', '8DEFEF6341E5DF806875EA292327A734', '孟琪琪', '445331199412104562', '女', '本科', '1994-12-10', '359883586@qq.com', '18917523266', '广东省中山市', 15, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '孟江', '18716628261', 9, 22, 4000.00, 1, '2015-05-08', NULL),
	(40, '17090333', '8DEFEF6341E5DF806875EA292327A734', '梁漂亮', '442653310258950126', '女', '本科', '1990-08-14', 'lbeautiful@163.com', '17895686354', '湖南省市中心', 23, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '梁帅气', '18675180604', 9, 21, 6500.00, 1, '2015-05-25', '2018-08-13'),
	(41, '11091202', '8DEFEF6341E5DF806875EA292327A734', '李丽海', '445222198908162233', '女', '大专', '1989-08-15', '13876625460@qq.com', '13876625460', '广东省惠州市小金口超市', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '米丽', '13876625464', 19, 19, 5000.00, 1, '2015-04-30', '2018-08-13'),
	(42, '18081008', '8DEFEF6341E5DF806875EA292327A734', '吴蕾', '44133119950815123x', '女', '本科', '1995-08-15', 'wulei123@163.com', '17888253362', '广东省广州市', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', '吴斌', '17836266682', 17, 11, 3000.00, 1, '2015-05-10', '2018-08-13'),
	(43, '08080122', '8DEFEF6341E5DF806875EA292327A734', '豪豪', '445222201506171706', '男', '幼儿园', '1990-02-01', '17876252525@qq.com', '17876252525', '广东省肇庆市某小区1栋101', 28, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', 'hismom', '17876253535', 37, 20, 1000.00, 1, '2015-05-08', '2018-08-13'),
	(44, '05010122', '8DEFEF6341E5DF806875EA292327A734', '姚期智', '445222198903032211', '男', '博士', '1989-03-03', '17025513212@qq.com', '17025513212', '北京市中关村隔壁', 7, '/ssm_esms/img/head/2019-09-24926.6591178493358.png', 'Alice', '17025513211', 11, 21, 40000.00, 1, '2015-05-05', '2018-08-13');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.key_value
DROP TABLE IF EXISTS `key_value`;
CREATE TABLE IF NOT EXISTS `key_value` (
  `kv_id` int(11) NOT NULL AUTO_INCREMENT,
  `kv_key` varchar(255) DEFAULT NULL COMMENT '键',
  `kv_value` double(11,0) DEFAULT NULL COMMENT '值',
  PRIMARY KEY (`kv_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.key_value: ~6 rows (approximately)
/*!40000 ALTER TABLE `key_value` DISABLE KEYS */;
INSERT INTO `key_value` (`kv_id`, `kv_key`, `kv_value`) VALUES
	(1, 'food_pay', 200),
	(2, 'traffic_pay', 200),
	(3, 'late_buckle_pay', -20),
	(4, 'early_buckle_pay', -20),
	(5, 'missionallowance', 50),
	(6, 'full_attendance_pay', 100);
/*!40000 ALTER TABLE `key_value` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.monthly_attendance
DROP TABLE IF EXISTS `monthly_attendance`;
CREATE TABLE IF NOT EXISTS `monthly_attendance` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_id` int(11) DEFAULT NULL COMMENT '员工id,外键',
  `attendance_time` date DEFAULT NULL COMMENT '某年某月的出勤情况',
  `sick_leave_num` int(11) DEFAULT NULL COMMENT '病假天数',
  `overtime_hour` double(11,2) DEFAULT NULL COMMENT '平时加班小时',
  `weekend_hour` double(11,2) DEFAULT NULL COMMENT '周末加班小时',
  `holiday_hour` double(11,2) DEFAULT NULL COMMENT '节假日加班小时',
  `late_num` int(11) DEFAULT NULL COMMENT '迟到次数',
  `early_num` int(11) DEFAULT NULL COMMENT '早退次数',
  `absence_num` int(11) DEFAULT NULL COMMENT '缺勤天数',
  `business_travel_num` int(11) DEFAULT NULL COMMENT '出差天数',
  `compassionate_leave_num` int(11) DEFAULT NULL COMMENT '事假天数',
  PRIMARY KEY (`ma_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.monthly_attendance: ~32 rows (approximately)
/*!40000 ALTER TABLE `monthly_attendance` DISABLE KEYS */;
INSERT INTO `monthly_attendance` (`ma_id`, `e_id`, `attendance_time`, `sick_leave_num`, `overtime_hour`, `weekend_hour`, `holiday_hour`, `late_num`, `early_num`, `absence_num`, `business_travel_num`, `compassionate_leave_num`) VALUES
	(1, 38, '2019-08-01', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(2, 16, '2019-08-02', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(3, 43, '2019-08-03', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(4, 21, '2019-08-04', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(5, 27, '2019-08-05', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(6, 36, '2019-08-06', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(7, 15, '2019-08-07', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(8, 42, '2019-08-08', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(9, 20, '2019-08-09', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(10, 26, '2019-08-10', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(11, 35, '2019-08-11', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(12, 14, '2019-08-12', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(13, 31, '2019-08-13', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(14, 41, '2019-08-14', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(15, 19, '2019-08-15', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(16, 25, '2019-08-16', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(17, 34, '2019-08-17', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(18, 13, '2019-08-18', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(19, 30, '2019-08-19', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(20, 40, '2019-08-20', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(21, 18, '2019-08-21', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(22, 24, '2019-08-22', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(23, 33, '2019-08-23', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(24, 12, '2019-08-24', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(25, 29, '2019-08-25', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(26, 39, '2019-08-26', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(27, 17, '2019-08-27', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(28, 44, '2019-08-28', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(29, 22, '2019-08-29', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(30, 32, '2019-08-30', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(31, 11, '2019-08-31', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1),
	(32, 28, '2019-08-31', 0, 1.00, 1.00, 2.00, 0, 1, 1, 1, 1);
/*!40000 ALTER TABLE `monthly_attendance` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.position
DROP TABLE IF EXISTS `position`;
CREATE TABLE IF NOT EXISTS `position` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `p_name` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `p_duty` varchar(255) DEFAULT NULL COMMENT '岗位描述',
  `p_post_pay` double(11,2) DEFAULT NULL COMMENT '岗位补贴',
  `p_isdel` int(11) DEFAULT NULL COMMENT '是否可用，0不可用，1可用',
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.position: ~21 rows (approximately)
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` (`p_id`, `p_name`, `p_duty`, `p_post_pay`, `p_isdel`) VALUES
	(8, '配置管理员', '负责最后的编译及提交到中心服务器', 200.00, 1),
	(9, 'QA', '负责软件测试及产品中测', 300.00, 1),
	(10, 'RD', '负责软件设计及实施', 500.00, 1),
	(11, '项目经理', '负责整体项目规划', 800.00, 1),
	(12, '财务总监', '负责整个财务的运作和公司的财务管理', 300.00, 1),
	(13, '财务经理', '负责公司的整个财务经营状况', 200.00, 1),
	(14, '会计', '负责总账和业务往来帐', 100.00, 1),
	(15, '出纳', '负责现金日记账和银行往来帐', 100.00, 1),
	(16, '市场部经理', '全面负责市场部门的业务及人员管理', 600.00, 1),
	(17, '市场调研人员', '负责市场调研计划的制定及实施', 200.00, 1),
	(18, '市场推广制作人员', '制定年度推广计划', 200.00, 1),
	(19, '营销人员', '负责对公司产品价值实现过程中各销售环节实行管理、监督、协调、服务', 260.00, 1),
	(20, '人事部经理', '负责公司人力资源工作的规划，建立、执行招聘、培训、考勤、劳动纪律等人事程序或规章制度', 500.00, 1),
	(21, '人事专员', '负责招聘及办理入职手续，负责人事档案的管理、保管、用工合同的签订', 200.00, 1),
	(22, '薪酬福利专员', '负责福利社保工资', 100.00, 1),
	(23, '培训经理', '负责计划新人培训及员工学习', 300.00, 1),
	(24, '培训师', '负责实施新人培训及员工学习', 280.00, 1),
	(34, '行政部总监', '对行政部工作全面负责、组织安排协调本部门职责范围内的工作', 600.00, 1),
	(35, '行政专员', '协助做好公司公司日常行政事务的组织协调工作', 200.00, 1),
	(36, '售后服务经理', '全面主持售后服务工作，完善售后服务各部门的规章管理制度', 500.00, 1),
	(37, '售后接待', '接待请求售后的客户，处理售后，听取客户意见并向上级汇报', 200.00, 1);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.rank_bonus
DROP TABLE IF EXISTS `rank_bonus`;
CREATE TABLE IF NOT EXISTS `rank_bonus` (
  `rb_id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(255) DEFAULT NULL COMMENT '职称名称',
  `rb_bonus` int(11) DEFAULT NULL COMMENT '奖金',
  PRIMARY KEY (`rb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.rank_bonus: ~17 rows (approximately)
/*!40000 ALTER TABLE `rank_bonus` DISABLE KEYS */;
INSERT INTO `rank_bonus` (`rb_id`, `rank_name`, `rb_bonus`) VALUES
	(6, '信息系统项目管理师', 200),
	(7, '系统分析师', 200),
	(12, '系统架构设计师', 200),
	(13, '网络规划设计师', 200),
	(14, '系统规划与管理师', 200),
	(15, '软件评测师', 150),
	(16, '软件设计师', 150),
	(17, '网络工程师', 150),
	(18, '系统集成项目管理工程师', 150),
	(19, '信息安全工程师', 150),
	(20, '网络管理员', 100),
	(21, '电子商务技术员', 100),
	(22, '信息系统运行管理员', 100),
	(23, '网页制作员', 100),
	(24, '信息处理技术员', 100),
	(28, '无', 0),
	(29, '技术员', 100);
/*!40000 ALTER TABLE `rank_bonus` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.salary
DROP TABLE IF EXISTS `salary`;
CREATE TABLE IF NOT EXISTS `salary` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `e_id` int(11) DEFAULT NULL COMMENT '员工id',
  `d_id` int(11) DEFAULT NULL COMMENT '部门ID',
  `s_time` date DEFAULT NULL COMMENT '时间某年某月',
  `s_state` int(11) DEFAULT NULL COMMENT '状态0暂存，1已发',
  `base_pay` double(11,2) DEFAULT NULL COMMENT '基本工资',
  `food_pay` double(11,2) DEFAULT NULL COMMENT '餐饮补贴',
  `post_pay` double(11,2) DEFAULT NULL COMMENT '岗位补贴',
  `working_year_pay` double(11,2) DEFAULT NULL COMMENT '工龄奖金',
  `rank_pay` double(11,2) DEFAULT NULL COMMENT '职称奖金',
  `traffic_pay` double(11,2) DEFAULT NULL COMMENT '交通补贴',
  `persion_pay` double(11,2) DEFAULT NULL COMMENT '养老保险',
  `medical_pay` double(11,2) DEFAULT NULL COMMENT '医疗保险',
  `unemployment_pay` double(11,2) DEFAULT NULL COMMENT '失业保险',
  `injury_pay` double(11,2) DEFAULT NULL COMMENT '工伤保险',
  `birth_pay` double(11,2) DEFAULT NULL COMMENT '生育保险',
  `housing_pay` double(11,2) DEFAULT NULL COMMENT '住房公积金',
  `late_pay` double(11,2) DEFAULT NULL COMMENT '迟到罚金',
  `early_pay` double(11,2) DEFAULT NULL COMMENT '早退罚金',
  `overtime_pay` double(11,2) DEFAULT NULL COMMENT '加班奖金',
  `sick_pay` double(11,2) DEFAULT NULL COMMENT '病假扣额',
  `thing_pay` double(11,2) DEFAULT NULL COMMENT '事假扣额',
  `business_travel_pay` double(11,2) DEFAULT NULL COMMENT '出差补贴',
  `full_attendance_pay` double(11,2) DEFAULT NULL COMMENT '全勤奖',
  `rissue_pay` double(11,2) DEFAULT NULL COMMENT '补发金额',
  `individual_income_tax` double(11,2) DEFAULT NULL COMMENT '个人所得税',
  `should_pay` double(11,2) DEFAULT NULL COMMENT '应发工资',
  `actual_pay` double(11,2) DEFAULT NULL COMMENT '实发工资',
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.salary: ~32 rows (approximately)
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` (`s_id`, `e_id`, `d_id`, `s_time`, `s_state`, `base_pay`, `food_pay`, `post_pay`, `working_year_pay`, `rank_pay`, `traffic_pay`, `persion_pay`, `medical_pay`, `unemployment_pay`, `injury_pay`, `birth_pay`, `housing_pay`, `late_pay`, `early_pay`, `overtime_pay`, `sick_pay`, `thing_pay`, `business_travel_pay`, `full_attendance_pay`, `rissue_pay`, `individual_income_tax`, `should_pay`, `actual_pay`) VALUES
	(1, 11, 22, '2019-09-01', 0, 7500.00, 200.00, 200.00, 400.00, 150.00, 200.00, -600.00, -160.00, -75.00, 0.00, 0.00, -600.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -266.50, 8650.00, 6948.50),
	(2, 12, 22, '2019-09-01', 0, 7000.00, 200.00, 300.00, 400.00, 150.00, 200.00, -560.00, -150.00, -70.00, 0.00, 0.00, -560.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -236.00, 8250.00, 6674.00),
	(3, 13, 21, '2019-09-01', 0, 7000.00, 200.00, 300.00, 400.00, 100.00, 200.00, -560.00, -150.00, -70.00, 0.00, 0.00, -560.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -231.00, 8200.00, 6629.00),
	(4, 14, 16, '2019-09-01', 0, 8000.00, 200.00, 500.00, 400.00, 150.00, 200.00, -640.00, -170.00, -80.00, 0.00, 0.00, -640.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -337.00, 9450.00, 7583.00),
	(5, 15, 16, '2019-09-01', 0, 8000.00, 200.00, 280.00, 400.00, 150.00, 200.00, -640.00, -170.00, -80.00, 0.00, 0.00, -640.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -315.00, 9230.00, 7385.00),
	(6, 16, 22, '2019-09-01', 0, 6500.00, 200.00, 280.00, 400.00, 150.00, 200.00, -520.00, -140.00, -65.00, 0.00, 0.00, -520.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -193.50, 7730.00, 6291.50),
	(7, 17, 19, '2019-09-01', 0, 6000.00, 200.00, 260.00, 400.00, 0.00, 200.00, -480.00, -130.00, -60.00, 0.00, 0.00, -480.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -136.00, 7060.00, 5774.00),
	(8, 18, 11, '2019-09-01', 0, 6000.00, 200.00, 600.00, 400.00, 0.00, 200.00, -480.00, -130.00, -60.00, 0.00, 0.00, -480.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -170.00, 7400.00, 6080.00),
	(9, 19, 14, '2019-09-01', 0, 10000.00, 200.00, 500.00, 400.00, 100.00, 200.00, -800.00, -210.00, -100.00, 0.00, 0.00, -800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -643.00, 11400.00, 8847.00),
	(10, 20, 14, '2019-09-01', 0, 5000.00, 200.00, 200.00, 400.00, 0.00, 200.00, -400.00, -110.00, -50.00, 0.00, 0.00, -400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -49.00, 6000.00, 4991.00),
	(11, 21, 13, '2019-09-01', 0, 20000.00, 200.00, 600.00, 400.00, 0.00, 200.00, -1600.00, -410.00, -200.00, 0.00, 0.00, -1600.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -2517.50, 21400.00, 15072.50),
	(12, 22, 10, '2019-09-01', 0, 6300.00, 200.00, 300.00, 400.00, 0.00, 200.00, -504.00, -136.00, -63.00, 0.00, 0.00, -504.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -164.30, 7400.00, 6028.70),
	(13, 24, 20, '2019-09-01', 0, 5000.00, 200.00, 200.00, 400.00, 0.00, 200.00, -400.00, -110.00, -50.00, 0.00, 0.00, -400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -49.00, 6000.00, 4991.00),
	(14, 25, 20, '2019-09-01', 0, 5000.00, 200.00, 200.00, 400.00, 0.00, 200.00, -400.00, -110.00, -50.00, 0.00, 0.00, -400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -49.00, 6000.00, 4991.00),
	(15, 26, 10, '2019-09-01', 0, 3500.00, 200.00, 100.00, 400.00, 0.00, 200.00, -280.00, -80.00, -35.00, 0.00, 0.00, -280.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -6.75, 4400.00, 3718.25),
	(16, 27, 16, '2019-09-01', 0, 18000.00, 200.00, 800.00, 400.00, 200.00, 200.00, -1440.00, -370.00, -180.00, 0.00, 0.00, -1440.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -2212.50, 19800.00, 14157.50),
	(17, 28, 22, '2019-09-01', 0, 6000.00, 200.00, 800.00, 400.00, 200.00, 200.00, -480.00, -130.00, -60.00, 0.00, 0.00, -480.00, 0.00, 0.00, 327.59, 0.00, 0.00, 0.00, 100.00, 0.00, -252.76, 8227.59, 6824.83),
	(18, 29, 13, '2019-09-01', 0, 4560.00, 200.00, 600.00, 400.00, 0.00, 200.00, -364.80, -101.20, -45.60, 0.00, 0.00, -364.80, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -53.36, 5960.00, 5030.24),
	(19, 30, 14, '2019-09-01', 0, 6500.00, 200.00, 100.00, 400.00, 0.00, 200.00, -520.00, -140.00, -65.00, 0.00, 0.00, -520.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -160.50, 7400.00, 5994.50),
	(20, 31, 11, '2019-09-01', 0, 14200.00, 200.00, 600.00, 400.00, 0.00, 200.00, -1136.00, -294.00, -142.00, 0.00, 0.00, -1136.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -1343.00, 15600.00, 11549.00),
	(21, 32, 20, '2019-09-01', 0, 3000.00, 200.00, 200.00, 400.00, 0.00, 200.00, -240.00, -70.00, -30.00, 0.00, 0.00, -240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4000.00, 3420.00),
	(22, 33, 21, '2019-09-01', 0, 11000.00, 200.00, 500.00, 400.00, 200.00, 200.00, -880.00, -230.00, -110.00, 0.00, 0.00, -880.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -825.00, 12500.00, 9575.00),
	(23, 34, 14, '2019-09-01', 0, 4300.00, 200.00, 200.00, 400.00, 0.00, 200.00, -344.00, -96.00, -43.00, 0.00, 0.00, -344.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -29.19, 5300.00, 4443.81),
	(24, 35, 16, '2019-09-01', 0, 4000.00, 200.00, 500.00, 400.00, 150.00, 200.00, -320.00, -90.00, -40.00, 0.00, 0.00, -320.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -35.40, 5450.00, 4644.60),
	(25, 36, 16, '2019-09-01', 0, 16500.00, 200.00, 800.00, 400.00, 150.00, 200.00, -1320.00, -340.00, -165.00, 0.00, 0.00, -1320.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -1896.25, 18250.00, 13208.75),
	(26, 38, 10, '2019-09-01', 0, 14000.00, 200.00, 200.00, 400.00, 0.00, 200.00, -1120.00, -290.00, -140.00, 0.00, 0.00, -1120.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -1211.00, 15000.00, 11119.00),
	(27, 39, 22, '2019-09-01', 0, 4000.00, 200.00, 300.00, 400.00, 150.00, 200.00, -320.00, -90.00, -40.00, 0.00, 0.00, -320.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -29.40, 5250.00, 4450.60),
	(28, 40, 21, '2019-09-01', 0, 6500.00, 200.00, 300.00, 400.00, 100.00, 200.00, -520.00, -140.00, -65.00, 0.00, 0.00, -520.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -190.50, 7700.00, 6264.50),
	(29, 41, 19, '2019-09-01', 0, 5000.00, 200.00, 260.00, 400.00, 0.00, 200.00, -400.00, -110.00, -50.00, 0.00, 0.00, -400.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -55.00, 6060.00, 5045.00),
	(30, 42, 11, '2019-09-01', 0, 3000.00, 200.00, 200.00, 400.00, 0.00, 200.00, -240.00, -70.00, -30.00, 0.00, 0.00, -240.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4000.00, 3420.00),
	(31, 43, 20, '2019-09-01', 0, 1000.00, 200.00, 200.00, 400.00, 0.00, 200.00, -80.00, -30.00, -10.00, 0.00, 0.00, -80.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2000.00, 1800.00),
	(32, 44, 21, '2019-09-01', 0, 40000.00, 200.00, 800.00, 400.00, 200.00, 200.00, -3200.00, -810.00, -400.00, 0.00, 0.00, -3200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, -6667.50, 41800.00, 27522.50);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.system_manager
DROP TABLE IF EXISTS `system_manager`;
CREATE TABLE IF NOT EXISTS `system_manager` (
  `sm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sm_account` varchar(255) DEFAULT NULL COMMENT '账号',
  `sm_password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`sm_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.system_manager: ~1 rows (approximately)
/*!40000 ALTER TABLE `system_manager` DISABLE KEYS */;
INSERT INTO `system_manager` (`sm_id`, `sm_account`, `sm_password`) VALUES
	(1, 'admin', '9EF9EE6C825CEAE1D980483E7BDEFE0C');
/*!40000 ALTER TABLE `system_manager` ENABLE KEYS */;

-- Dumping structure for table ssm_esms.working_years_bonus
DROP TABLE IF EXISTS `working_years_bonus`;
CREATE TABLE IF NOT EXISTS `working_years_bonus` (
  `wyb_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '工龄表主键',
  `wyb_year` int(11) DEFAULT NULL COMMENT '年份\r\n',
  `wyb_bonus` double(11,2) DEFAULT NULL COMMENT '奖金',
  PRIMARY KEY (`wyb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ssm_esms.working_years_bonus: ~20 rows (approximately)
/*!40000 ALTER TABLE `working_years_bonus` DISABLE KEYS */;
INSERT INTO `working_years_bonus` (`wyb_id`, `wyb_year`, `wyb_bonus`) VALUES
	(2, 0, 0.00),
	(3, 1, 100.00),
	(4, 2, 200.00),
	(5, 3, 300.00),
	(6, 4, 400.00),
	(7, 5, 500.00),
	(8, 6, 500.00),
	(9, 7, 500.00),
	(10, 8, 500.00),
	(11, 9, 500.00),
	(12, 10, 500.00),
	(26, 11, 500.00),
	(27, 12, 500.00),
	(28, 13, 500.00),
	(29, 15, 500.00),
	(30, 16, 500.00),
	(31, 17, 500.00),
	(32, 18, 500.00),
	(33, 19, 500.00),
	(34, 20, 500.00);
/*!40000 ALTER TABLE `working_years_bonus` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
