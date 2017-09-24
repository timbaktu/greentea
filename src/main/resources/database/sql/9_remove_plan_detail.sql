drop table wf_plan_detail;


INSERT INTO `wethinkfitness`.`wf_exercise_type` (`exercise_type_name`, `description`, `delflag`, `createddate`, `updateddate`, `classname`) VALUES ('Shoulders', 'Total Shoulders', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', 'success');
UPDATE `wethinkfitness`.`wf_exercise_type` SET `classname`='important' WHERE `id`='2';
INSERT INTO `wethinkfitness`.`wf_exercise_type` (`exercise_type_name`, `description`, `delflag`, `createddate`, `updateddate`, `classname`) VALUES ('Rest', 'Rest', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', 'info');
INSERT INTO `wethinkfitness`.`wf_exercise_type` (`exercise_type_name`, `description`, `delflag`, `createddate`, `updateddate`, `classname`) VALUES ('Cardio', 'Running', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', 'important');
INSERT INTO `wethinkfitness`.`wf_exercise_type` (`exercise_type_name`, `description`, `delflag`, `createddate`, `updateddate`, `classname`) VALUES ('Legs', 'lower', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', 'success');


INSERT INTO `wethinkfitness`.`wf_exerciseplanschedule` (`exercise_type_id`, `planid`, `delflag`, `createddate`, `updateddate`, `no_of_exercises`, `reps`, `day`) VALUES ('3', '1', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', '120', '11', '3');
INSERT INTO `wethinkfitness`.`wf_exerciseplanschedule` (`exercise_type_id`, `planid`, `delflag`, `createddate`, `updateddate`, `workout_description`, `no_of_exercises`, `reps`, `day`) VALUES ('4', '1', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', 'Take complete rest', '0', '0', '4');
INSERT INTO `wethinkfitness`.`wf_exerciseplanschedule` (`exercise_type_id`, `planid`, `delflag`, `createddate`, `updateddate`, `workout_description`, `no_of_exercises`, `reps`, `day`) VALUES ('5', '1', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', '2 mile running', '0', '0', '5');
INSERT INTO `wethinkfitness`.`wf_exerciseplanschedule` (`exercise_type_id`, `planid`, `delflag`, `createddate`, `updateddate`, `no_of_exercises`, `reps`, `day`) VALUES ('6', '1', '0', '2017-09-23 09:00:00', '2017-09-23 09:00:00', '150', '12', '6');
