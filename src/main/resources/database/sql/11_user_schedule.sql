CREATE TABLE `wethinkfitness`.`wf_user_schedule` (
  `id` BIGINT(20) NOT NULL,
  `user_id` BIGINT(20) NOT NULL,
  `schedule_id` BIGINT(20) NOT NULL,
  `status` BIGINT(20) NOT NULL,
  `delflag` INT(1) NOT NULL DEFAULT 0,
  `createddate` DATETIME NOT NULL,
  `createdtime` DATETIME NOT NULL,
  `reps_completed` BIGINT(20) NOT NULL DEFAULT 0,
  `notes` VARCHAR(200) NULL,
  `exercise_completed` BIGINT(20) NOT NULL DEFAULT 0,
  `duration` VARCHAR(100) NOT NULL,
  `workout_time` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC));

  ALTER TABLE `wethinkfitness`.`wf_user_schedule` 
CHANGE COLUMN `id` `id` BIGINT(20) NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `duration` `duration` BIGINT(20) NOT NULL DEFAULT 0 ;


INSERT INTO `wethinkfitness`.`wf_user_schedule` (`user_id`, `schedule_id`, `status`, `delflag`, `createddate`, `createdtime`, `reps_completed`, `notes`, `exercise_completed`, `duration`, `workout_time`) VALUES ('1', '1', '1', '0', '2017-09-25 09:00:00', '2017-09-25 09:00:00', '300', 'difficulty in push ups', '23', '90', 'morning');
