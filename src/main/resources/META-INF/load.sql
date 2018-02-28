--
-- passowrds = P@$$w0rd`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role`  SELECT * FROM (SELECT 1,'ROLE_USER') AS tmp WHERE NOT EXISTS ( SELECT id from role where id=1) LIMIT 1;

INSERT INTO `user`  (`username`, `password`) SELECT * FROM (SELECT 'JimSmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm') AS tmp  WHERE NOT EXISTS ( SELECT username from user where username='JimSmith') LIMIT 1;
INSERT INTO `user`  (`username`, `password`) SELECT * FROM (SELECT 'Bobmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm') AS tmp  WHERE NOT EXISTS ( SELECT username from user where username='BobSmith') LIMIT 1;

UNLOCK TABLES;

