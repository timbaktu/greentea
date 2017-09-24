ALTER TABLE `wethinkfitness`.`wf_exerciseplanschedule` 
ADD COLUMN `no_of_exercises` BIGINT(20) NOT NULL AFTER `workout_description`,
ADD COLUMN `reps` BIGINT(20) NOT NULL AFTER `no_of_exercises`;

UPDATE `wethinkfitness`.`wf_exerciseplanschedule` SET `no_of_exercises`='220', `reps`='8' WHERE `id`='1';
UPDATE `wethinkfitness`.`wf_exerciseplanschedule` SET `no_of_exercises`='200', `reps`='10' WHERE `id`='2';


ALTER TABLE `wethinkfitness`.`wf_exerciseplanschedule` 
ADD COLUMN `day` BIGINT(20) NOT NULL AFTER `reps`;


UPDATE `wethinkfitness`.`wf_exerciseplanschedule` SET `day`='1' WHERE `id`='1';
UPDATE `wethinkfitness`.`wf_exerciseplanschedule` SET `day`='2' WHERE `id`='2';
