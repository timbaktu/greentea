UPDATE `wethinkfitness`.`wf_all_exercises` SET `exercise_description`='Increase mid chest area; Steps testing; check it; check it2' WHERE `id`='1';


CREATE TABLE `wethinkfitness`.`wf_user_schedule` (
  `id` BIGINT(20) NOT NULL,
  `user_id` BIGINT(20) NOT NULL,
  `schedule_id` BIGINT(20) NOT NULL,
  `exercise_id` BIGINT(20) NOT NULL,
  `workout_date` VARCHAR(45) NULL,
  `createddate` VARCHAR(45) NULL,
  `updateddate` VARCHAR(45) NULL,
  `delflag` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id` ASC),
  INDEX `exercise_id_idx` (`exercise_id` ASC),
  INDEX `schedule_id_idx` (`schedule_id` ASC),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `wethinkfitness`.`app_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `schedule_id`
    FOREIGN KEY (`schedule_id`)
    REFERENCES `wethinkfitness`.`wf_exerciseplanschedule` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `exercise_id`
    FOREIGN KEY (`exercise_id`)
    REFERENCES `wethinkfitness`.`wf_all_exercises` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
