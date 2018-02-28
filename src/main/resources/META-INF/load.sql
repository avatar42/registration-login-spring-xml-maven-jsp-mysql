--
-- passowrds = P@$$w0rd`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` ( 1,'ROLE_USER') ;
UNLOCK TABLES;

LOCK TABLES `user` WRITE;
INSERT INTO `user`  (`username`, `password`) VALUES ( 'JimSmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm');
INSERT INTO `user`  (`username`, `password`) VALUES ('Bobmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm');
UNLOCK TABLES;

