package com.springmvc.service;

import java.util.List;
import com.springmvc.model.ExerciseUserSchedule;

public interface ExerciseUserScheduleService {

	List<ExerciseUserSchedule> findExerciseUserSchedule(int id);		
}
