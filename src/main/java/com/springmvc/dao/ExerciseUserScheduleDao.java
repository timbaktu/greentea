package com.springmvc.dao;

import java.util.List;

import com.springmvc.model.ExerciseUserSchedule;

public interface ExerciseUserScheduleDao {
	List<ExerciseUserSchedule> findExerciseUserSchedule(int id);

	
}
