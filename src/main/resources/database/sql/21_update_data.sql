ALTER TABLE `wethinkfitness`.`wf_exerciseplan` 
ADD COLUMN `days_per_week` VARCHAR(45) NOT NULL AFTER `img_name`;

UPDATE `wethinkfitness`.`wf_exerciseplan` SET `days_per_week`='7' WHERE `id`='1';
UPDATE `wethinkfitness`.`wf_exerciseplan` SET `days_per_week`='5' WHERE `id`='2';
UPDATE `wethinkfitness`.`wf_exerciseplan` SET `days_per_week`='6' WHERE `id`='3';
UPDATE `wethinkfitness`.`wf_exerciseplan` SET `days_per_week`='4' WHERE `id`='4';


