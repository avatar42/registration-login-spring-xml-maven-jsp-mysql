--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'ROLE_USER') WHERE NOT EXISTS ( SELECT id from role where id=1) LIMIT 1;
INSERT INTO `user`  (`username`, `password`) VALUES ('JimSmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm') WHERE NOT EXISTS ( SELECT username from user where username='JimSmith') LIMIT 1;

UNLOCK TABLES;

