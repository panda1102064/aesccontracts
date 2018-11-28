-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: aesccontracts
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cw_contract`
--

DROP TABLE IF EXISTS `cw_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cw_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同主键',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area` varchar(100) NOT NULL COMMENT '区域',
  `carport_number` varchar(100) NOT NULL COMMENT '车位数量',
  `carport_serial` varchar(100) NOT NULL COMMENT '车位编号',
  `price` varchar(100) NOT NULL COMMENT '单价',
  `total` varchar(100) NOT NULL COMMENT '总计',
  `times` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `pay_one` varchar(100) NOT NULL COMMENT '支付方式一',
  `pay_two` varchar(100) NOT NULL COMMENT '支付方式二',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `rent_one` varchar(100) NOT NULL COMMENT '第一次租金',
  `rent_two` varchar(100) NOT NULL COMMENT '第二次租金',
  `rent_three` varchar(100) NOT NULL COMMENT '第三次租金',
  `area_four` varchar(100) NOT NULL COMMENT '区域四',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `accessory` varchar(100) NOT NULL COMMENT '附件',
  `remark` varchar(10000) NOT NULL COMMENT '备注',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date NOT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '有效状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`),
  UNIQUE KEY `contract_serial_2` (`contract_serial`),
  UNIQUE KEY `contract_serial_3` (`contract_serial`),
  UNIQUE KEY `contract_serial_4` (`contract_serial`),
  UNIQUE KEY `contract_serial_5` (`contract_serial`),
  UNIQUE KEY `contract_serial_6` (`contract_serial`),
  UNIQUE KEY `contract_serial_7` (`contract_serial`),
  UNIQUE KEY `contract_serial_8` (`contract_serial`),
  UNIQUE KEY `contract_serial_9` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='车位合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `departments` varchar(10) NOT NULL COMMENT '部门名称',
  `remark` varchar(50) DEFAULT NULL COMMENT '描述',
  `status` varchar(10) NOT NULL COMMENT '状态',
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dscwcktcw_contract`
--

DROP TABLE IF EXISTS `dscwcktcw_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dscwcktcw_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同主键',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方',
  `carport_number` varchar(255) NOT NULL COMMENT '车位数量',
  `purpose` varchar(100) NOT NULL COMMENT '车位用途',
  `plate` varchar(100) DEFAULT NULL COMMENT '车牌号',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `service_charge` varchar(100) NOT NULL COMMENT '服务费',
  `total` varchar(100) NOT NULL COMMENT '总计',
  `upper` varchar(100) NOT NULL COMMENT '大写',
  `payment` varchar(100) NOT NULL COMMENT '支付方式',
  `pay_time` varchar(100) NOT NULL COMMENT '支付时间',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `expire` varchar(100) NOT NULL COMMENT '到期时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '有效状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='大厦车位车库停车位合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dscwswtcw_contract`
--

DROP TABLE IF EXISTS `dscwswtcw_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dscwswtcw_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同主键',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方',
  `carport_number` varchar(100) NOT NULL COMMENT '车位数量',
  `purpose` varchar(100) NOT NULL COMMENT '车位用途',
  `plate` varchar(100) NOT NULL COMMENT '车牌号',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `service_charge` varchar(100) NOT NULL COMMENT '服务费',
  `total` varchar(100) NOT NULL COMMENT '总计',
  `upper` varchar(100) NOT NULL COMMENT '大写',
  `payment` varchar(100) NOT NULL COMMENT '支付方式',
  `pay_time` varchar(100) NOT NULL COMMENT '支付时间',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `expire` varchar(100) NOT NULL COMMENT '到期时间',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '有效状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='大厦车位室外停车位合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dslqdate`
--

DROP TABLE IF EXISTS `dslqdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dslqdate` (
  `date_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日期ID',
  `year_str` varchar(100) DEFAULT NULL COMMENT '年起',
  `month_str` varchar(100) DEFAULT NULL COMMENT '月起',
  `day_str` varchar(100) DEFAULT NULL COMMENT '日起',
  `year_ed` varchar(100) DEFAULT NULL COMMENT '年止',
  `month_ed` varchar(100) DEFAULT NULL COMMENT '月止',
  `day_ed` varchar(100) DEFAULT NULL COMMENT '日止',
  `price` varchar(100) DEFAULT NULL COMMENT '租金单价',
  `total` varchar(100) DEFAULT NULL COMMENT '合计',
  `upper1` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '大写',
  `contract_id` int(11) NOT NULL COMMENT '大厦楼裙ID',
  PRIMARY KEY (`date_id`),
  KEY `FK_Reference_4` (`contract_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`contract_id`) REFERENCES `dslqht_contract` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='大厦楼群合同日期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dslqht_contract`
--

