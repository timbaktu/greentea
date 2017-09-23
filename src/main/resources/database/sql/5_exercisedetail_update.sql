
UPDATE `wethinkfitness`.`wf_all_exercises` SET `img_name`='img/video/1.png', `how_to`='https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', `video_link`='https://www.youtube.com/watch?v=SHsUIZiNdeY' WHERE `id`='1';

UPDATE `wethinkfitness`.`wf_all_exercises` SET `img_name`='img/video/2.png', `how_to`='https://www.youtube.com/watch?v=_YcANO5d0nA', `video_link`='https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html' WHERE `id`='2';



ALTER TABLE `wethinkfitness`.`wf_all_exercises` 
ADD COLUMN `img_name` VARCHAR(100) NULL DEFAULT NULL AFTER `updateddate`,
ADD COLUMN `how_to` VARCHAR(100) NULL DEFAULT NULL AFTER `img_name`,
ADD COLUMN `video_link` VARCHAR(100) NULL DEFAULT NULL AFTER `how_to`;



ALTER TABLE `wethinkfitness`.`wf_exerciseplanschedule` 
ADD COLUMN `workout_description` VARCHAR(500) NULL DEFAULT NULL AFTER `updateddate`;

UPDATE `wethinkfitness`.`wf_exerciseplanschedule` SET `workout_description`='There are dozens of exercises you can do on chest day. You don\'t want to spend a Monday afternoon—or several Mondays—trying them all. You just want to know the best exercises for building a muscular chest, no questions asked. We\'ve done the work for you, and found the top 10' WHERE `id`='1';
