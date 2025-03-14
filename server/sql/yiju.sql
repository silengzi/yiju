-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: yiju
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `yiju`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `yiju` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiju`;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` varchar(3) NOT NULL,
  `provice` varchar(15) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `time1` varchar(10) DEFAULT NULL,
  `price1` varchar(10) DEFAULT NULL,
  `time2` varchar(10) DEFAULT NULL,
  `price2` varchar(10) DEFAULT NULL,
  `time3` varchar(10) DEFAULT NULL,
  `price3` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('01','黑龙江省','哈尔滨市','香坊区','2021-02','1.05','2021-03','1.15','2021-04','1.04'),('02','黑龙江省','哈尔滨市','南岗区','2021-02','0.98','2021-03','1.32','2021-04','1.17'),('03','黑龙江省','哈尔滨市','道里区','2021-02','1.27','2021-03','1.15','2021-04','1.37');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newhouse`
--

DROP TABLE IF EXISTS `newhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newhouse` (
  `hid` char(4) NOT NULL COMMENT '房源编号',
  `pid` char(4) NOT NULL COMMENT '楼盘编号',
  `type` varchar(16) DEFAULT NULL COMMENT '户型',
  `harea` varchar(10) DEFAULT NULL COMMENT '建筑面积',
  `floor` varchar(2) DEFAULT NULL COMMENT '楼层',
  `price` varchar(10) DEFAULT NULL COMMENT '价格',
  `hpicture` varchar(10) DEFAULT NULL COMMENT '效果图',
  PRIMARY KEY (`hid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newhouse`
--

LOCK TABLES `newhouse` WRITE;
/*!40000 ALTER TABLE `newhouse` DISABLE KEYS */;
INSERT INTO `newhouse` VALUES ('04','1004','3室2厅1卫1厨','101.0','1','111.1','4.jpg'),('05','1005','2室2厅1卫1厨','83.0','1','91.3','5.jpg'),('06','1006','2室2厅1卫1厨','72.0','1','93.5','6.jpg'),('07','1007','9室4厅8卫2厨','484.8','1','650.72','7.jpg'),('08','1008','9室6厅7卫2厨','487.85','1','682.99','8.jpg'),('09','1009','8室3厅6卫2厨','487.05','1','681.87','9.jpg'),('10','1010','7室3厅2卫1厨','326.15','1','489.23','10.jpg'),('11','1011','7室4厅2卫1厨','318.52','1','477.78','11.jpg'),('12','1012','7室4厅7卫2厨','413.75','1','579.25','12.jpg'),('13','1013','7室6厅4卫2厨','370.77','1','519.08','13.jpg'),('14','1014','6室4厅3卫1厨','277.67','1','416.51','14.jpg'),('15','1015','6室4厅6卫2厨','489.11','1','684.75','15.jpg'),('16','1016','6室3厅4卫1厨','254.0','1','385.78','16.jpg'),('17','1017','5室4厅3卫1厨','231.84','1','347.76','17.jpg'),('18','1018','4厅2卫2厨1','131.76','1','204.23','18.jpg'),('19','1019','4室2厅2卫1厨','201.33','1','302','19.jpg'),('20','1020','4室3厅2卫1厨','193.58','1','290.37','20.jpg'),('21','1021','4室2厅2卫2厨','92','1','174.8','21.jpg'),('22','1022','4室2厅2卫1厨','136','1','102','22.jpg'),('23','1023','4室2厅2卫1厨','144.24','1','187.51','23.jpg'),('24','1024','4室2厅2卫1厨','145','1','217.5','24.jpg'),('25','1025','4室2厅5卫1厨','491.07','1','982.14','25.jpg'),('26','1026','4室2厅2卫1厨','120.53','1','168.74','26.jpg'),('27','1027','4室2厅2卫1厨','190.15','1','361.29','27.jpg'),('28','1028','4室2厅3卫1厨','249','1','697.2','28.jpg'),('29','1029','4室2厅2卫1厨','165','1','156.75','29.jpg'),('30','1030','4室2厅2卫1厨','143','1','157.3','30.jpg'),('31','1031','4室2厅3卫1厨','247','1','375.14','31.jpg'),('32','1032','4室2厅3卫1厨','162.47','1','325.8','32.jpg'),('33','1033','4室4厅4卫1厨','78','1','256.7','33.jpg'),('34','1034','4室2厅2卫1厨','177.81','1','284.5','34.jpg'),('35','1035','3室2厅2卫1厨','126.16','1','103.3','35.jpg'),('36','1036','3室2厅1卫1厨','111','1','94.35','36.jpg'),('37','1037','3室2厅2卫1厨','151.22','1','264.64','37.jpg'),('38','1038','3室2厅1卫1厨','121','1','193.6','38.jpg'),('39','1039','3室2厅2卫1厨','146.24','1','219.36','39.jpg');
/*!40000 ALTER TABLE `newhouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oldhouse`
--

DROP TABLE IF EXISTS `oldhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oldhouse` (
  `oid` varchar(3) NOT NULL COMMENT '二手房编号',
  `sellpoint` varchar(100) DEFAULT NULL COMMENT '卖点',
  `picture` varchar(20) DEFAULT NULL COMMENT '效果图',
  `price` varchar(10) DEFAULT NULL COMMENT '价格',
  `type` varchar(20) DEFAULT NULL COMMENT '室厅卫',
  `narea` varchar(10) DEFAULT NULL COMMENT '面积',
  `direction` varchar(10) DEFAULT NULL COMMENT '朝向',
  `xiaoqu` varchar(30) DEFAULT NULL COMMENT '小区',
  `floor` varchar(20) DEFAULT NULL COMMENT '楼层',
  `year` varchar(10) DEFAULT NULL COMMENT '建筑年代',
  `provice` varchar(15) DEFAULT NULL COMMENT '省',
  `city` varchar(30) DEFAULT NULL COMMENT '市',
  `area` varchar(30) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oldhouse`