DROP TABLE IF EXISTS `dslqht_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dslqht_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(100) NOT NULL COMMENT '接受年',
  `accept_month` varchar(100) NOT NULL COMMENT '接受月',
  `accept_day` varchar(100) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(100) NOT NULL COMMENT '承租位置',
  `building_area` varchar(100) NOT NULL COMMENT '建面',
  `expires` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(100) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(100) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(100) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `area3` varchar(100) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(100) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(100) NOT NULL COMMENT '物管费2',
  `power_rate` varchar(100) NOT NULL COMMENT '电费',
  `water_rate` varchar(100) NOT NULL COMMENT '水费',
  `payment5` varchar(100) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(100) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(100) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(100) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(100) NOT NULL COMMENT '收费日2',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(100) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(100) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(100) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(100) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='大厦裙楼合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `esc_contract`
--

DROP TABLE IF EXISTS `esc_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `esc_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(100) NOT NULL COMMENT '接受年',
  `accept_month` varchar(100) NOT NULL COMMENT '接受月',
  `accept_day` varchar(100) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(1000) NOT NULL COMMENT '承租位置',
  `building_area` varchar(100) NOT NULL COMMENT '建面',
  `expires` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(100) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(100) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(100) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `area3` varchar(100) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(100) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(100) NOT NULL COMMENT '物管费2',
  `power_rate` varchar(100) NOT NULL COMMENT '电费',
  `water_rate` varchar(100) NOT NULL COMMENT '水费',
  `net_fee` varchar(100) NOT NULL COMMENT '网络服务费',
  `payment5` varchar(100) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(100) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(100) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(100) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(100) NOT NULL COMMENT '收费日2',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `car_number` varchar(1000) NOT NULL COMMENT '车辆台数',
  `trading_record` varchar(100) NOT NULL COMMENT '交易记录',
  `penetrance` varchar(100) NOT NULL COMMENT '延保渗透率',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_legal_person` varchar(100) DEFAULT NULL COMMENT '甲方法定代表人',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(100) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(100) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(100) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(100) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(100) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='二手车合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `escdate`
--

