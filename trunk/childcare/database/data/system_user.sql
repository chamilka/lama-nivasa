USE child_db;

TRUNCATE TABLE system_user;
INSERT INTO `system_user` VALUES ('U001', 'admin', 'admin','ADMIN','Kalum Attanayake','Officer', 'admin@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Female','PU01', 1, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U002', 'prabhath', 'prabhath','OFFICER','Prabhath Gunathilake','Officer', 'prabhath@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','PU02', 2, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U003', 'vajira', 'vajira','OFFICER','Vajira Karunathilake','Officer', 'vajira@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','PU03', 3, 'U001', 'U001', '2012/01/12', '2012/01/12' );
INSERT INTO `system_user` VALUES ('U004', 'Kasun', 'kasun','USER','Kasun Godigamuwa','User', 'kasun@test.com', '0812345678', '07768828222', '14/15/E, Heerassagala Road, Kandy, 20117',  'Peradeniya', 'Male','LN01', 4, 'U001', 'U001', '2012/01/12', '2012/01/12' );