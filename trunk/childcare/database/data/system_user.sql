USE child_db;

TRUNCATE TABLE system_user;
INSERT INTO `system_user` VALUES ('U001', 'admin', 'admin','ADMIN','Kalum Attanayake','System Admin', 'admin@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Female','PU01', 1, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U002', 'prabhath', 'prabhath','OFFICER','Prabhath Gunathilake','Probation Officer', 'prabhath@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','PU02', 2, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U003', 'vajira', 'vajira','OFFICER','Vajira Karunathilake','Probation Officer', 'vajira@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','PU03', 3, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U004', 'Kasun', 'kasun','USER','Kasun Godigamuwa','Child Service Officer', 'kasun@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','LN01', 4, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U005', 'sponsor', 'sponsor','SPONSOR','Kasun Godigamuwa',NULL, 'kasun@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','LN01', 4, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U101', 'wijerathna',  'abc123' ,'OFFICER','H.E.G. Wijerathna','Probation Officer of Headquarters', 'none', NULL, 'none', 'Dabulla',  'none', 'Male','PU01', 42, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U102', 'malkanthi',  'abc123' ,'OFFICER','K.C.S. Malkanthi','Probation Officer In Charge', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U103', 'jayasingha','abc123', 'OFFICER','A.H.M. Jayasingha','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Male','PU01', 11, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U104', 'jamil','abc123', 'OFFICER','M.R. Jamil','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01', 9, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U105', 'ranasingha','abc123', 'OFFICER','W.G.W.P. Ranasingha','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01',8, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U106', 'dharmasena','abc123', 'OFFICER','L.H.G.C.J. Dharmasena','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Male','PU01', 6, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U107', 'pathirana', 'abc123','OFFICER','G.P.A.L. Pathirana','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01', 7, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U108', 'karunarathna',  'abc123' ,'OFFICER','H.M.H.P. Karunarathna','Probation Officer', 'none', '0814884967', 'none', 'Kandy',  'none', 'Male','PU02', 13, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U109', 'devapakshage',  'abc123' ,'OFFICER','M.N. Devapakshage','Probation Officer', 'none', '0814884967', 'none', 'Kandy',  'none', 'Male','PU02', 13, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U201', 'gunarathna',  'abc123' ,'OFFICER','W.M. Gunarathna','Probation Officer of Headquarters', 'none', '0814884967', 'none', 'Teldeniya',  'none', 'Male','PU02', 12, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U202', 'nishshanka',  'abc123' ,'OFFICER','K.M.E.T.K. Nishshanka Bandara','Probation Officer', 'none', NULL, 'none', 'Teldeniya',  'none', 'Male','PU02', 14, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U203', 'senevirathne',  'abc123' ,'OFFICER','H.L.G.M Senavirathne','Probation Officer', 'none', NULL, 'none', 'Teldeniya',  'none', 'Female','PU02', 15, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U204', 'rathnayaka',  'abc123' ,'OFFICER','R.M.G.T.K Rathnayaka','Probation Officer', 'none', NULL, 'none', 'Teldeniya',  'none', 'Male','PU02', 16, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U301', 'mavalagedara',  'abc123' ,'OFFICER','S.M.P.C.B. Mavalagedara','Probation Officer In Charge', 'none', NULL, 'none', 'Gampola',  'none', 'Male','PU04', 17, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U302', 'rathnayake',  'abc123' ,'OFFICER','R.M.N. Rathnayake','Probation Officer', 'none', NULL, 'none', 'Gampola',  'none', 'Male','PU04', 18, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U303', 'karunathilaka',  'abc123' ,'OFFICER','J.A.J. Karunathilaka','Probation Officer', 'none', NULL, 'none', 'Gampola',  'none', 'Male','PU04', 19, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U304', 'vijenayaka',  'abc123' ,'OFFICER','Y.S.K. Vijenayaka','Probation Officer', 'none', NULL, 'none', 'Gampola',  'none', 'Female','PU04', 20, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U401', 'ekanayake',  'abc123' ,'OFFICER','E.M.I. Ekanayake','Probation Officer In Charge', 'none', NULL, 'none', 'Navalapitiya',  'none', 'Male','PU03', 21, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U402', 'sarath',  'abc123' ,'OFFICER','A.G. Sarath Kumara','Probation Officer', 'none', NULL, 'none', 'Navalapitiya',  'none', 'Male','PU03', 22, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U403', 'kumari',  'abc123' ,'OFFICER','K.G.I. Kumari','Probation Officer', 'none', NULL, 'none', 'Navalapitiya',  'none', 'Female','PU03', 23, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U404', 'padmavathi',  'abc123' ,'OFFICER','A. Padmavathi Manike','Probation Officer', 'none', NULL, 'none', 'Navalapitiya',  'none', 'Female','PU03', 24, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U501', 'pushpalatha',  'abc123' ,'OFFICER','M.G. Pushpalatha','Probation Officer', 'none', NULL, 'none', 'Hatton',  'none', 'Female','PU09', 25, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U502', 'ganegamage',  'abc123' ,'OFFICER','N.G. Ganegamage','Probation Officer', 'none', NULL, 'none', 'Hatton',  'none', 'Male','PU09', 26, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U601', 'udaya',  'abc123' ,'OFFICER','M.G. Udaya Bandara','Probation Officer In Charge', 'none', NULL, 'none', 'Nuwara-eliya',  'none', 'Male','PU08', 27, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U602', 'wijesundara',  'abc123' ,'OFFICER','W.M.M.K. Wijesundara','Probation Officer', 'none', NULL, 'none', 'Nuwara-eliya',  'none', 'Female','PU08', 28, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U603', 'karunathilake',  'abc123' ,'OFFICER','K.R.W.M.C.K.B karunathilake','Probation Officer', 'none', NULL, 'none', 'Nuwara-eliya',  'none', 'Male','PU08', 29, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U604', 'herath1',  'abc123' ,'OFFICER','H.M.D.K. Herath','Probation Officer', 'none', NULL, 'none', 'Nuwara-eliya',  'none', 'Female','PU08', 30, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U701', 'amarasingha',  'abc123' ,'OFFICER','A.M.V.G.W.K. Amarasingha','Probation Officer In Charge', 'none', NULL, 'none', 'Walapane',  'none', 'Female','PU10', 31, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U702', 'herath2',  'abc123' ,'OFFICER','H.M.H.G.P Heraht','Probation Officer', 'none', NULL, 'none', 'Walapane',  'none', 'Female','PU10', 32, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U703', 'ganegoda',  'abc123' ,'OFFICER','A.G.S.K. Ganegoda','Probation Officer', 'none', NULL, 'none', 'Walapane',  'none', 'Male','PU10', 33, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U801', 'vijayasingha',  'abc123' ,'OFFICER','G.M. Vijayasingha','Probation Officer In Charge', 'none', NULL, 'none', 'Mathale',  'none', 'Male','PU05', 34, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U802', 'hapugaskubura',  'abc123' ,'OFFICER','R.D. Hapugaskubura','Probation Officer', 'none', NULL, 'none', 'Mathale',  'none', 'Male','PU05', 35, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U803', 'premarathna',  'abc123' ,'OFFICER','H.M.N.S. Premarathna','Probation Officer', 'none', NULL, 'none', 'Mathale',  'none', 'Male','PU05', 35, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U901', 'ariyarathne',  'abc123' ,'OFFICER','G.M.S. Ariyarathne','Probation Officer In Charge', 'none', NULL, 'none', 'Naula',  'none', 'Female','PU07', 36, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U902', 'yapa',  'abc123' ,'OFFICER','Y.B.M.S.J. Yapa Bandara','Probation Officer', 'none', NULL, 'none', 'Naula',  'none', 'Male','PU07', 37, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U903', 'premathunga',  'abc123' ,'OFFICER','K.S.G. Premathunga','Probation Officer', 'none', NULL, 'none', 'Naula',  'none', 'Female','PU07', 38, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U910', 'jayakodi',  'abc123' ,'OFFICER','S.D.P.G.L. Jayakodi','Probation Officer In Charge', 'none', NULL, 'none', 'Dabulla',  'none', 'Female','PU06', 39, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U911', 'wimalarathne',  'abc123' ,'OFFICER','R.M.D.N. Wimalarathne','Probation Officer', 'none', NULL, 'none', 'Dabulla',  'none', 'Male','PU06', 40, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U912', 'gunasena',  'abc123' ,'OFFICER','A.P.G.C.S.R. Gunasena','Probation Officer', 'none', NULL, 'none', 'Dabulla',  'none', 'Male','PU06', 41, 'U001', 'U001', '2012/01/12', '2012/01/12' );