DROP TABLE IF EXISTS `escdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `escdate` (
  `date_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日期ID',
  `year_str` varchar(100) DEFAULT NULL COMMENT '年起',
  `month_str` varchar(100) DEFAULT NULL COMMENT '月起',
  `day_str` varchar(100) DEFAULT NULL COMMENT '日起',
  `year_ed` varchar(100) DEFAULT NULL COMMENT '年止',
  `month_ed` varchar(100) DEFAULT NULL COMMENT '月止',
  `day_ed` varchar(100) DEFAULT NULL COMMENT '日止',
  `price` varchar(100) DEFAULT NULL COMMENT '租金单价',
  `total` varchar(100) DEFAULT NULL COMMENT '合计',
  `contract_id` int(11) NOT NULL COMMENT '二手车租金ID',
  PRIMARY KEY (`date_id`),
  KEY `FK_Reference_3` (`contract_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`contract_id`) REFERENCES `esc_contract` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 COMMENT='二手车合同日期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guanggao_contract`
--

DROP TABLE IF EXISTS `guanggao_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `guanggao_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '展位合同主键',
  `contract_serial` varchar(20) NOT NULL COMMENT '合同编号',
  `first2` varchar(20) NOT NULL COMMENT '甲方2',
  `address` varchar(20) NOT NULL COMMENT '地址',
  `first_agent2` varchar(20) NOT NULL COMMENT '甲方经办人2',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `banks` varchar(20) NOT NULL COMMENT '开户行',
  `bank_account` varchar(20) NOT NULL COMMENT '账号',
  `second_agent2` varchar(20) NOT NULL COMMENT '乙方经办人2',
  `publish_content` varchar(20) NOT NULL COMMENT '发布内容',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `tatolfee` varchar(20) NOT NULL COMMENT '合同费用',
  `uppers2` varchar(20) NOT NULL COMMENT '大写2',
  `includefee` varchar(255) NOT NULL COMMENT '包含费用',
  `total_media` varchar(20) NOT NULL COMMENT '发布媒体总数',
  `uppers3` varchar(20) NOT NULL COMMENT '合同总金额大写',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  `first3` varchar(20) NOT NULL COMMENT '甲方3',
  `first_agent3` varchar(20) NOT NULL COMMENT '甲方经办人3',
  `firstdate` date NOT NULL COMMENT '甲方签约日期',
  `second_agent3` varchar(20) NOT NULL COMMENT '乙方经办人3',
  `seconddate` date NOT NULL COMMENT '乙方签约日期',
  `username` varchar(20) NOT NULL COMMENT '录入人',
  `status` varchar(5) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告销售合同';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guanggao_media_rent_tables`
--

DROP TABLE IF EXISTS `guanggao_media_rent_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `guanggao_media_rent_tables` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '媒体表主键',
  `media_serial` varchar(20) NOT NULL COMMENT '媒体点位编号',
  `location` varchar(20) NOT NULL COMMENT '发布位置',
  `media_type` varchar(20) NOT NULL COMMENT '媒体形式',
  `media_specification` varchar(20) NOT NULL COMMENT '媒体规格',
  `media_number` varchar(20) NOT NULL COMMENT '媒体数量',
  `release_time` varchar(20) NOT NULL COMMENT '发布时间',
  `release_fee` varchar(20) NOT NULL COMMENT '发布费（元）',
  `production_cost` varchar(20) NOT NULL COMMENT '制作上刊费',
  `contract_id` int(11) NOT NULL COMMENT '合同主键',
  PRIMARY KEY (`media_id`),
  KEY `FK_Reference_7` (`contract_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`contract_id`) REFERENCES `guanggao_contract` (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='租用媒体明细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guanggao_times`
--

DROP TABLE IF EXISTS `guanggao_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `guanggao_times` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '广告合同时间主键',
  `pay_year` varchar(20) NOT NULL COMMENT '付款日期年',
  `pay_month` varchar(20) NOT NULL COMMENT '付款日期月',
  `pay_day` varchar(20) NOT NULL COMMENT '付款日期日',
  `percents` varchar(20) NOT NULL COMMENT '总额百分比',
  `amounts` varchar(20) NOT NULL COMMENT '金额',
  `pay_upper` varchar(20) NOT NULL COMMENT '付款大写',
  `contract_id` int(11) NOT NULL COMMENT '广告合同主键',
  PRIMARY KEY (`time_id`),
  KEY `FK_Reference_6` (`contract_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`contract_id`) REFERENCES `guanggao_contract` (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsyf_wwgf_contract`
--

DROP TABLE IF EXISTS `lsyf_wwgf_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lsyf_wwgf_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '出租房位置',
  `building_area` varchar(100) NOT NULL COMMENT '面积',
  `expires` varchar(100) NOT NULL COMMENT '租赁期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `rent1` varchar(100) NOT NULL COMMENT '租金/平',
  `rent2` varchar(100) NOT NULL COMMENT '租金',
  `upper` varchar(100) NOT NULL COMMENT '大写',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `lease_year` varchar(100) NOT NULL COMMENT '租期年',
  `lease_month` varchar(100) NOT NULL COMMENT '租期月',
  `lease_day` varchar(100) NOT NULL COMMENT '租期日',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(100) DEFAULT NULL COMMENT '确认书签字人',
  `confirmation_year` varchar(100) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(100) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(100) DEFAULT NULL COMMENT '确认书日',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='临时用房_无物管费表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsyf_xz_contract`
--

DROP TABLE IF EXISTS `lsyf_xz_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lsyf_xz_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(20) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(200) DEFAULT NULL COMMENT '承租方',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `area1` varchar(20) NOT NULL COMMENT '区域1',
  `area2` varchar(20) NOT NULL COMMENT '区域2',
  `area3` varchar(20) NOT NULL COMMENT '区域2',
  `rental_location` varchar(200) NOT NULL COMMENT '出租房位置',
  `building_area` varchar(200) NOT NULL COMMENT '面积',
  `expires` varchar(20) NOT NULL COMMENT '租赁期限',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `transfer_year` varchar(20) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(20) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(20) NOT NULL COMMENT '移交日',
  `charge_year1` varchar(20) NOT NULL COMMENT '起算年',
  `charge_month1` varchar(20) NOT NULL COMMENT '起算月',
  `charge_day1` varchar(20) NOT NULL COMMENT '起算日',
  `cash_deposit` varchar(20) NOT NULL COMMENT '租金',
  `upper1` varchar(50) NOT NULL COMMENT '大写',
  `area4` varchar(200) NOT NULL COMMENT '区域4',
  `management_fee1` varchar(20) NOT NULL COMMENT '物管费',
  `management_fee2` varchar(20) NOT NULL COMMENT '物管费',
  `power_rate` varchar(20) NOT NULL COMMENT '电费',
  `water_rate` varchar(20) NOT NULL COMMENT '水费',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式',
  `payment5` varchar(20) NOT NULL COMMENT '支付方式',
  `charge_year2` varchar(20) NOT NULL COMMENT '起算年',
  `charge_month2` varchar(20) NOT NULL COMMENT '起算月',
  `charge_day2` varchar(20) NOT NULL COMMENT '起算日',
  `purpose` varchar(20) NOT NULL COMMENT '用途',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(20) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(20) DEFAULT NULL COMMENT '确认书签字人',
  `confirmation_year` varchar(20) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(20) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(20) DEFAULT NULL COMMENT '确认书日',
  `status` varchar(20) NOT NULL DEFAULT '1' COMMENT '状态',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='临时用房_新增表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lsyf_xz_date`
--

DROP TABLE IF EXISTS `lsyf_xz_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lsyf_xz_date` (
  `date_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日期ID',
  `year_str` varchar(20) DEFAULT NULL COMMENT '年起',
  `month_str` varchar(20) DEFAULT NULL COMMENT '月起',
  `day_str` varchar(20) DEFAULT NULL COMMENT '日起',
  `year_ed` varchar(20) DEFAULT NULL COMMENT '年止',
  `month_ed` varchar(20) DEFAULT NULL COMMENT '月止',
  `day_ed` varchar(20) DEFAULT NULL COMMENT '日止',
  `price` varchar(50) DEFAULT NULL COMMENT '租金单价',
  `upper` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '大写',
  `contract_id` int(11) NOT NULL COMMENT '临时用房ID',
  PRIMARY KEY (`date_id`),
  KEY `FK_Reference` (`contract_id`),
  CONSTRAINT `FK_Reference` FOREIGN KEY (`contract_id`) REFERENCES `lsyf_xz_contract` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='临时用房合同日期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mcgcbgsht_contract`
--

DROP TABLE IF EXISTS `mcgcbgsht_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mcgcbgsht_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(1000) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(1000) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(100) NOT NULL COMMENT '接受年',
  `accept_month` varchar(100) NOT NULL COMMENT '接受月',
  `accept_day` varchar(100) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(100) NOT NULL COMMENT '承租位置',
  `building_area` varchar(100) NOT NULL COMMENT '建面',
  `expires` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `total` varchar(100) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(100) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(100) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(100) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '保证金大写',
  `area3` varchar(100) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(100) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(100) NOT NULL COMMENT '物管费2',
  `power_rate` varchar(100) NOT NULL COMMENT '电费',
  `water_rate` varchar(100) NOT NULL COMMENT '水费',
  `payment5` varchar(100) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(100) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(100) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(100) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(100) NOT NULL COMMENT '收费日2',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_legal_person` varchar(100) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(100) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(100) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(100) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(100) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(100) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='名车广场内场场地合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mcgcnccdht_contract`
--

DROP TABLE IF EXISTS `mcgcnccdht_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mcgcnccdht_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(100) NOT NULL COMMENT '接受年',
  `accept_month` varchar(100) NOT NULL COMMENT '接受月',
  `accept_day` varchar(100) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(100) NOT NULL COMMENT '承租位置',
  `building_area` varchar(100) NOT NULL COMMENT '建面',
  `expires` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `rent1` varchar(100) NOT NULL COMMENT '租金',
  `total` varchar(100) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(100) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(100) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(100) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '保证金大写',
  `area3` varchar(100) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(100) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(100) NOT NULL COMMENT '物管费2',
  `power_rate` varchar(100) NOT NULL COMMENT '电费',
  `water_rate` varchar(100) NOT NULL COMMENT '水费',
  `payment5` varchar(100) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(100) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(100) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(100) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(100) NOT NULL COMMENT '收费日2',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_legal_person` varchar(100) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(100) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(100) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(100) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(100) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(100) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mcgctcc_contract`
--

DROP TABLE IF EXISTS `mcgctcc_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mcgctcc_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(1000) DEFAULT NULL COMMENT '承租方',
  `address` varchar(1000) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(200) NOT NULL COMMENT '出租房位置',
  `building_area` varchar(100) NOT NULL COMMENT '面积',
  `expires` varchar(100) NOT NULL COMMENT '租赁期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `rent1` varchar(100) NOT NULL COMMENT '租金/平',
  `upper2` varchar(100) NOT NULL COMMENT '大写1',
  `upper3` varchar(100) NOT NULL COMMENT '大写2',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `lease_year` varchar(100) NOT NULL COMMENT '租期年',
  `lease_month` varchar(100) NOT NULL COMMENT '租期月',
  `lease_day` varchar(100) NOT NULL COMMENT '租期日',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='名车广场停车场协议表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mcgcwzcxmb_contract`
--

DROP TABLE IF EXISTS `mcgcwzcxmb_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mcgcwzcxmb_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(1000) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(1000) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `serial` varchar(100) NOT NULL COMMENT '编号',
  `price` varchar(100) NOT NULL COMMENT '价格',
  `office_rent` varchar(100) NOT NULL COMMENT '办公室租金',
  `total` varchar(100) NOT NULL COMMENT '总计',
  `expires` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式4',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `charge_year1` varchar(100) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(100) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(100) NOT NULL COMMENT '收费日1',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `management_fee` varchar(100) NOT NULL COMMENT '物管费',
  `management_total` varchar(100) NOT NULL COMMENT '物管费合计',
  `charge_year2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(100) NOT NULL COMMENT '收费月2',
  `charge_day2` varchar(100) NOT NULL COMMENT '收费日2',
  `syfs` varchar(100) NOT NULL COMMENT '使用方式',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COMMENT='名车广场外展场新模版表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pjcw_contract`
--

DROP TABLE IF EXISTS `pjcw_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pjcw_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(1000) DEFAULT NULL COMMENT '承租方名称',
  `car_num` varchar(1000) DEFAULT NULL COMMENT '车位个数',
  `purpose` varchar(1000) DEFAULT NULL COMMENT '用途',
  `car_serial` varchar(100) DEFAULT NULL COMMENT '车牌号',
  `car_serial1` varchar(100) DEFAULT NULL COMMENT '备用车牌号',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `rent` varchar(100) NOT NULL COMMENT '租赁费',
  `total` varchar(100) NOT NULL COMMENT '共计',
  `upper` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式',
  `payment3` varchar(100) NOT NULL COMMENT '支付时间',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8 COMMENT='pjcw';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qpeqmsmb_contract`
--

DROP TABLE IF EXISTS `qpeqmsmb_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qpeqmsmb_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(1000) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(1000) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(300) NOT NULL COMMENT '承租地',
  `accept_year` varchar(20) DEFAULT NULL COMMENT '接受年',
  `accept_month` varchar(20) DEFAULT NULL COMMENT '接受月',
  `accept_day` varchar(20) DEFAULT NULL COMMENT '接受日',
  `lessee_location` varchar(300) NOT NULL COMMENT '承租位置',
  `building_area` varchar(300) NOT NULL COMMENT '建面',
  `expires` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `rent1` varchar(300) NOT NULL COMMENT '租金1',
  `total` varchar(100) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(100) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(100) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(100) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `upper2` varchar(300) NOT NULL COMMENT '大写2',
  `area3` varchar(300) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(300) NOT NULL COMMENT '物管费1楼',
  `management_fee` varchar(100) NOT NULL COMMENT '物管费',
  `power_rate` varchar(100) NOT NULL COMMENT '电费',
  `water_rate` varchar(100) NOT NULL COMMENT '水费',
  `payment5` varchar(100) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(100) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(100) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(100) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(100) NOT NULL COMMENT '收费日2',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_legal_person` varchar(100) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(100) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(100) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(100) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(100) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(100) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='汽配二期门市模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qpsqkfmb_contract`
--

DROP TABLE IF EXISTS `qpsqkfmb_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qpsqkfmb_contract` (
  `contract_id` int(100) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(1000) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(1000) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(100) NOT NULL COMMENT '接受年',
  `accept_month` varchar(100) NOT NULL COMMENT '接受月',
  `accept_day` varchar(100) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(100) NOT NULL COMMENT '承租位置',
  `building_area` varchar(100) NOT NULL COMMENT '建面',
  `expires` varchar(100) NOT NULL COMMENT '期限',
  `year_start` varchar(100) NOT NULL COMMENT '年起',
  `month_start` varchar(100) NOT NULL COMMENT '月起',
  `day_start` varchar(100) NOT NULL COMMENT '日起',
  `year_end` varchar(100) NOT NULL COMMENT '年止',
  `month_end` varchar(100) NOT NULL COMMENT '月止',
  `day_end` varchar(100) NOT NULL COMMENT '日止',
  `transfer_year` varchar(100) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(100) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `rent1` varchar(100) NOT NULL COMMENT '租金',
  `total` varchar(100) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(100) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(100) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(100) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(100) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(100) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(100) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(100) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(100) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `area3` varchar(100) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(100) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(100) NOT NULL COMMENT '物管费2',
  `sanitation` varchar(100) NOT NULL COMMENT '垃圾费用',
  `power_rate` varchar(100) NOT NULL COMMENT '电费',
  `water_rate` varchar(100) NOT NULL COMMENT '水费',
  `payment5` varchar(100) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(100) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(100) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(100) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(100) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(100) NOT NULL COMMENT '收费日2',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_legal_person` varchar(100) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(100) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(100) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(100) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(100) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(100) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(100) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(100) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(100) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(100) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(100) NOT NULL COMMENT '录入人',
  `status` varchar(100) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='汽配三期库房模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qpsqmsmb_contract`
--

DROP TABLE IF EXISTS `qpsqmsmb_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qpsqmsmb_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(20) DEFAULT NULL COMMENT '地址',
  `area1` varchar(20) NOT NULL COMMENT '区域1',
  `area2` varchar(20) NOT NULL COMMENT '区域2',
  `rental_location` varchar(20) NOT NULL COMMENT '承租地',
  `accept_year` varchar(20) DEFAULT NULL COMMENT '接受年',
  `accept_month` varchar(20) DEFAULT NULL COMMENT '接受月',
  `accept_day` varchar(20) DEFAULT NULL COMMENT '接受日',
  `lessee_location` varchar(50) NOT NULL COMMENT '承租位置',
  `building_area` varchar(50) NOT NULL COMMENT '建面',
  `expires` varchar(20) NOT NULL COMMENT '期限',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `transfer_year` varchar(20) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(20) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(20) NOT NULL COMMENT '移交日',
  `rent1` varchar(500) NOT NULL COMMENT '租金1',
  `total` varchar(20) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(20) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(20) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(20) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(20) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `property` varchar(20) NOT NULL COMMENT '房屋性质',
  `management_fee1` varchar(1000) NOT NULL COMMENT '物管费1楼',
  `management_fee` varchar(20) NOT NULL COMMENT '物管费',
  `power_rate` varchar(20) NOT NULL COMMENT '电费',
  `water_rate` varchar(20) NOT NULL COMMENT '水费',
  `payment5` varchar(20) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(20) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(20) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(20) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(20) NOT NULL COMMENT '收费日2',
  `purpose` varchar(20) NOT NULL COMMENT '用途',
  `remark` varchar(1000) DEFAULT '\\' COMMENT '备注',
  `first_legal_person` varchar(20) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(20) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `second_date` date NOT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(20) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(20) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(20) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(20) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  `status` varchar(20) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='汽配三期门市模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qpyqkfmb_contract`
--

DROP TABLE IF EXISTS `qpyqkfmb_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qpyqkfmb_contract` (
  `contract_id` int(100) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(100) NOT NULL COMMENT '接受年',
  `accept_month` varchar(100) NOT NULL COMMENT '接受月',
  `accept_day` varchar(100) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(50) NOT NULL COMMENT '承租位置',
  `building_area` varchar(50) NOT NULL COMMENT '建面',
  `expires` varchar(20) NOT NULL COMMENT '期限',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `transfer_year` varchar(20) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(20) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(100) NOT NULL COMMENT '移交日',
  `rent1` varchar(100) NOT NULL COMMENT '租金',
  `total` varchar(100) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(20) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(20) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(20) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(20) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `area3` varchar(100) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(20) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(20) NOT NULL COMMENT '物管费2',
  `sanitation` varchar(100) NOT NULL COMMENT '垃圾费用',
  `power_rate` varchar(20) NOT NULL COMMENT '电费',
  `water_rate` varchar(20) NOT NULL COMMENT '水费',
  `payment5` varchar(20) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(20) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(20) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(20) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(20) NOT NULL COMMENT '收费日2',
  `purpose` varchar(100) NOT NULL COMMENT '用途',
  `first_legal_person` varchar(20) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(20) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(20) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(20) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(20) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(20) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  `status` varchar(20) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='汽配一期库房模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `qpyqmsmb_contract`
--

DROP TABLE IF EXISTS `qpyqmsmb_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qpyqmsmb_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(20) DEFAULT NULL COMMENT '接受年',
  `accept_month` varchar(20) DEFAULT NULL COMMENT '接受月',
  `accept_day` varchar(20) DEFAULT NULL COMMENT '接受日',
  `lessee_location` varchar(100) NOT NULL COMMENT '承租位置',
  `building_area` varchar(100) NOT NULL COMMENT '建面',
  `expires` varchar(20) NOT NULL COMMENT '期限',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `transfer_year` varchar(20) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(20) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(20) NOT NULL COMMENT '移交日',
  `rent1` varchar(200) NOT NULL COMMENT '租金1',
  `total` varchar(20) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(20) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(20) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(20) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(20) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `property` varchar(20) NOT NULL COMMENT '房屋性质',
  `management_fee1` varchar(200) NOT NULL COMMENT '物管费1楼',
  `management_fee` varchar(10) NOT NULL COMMENT '物管费',
  `power_rate` varchar(20) NOT NULL COMMENT '电费',
  `water_rate` varchar(20) NOT NULL COMMENT '水费',
  `payment5` varchar(20) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(20) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(20) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(20) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(20) NOT NULL COMMENT '收费日2',
  `purpose` varchar(20) NOT NULL COMMENT '用途',
  `remark` varchar(1000) DEFAULT '\\' COMMENT '备注',
  `first_legal_person` varchar(20) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(20) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(20) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(20) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(20) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(20) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  `status` varchar(20) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='汽配一期门市模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ssmb_contract`
--

DROP TABLE IF EXISTS `ssmb_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ssmb_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(20) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(100) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `area1` varchar(20) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(20) NOT NULL COMMENT '接受年',
  `accept_month` varchar(20) NOT NULL COMMENT '接受月',
  `accept_day` varchar(20) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(400) NOT NULL COMMENT '承租位置',
  `building_area` varchar(400) NOT NULL COMMENT '建面',
  `expires` varchar(20) NOT NULL COMMENT '期限',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `transfer_year` varchar(20) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(20) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(20) NOT NULL COMMENT '移交日',
  `total` varchar(20) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(20) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(20) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(20) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(20) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `area3` varchar(20) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(20) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(20) NOT NULL COMMENT '物管费2',
  `power_rate` varchar(20) NOT NULL COMMENT '电费',
  `water_rate` varchar(20) NOT NULL COMMENT '水费',
  `payment5` varchar(20) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(20) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(20) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(20) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(20) NOT NULL COMMENT '收费日2',
  `purpose` varchar(20) NOT NULL COMMENT '用途',
  `first_legal_person` varchar(20) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(20) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(20) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(20) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(20) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(20) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  `status` varchar(20) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COMMENT='宿舍模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tyht_contract`
--

DROP TABLE IF EXISTS `tyht_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tyht_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(300) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(300) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `accept_year` varchar(20) NOT NULL COMMENT '接受年',
  `accept_month` varchar(20) NOT NULL COMMENT '接受月',
  `accept_day` varchar(20) NOT NULL COMMENT '接受日',
  `lessee_location` varchar(255) NOT NULL COMMENT '承租位置',
  `building_area` varchar(255) NOT NULL COMMENT '建面',
  `expires` varchar(20) NOT NULL COMMENT '期限',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `transfer_year` varchar(20) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(20) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(20) NOT NULL COMMENT '移交日',
  `rent1` varchar(200) NOT NULL COMMENT '租金',
  `total` varchar(20) NOT NULL COMMENT '合计',
  `upper1` varchar(100) NOT NULL COMMENT '大写',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(20) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(20) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(20) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(20) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `area3` varchar(20) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(20) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(20) NOT NULL COMMENT '物管费2',
  `power_rate` varchar(20) NOT NULL COMMENT '电费',
  `water_rate` varchar(20) NOT NULL COMMENT '水费',
  `payment5` varchar(20) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(20) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(20) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(20) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(20) NOT NULL COMMENT '收费日2',
  `purpose` varchar(20) NOT NULL COMMENT '用途',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_legal_person` varchar(20) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(20) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(20) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(20) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(20) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(20) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  `status` varchar(20) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='通用合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tyhtkn_contract`
--

DROP TABLE IF EXISTS `tyhtkn_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tyhtkn_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(100) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(300) DEFAULT NULL COMMENT '承租方名称',
  `address` varchar(300) DEFAULT NULL COMMENT '地址',
  `area1` varchar(100) NOT NULL COMMENT '区域1',
  `area2` varchar(100) NOT NULL COMMENT '区域2',
  `rental_location` varchar(100) NOT NULL COMMENT '承租地',
  `lessee_location` varchar(255) NOT NULL COMMENT '承租位置',
  `building_area` varchar(255) NOT NULL COMMENT '建面',
  `expires` varchar(20) NOT NULL COMMENT '期限',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `transfer_year` varchar(20) NOT NULL COMMENT '移交年',
  `transfer_month` varchar(20) NOT NULL COMMENT '移交月',
  `transfer_day` varchar(20) NOT NULL COMMENT '移交日',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式3',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式4',
  `charge_year1` varchar(20) NOT NULL COMMENT '收费年1',
  `charge_month1` varchar(20) NOT NULL COMMENT '收费月1',
  `charge_day1` varchar(20) NOT NULL COMMENT '收费日1',
  `cash_deposit` varchar(20) NOT NULL COMMENT '保证金',
  `upper2` varchar(100) NOT NULL COMMENT '大写2',
  `area3` varchar(20) NOT NULL COMMENT '区域3',
  `management_fee1` varchar(20) NOT NULL COMMENT '物管费1',
  `management_fee2` varchar(20) NOT NULL COMMENT '物管费2',
  `power_rate` varchar(20) NOT NULL COMMENT '电费',
  `water_rate` varchar(20) NOT NULL COMMENT '水费',
  `payment5` varchar(20) NOT NULL COMMENT '支付方式5',
  `payment6` varchar(20) NOT NULL COMMENT '支付方式6',
  `payment7` varchar(20) NOT NULL COMMENT '支付方式7',
  `payment8` varchar(20) NOT NULL COMMENT '支付方式8',
  `charge_year2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_month2` varchar(20) NOT NULL COMMENT '收费年2',
  `charge_day2` varchar(20) NOT NULL COMMENT '收费日2',
  `purpose` varchar(20) NOT NULL COMMENT '用途',
  `remark` varchar(10000) DEFAULT NULL COMMENT '备注',
  `first_legal_person` varchar(20) DEFAULT NULL COMMENT '法定代表人',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_legal_person` varchar(20) DEFAULT NULL COMMENT '乙方法定代表人',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `confirmation_signatory` varchar(20) DEFAULT NULL COMMENT '确认书签章',
  `confirmation_year` varchar(20) DEFAULT NULL COMMENT '确认书年',
  `confirmation_month` varchar(20) DEFAULT NULL COMMENT '确认书月',
  `confirmation_day` varchar(20) DEFAULT NULL COMMENT '确认书日',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  `status` varchar(20) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='通用合同跨年表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tyhtkndate`
--

DROP TABLE IF EXISTS `tyhtkndate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tyhtkndate` (
  `date_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日期ID',
  `year_str` varchar(20) DEFAULT NULL COMMENT '年起',
  `month_str` varchar(20) DEFAULT NULL COMMENT '月起',
  `day_str` varchar(20) DEFAULT NULL COMMENT '日起',
  `year_ed` varchar(20) DEFAULT NULL COMMENT '年止',
  `month_ed` varchar(20) DEFAULT NULL COMMENT '月止',
  `day_ed` varchar(20) DEFAULT NULL COMMENT '日止',
  `rent` varchar(40) DEFAULT NULL COMMENT '合计',
  `price` varchar(50) DEFAULT NULL COMMENT '租金单价',
  `upper` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '大写',
  `contract_id` int(11) NOT NULL COMMENT '通用合同ID',
  PRIMARY KEY (`date_id`),
  KEY `contract_id_idx` (`contract_id`),
  CONSTRAINT `contract_id` FOREIGN KEY (`contract_id`) REFERENCES `tyhtkn_contract` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='通用合同日期表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `u_permission`
--

DROP TABLE IF EXISTS `u_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `u_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL COMMENT 'url地址',
  `name` varchar(64) DEFAULT NULL COMMENT 'url描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `u_role`
--

DROP TABLE IF EXISTS `u_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `u_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `type` varchar(10) DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `u_role_permission`
--

DROP TABLE IF EXISTS `u_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `u_role_permission` (
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `pid` bigint(20) DEFAULT NULL COMMENT '权限ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `u_user_role`
--

DROP TABLE IF EXISTS `u_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `u_user_role` (
  `userid` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `rid` bigint(20) DEFAULT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(10) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `telephone` varchar(11) DEFAULT NULL COMMENT '电话',
  `departments` varchar(10) NOT NULL COMMENT '部门',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `positions` varchar(10) NOT NULL COMMENT '职位',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建修改日期',
  `lastaccess` datetime DEFAULT NULL COMMENT '最后登录时间',
  `status` int(11) NOT NULL COMMENT '1:有效，0:禁止登录',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `telephone` (`telephone`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户员工表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xescscdxtcw_contracts`
--

DROP TABLE IF EXISTS `xescscdxtcw_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xescscdxtcw_contracts` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同主键',
  `contract_serial` varchar(50) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(50) DEFAULT NULL COMMENT '承租方名称',
  `offer` varchar(255) NOT NULL COMMENT '楼层',
  `purpose` varchar(50) NOT NULL COMMENT '用途',
  `plate` varchar(20) NOT NULL COMMENT '一条车牌号',
  `year_start` varchar(20) NOT NULL COMMENT '二条年起',
  `month_start` varchar(20) NOT NULL COMMENT '二条月起',
  `day_start` varchar(20) NOT NULL COMMENT '二条日起',
  `year_end` varchar(20) NOT NULL COMMENT '二条年止',
  `month_end` varchar(20) NOT NULL COMMENT '二条月止',
  `day_end` varchar(20) NOT NULL COMMENT '二条日止',
  `service_charge` varchar(20) NOT NULL COMMENT '二条服务费',
  `total` varchar(20) NOT NULL COMMENT '二条共计',
  `numeral_sed` varchar(20) NOT NULL COMMENT '二条大写',
  `year_rd` varchar(20) NOT NULL COMMENT '三条年',
  `month_rd` varchar(20) NOT NULL COMMENT '三条月',
  `day_rd` varchar(20) NOT NULL COMMENT '三条日',
  `cash_deposit` varchar(20) NOT NULL COMMENT '四条保证金',
  `numeral_four` varchar(20) NOT NULL COMMENT '四条大写',
  `payment_way` varchar(20) NOT NULL COMMENT '五条支付方式',
  `payment_time` varchar(20) NOT NULL COMMENT '五条交款时间',
  `rent` varchar(20) NOT NULL COMMENT '五条场地租金',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '甲方委托代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方落款日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方委托代理人',
  `second_phone` varchar(20) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方落款时间',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '有效状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='新二手车市场地下停车位合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xescscldtcw_contract`
--

DROP TABLE IF EXISTS `xescscldtcw_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xescscldtcw_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_serial` varchar(20) NOT NULL COMMENT '合同编号',
  `merchant_name` varchar(20) DEFAULT NULL COMMENT '承租方名称',
  `place` varchar(20) NOT NULL COMMENT '提供场地',
  `popours` varchar(20) NOT NULL COMMENT '用途',
  `year_start` varchar(20) NOT NULL COMMENT '年起',
  `month_start` varchar(20) NOT NULL COMMENT '月起',
  `day_start` varchar(20) NOT NULL COMMENT '日起',
  `year_end` varchar(20) NOT NULL COMMENT '年止',
  `month_end` varchar(20) NOT NULL COMMENT '月止',
  `day_end` varchar(20) NOT NULL COMMENT '日止',
  `price` varchar(20) NOT NULL COMMENT '单价',
  `rent` varchar(20) NOT NULL COMMENT '租金',
  `upper1` varchar(20) NOT NULL COMMENT '大写1',
  `cash_deposit` varchar(20) NOT NULL COMMENT '保证金',
  `upper2` varchar(20) NOT NULL COMMENT '大写2',
  `payment1` varchar(20) NOT NULL COMMENT '支付方式1',
  `payment2` varchar(20) NOT NULL COMMENT '支付方式2',
  `payment3` varchar(20) NOT NULL COMMENT '支付方式3',
  `payday` varchar(20) NOT NULL COMMENT '第几日',
  `payment4` varchar(20) NOT NULL COMMENT '支付方式4',
  `first_agent` varchar(20) DEFAULT NULL COMMENT '甲方代理人',
  `first_date` date DEFAULT NULL COMMENT '甲方日期',
  `second_sign` varchar(20) DEFAULT NULL COMMENT '乙方签章',
  `second_agent` varchar(20) DEFAULT NULL COMMENT '乙方代理人',
  `second_phone` varchar(20) DEFAULT NULL COMMENT '乙方联系方式',
  `second_date` date DEFAULT NULL COMMENT '乙方日期',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态',
  `username` varchar(10) NOT NULL COMMENT '录入人',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新二手车市场楼顶停位库租赁协议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zhanwei_contract`
--

DROP TABLE IF EXISTS `zhanwei_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zhanwei_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '展位合同主键',
  `contract_serial` varchar(20) NOT NULL COMMENT '合同编号',
  `first2` varchar(20) NOT NULL COMMENT '甲方2',
  `address` varchar(20) NOT NULL COMMENT '地址',
  `first_agent2` varchar(20) NOT NULL COMMENT '甲方经办人2',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `banks` varchar(20) NOT NULL COMMENT '开户行',
  `bank_account` varchar(20) NOT NULL COMMENT '账号',
  `second_agent2` varchar(20) NOT NULL COMMENT '乙方经办人2',
  `activity_theme` varchar(20) NOT NULL COMMENT '活动主题',
  `activity_site` varchar(20) NOT NULL COMMENT '活动地点',
  `year_start` varchar(20) NOT NULL COMMENT '合同日期年起',
  `month_start` varchar(20) NOT NULL COMMENT '合同日期月起',
  `day_start` varchar(20) NOT NULL COMMENT '合同日期日起',
  `year_end` varchar(20) NOT NULL COMMENT '合同日期年止',
  `month_end` varchar(20) NOT NULL COMMENT '合同日期月止',
  `day_end` varchar(20) NOT NULL COMMENT '合同日期日止',
  `tatolfee` varchar(20) NOT NULL COMMENT '合同费用',
  `uppers` varchar(20) NOT NULL COMMENT '大写',
  `includefee` varchar(50) NOT NULL COMMENT '包含费用',
  `first3` varchar(20) NOT NULL COMMENT '甲方3',
  `first_agent3` varchar(20) NOT NULL COMMENT '甲方经办人3',
  `firstdate` date NOT NULL COMMENT '甲方签约日期',
  `second_agent3` varchar(20) NOT NULL COMMENT '乙方经办人3',
  `seconddate` date NOT NULL COMMENT '乙方签约日期',
  `username` varchar(20) NOT NULL COMMENT '录入人',
  `status` varchar(5) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`contract_id`),
  UNIQUE KEY `contract_serial` (`contract_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='展位活动合同';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zhanwei_times`
--

DROP TABLE IF EXISTS `zhanwei_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zhanwei_times` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '展位合同时间主键',
  `pay_year` varchar(20) NOT NULL COMMENT '付款日期年',
  `pay_month` varchar(20) NOT NULL COMMENT '付款日期月',
  `pay_day` varchar(20) NOT NULL COMMENT '付款日期日',
  `percents` varchar(20) NOT NULL COMMENT '总额百分比',
  `amounts` varchar(20) NOT NULL COMMENT '金额',
  `pay_upper` varchar(20) NOT NULL COMMENT '付款大写',
  `contract_id` int(11) NOT NULL COMMENT '展位合同主键',
  PRIMARY KEY (`time_id`),
  KEY `FK_Reference_5` (`contract_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`contract_id`) REFERENCES `zhanwei_contract` (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='展位付款时间表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-27  9:54:32
