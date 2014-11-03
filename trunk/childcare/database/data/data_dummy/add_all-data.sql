USE child_db;


#adding a police station
delete from police_station;

INSERT INTO `police_station` VALUES ('PLS01', 'Kandy DIG','kdig@test.com','081 1234567' ,  'Res: 0812345' ,'address','', 1, 'U001', 'U001', '2014/06/26', '2014/06/26' );
INSERT INTO `police_station` VALUES ('PLS02', 'Peradeniya SSP','pssp@test.com','081 1234567' ,  'Res: 0812345' ,'address','', 1, 'U001', 'U001', '2014/06/26', '2014/06/26' );
INSERT INTO `police_station` VALUES ('PLS03', 'Gampola OIC','gdig@test.com','081 1234567' ,  'Res: 0812345' ,'address','', 1, 'U001', 'U001', '2014/06/26', '2014/06/26' );

INSERT INTO `police_station` VALUES ('PLS04', 'Matale DIG','mdig@test.com','066 1234567' ,  'Res: 0662345' ,'address','', 1, 'U001', 'U001', '2014/06/26', '2014/06/26' );
INSERT INTO `police_station` VALUES ('PLS05', 'Dambulla SSP','dssp@test.com','066 1234567' ,  'Res: 0662345' ,'address','', 1, 'U001', 'U001', '2014/06/26', '2014/06/26' );
INSERT INTO `police_station` VALUES ('PLS06', 'Laggala OIC','loic@test.com','066 1234567' ,  'Res: 0662345' ,'address','', 1, 'U001', 'U001', '2014/06/26', '2014/06/26' );

INSERT INTO `police_station` VALUES ('PLS07', 'Hatton OIC','hoic@test.com','052 1234567' ,  'Res: 0522345' ,'address','', 1, 'U001', 'U001', '2014/06/26', '2014/06/26' );


#adding a probation unit
delete from probation_unit;

INSERT INTO `probation_unit` VALUES ('PB01', 'Probation Unit, Kandy', 'D1','kandy@test.com', 7, '0812345678','fax', 'Kandy', 'PLS01' ,'', 1, 'U001', 'U001', '2014/11/01', '2014/11/01' );
INSERT INTO `probation_unit` VALUES ('PB02', 'Probation Unit, Gampola', 'D2', 'gampola@test.com', 7, '0812345678','fax', 'Kandy', 'PLS03' ,'', 1, 'U001', 'U001', '2014/11/01', '2014/11/01' );

INSERT INTO `probation_unit` VALUES ('PB03', 'Probation Unit, Matale', 'D3', 'matale@test.com', 7, '0662345678','fax', 'Matale', 'PLS03' ,'', 1, 'U001', 'U001', '2014/11/01', '2014/11/01' );

INSERT INTO `probation_unit` VALUES ('PB04', 'Probation Unit, Hatton', 'D4','hatton@test.com', 5, '0522345678','fax', 'Hatton', 'PLS07' ,'', 1, 'U001', 'U001', '2014/11/01', '2014/11/01' );


#adding a children home
delete from lama_nivasa;

