CREATE TABLE `wethinkfitness`.`wf_user_plan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) NOT NULL,
  `plan_id` BIGINT(20) NOT NULL,
  `delflag` INT NOT NULL DEFAULT 0,
  `createddatetime` VARCHAR(45) NOT NULL,
  `updateddatetime` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

  
  INSERT INTO `wethinkfitness`.`wf_user_plan` (`user_id`, `plan_id`, `createddatetime`, `updateddatetime`) VALUES ('1', '1', '2017-09-25 09:00:00', '2017-09-25 09:00:00');

  