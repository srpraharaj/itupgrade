package com.ibm.itupgrade.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ibm.itupgrade.models.MiddlewareReadiness;

public interface MiddlewareReadinessRepo extends CrudRepository<MiddlewareReadiness,Integer>{

	List<MiddlewareReadiness> findByActivityId (Integer activityId);
	List<Integer> findActivityIdByChangeStatusIgnoreCase(String changeStatus);
}