INSERT INTO `lama_nivasa` VALUES ('LN01','Kandy_kundasalePB_LN01','PB01','', 'DS005','',NULL, '45,Digana Road ,Kundasale', 'MIX', NULL,'0815678912', NULL ,NULL, NULL , NULL, 29, 'NOT OBTAINED',NULL, NULL, 'None', 'No', NULL ,'', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `lama_nivasa` VALUES ('LN02','Kandy_PeradeniyaPB_LN02','PB01','', 'DS006','',NULL, '45,Kandy Road ,Peradeniya', 'MIX', NULL,'0815678912', NULL ,NULL, NULL , NULL, 29, 'NOT OBTAINED',NULL, NULL, 'None', 'No', NULL ,'', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `lama_nivasa` VALUES ('LN03','Kandy_GampolaPB_LN03','PB02','', 'DS007','',NULL, '45,Peradeniya Road ,Gampola', 'MIX', NULL,'0815678912', NULL ,NULL, NULL , NULL, 29, 'NOT OBTAINED',NULL, NULL, 'None', 'No', NULL ,'', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );

INSERT INTO `lama_nivasa` VALUES ('LN04','Matale_MatalePB_LN04','PB02','', 'DS031','',NULL, '45,Main Street ,Matale', 'MIX', NULL,'0815678912', NULL ,NULL, NULL , NULL, 29, 'NOT OBTAINED',NULL, NULL, 'None', 'No', NULL ,'', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `lama_nivasa` VALUES ('LN05','Matale_DambullaPB_LN05','PB02','', 'DS009','',NULL, '45,Kurunegala Road ,Dambulla', 'MIX', NULL,'0815678912', NULL ,NULL, NULL , NULL, 29, 'NOT OBTAINED',NULL, NULL, 'None', 'No', NULL ,'', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `lama_nivasa` VALUES ('LN06','Matale_LaggalaPB_LN06','PB02','', 'DS010','',NULL, '5,Mahiyagana  Road ,Laggala', 'MIX', NULL,'0815678912', NULL ,NULL, NULL , NULL, 29, 'NOT OBTAINED',NULL, NULL, 'None', 'No', NULL ,'', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );





#adding  children to a children home
delete from child;
INSERT INTO `child` VALUES ('C001','LN01', '1990/02/10', 'C001',  'Dasin gedara Kalpa Karunarathne', '1995/03/18', 'MALE', 'SINHALA', 'BUDDHIST', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','BOTH', 'DEPARTMENT','','','', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `child` VALUES ('C002','LN01', '1992/06/02', 'C002',  'Dhammika Kumari', '2004/03/18', 'FEMALE', 'SINHALA', 'CHRISTIANITY', 'No', 'None', NULL, '','DESERTED','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','MOTHER ONLY', 'DEPARTMENT','','','',0, 1, 'U001', 'U001', '2014/10/30', '2014/10/30' );

INSERT INTO `child` VALUES ('C003','LN01', '1999/07/09', 'C003', 'Hasitha Maduranga','2005/03/18', 'MALE', 'SINHALA', 'BUDDHISM', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','BOTH', 'DIRECT','','','',0, 1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `child` VALUES ('C004','LN01', '1994/06/02', 'C004', 'Sachini Dilanka', '2011/03/18', 'FEMALE', 'SINHALA', 'BUDDHISM', 'No', 'None', NULL, '','DESERTED','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','MOTHER ONLY', 'DIRECT','','','',0, 1, 'U001', 'U001', '2014/10/30', '2014/10/30' );


INSERT INTO `child` VALUES ('C005','LN02', '2000/07/09', 'C005',  'Suraj Ravindra', '2000/03/18', 'MALE', 'SRILANKAN TAMIL', 'ROMAN CATHOLIC', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','NONE', 'PARENT','','','',1, 1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `child` VALUES ('C006','LN02', '1990/02/10', 'C006',  'Dasun Randika', '1995/03/18', 'MALE', 'SINHALA', 'BUDDHIST', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','BOTH', 'DEPARTMENT','','','', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `child` VALUES ('C007','LN02', '1990/02/10', 'C007',  'Supun Chamara', '1995/03/18', 'MALE', 'SINHALA', 'BUDDHIST', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','BOTH', 'DEPARTMENT','','','', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );

INSERT INTO `child` VALUES ('C008','LN03', '2000/07/09', 'C008',  'Suraj Ravi', '2000/03/18', 'MALE', 'SRILANKAN TAMIL', 'ROMAN CATHOLIC', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','NONE', 'PARENT','','','',0, 1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `child` VALUES ('C009','LN03', '1990/02/10', 'C009',  'Dusaun Randika', '1995/03/18', 'MALE', 'SINHALA', 'BUDDHIST', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','BOTH', 'DEPARTMENT','','','', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );
INSERT INTO `child` VALUES ('C010','LN03', '1990/02/10', 'C010',  'Supun Chamikara', '1995/03/18', 'MALE', 'SINHALA', 'BUDDHIST', 'No', 'None', NULL,'','NEEDY','DO NOT HAVE','DO NOT HAVE','DO NOT HAVE','BOTH', 'DEPARTMENT','','','', 0,1, 'U001', 'U001', '2014/10/30', '2014/10/30' );


