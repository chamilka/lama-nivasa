SET global max_allowed_packet=16777216;

drop database IF EXISTS child_db;
create database child_db CHARACTER SET utf8;

use child_db;

¬