--

LOCK TABLES `oldhouse` WRITE;
/*!40000 ALTER TABLE `oldhouse` DISABLE KEYS */;
INSERT INTO `oldhouse` VALUES ('01','三楼天薇丽景园77米售价96万随时可看','o1.jpg','93.80','2室1厅1卫','77平米','南北向','天薇丽景园','中层（共7层）','2011年','黑龙江省','哈尔滨市','道里区'),('02','海富康城，南北通透，无大税，看房方便。','o2.jpg','128.00','2室2厅2卫','135平米','南北向','海富康城','高层（共18层）','2006年','黑龙江省','哈尔滨市','南岗区'),('03','道里群力美晨家园电梯16楼两室大明厅通透户型无大税拎包入住','o3.jpg','119','2室1厅1卫','118平米','东西向','美晨家园','高层（共19层）','2007年','黑龙江省','哈尔滨市','香坊区'),('04','润园翡翠城 两室明厅H户型 视野好 价格小谈','o4.jpg','136.5','2室1厅1卫','109平米','南北向','润园翡翠城','低层（共32层）','2011年','黑龙江省','哈尔滨市','道里区'),('05','群力实验校群力新城中区精装修三室明厅带地上车位钻石楼层没大税','o5.jpg','230','3室1厅1卫','130平米','南北向','群力新城小区','中层（共18层）','1996年','黑龙江省','哈尔滨市','南岗区'),('06','雷锋建筑104.7米83万南北格局好4楼可谈房源信息暂未核验','o6.jpg','81','3室1厅1卫','104.7平米','南北向','华山小区','中层（共8层）','1992年','黑龙江省','哈尔滨市','香坊区'),('07','群力新区，顾乡世纪联华，海富康城，两室精装修','o7.jpg','108.6','2室1厅1卫','112平米','南北向','海富康城','中层（共7层）','2006年','黑龙江省','哈尔滨市','道里区'),('08','道里顾乡海富康城电梯房113平118万南北通透两室明厅可公积','o8.jpg','118','2室1厅1卫','113平米','南北向','海富康城','低层（共18层）','2006年','黑龙江省','哈尔滨市','南岗区'),('09','海富康城 封闭小区 东西通透电梯房 两室明厅','o9.jpg','93.5','2室1厅1卫','85平米','东西向','海富康城','高层（共18层）','2006年','黑龙江省','哈尔滨市','香坊区'),('10','华远水木清华 豪华装修 即买即住 绿化墅级园林不一样的','o10.jpg','130','2室1厅1卫','105.46平米','南北向','华远水木清华','低层（共15层）','2013年','黑龙江省','哈尔滨市','道里区'),('11','楼层好，视野宽阔，采光充足，配套设施齐全，交通便利房源信息暂','o11.jpg','129','3室1厅1卫','98平米','东南向','兽研家属楼','中层（共18层）','1998年','黑龙江省','哈尔滨市','南岗区'),('12','群力 恒大帝景 小区里 光线位置 嘎嘎好 南北通透','o12.jpg','120','2室1厅1卫','83.83平米','南北向','恒大帝景','中层（共20层）','2016年','黑龙江省','哈尔滨市','香坊区'),('13','宝宇荣耀天地，顾乡凯德，高层二室两卫明厅南北通。','o13.jpg','169.8','2室1厅2卫','125平米','东西向','宝宇荣耀天地','中层（共29层）','2009年','黑龙江省','哈尔滨市','道里区'),('14','峰尚福成 两室明厅 不临街 15楼 随时看房 随意装修','o14.jpg','98','2室1厅1卫','83平米','东南向','峰尚福成','中层（共22层）','2012年','黑龙江省','哈尔滨市','南岗区'),('15','群力工农大街阳光印象封闭式小区婚装南向两室明厅满二拎包住','o15.jpg','98','2室1厅1卫','81平米','南向','阳光印象','中层（共31层）','2015年','黑龙江省','哈尔滨市','香坊区'),('16','包税。阳光印象《婚装，带家具家电》两室两厅','o16.jpg','118','2室2厅1卫','95.59平米','南北向','阳光印象','低层（共31层）','2015年','黑龙江省','哈尔滨市','道里区'),('17','群力地铁口 电梯中层 南北通透 北向湿地公园 H户型','o17.jpg','155','2室1厅1卫','107.62平米','南北向','丽水丁香园','中层（共18层）','2011年','黑龙江省','哈尔滨市','南岗区'),('18','翡翠城 2室1厅 西 北','o18.jpg','85','2室1厅1卫','67.63平米','西北向','润园翡翠城','低层（共24层）','2011年','黑龙江省','哈尔滨市','香坊区'),('19','服务型封闭式管理社区，宝宇天邑澜湾，观江房4室2厅','o19.jpg','680','4室2厅2卫','266平米','南北向','宝宇天邑澜湾','中层（共43层）','2010年','黑龙江省','哈尔滨市','道里区'),('20','南北通透 三室2厅2卫 中间楼层 无冷，不挡 视野好','o20.jpg','340','3室2厅2卫','152平米','南北向','四季上东','中层（共36层）','2015年','黑龙江省','哈尔滨市','南岗区');
/*!40000 ALTER TABLE `oldhouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(4) NOT NULL COMMENT '楼盘编号',
  `provice` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `area` varchar(15) NOT NULL,
  `prices` varchar(20) NOT NULL COMMENT '价格范围',
  `housetype` varchar(15) NOT NULL COMMENT '房屋类型',
  `selladdr` varchar(100) NOT NULL COMMENT '售楼地址',
  `housenum` varchar(10) DEFAULT NULL COMMENT '房屋套数',
  `phone` varchar(15) NOT NULL COMMENT '联系电话',
  `projname` varchar(50) NOT NULL COMMENT '项目名称',
  `projaddr` varchar(100) NOT NULL COMMENT '项目地址',
  `devpeople` varchar(100) NOT NULL COMMENT '开发商',
  `picture` varchar(20) DEFAULT NULL COMMENT '效果图',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('1003','黑龙江省','哈尔滨市','香坊区','10000','普通住宅','香坊区香福路与公滨路的交会处','10','4001892723','恒大时代广场','哈尔滨市祥业房地产开发有限公司','哈东新区公滨路与香福路交会处','1003.jpg'),('1004','黑龙江省','哈尔滨市','道里区','6881','普通住宅','哈尔滨市松北区世茂大道247号','10','400-176-0760','龙江恒大文化旅游城','金河湾湿地植物园沿滨水大道西行8公里','肇东市恒超/恒创房地产开发有限公司','1004.jpg'),('1005','黑龙江省','哈尔滨市','南岗区','11000','普通住宅','智谷一路与世茂大道交汇处','10','4001893042','玫瑰湾·智园','智谷一街与世茂大道交会处','哈尔滨综合开发建设有限公司','1005.jpg'),('1006','黑龙江省','哈尔滨市','香坊区','11000','普通住宅','哈尔滨市南岗区健兴路29号','10','4001533516','鲁商·悦未来','健兴路29号','哈尔滨鲁商置业有限公司','1006.jpg'),('1007','黑龙江省','哈尔滨市','道里区','6500','普通住宅','哈尔滨市长江路与华南中路交汇处','10','4001892965','华南城紫荆名都','长江路与华南中路交会处','哈尔滨华南城有限公司','1007.jpg'),('1008','黑龙江省','哈尔滨市','南岗区','6000','普通住宅','哈尔滨市滨水大道西端前行800米','10','4001892180','龙江恒大世纪梦幻城','滨水大道西端前行800米','肇东市恒基房地产开发有限公司','1008.jpg'),('1009','黑龙江省','哈尔滨市','香坊区','6627','普通住宅','城市展厅：哈尔滨市松北区世茂大道247号','10','400-176-0760','龙江恒大·养生谷','金河湾湿地植物园沿滨水大道西行16公里','肇东市恒鹏房地产开发有限公司','1009.jpg'),('1010','黑龙江省','哈尔滨市','道里区','14700','普通住宅','南岗区哈西大街与复旦街交汇处，宜家家居东侧','10','4001534624','爱达·盛锦','西站旁——和谐桥与铁顺街交会处','哈尔滨子恒房地产置业有限公司','1010.jpg'),('1011','黑龙江省','哈尔滨市','南岗区','20000','普通住宅','道外区大新街278号','10','4001892845','宝宇·旭辉 天邑珑湾','大新街278号','黑龙江宝宇天邑房地产开发有限责任公司','1011.jpg'),('1012','黑龙江省','哈尔滨市','香坊区','11000','普通住宅','哈尔滨市松北区中源大道5599号','10','400-176-0760','富力城（富力城尚悦台）','中源大道5599号（东北虎林园东100米）','哈尔滨富力城房地产开发有限公司','1012.jpg'),('1013','黑龙江省','哈尔滨市','道里区','9600','普通住宅','香坊区长江路与香福路交口向南600米路东','10','400-176-0760','新松·未来ONE','长江路与香福路交口向南600米路东','哈尔滨松樾房地产开发有限公司','1013.jpg'),('1014','黑龙江省','哈尔滨市','南岗区','8500','普通住宅','香坊区长江路与禧龙大街交汇','10','4001534710','会展城上城·星御','长江路与禧龙大街交汇处东行600米','龙江新松鸿泰房地产开发有限公司','1014.jpg'),('1015','黑龙江省','哈尔滨市','香坊区','12800','普通住宅','香坊区拥军路与军立街交汇处','10','400-176-0760','万科金域悦府','拥军路与军立街交汇处','哈尔滨万晟房地产开发有限公司','1015.jpg'),('1016','黑龙江省','哈尔滨市','道里区','15188','普通住宅','道里区友谊西路与丽江路交汇处','10','400-176-0760','招商贝肯山（招商·云玺）','友谊西路与丽江路交会处','招商地产','1016.jpg'),('1017','黑龙江省','哈尔滨市','南岗区','7500','普通住宅','哈尔滨新区滨水大道与丰江路交汇处','10','400-176-0760','融创·冰雪影都','滨水大道（波塞冬旅游度假区北侧）','哈尔滨融创领拓置业有限公司','1017.jpg'),('1018','黑龙江省','哈尔滨市','香坊区','13500','写字楼','南岗开发区华山路与赣水路交汇处','10','400-176-0760','龙创·新世纪','华山路与赣水路交会处','黑龙江省建设投资集团有限公司','1018.jpg'),('1019','黑龙江省','哈尔滨市','道里区','11000','普通住宅','香坊区电碳路与进乡街交会西行800米处','10','400-176-0760','哈尔滨融创城·领域','电碳路与进乡街交会西行800米处','哈尔滨金康置业有限公司','1019.jpg'),('1020','黑龙江省','哈尔滨市','南岗区','13500','普通住宅','哈尔滨市南岗区哈西大街延长线与三环路交汇处','10','400-176-0760','金地·风华雅筑','哈西大街延长线与三环路交汇处','哈尔滨和盈房地产开发有限公司','1020.jpg'),('1021','黑龙江省','哈尔滨市','香坊区','13800','普通住宅','道里区顾新路396号','10','400-176-0760','恒大悦府','道里顾新街与职工街交会处（道里人民医院旁）顾新街396号','中国房地产开发集团哈尔滨有限公司','1021.jpg'),('1022','黑龙江省','哈尔滨市','道里区','13000','普通住宅','道里区群力第六大道与天平西路交口','10','400-176-0760','中海·时代','群力第六大道与天平西路交口','哈尔滨中海海盛房地产开发有限公司','1022.jpg'),('1023','黑龙江省','哈尔滨市','南岗区','11200','普通住宅','哈尔滨市松北区世贸大道智谷四街交会处','10','400-176-0760','哈尔滨宝能城','世贸大道与智谷四街交会处','哈尔滨宝钜房地产有限公司','1023.jpg'),('1024','黑龙江省','哈尔滨市','香坊区','17500','普通住宅','南岗区哈西大街与复旦街交汇处，宜家家居东侧','10','400-176-0760','爱达·壹号','复旦街、哈西大街、同济街、兰州西路以西围合区域','哈尔滨子鸿房地产置业有限公司','1024.jpg'),('1025','黑龙江省','哈尔滨市','道里区','11000','普通住宅','松北区中源大道与东北亚大街交汇处往西500米','10','4001892851','绿地·东北亚国博城','中源大道与松浦大道交会处','绿地控股集团','1025.jpg'),('1026','黑龙江省','哈尔滨市','南岗区','9100','普通住宅','香坊区长江路与香福路交汇处','10','400-176-0760','东鸿·艺境','长江路与香福路交汇处','哈尔滨东鸿房地产开发有限公司','1026.jpg'),('1027','黑龙江省','哈尔滨市','香坊区','12500','普通住宅','哈尔滨市香坊区果园街与埠南路交汇处','10','400-176-0760','华润置地·熙云府','果园街与埠南路交会处（原啤酒厂院内）','华润置地（哈尔滨）房地产开发有限公司','1027.jpg'),('1028','黑龙江省','哈尔滨市','道里区','14000','普通住宅','群力第六大道至太平西路左转100米','10','400-176-0760','华润置地·崑崙御','群力第六大道至天平西路左转100米','哈尔滨润新房地产开发有限公司','1028.jpg'),('1029','黑龙江省','哈尔滨市','南岗区','10000','普通住宅','松北区龙祥路555号','10','400-176-0760','鑫丰云筑','龙轩路与江都街交汇处','哈尔滨欧美亚鑫丰置业有限公司','1029.jpg'),('1030','黑龙江省','哈尔滨市','香坊区','15800','普通住宅','香坊区通乡街与松海路交汇处','10','400-176-0760','华润置地紫云府Ⅱ','通乡街与松海路交汇处','华润置地（哈尔滨）房地产开发有限公司','1030.jpg'),('1031','黑龙江省','哈尔滨市','道里区','12700','普通住宅','道里区群力第六大道4116号','10','400-176-0760','汇龙·澜湾九里','群力第五大道与青山路交口','哈尔滨天佰房地产开发有限公司','1031.jpg'),('1032','黑龙江省','哈尔滨市','南岗区','13000','普通住宅','松北区龙川路1000号对面','10','400-176-0760','保利观澜3','龙川路','黑龙江保利澳娱房地产开发有限公司','1032.jpg'),('1033','黑龙江省','哈尔滨市','香坊区','14000','普通住宅','学府路368号','10','400-176-0760','鲁商松江新城','学府路368号（省农科院原址，哈达水果批发市场对面）','哈尔滨鲁商置业有限公司','1033.jpg'),('1034','黑龙江省','哈尔滨市','道里区','11300','普通住宅','南岗区学府路368号','10','400-176-0760','鲁商·铂悦公馆','学府路368号（学府路与跃兴街交口）','哈尔滨鲁商置业有限公司','1034.jpg'),('1035','黑龙江省','哈尔滨市','南岗区','11000','普通住宅','哈尔滨市道里区群力第二大道与阳明滩大道交汇处','10','400-176-0760','里普利广场','群力第二大道与阳明滩大道交汇处','哈尔滨亚美国际娱乐投资有限公司','1035.jpg'),('1036','黑龙江省','哈尔滨市','香坊区','13300','普通住宅','香坊区三合路；城市展厅位于长江路126号','10','400-176-0760','新松玺樾府','三合路','哈尔滨松玉房地产开发有限公司','1036.jpg'),('1037','黑龙江省','哈尔滨市','道里区','9500','普通住宅','哈尔滨市香坊区进乡街与东三三道街交汇处','10','400-176-0760','万科智慧未来城','进乡街与东三三道街交汇处','哈尔滨万冠置业有限公司','1037.jpg'),('1038','黑龙江省','哈尔滨市','南岗区','9500','普通住宅','香坊区南果园街与巴安里街交汇处','10','400-176-0760','融创公园壹号','南果园街与巴安里街交汇处','哈尔滨淋博房地产开发有限公司','1038.jpg'),('1039','黑龙江省','哈尔滨市','香坊区','5300','普通住宅','道外区长江路与华南中路交汇处','10','400-176-0760','华南城·紫荆雅院','长江路、团结东西路20围合区域','哈尔滨宝力通市场开发管理有限公司','1039.jpg');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renthouse`
--

DROP TABLE IF EXISTS `renthouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renthouse` (
  `rid` varchar(3) NOT NULL COMMENT '租房编号',
  `picture` varchar(10) DEFAULT NULL COMMENT '展示图',
  `price` varchar(10) DEFAULT NULL COMMENT '价格',
  `mode` char(6) DEFAULT NULL COMMENT '出租方式',
  `type` varchar(15) DEFAULT NULL COMMENT '户型',
  `narea` varchar(3) DEFAULT NULL COMMENT '面积',
  `direction` varchar(4) DEFAULT NULL COMMENT '朝向',
  `floor` char(2) DEFAULT NULL COMMENT '楼层',
  `sumfloor` varchar(2) DEFAULT NULL COMMENT '楼层总数',
  `decoration` varchar(10) DEFAULT NULL COMMENT '装修',
  `xiaoqu` varchar(100) DEFAULT NULL COMMENT '小区名称',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `provice` varchar(15) DEFAULT NULL COMMENT '省',
  `city` varchar(30) DEFAULT NULL COMMENT '市',
  `area` varchar(30) DEFAULT NULL COMMENT '区',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renthouse`
--

LOCK TABLES `renthouse` WRITE;
/*!40000 ALTER TABLE `renthouse` DISABLE KEYS */;
INSERT INTO `renthouse` VALUES ('01','r1.jpg','1300','整租','2室1厅1卫','54','南','中','7','中装修','振国小区','道外南14道街与滨江街交汇处','黑龙江省','哈尔滨市','南岗区'),('02','r2.jpg','500','整租','1室1厅1卫','30','南','低','7','毛坯','滨江凤凰城','南二十道街70号','黑龙江省','哈尔滨市','南岗区'),('03','r3.jpg','1800','合租','1室1厅1卫','136','南北','高','32','精装修','好民居滨江新城','滨江街甲92-2号','黑龙江省','哈尔滨市','香坊区'),('04','r4.jpg','1100','整租','1室1厅1卫','36','东西','中','8','精装修','滨江凤凰城','南二十道街70号','黑龙江省','哈尔滨市','道里区'),('05','r5.jpg','6666','整租','1室1厅1卫','40','北','低','6','毛坯','靖宇小区','靖宇街408号','黑龙江省','哈尔滨市','南岗区'),('06','r6.jpg','500','整租','2室1厅1卫','54','南','高','7','毛坯','滨江凤凰城','南二十道街70号','黑龙江省','哈尔滨市','香坊区'),('07','r7.jpg','2000','合租','1室1厅1卫','45','南','低','18','精装修','好民居滨江雅居','太古街与滨江街交汇处','黑龙江省','哈尔滨市','道里区'),('08','r8.jpg','1400','整租','1室0厅1卫','29','西北','中','20','精装修','盟科涵舍','盟科涵舍哈平路与保健路交汇处、保健副路','黑龙江省','哈尔滨市','南岗区'),('09','r9.jpg','1250','整租','2室1厅1卫','58','南','中','24','中装修','好民居滨江新城','滨江街甲92-2号','黑龙江省','哈尔滨市','香坊区'),('10','r10.jpg','1000','整租','2室1厅1卫','58','南北','高','7','简装修','哈尔滨市香坊区进乡街松电新村','松电新村','黑龙江省','哈尔滨市','道里区'),('11','r11.jpg','500','整租','1室1厅1卫','19','东','高','7','毛坯','大安小区','大安街21号','黑龙江省','哈尔滨市','南岗区'),('12','r12.jpg','1700','整租','2室1厅1卫','60','东西','低','1','豪华装修','芦家街住宅','芦家街1-142号','黑龙江省','哈尔滨市','香坊区'),('13','r13.jpg','700','整租','1室1厅1卫','33','南','高','6','简装修','道外区龙江电工厂家属楼','龙江电工厂家属楼','黑龙江省','哈尔滨市','道里区'),('14','r14.jpg','900','整租','1室1厅1卫','36','西','高','8','简装修','哈站北秀公园','黑龙江省哈尔滨市南岗区上夹树街10-2号','黑龙江省','哈尔滨市','南岗区'),('15','r15.jpg','1000','整租','1室1厅1卫','35','东南','中','7','简装修','邮政街小区','邮政街与建设街交口','黑龙江省','哈尔滨市','香坊区'),('16','r16.jpg','2300','合租','1室1厅1卫','75','南北','高','32','中装修','中兴家园','道里区爱建路66号','黑龙江省','哈尔滨市','道里区'),('17','r17.jpg','2500','合租','3室2厅1卫','112','东西','低','8','精装修','新发小区','花园街107号','黑龙江省','哈尔滨市','南岗区'),('18','r18.jpg','2500','整租','3室2厅1卫','112','东西','低','8','精装修','新发小区d08栋二楼三室一厅临宣化街','黑龙江省哈尔滨市南岗区宣化街470号','黑龙江省','哈尔滨市','香坊区'),('19','r19.jpg','2200','整租','2室1厅1卫','66','南北','中','29','精装修','南岗世纪嘉园','黑龙江省哈尔滨市南岗区邮政街58号','黑龙江省','哈尔滨市','道里区'),('20','r20.jpg','2300','整租','1室1厅1卫','45','东','中','39','豪华装修','宝宇天邑环球港','大新街278号','黑龙江省','哈尔滨市','南岗区');
/*!40000 ALTER TABLE `renthouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `email` varchar(20) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(20) NOT NULL,
  `identification` char(18) DEFAULT NULL,
  `addr` varchar(20) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `realname` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `manager` char(1) DEFAULT NULL COMMENT '是否是管理员',
  `geom` geometry DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','管理员','admin','111111111111111111','黑龙江省哈尔滨市南岗区','18045639856','管理员','男','1','\0\0\0\0\0\0\0\0\0\0\0\0�]@\0\0\0\0\0�B@'),('test','测试用户','test','222222222222222222','黑龙江省哈尔滨市南岗区','18045639856','测试用户','男','0',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-12 15:21:02
