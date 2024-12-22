-- EmployeesQX - Amazon Aurora.sql
-- Create an EmployeesQX Aurora database in AWS RDS.
-- Use MySQL Workbench or another tool to run this script.
create database EmployeesQX;
USE `EmployeesQX`;

-- DROP TABLE IF EXISTS `datatypes`;
-- DROP VIEW IF EXISTS `Managers`;
-- DROP TABLE IF EXISTS `proj`;
-- DROP TABLE IF EXISTS `emp`;
-- DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
   `DEPTNO` integer NOT NULL COMMENT 'Department\'s identification number',
   `DNAME` varchar(20) NOT NULL COMMENT 'Name of the current department',
   `LOC` varchar(20) NOT NULL COMMENT 'Location of the current department',
   
   PRIMARY KEY (`DEPTNO`)
) COMMENT 'Company departments, with employees';


INSERT INTO `dept` VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO `dept` VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO `dept` VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO `dept` VALUES (40, 'OPERATIONS', 'BOSTON');


CREATE TABLE `emp` (
   `EMPNO` integer NOT NULL,
   `ENAME` varchar(20) NOT NULL,
   `JOB` varchar(20) NOT NULL,
   `MGR` integer,
   `HIREDATE` date NOT NULL,
   `SAL` integer NOT NULL,
   `COMM` integer,
   `DEPTNO` integer NOT NULL,
   
   PRIMARY KEY (`EMPNO`),
   CONSTRAINT `fk_MGR` FOREIGN KEY (`MGR`) REFERENCES `emp` (`EMPNO`)
      ON DELETE SET NULL
	  ON UPDATE CASCADE,
   CONSTRAINT `fk_DEPTNO` FOREIGN KEY (`DEPTNO`) REFERENCES `dept` (`DEPTNO`)
      ON DELETE RESTRICT
	  ON UPDATE NO ACTION
);

 


CREATE TABLE `proj` (
   `PROJID` integer NOT NULL,
   `EMPNO` integer NOT NULL,
   `STARTDATE` date NOT NULL,
   `ENDDATE` date NOT NULL,
   
   PRIMARY KEY (`PROJID`),
   CONSTRAINT `fk_PROJ` FOREIGN KEY (`EMPNO`) REFERENCES `emp` (`EMPNO`)
      ON DELETE NO ACTION
	  ON UPDATE CASCADE
);

INSERT INTO `proj` VALUES (1, 7782, '2005-06-16', '2005-06-18');
INSERT INTO `proj` VALUES (4, 7782, '2005-06-19', '2005-06-24');
INSERT INTO `proj` VALUES (7, 7782, '2005-06-22', '2005-06-25');
INSERT INTO `proj` VALUES (10, 7782, '2005-06-25', '2005-06-28');
INSERT INTO `proj` VALUES (13, 7782, '2005-06-28', '2005-07-02');
INSERT INTO `proj` VALUES (2, 7839, '2005-06-17', '2005-06-21');
INSERT INTO `proj` VALUES (8, 7839, '2005-06-23', '2005-06-25');
INSERT INTO `proj` VALUES (14, 7839, '2005-06-29', '2005-06-30');
INSERT INTO `proj` VALUES (11, 7839, '2005-06-26', '2005-06-27');
INSERT INTO `proj` VALUES (5, 7839, '2005-06-20', '2005-06-24');
INSERT INTO `proj` VALUES (3, 7934, '2005-06-18', '2005-06-22');
INSERT INTO `proj` VALUES (12, 7934, '2005-06-27', '2005-06-28');
INSERT INTO `proj` VALUES (15, 7934, '2005-06-30', '2005-07-03');
INSERT INTO `proj` VALUES (9, 7934, '2005-06-24', '2005-06-27');
INSERT INTO `proj` VALUES (6, 7934, '2005-06-21', '2005-06-23');


CREATE VIEW `Managers` AS 
   SELECT m.`ENAME` AS `Manager`, e.`ENAME` AS `Employee`
   FROM `emp` AS e LEFT JOIN `emp` AS m ON e.`MGR` = m.`EMPNO`
   ORDER BY m.`ENAME`, e.`ENAME`;


CREATE TABLE `datatypes` (
  
  `INT_` int(11) NOT NULL DEFAULT 12,
  `TINY_INT` tinyint DEFAULT 1,
  `SMALL_INT` smallint DEFAULT 12,
  `MEDIUM_INT` mediumint DEFAULT 123,
  `BIG_INT` bigint DEFAULT 123456,
  
  `BIT_` bit,
  `BOOL_` bool,
  `BOOLEAN_` boolean,
  
  `DECIMAL_` decimal(10,2) DEFAULT 14.55,
  `DEC_` dec(10,2) zerofill,
  `FIXED_` fixed(10,2) unsigned,
  `NUMERIC_` numeric(10,2) unsigned zerofill,
  
  `FLOAT_` float DEFAULT 0.5,
  `DOUBLE_` double DEFAULT 0.3,
  `DOUBLE_PRECISION` double precision(14, 5),
  `REAL_` real(11, 3),

  `CHAR_` char(5) DEFAULT '12345',
  `NATIONAL_CHAR` national char(5),
  `N_CHAR` nchar(5),
  `VAR_CHAR` varchar(50) DEFAULT 'abc',
  `NATIONAL_VARCHAR` national varchar(50),
  `N_VAR_CHAR` nvarchar(50),
  
  `TEXT_` text,
  `TINY_TEXT` tinytext,
  `MEDIUM_TEXT` mediumtext,
  `LONG_TEXT` longtext,

  `DATE_` date DEFAULT NULL,
  `TIME_` time DEFAULT NULL,
  `DATE_TIME` datetime DEFAULT NULL,
  `TIME_STAMP` timestamp NULL DEFAULT NULL,
  `YEAR_4` year(4),

  `BINARY_` binary(10) DEFAULT NULL,
  `VAR_BINARY` varbinary(20) DEFAULT '4564',
  `TINY_BLOB` tinyblob,
  `LONG_BLOB` longblob,
  `MEDIUM_BLOB` mediumblob,

  `ENUM_` enum('aa','bb','cc') DEFAULT 'cc',
  `SET_` set('a','b','c') DEFAULT 'b',

  `GEOMETRY_` geometry,
  `POINT_` point DEFAULT NULL,
  `LINE_STRING` linestring,
  `POLYGON_` polygon DEFAULT NULL,
  `GEOMETRY_COLLECTION` geometrycollection,
  `MULTI_POINT` multipoint DEFAULT NULL,
  `MULTI_LINE_STRING` multilinestring,
  `MULTI_POLYGON` multipolygon DEFAULT NULL,

  PRIMARY KEY (`INT_`)
);

INSERT INTO `datatypes` (`INT_`, `VAR_CHAR`, `DECIMAL_`, `BIG_INT`, `TINY_TEXT`, `MEDIUM_TEXT`,
   `LONG_TEXT`, `CHAR_`, `DOUBLE_`, `FLOAT_`, `MEDIUM_INT`, `SMALL_INT`, `TINY_INT`)
   VALUES (1, 'fssdf', 12.33, 34234234, '', '', '', 'sdsdf', 33.44, 22.33, 444, 33, 3);

