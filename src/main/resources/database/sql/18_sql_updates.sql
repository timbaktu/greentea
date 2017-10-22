drop table role;
drop table user;
drop table user_role;

ALTER TABLE `wethinkfitness`.`wf_user_registration` 
DROP COLUMN `password`,
DROP COLUMN `username`,
DROP COLUMN `lastname`,
CHANGE COLUMN `firstname` `user_id` BIGINT(20) NOT NULL ,
ADD UNIQUE INDEX `userid_UNIQUE` (`user_id` ASC);


ALTER TABLE `wethinkfitness`.`wf_user_registration` 
ADD CONSTRAINT `id`
  FOREIGN KEY (`user_id`)
  REFERENCES `wethinkfitness`.`APP_USER` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  ALTER TABLE `wethinkfitness`.`wf_user_registration` 
CHANGE COLUMN `createddatetime` `createddatetime` DATETIME NULL DEFAULT NULL ,
CHANGE COLUMN `modifieddatetime` `modifieddatetime` DATETIME NULL DEFAULT NULL ;


ALTER TABLE `wethinkfitness`.`wf_user_registration` 
CHANGE COLUMN `delflag` `delflag` INT(1) UNSIGNED ZEROFILL NULL DEFAULT 0 ;

ALTER TABLE `wethinkfitness`.`wf_user_plan` 
ADD COLUMN `start_date` VARCHAR(45) NOT NULL AFTER `updateddatetime`;


UPDATE `wethinkfitness`.`wf_user_plan` SET `start_date`='2017-01-01' WHERE `id`='1';
UPDATE `wethinkfitness`.`wf_user_plan` SET `start_date`='2017-01-01' WHERE `id`='2';
UPDATE `wethinkfitness`.`wf_user_plan` SET `start_date`='2017-01-01' WHERE `id`='3';


