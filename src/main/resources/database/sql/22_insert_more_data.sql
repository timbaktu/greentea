
INSERT INTO `wethinkfitness`.`wf_all_exercises` (`exercise_name`, `exercise_description`, `delflag`, `createddate`, `updateddate`, `img_name`, `how_to`, `video_link`) VALUES ('Incline Hammer Curls', 'Build bisceps', '0', '2017-09-24 09:00:00', '2017-09-24 09:00:00', 'img/video/6.png', 'https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', 'https://www.youtube.com/watch?v=lXwm62SiLQ8\n');
INSERT INTO `wethinkfitness`.`wf_all_exercises` (`exercise_name`, `exercise_description`, `delflag`, `createddate`, `updateddate`, `img_name`, `how_to`, `video_link`) VALUES ('EZ bar curl\n', 'Shape biscep muscles', '0', '2017-09-24 09:00:00', '2017-09-24 09:00:00', 'img/video/7.png', 'https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', 'https://www.youtube.com/watch?v=WeZLdaLggAo\n');
INSERT INTO `wethinkfitness`.`wf_all_exercises` (`exercise_name`, `exercise_description`, `delflag`, `createddate`, `updateddate`, `img_name`, `how_to`, `video_link`) VALUES ('Zottman curl\n', 'Bisceps Cuts', '0', '2017-09-24 09:00:00', '2017-09-24 09:00:00', 'img/video/8.png', 'https://www.bodybuilding.com/fun/chest-workouts-for-men-the-6-best-routines-for-a-bigger-chest.html', 'https://www.youtube.com/watch?v=ZrpRBgswtHs');


INSERT INTO `wethinkfitness`.`wf_exerciseplandetail` (`schedule_id`, `exercise_id`, `number_of_sets`, `number_of_reps`, `interval`, `delflag`, `createddate`, `updateddate`) VALUES ('2', '6', '4', '4', '30 sec', '0', '2017-08-05 20:25:00', '2017-08-05 20:25:00');
INSERT INTO `wethinkfitness`.`wf_exerciseplandetail` (`schedule_id`, `exercise_id`, `number_of_sets`, `number_of_reps`, `interval`, `delflag`, `createddate`, `updateddate`) VALUES ('2', '7', '5', '2', '30 sec', '0', '2017-08-05 20:25:00', '2017-08-05 20:25:00');
INSERT INTO `wethinkfitness`.`wf_exerciseplandetail` (`schedule_id`, `exercise_id`, `number_of_sets`, `number_of_reps`, `interval`, `delflag`, `createddate`, `updateddate`) VALUES ('2', '8', '4', '4', '40 sec', '0', '2017-08-05 20:25:00', '2017-08-05 20:25:00');


UPDATE `wethinkfitness`.`wf_all_exercises` SET `img_name`='img/video/6.jpg' WHERE `id`='6';
UPDATE `wethinkfitness`.`wf_all_exercises` SET `img_name`='img/video/7.jpg' WHERE `id`='7';
UPDATE `wethinkfitness`.`wf_all_exercises` SET `img_name`='img/video/8.jpg' WHERE `id`='8';