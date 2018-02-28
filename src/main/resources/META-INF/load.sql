--
-- passowrds = P@$$w0rd`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'ROLE_USER');
UNLOCK TABLES;

LOCK TABLES `user` WRITE;
INSERT INTO `user`  VALUES ( 4,'JimSmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm');
INSERT INTO `user`  VALUES (5,'Bobmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm');
UNLOCK TABLES;

LOCK TABLES `user_role` WRITE;
INSERT INTO `user_role`  VALUES ( 4,1);
INSERT INTO `user_role`  VALUES (5,1);
UNLOCK TABLES;
