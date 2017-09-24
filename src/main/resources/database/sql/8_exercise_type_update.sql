ALTER TABLE `wethinkfitness`.`wf_exercise_type` 
ADD COLUMN `classname` VARCHAR(45) NOT NULL AFTER `updateddate`;


UPDATE `wethinkfitness`.`wf_exercise_type` SET `classname`='info' WHERE `id`='1';
UPDATE `wethinkfitness`.`wf_exercise_type` SET `classname`='info' WHERE `id`='2';
