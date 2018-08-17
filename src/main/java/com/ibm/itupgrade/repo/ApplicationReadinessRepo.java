package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.ApplicationReadiness;

public interface ApplicationReadinessRepo extends CrudRepository<ApplicationReadiness,Integer>{

	List<ApplicationReadiness> findByActivityId (Integer activityId);
	List<Integer> findActivityIdByTaskStatusIgnoreCaseAndActivityGroupIgnoreCase(String taskStatus,String activityGroup);
	List<Integer> findActivityIdByActivityGroupIgnoreCase(String activityGroup);
}
