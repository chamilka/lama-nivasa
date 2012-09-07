USE child_db;

TRUNCATE TABLE system_user;
INSERT INTO `system_user` VALUES ('U001', 'admin', 'admin','ADMIN','Kalum Attanayake','System Admin', 'admin@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Female','PU01', 1, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U002', 'prabhath', 'prabhath','OFFICER','Prabhath Gunathilake','Probation Officer', 'prabhath@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','PU02', 2, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U003', 'vajira', 'vajira','OFFICER','Vajira Karunathilake','Probation Officer', 'vajira@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','PU03', 3, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U004', 'Kasun', 'kasun','USER','Kasun Godigamuwa','Child Service Officer', 'kasun@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','LN01', 4, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U005', 'malkanthi',  'abc123' ,'OFFICER','K.C.S. Malkanthi','Probation Officer In Charge', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U006', 'dharmasena','abc123', 'OFFICER','L.H.G.C.J. Dharmasena','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Male','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U007', 'pathirana', 'abc123','OFFICER','G.P.A.L. Pathirana','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U008', 'ranasingha','abc123', 'OFFICER','W.G.W.P. Ranasingha','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U009', 'hapugaskumbura','abc123', 'OFFICER','R.D. Hapugaskumbura','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Female','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U010', 'yapabandara', 'abc123','OFFICER','S.J. Yapa Bandara','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Male','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U011', 'jasingha','abc123', 'OFFICER','H.M. Jayasingha','Probation Officer', 'none', '0812388783', 'none', 'Court complex, Kandy',  'none', 'Male','PU01', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );

INSERT INTO `system_user` VALUES ('U012', 'gunarathna',  'abc123' ,'OFFICER','H.M. Gunarathna Banda','Probation Officer In Charge', 'none', '0814884967', 'none', 'Teldeniya',  'none', 'Male','PU02', 5, 'U001', 'U001', '2012/01/12', '2012/01/12' );