--
-- passowrds = P@$$w0rd`
--

--INSERT INTO `role` VALUES (1,'ROLE_USER');
--INSERT INTO `user`  VALUES ( 4,'JimSmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm');
--INSERT INTO `user`  VALUES (5,'Bobmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm');
--INSERT INTO `user_role`  VALUES ( 4,1);
--INSERT INTO `user_role`  VALUES (5,1);

INSERT INTO `role`  SELECT * FROM (SELECT 1,'ROLE_USER') AS tmp WHERE NOT EXISTS ( SELECT id from role where id=1) LIMIT 1;
INSERT INTO `user`  SELECT * FROM (SELECT 4,'JimSmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm') AS tmp  WHERE NOT EXISTS ( SELECT id from user where id=4) LIMIT 1;
INSERT INTO `user`  SELECT * FROM (SELECT 5,'Bobmith','$2a$11$oH1vjQKYfPS2ddQWisiYj.z3qntBwLh6Ur2Ewy8brZbreEsx.gzXm') AS tmp  WHERE NOT EXISTS ( SELECT id from user where id=5) LIMIT 1;
INSERT INTO `user_role`  SELECT * FROM (SELECT 4,1) AS tmp  WHERE NOT EXISTS ( SELECT user_id from user_role where user_id=4) LIMIT 1;
INSERT INTO `user_role`  SELECT * FROM (SELECT 5,1) AS tmp  WHERE NOT EXISTS ( SELECT user_id from user_role where user_id=5) LIMIT 1;
