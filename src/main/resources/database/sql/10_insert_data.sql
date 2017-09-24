UPDATE `wethinkfitness`.`wf_all_exercises` SET `exercise_name`='Chest push ups', `exercise_description`='Mid Chest', `img_name`='img/video/3.png', `how_to`='https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', `video_link`='https://www.youtube.com/watch?v=YwFmEsa_lIk' WHERE `id`='3';
UPDATE `wethinkfitness`.`wf_all_exercises` SET `how_to`='https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', `video_link`='https://www.youtube.com/watch?v=_YcANO5d0nA' WHERE `id`='2';
INSERT INTO `wethinkfitness`.`wf_all_exercises` (`exercise_name`, `exercise_description`, `delflag`, `createddate`, `updateddate`, `img_name`, `how_to`, `video_link`) VALUES ('Low Incline Bench Press', 'Develop upper chest', '0', '2017-09-24 09:00:00', '2017-09-24 09:00:00', 'img/video/4.png', 'https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', 'https://www.youtube.com/watch?v=CTB_Jb_UvII');
INSERT INTO `wethinkfitness`.`wf_all_exercises` (`exercise_name`, `exercise_description`, `delflag`, `createddate`, `updateddate`, `img_name`, `how_to`, `video_link`) VALUES ('Chest Fly', 'Build chest muscle', '0', '2017-09-24 09:00:00', '2017-09-24 09:00:00', 'img/video/5.png', 'https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', 'https://www.youtube.com/watch?v=S298ziysRdI');


INSERT INTO `wethinkfitness`.`wf_exerciseplandetail` (`schedule_id`, `exercise_id`, `number_of_sets`, `number_of_reps`, `interval`, `delflag`, `createddate`, `updateddate`) VALUES ('1', '4', '3', '5', '20 sec', '0', '2017-08-05 20:25:00', '2017-08-05 20:25:00');
INSERT INTO `wethinkfitness`.`wf_exerciseplandetail` (`schedule_id`, `exercise_id`, `number_of_sets`, `number_of_reps`, `interval`, `delflag`, `createddate`, `updateddate`) VALUES ('1', '5', '5', '3', '30 sec', '0', '2017-08-05 20:25:00', '2017-08-05 20:25:00');


UPDATE `wethinkfitness`.`wf_events` SET `img_name`='img/event/event3.png' WHERE `id`='3';
