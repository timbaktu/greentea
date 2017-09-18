CREATE TABLE `wethinkfitness`.`wf_plan_detail` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `plan_id` INT NOT NULL,
  `type_id` INT NOT NULL,
  `number_of_exercises` INT NOT NULL,
  `Reps` INT NOT NULL,
  `frequency` VARCHAR(45) NOT NULL,
  `how_to` VARCHAR(45) NULL DEFAULT NULL,
  `delflag` INT(1) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `createddate` DATETIME NOT NULL,
  `updateddate` DATETIME NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `wethinkfitness`.`wf_plan_detail` (`plan_id`, `type_id`, `number_of_exercises`, `Reps`, `frequency`, `delflag`, `createddate`, `updateddate`) VALUES ('1', '1', '8', '200', 'Once', '0', '2017-09-17 09:00:00', '2017-09-17 09:00:00');
INSERT INTO `wethinkfitness`.`wf_plan_detail` (`plan_id`, `type_id`, `number_of_exercises`, `Reps`, `frequency`, `delflag`, `createddate`, `updateddate`) VALUES ('1', '2', '12', '220', 'Twice', '0', '2017-09-17 09:00:00', '2017-09-17 09:00:00');

ALTER TABLE `wethinkfitness`.`wf_plan_detail` 
CHANGE COLUMN `plan_id` `plan_id` BIGINT(20) NOT NULL ;

ALTER TABLE `wethinkfitness`.`wf_plan_detail` 
CHANGE COLUMN `type_id` `type_id` BIGINT(20) NOT NULL ;


ALTER TABLE `wethinkfitness`.`wf_plan_detail` 
ADD INDEX `id_idx` (`plan_id` ASC);
ALTER TABLE `wethinkfitness`.`wf_plan_detail` 
ADD CONSTRAINT `id`
  FOREIGN KEY (`plan_id`)
  REFERENCES `wethinkfitness`.`wf_exerciseplan` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  ALTER TABLE `wethinkfitness`.`wf_plan_detail` 
ADD INDEX `id_idx1` (`type_id` ASC);
ALTER TABLE `wethinkfitness`.`wf_plan_detail` 
ADD CONSTRAINT `id`
  FOREIGN KEY (`type_id`)
  REFERENCES `wethinkfitness`.`wf_exercise_type` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
